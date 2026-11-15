// SPI buffer, hand translated from source/spi_buffer.luc
//
// Puts two 256-byte async FIFOs (Xilinx IP fifo_256) between the 100 MHz
// system domain and the fast SPI domain:
//   fifo_in : system -> SPI  (bytes to transmit on MISO)
//   fifo_out: SPI -> system  (bytes received on MOSI)
//
// Each FIFO port is driven from the clock domain it belongs to:
//   slow_clk: fifo_in write port, fifo_out read port, data_out / data_rdy
//   clk     : fifo_in read port, fifo_out write port, SPI peripheral
// The FIFOs are the only crossing between the two domains.
// fifo_256 is configured as First-Word-Fall-Through: dout is valid while
// empty is 0, and rd_en pops it.

module spi_buffer (
    input  wire       clk,              // fast clock (from clock wizard)
    input  wire       slow_clk,         // 100 MHz system clock
    input  wire       rst,
    input  wire       sck,
    input  wire       sdi,
    input  wire       cs,
    input  wire [7:0] data_in,          // byte to transmit
    input  wire       data_in_newdata,  // write data_in into fifo_in
    output wire       data_in_full,     // fifo_in full
    output wire       sdo,
    output reg  [7:0] data_out = 8'h00, // received byte
    output reg        data_rdy = 1'b0   // data_out valid
);

    // ---------------------------------------------------------------- FIFOs
    wire [7:0] fifo_out_dout, fifo_in_dout;
    wire       fifo_out_full, fifo_out_empty;
    wire       fifo_in_full,  fifo_in_empty;
    wire       fifo_out_wr_en, fifo_out_rd_en;
    wire       fifo_in_wr_en,  fifo_in_rd_en;

    reg  [7:0] spi_rx = 8'h00;          // last byte received from SPI
    reg  [7:0] spi_tx = 8'h00;          // next byte to send on SPI
    reg        have_input  = 1'b0;      // spi_tx holds a byte from fifo_in
    reg        have_output = 1'b0;      // spi_rx must go into fifo_out
    reg        spi_active  = 1'b0;

    fifo_256 fifo_out (                 // SPI data received
        .rst(rst), .wr_clk(clk), .rd_clk(slow_clk),
        .din(spi_rx), .wr_en(fifo_out_wr_en),
        .rd_en(fifo_out_rd_en), .dout(fifo_out_dout),
        .full(fifo_out_full), .empty(fifo_out_empty),
        .wr_rst_busy(), .rd_rst_busy()
    );

    fifo_256 fifo_in (                  // data to transmit
        .rst(rst), .wr_clk(slow_clk), .rd_clk(clk),
        .din(data_in), .wr_en(fifo_in_wr_en),
        .rd_en(fifo_in_rd_en), .dout(fifo_in_dout),
        .full(fifo_in_full), .empty(fifo_in_empty),
        .wr_rst_busy(), .rd_rst_busy()
    );

    // slow_clk domain
    assign fifo_in_wr_en  = data_in_newdata && !fifo_in_full;
    assign fifo_out_rd_en = !fifo_out_empty;
    assign data_in_full   = fifo_in_full;

    // fast clk domain
    assign fifo_in_rd_en  = !have_input && !fifo_in_empty;
    assign fifo_out_wr_en = have_output && !fifo_out_full;

    // --------------------------------------------- system side (slow_clk)
    // present received bytes to the system side, one per slow_clk cycle
    always @(posedge slow_clk) begin
        if (!fifo_out_empty) begin
            data_out <= fifo_out_dout;
            data_rdy <= 1'b1;
        end else begin
            data_out <= 8'hff;
            data_rdy <= 1'b0;
        end
    end

    // ------------------------------------------------------------------ SPI
    wire       spi_done;
    wire [7:0] spi_data_out;

    spi_peripheral #(.CPOL(0), .CPHA(1)) spi (
        .clk(clk), .rst(rst),
        .cs(cs), .sck(sck), .sdi(sdi), .sdo(sdo),
        .done(spi_done),
        .data_in(spi_tx),               // first byte is ready when CS drops
        .data_out(spi_data_out)
    );

    // -------------------------------------------------- SPI side (fast clk)
    always @(posedge clk) begin
        spi_active <= ~cs;

        if (fifo_out_wr_en)
            have_output <= 1'b0;

        // fetch the next byte to transmit; 0xFF if there is none
        // (it can still be replaced from fifo_in before the transfer starts)
        if (!have_input) begin
            if (fifo_in_empty) begin
                spi_tx <= 8'hff;
            end else begin
                spi_tx     <= fifo_in_dout;
                have_input <= 1'b1;
            end
        end

        // byte transferred: store it and move on to the next tx byte
        if (spi_active && spi_done) begin
            spi_rx      <= spi_data_out;
            have_input  <= 1'b0;
            have_output <= 1'b1;
        end

        if (rst) begin
            spi_rx <= 8'h00;
            spi_tx <= 8'h00;
        end
    end

endmodule
