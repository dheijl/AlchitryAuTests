// SPI buffer for the SCK-clocked spi_peripheral. Everything here runs on the
// 100 MHz system clock; only spi_peripheral runs on SCK.
//
//   fifo_in : system -> SPI (bytes to transmit on MISO), 255 bytes
//   received bytes come out on data_out / data_rdy, one-cycle pulse per byte
//
// Clock domain crossing (see also spi_peripheral.sv):
//  - rx_toggle from the SCK domain goes through a 2-flip-flop synchroniser.
//    When it differs from `cur`, a byte has completed: rx_byte is copied
//    (it is stable for a full byte time) and the transmit buffer that was
//    just sent is refilled from fifo_in.
//  - CS is synchronised to tell whether a transfer is in progress. While
//    CS is high, empty transmit buffers are filled from fifo_in. The
//    synchronised CS (idle) and rx_pending are outputs, so the top level
//    doesn't need its own CS synchroniser and can wait for the last byte.
//  - If fifo_in runs dry during a transfer, 0xFF is sent for the rest of that
//    transfer, so later bytes can't overtake a filler byte.
//
// SPI mode 1 (CPOL = 0, CPHA = 1). The 300 MHz clock and the async FIFOs of
// the oversampling version are no longer needed.

`default_nettype none

module spi_buffer (
    input  wire        clk,                 // 100 MHz system clock
    input  wire        rst,
    input  wire        sck,
    input  wire        sdi,
    input  wire        cs,
    input  wire  [7:0] data_in,             // byte to transmit
    input  wire        data_in_newdata,     // write data_in into fifo_in
    output logic       data_in_full,        // fifo_in full
    output wire        sdo,                 // a net: z while CS is high
    output logic [7:0] data_out = 8'hff,    // received byte
    output logic       data_rdy = 1'b0,     // data_out valid (one cycle per byte)
    output logic       idle,                // CS high (synchronised, 2 FF)
    output logic       rx_pending           // a received byte goes to data_out next cycle
);

    // ------------------------------------------------------------ SCK side
    logic [7:0] rx_byte;
    logic       rx_toggle;
    logic [7:0] tx_buf0 = 8'hff;
    logic [7:0] tx_buf1 = 8'hff;

    spi_peripheral spi (
        .sck(sck), .cs(cs), .sdi(sdi), .sdo(sdo),
        .rx_byte(rx_byte), .rx_toggle(rx_toggle),
        .tx_byte0(tx_buf0), .tx_byte1(tx_buf1)
    );

    // ------------------------------------------------------- system state
    logic       cur     = 1'b0;     // buffer the SPI side is sending (= rx_toggle)
    logic [1:0] valid   = 2'b00;    // tx_buf holds a byte from fifo_in
    logic       starved = 1'b0;     // fifo_in ran dry during this transfer

    // ------------------------------------------------------ transmit FIFO
    logic [7:0] fifo_dout;
    logic       fifo_empty;
    logic       fifo_take;          // pop fifo_in into a tx buffer

    fifo #(.WIDTH(8), .ENTRIES(256)) fifo_in (
        .clk(clk), .rst(rst),
        .din(data_in), .wput(data_in_newdata), .full(data_in_full),
        .dout(fifo_dout), .rget(fifo_take), .empty(fifo_empty)
    );

    // ------------------------------------------------------ synchronisers
    (* ASYNC_REG = "TRUE" *) logic [1:0] rx_sync = 2'b00;
    (* ASYNC_REG = "TRUE" *) logic [1:0] cs_sync = 2'b11;

    always_ff @(posedge clk) begin
        rx_sync <= {rx_sync[0], rx_toggle};
        cs_sync <= {cs_sync[0], cs};
    end

    logic rx_event;
    assign rx_event   = rx_sync[1] != cur;  // a byte has completed
    assign idle       = cs_sync[1];         // not selected
    assign rx_pending = rx_event;           // data_rdy follows in the next cycle

    // ------------------------------------------------------- system side
    // What to load into a tx buffer this cycle:
    //  - byte complete: refill the buffer just sent (cur) from fifo_in, or
    //    with 0xFF filler (not valid) if fifo_in is empty or ran dry
    //  - between transfers: fill an empty buffer, the next one to send first
    logic       load;
    logic       load_sel;
    logic [7:0] load_value;
    logic       load_valid;

    always_comb begin
        fifo_take  = 1'b0;
        load       = 1'b0;
        load_sel   = cur;
        load_value = fifo_dout;
        load_valid = 1'b1;

        if (rx_event) begin
            fifo_take = !starved && !fifo_empty;
            load      = 1'b1;
            if (!fifo_take) begin
                load_value = 8'hff;
                load_valid = 1'b0;
            end
        end else if (idle && !fifo_empty) begin
            fifo_take = !valid[cur] || !valid[~cur];
            load      = fifo_take;
            load_sel  = valid[cur] ? ~cur : cur;
        end
    end

    always_ff @(posedge clk) begin
        data_out <= 8'hff;
        data_rdy <= 1'b0;

        if (rx_event) begin
            // byte complete: pass it on
            data_out <= rx_byte;
            data_rdy <= 1'b1;
            cur      <= ~cur;
            if (!fifo_take)
                starved <= 1'b1;
        end else if (idle) begin
            starved <= 1'b0;
        end

        if (load) begin
            if (load_sel) tx_buf1 <= load_value;
            else          tx_buf0 <= load_value;
            valid[load_sel] <= load_valid;
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

`default_nettype wire
