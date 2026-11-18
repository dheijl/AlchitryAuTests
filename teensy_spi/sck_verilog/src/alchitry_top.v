// Top level, hand translated from source/alchitry_top.luc
//
// Characters received on the USB serial port are echoed back and queued for
// SPI. DRQ is raised on newline or when the SPI transmit FIFO is full, asking
// the SPI controller (Teensy) to start a transfer. Bytes received over SPI are
// echoed to the serial port as well.

module alchitry_top (
    input  wire       clk,      // 100 MHz
    input  wire       rst_n,    // reset button, active low
    output wire [7:0] led,
    input  wire       usb_rx,   // USB -> serial
    output wire       usb_tx,   // serial -> USB
    input  wire       sck,      // SPI clock
    input  wire       sdi,      // SPI MOSI
    input  wire       cs,       // SPI chip select, active low
    output wire       sdo,      // SPI MISO
    output wire       drq       // SPI transfer request
);

    localparam [1:0] IDLE      = 2'd0,  // collecting serial input
                     REQUESTED = 2'd1,  // DRQ raised, waiting for CS
                     BUSY      = 2'd2;  // SPI transfer in progress

    // ---------------------------------------------------------------- reset
    wire rst;

    reset_conditioner reset_cond (
        .clk(clk), .in(~rst_n), .out(rst)
    );

    // ---------------------------------------------------------- serial port
    wire [7:0] rx_data;
    wire       rx_new_data;
    wire       tx_busy;

    uart_rx #(.BAUD(1_000_000), .CLK_FREQ(100_000_000)) rx (
        .clk(clk), .rst(rst),
        .rx(usb_rx), .data(rx_data), .new_data(rx_new_data)
    );

    // ----------------------------------------------- echo FIFO (to serial)
    reg  [7:0] echo_din;
    reg        echo_wput;
    wire [7:0] echo_dout;
    wire       echo_full, echo_empty;
    wire       echo_rget = !echo_empty && !tx_busy;

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
    wire sck_clk;

    BUFR #(.BUFR_DIVIDE("BYPASS")) sck_bufr (
        .I(sck), .O(sck_clk), .CE(1'b1), .CLR(1'b0)
    );

    reg  [7:0] spi_din;
    reg        spi_din_valid;
    wire       spi_din_full;
    wire [7:0] spi_dout;
    wire       spi_dout_rdy;

    spi_buffer spibuffer (
        .clk(clk), .rst(rst),
        .sck(sck_clk), .sdi(sdi), .cs(cs), .sdo(sdo),
        .data_in(spi_din), .data_in_newdata(spi_din_valid),
        .data_in_full(spi_din_full),
        .data_out(spi_dout), .data_rdy(spi_dout_rdy)
    );

    // -------------------------------------------------------- state machine
    reg [1:0] spi_state = IDLE;
    reg       drq_reg   = 1'b0;
    reg       spi_busy  = 1'b0;     // CS asserted (registered)

    assign drq = drq_reg;

    // Data routing:
    //  IDLE: serial byte -> echo FIFO and SPI transmit FIFO
    //  BUSY: SPI byte    -> echo FIFO
    always @* begin
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
            default: ;
        endcase
    end

    always @(posedge clk) begin
        spi_busy <= ~cs;

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
                if (!spi_busy)
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
