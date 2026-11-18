// SPI buffer for the SCK-clocked spi_peripheral. Everything here runs on the
// 100 MHz system clock; only spi_peripheral runs on SCK.
//
//   fifo_in : system -> SPI (bytes to transmit on MISO), 255 bytes
//   received bytes come out on data_out / data_rdy, one-cycle pulse per byte
//
// Clock domain crossing (see also spi_peripheral.v):
//  - rx_toggle from the SCK domain goes through a 2-flip-flop synchroniser.
//    When it differs from `cur`, a byte has completed: rx_byte is copied
//    (it is stable for a full byte time) and the transmit buffer that was
//    just sent is refilled from fifo_in.
//  - CS is synchronised to tell whether a transfer is in progress. While
//    CS is high, empty transmit buffers are filled from fifo_in.
//  - If fifo_in runs dry during a transfer, 0xFF is sent for the rest of that
//    transfer, so later bytes can't overtake a filler byte.
//
// SPI mode 1 (CPOL = 0, CPHA = 1). The 300 MHz clock and the async FIFOs of
// the oversampling version are no longer needed.

module spi_buffer (
    input  wire       clk,              // 100 MHz system clock
    input  wire       rst,
    input  wire       sck,
    input  wire       sdi,
    input  wire       cs,
    input  wire [7:0] data_in,          // byte to transmit
    input  wire       data_in_newdata,  // write data_in into fifo_in
    output wire       data_in_full,     // fifo_in full
    output wire       sdo,
    output reg  [7:0] data_out = 8'hff, // received byte
    output reg        data_rdy = 1'b0   // data_out valid (one cycle per byte)
);

    // ------------------------------------------------------------ SCK side
    wire [7:0] rx_byte;
    wire       rx_toggle;
    reg  [7:0] tx_buf0 = 8'hff;
    reg  [7:0] tx_buf1 = 8'hff;

    spi_peripheral spi (
        .sck(sck), .cs(cs), .sdi(sdi), .sdo(sdo),
        .rx_byte(rx_byte), .rx_toggle(rx_toggle),
        .tx_byte0(tx_buf0), .tx_byte1(tx_buf1)
    );

    // ------------------------------------------------------- system state
    reg       cur     = 1'b0;   // buffer the SPI side is sending (= rx_toggle)
    reg [1:0] valid   = 2'b00;  // tx_buf holds a byte from fifo_in
    reg       starved = 1'b0;   // fifo_in ran dry during this transfer
    reg       fifo_take;        // pop fifo_in into a tx buffer

    // ------------------------------------------------------ transmit FIFO
    wire [7:0] fifo_dout;
    wire       fifo_empty;

    fifo #(.WIDTH(8), .ENTRIES(256)) fifo_in (
        .clk(clk), .rst(rst),
        .din(data_in), .wput(data_in_newdata), .full(data_in_full),
        .dout(fifo_dout), .rget(fifo_take), .empty(fifo_empty)
    );

    // ------------------------------------------------------ synchronisers
    (* ASYNC_REG = "TRUE" *) reg [1:0] rx_sync = 2'b00;
    (* ASYNC_REG = "TRUE" *) reg [1:0] cs_sync = 2'b11;

    always @(posedge clk) begin
        rx_sync <= {rx_sync[0], rx_toggle};
        cs_sync <= {cs_sync[0], cs};
    end

    wire rx_event = rx_sync[1] != cur;  // a byte has completed
    wire idle     = cs_sync[1];         // not selected

    // ------------------------------------------------------- system side
    // load a tx buffer
    task load(input sel, input [7:0] value, input v);
        begin
            if (sel) tx_buf1 <= value; else tx_buf0 <= value;
            valid[sel] <= v;
        end
    endtask

    always @* begin
        fifo_take = 1'b0;
        if (rx_event)
            fifo_take = !starved && !fifo_empty;
        else if (idle && !fifo_empty)
            fifo_take = !valid[cur] || !valid[~cur];
    end

    always @(posedge clk) begin
        data_out <= 8'hff;
        data_rdy <= 1'b0;

        if (rx_event) begin
            // byte complete: pass it on, refill the buffer just sent
            data_out <= rx_byte;
            data_rdy <= 1'b1;
            cur      <= ~cur;
            if (fifo_take)
                load(cur, fifo_dout, 1'b1);
            else begin
                load(cur, 8'hff, 1'b0);
                starved <= 1'b1;
            end
        end else if (idle) begin
            // between transfers: fill empty buffers, next one to send first
            starved <= 1'b0;
            if (fifo_take)
                load(valid[cur] ? ~cur : cur, fifo_dout, 1'b1);
        end

        if (rst) begin
            cur     <= rx_sync[1];
            valid   <= 2'b00;
            starved <= 1'b0;
            tx_buf0 <= 8'hff;
            tx_buf1 <= 8'hff;
        end
    end

endmodule
