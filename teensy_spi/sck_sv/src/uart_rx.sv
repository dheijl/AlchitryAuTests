// UART receiver, 8N1 (Alchitry library component, MIT license).
// new_data pulses for one cycle when a byte is available on data.

`default_nettype none

module uart_rx #(
    parameter int CLK_FREQ = 100_000_000,
    parameter int BAUD     = 1_000_000
) (
    input  wire        clk,
    input  wire        rst,
    input  wire        rx,
    output logic [7:0] data,
    output logic       new_data
);

    localparam int CLK_PER_BIT = (CLK_FREQ + BAUD) / BAUD - 1;
    localparam int CTR_SIZE    = $clog2(CLK_PER_BIT);
    // unsigned, counter-width compare values
    localparam logic [CTR_SIZE-1:0] CTR_HALF = CTR_SIZE'(CLK_PER_BIT >> 1);
    localparam logic [CTR_SIZE-1:0] CTR_LAST = CTR_SIZE'(CLK_PER_BIT - 1);

    typedef enum logic [1:0] {
        IDLE,
        WAIT_HALF,      // to the middle of the start bit
        WAIT_FULL,      // to the middle of the next data bit
        WAIT_HIGH       // for the stop bit
    } state_t;

    state_t              state      = IDLE;
    logic [CTR_SIZE-1:0] ctr        = '0;
    logic [2:0]          bit_ctr    = '0;
    logic [7:0]          saved_data = '0;
    logic                new_data_r = 1'b0;
    logic [2:0]          rxd        = '0;   // synchroniser
    logic                rx_s;

    assign rx_s     = rxd[2];
    assign data     = saved_data;
    assign new_data = new_data_r;

    always_ff @(posedge clk) begin
        rxd        <= {rxd[1:0], rx};
        new_data_r <= 1'b0;

        case (state)
            IDLE: begin
                bit_ctr <= '0;
                ctr     <= '0;
                if (!rx_s)
                    state <= WAIT_HALF;
            end
            WAIT_HALF: begin
                ctr <= ctr + 1'b1;
                if (ctr == CTR_HALF) begin
                    ctr   <= '0;
                    state <= WAIT_FULL;
                end
            end
            WAIT_FULL: begin
                ctr <= ctr + 1'b1;
                if (ctr == CTR_LAST) begin
                    saved_data <= {rx_s, saved_data[7:1]};   // LSB first
                    bit_ctr    <= bit_ctr + 1'b1;
                    ctr        <= '0;
                    if (bit_ctr == 3'd7) begin
                        state      <= WAIT_HIGH;
                        new_data_r <= 1'b1;
                    end
                end
            end
            WAIT_HIGH:
                if (rx_s)
                    state <= IDLE;
            default:
                state <= IDLE;
        endcase

        if (rst)
            state <= IDLE;
    end

endmodule

`default_nettype wire
