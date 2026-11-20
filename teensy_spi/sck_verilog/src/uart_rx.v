// UART receiver, 8N1 (Alchitry library component, MIT license).
// new_data pulses for one cycle when a byte is available on data.

module uart_rx #(
    parameter CLK_FREQ = 100_000_000,
    parameter BAUD     = 1_000_000
) (
    input  wire       clk,
    input  wire       rst,
    input  wire       rx,
    output wire [7:0] data,
    output wire       new_data
);

    localparam CLK_PER_BIT = (CLK_FREQ + BAUD) / BAUD - 1;
    localparam CTR_SIZE    = $clog2(CLK_PER_BIT);
    // unsigned, counter-width compare values
    localparam [CTR_SIZE-1:0] CTR_HALF = CLK_PER_BIT >> 1;
    localparam [CTR_SIZE-1:0] CTR_LAST = CLK_PER_BIT - 1;

    localparam [1:0] IDLE      = 2'd0,
                     WAIT_HALF = 2'd1,  // to the middle of the start bit
                     WAIT_FULL = 2'd2,  // to the middle of the next data bit
                     WAIT_HIGH = 2'd3;  // for the stop bit

    reg [1:0]          state      = IDLE;
    reg [CTR_SIZE-1:0] ctr        = 0;
    reg [2:0]          bit_ctr    = 3'd0;
    reg [7:0]          saved_data = 8'h00;
    reg                new_data_r = 1'b0;
    reg [2:0]          rxd        = 3'b000;  // synchroniser
    wire               rx_s       = rxd[2];

    assign data     = saved_data;
    assign new_data = new_data_r;

    always @(posedge clk) begin
        rxd        <= {rxd[1:0], rx};
        new_data_r <= 1'b0;

        case (state)
            IDLE: begin
                bit_ctr <= 3'd0;
                ctr     <= 0;
                if (!rx_s)
                    state <= WAIT_HALF;
            end
            WAIT_HALF: begin
                ctr <= ctr + 1'b1;
                if (ctr == CTR_HALF) begin
                    ctr   <= 0;
                    state <= WAIT_FULL;
                end
            end
            WAIT_FULL: begin
                ctr <= ctr + 1'b1;
                if (ctr == CTR_LAST) begin
                    saved_data <= {rx_s, saved_data[7:1]};   // LSB first
                    bit_ctr    <= bit_ctr + 1'b1;
                    ctr        <= 0;
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
