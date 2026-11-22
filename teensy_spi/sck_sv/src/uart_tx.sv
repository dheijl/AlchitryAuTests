// UART transmitter, 8N1 (Alchitry library component, MIT license).
// Pulse new_data with data while busy is 0 to send a byte.

`default_nettype none

module uart_tx #(
    parameter int CLK_FREQ = 100_000_000,
    parameter int BAUD     = 1_000_000
) (
    input  wire        clk,
    input  wire        rst,
    output logic       tx,
    output logic       busy,
    input  wire  [7:0] data,
    input  wire        new_data
);

    localparam int CLK_PER_BIT = (CLK_FREQ + BAUD) / BAUD - 1;
    localparam int CTR_SIZE    = $clog2(CLK_PER_BIT);
    localparam logic [CTR_SIZE-1:0] CTR_LAST = CTR_SIZE'(CLK_PER_BIT - 1);  // unsigned compare value

    typedef enum logic [1:0] {
        IDLE,
        START_BIT,
        DATA,
        STOP_BIT
    } state_t;

    state_t              state      = IDLE;
    logic [CTR_SIZE-1:0] ctr        = '0;
    logic [2:0]          bit_ctr    = '0;
    logic [7:0]          saved_data = '0;
    logic                tx_reg     = 1'b1;   // line idles high
    logic                bit_done;

    assign tx       = tx_reg;
    assign busy     = (state != IDLE);
    assign bit_done = (ctr == CTR_LAST);

    always_ff @(posedge clk) begin
        case (state)
            IDLE: begin
                tx_reg  <= 1'b1;
                bit_ctr <= '0;
                ctr     <= '0;
                if (new_data) begin
                    saved_data <= data;
                    state      <= START_BIT;
                end
            end
            START_BIT: begin
                tx_reg <= 1'b0;
                ctr    <= ctr + 1'b1;
                if (bit_done) begin
                    ctr   <= '0;
                    state <= DATA;
                end
            end
            DATA: begin
                tx_reg <= saved_data[bit_ctr];      // LSB first
                ctr    <= ctr + 1'b1;
                if (bit_done) begin
                    ctr     <= '0;
                    bit_ctr <= bit_ctr + 1'b1;
                    if (bit_ctr == 3'd7)
                        state <= STOP_BIT;
                end
            end
            STOP_BIT: begin
                tx_reg <= 1'b1;
                ctr    <= ctr + 1'b1;
                if (bit_done)
                    state <= IDLE;
            end
            default:
                state <= IDLE;
        endcase

        if (rst)
            state <= IDLE;
    end

endmodule

`default_nettype wire
