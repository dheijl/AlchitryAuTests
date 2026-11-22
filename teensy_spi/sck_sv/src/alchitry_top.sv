// Top level, hand translated from source/alchitry_top.luc
//
// Characters received on the USB serial port are echoed back and queued for
// SPI. DRQ is raised on newline or when the SPI transmit FIFO is full, asking
// the SPI controller (Teensy) to start a transfer. Bytes received over SPI are
// echoed to the serial port as well.

/*

Replacement of Alchitry IDE to dive the serial port:

Which port: the Au’s USB chip shows up as two ports, normally /dev/ttyUSB0 and /dev/ttyUSB1.
The first is used for loading the FPGA and the second is the UART, so it’s usually /dev/ttyUSB1.
With the board plugged in, ls -l /dev/serial/by-id/ should show it as the entry ending in -if01-port0.

Using picocom:

picocom -b 1000000 --omap crlf --imap lfcrlf /dev/ttyUSB1
--omap crlf makes Enter send a newline (0x0A) instead of a carriage return.
The FPGA only raises DRQ on 0x0A (or when the SPI buffer is full),
so without this the Teensy never gets asked to start a transfer.
--imap lfcrlf puts each incoming line on a new line in the terminal.
Local echo isn’t needed: the FPGA echoes every character itself. Each typed character appears straight away.
After the Teensy’s SPI transfer, the bytes it sent on MOSI appear as well.
To quit, press Ctrl-A then Ctrl-X.

*/

`default_nettype none

module alchitry_top (
    input  wire        clk,     // 100 MHz
    input  wire        rst_n,   // reset button, active low
    output logic [7:0] led,
    input  wire        usb_rx,  // USB -> serial
    output logic       usb_tx,  // serial -> USB
    input  wire        sck,     // SPI clock
    input  wire        sdi,     // SPI MOSI
    input  wire        cs,      // SPI chip select, active low
    output wire        sdo,     // SPI MISO (a net: z while CS is high)
    output logic       drq      // SPI transfer request
);

    typedef enum logic [1:0] {
        IDLE,           // collecting serial input
        REQUESTED,      // DRQ raised, waiting for CS
        BUSY            // SPI transfer in progress
    } state_t;

    // ---------------------------------------------------------------- reset
    logic rst;

    reset_conditioner reset_cond (
        .clk(clk), .in(~rst_n), .out(rst)
    );

    // ---------------------------------------------------------- serial port
    logic [7:0] rx_data;
    logic       rx_new_data;
    logic       tx_busy;

    uart_rx #(.BAUD(1_000_000), .CLK_FREQ(100_000_000)) rx (
        .clk(clk), .rst(rst),
        .rx(usb_rx), .data(rx_data), .new_data(rx_new_data)
    );

    // ----------------------------------------------- echo FIFO (to serial)
    logic [7:0] echo_din;
    logic       echo_wput;
    logic [7:0] echo_dout;
    logic       echo_full, echo_empty;
    logic       echo_rget;

    assign echo_rget = !echo_empty && !tx_busy;

    fifo #(.WIDTH(8), .ENTRIES(256)) echo (
        .clk(clk), .rst(rst),
        .din(echo_din), .wput(echo_wput), .full(echo_full),
        .dout(echo_dout), .rget(echo_rget), .empty(echo_empty)
    );

    uart_tx #(.BAUD(1_000_000), .CLK_FREQ(100_000_000)) tx (
        .clk(clk), .rst(rst),
        .tx(usb_tx), .busy(tx_busy),
        .data(echo_rget ? echo_dout : 8'h00), .new_data(echo_rget)
    );

    // ------------------------------------------------------------------ SPI
    // SCK is a clock. A regional buffer next to the clock-capable SCK pin
    // has ~2 ns less insertion delay than a global BUFG, which goes straight
    // into the MISO clock-to-out time.
    logic sck_clk;

    BUFR #(.BUFR_DIVIDE("BYPASS")) sck_bufr (
        .I(sck), .O(sck_clk), .CE(1'b1), .CLR(1'b0)
    );

    logic [7:0] spi_din;
    logic       spi_din_valid;
    logic       spi_din_full;
    logic [7:0] spi_dout;
    logic       spi_dout_rdy;
    logic       spi_idle;           // CS high, synchronised in spi_buffer
    logic       spi_rx_pending;     // a received byte is still on its way

    spi_buffer spibuffer (
        .clk(clk), .rst(rst),
        .sck(sck_clk), .sdi(sdi), .cs(cs), .sdo(sdo),
        .data_in(spi_din), .data_in_newdata(spi_din_valid),
        .data_in_full(spi_din_full),
        .data_out(spi_dout), .data_rdy(spi_dout_rdy),
        .idle(spi_idle), .rx_pending(spi_rx_pending)
    );

    // -------------------------------------------------------- state machine
    state_t spi_state = IDLE;
    logic   drq_reg   = 1'b0;
    // CS asserted. Taken from the synchronised CS in spi_buffer (CS itself is
    // asynchronous) and registered once more: that makes CS reach the state
    // machine one clock later than rx_toggle reaches rx_pending, so a byte
    // completing just before CS rises is seen as pending in time.
    logic   spi_busy  = 1'b0;

    assign drq = drq_reg;

    // Data routing:
    //  IDLE: serial byte -> echo FIFO and SPI transmit FIFO
    //  BUSY: SPI byte    -> echo FIFO
    always_comb begin
        echo_din      = 8'h00;
        echo_wput     = 1'b0;
        spi_din       = 8'h00;
        spi_din_valid = 1'b0;

        case (spi_state)
            IDLE:
                if (rx_new_data && !echo_full) begin
                    echo_din  = rx_data;
                    echo_wput = 1'b1;
                    if (!spi_din_full) begin
                        spi_din       = rx_data;
                        spi_din_valid = 1'b1;
                    end
                end
            BUSY:
                if (spi_dout_rdy && !echo_full) begin
                    echo_din  = spi_dout;
                    echo_wput = 1'b1;
                end
            REQUESTED: ;    // waiting for CS: route nothing
            default: ;
        endcase
    end

    always_ff @(posedge clk) begin
        spi_busy <= ~spi_idle;

        case (spi_state)
            IDLE:       // request a transfer on newline or full SPI buffer
                if (rx_new_data && !echo_full &&
                    (spi_din_full || rx_data == 8'h0a)) begin
                    drq_reg   <= 1'b1;
                    spi_state <= REQUESTED;
                end
            REQUESTED:  // wait for chip select
                if (spi_busy)
                    spi_state <= BUSY;
            BUSY: begin // transfer started: drop DRQ, wait for CS release
                drq_reg <= 1'b0;
                // stay one more cycle while the last byte reaches data_out:
                // data_rdy is routed to the echo FIFO only in BUSY
                if (!spi_busy && !spi_rx_pending)
                    spi_state <= IDLE;
            end
            default: begin
                drq_reg   <= 1'b0;
                spi_state <= IDLE;
            end
        endcase

        if (rst)
            spi_state <= IDLE;
    end

    // ----------------------------------------------------------------- LEDs
    assign led = {
        ~cs,            // 7: SPI selected
        1'b0,           // 6 (was sck; sck is now a clock net)
        1'b0,           // 5
        drq_reg,        // 4
        spi_din_full,   // 3: SPI transmit FIFO full
        spi_dout_rdy,   // 2: SPI byte received
        echo_full,      // 1
        echo_empty      // 0
    };

endmodule

`default_nettype wire
