// UART transmitter, 8N1 (Alchitry library component, MIT license).
// Pulse new_data with data while busy is 0 to send a byte.

module uart_tx #(
    parameter CLK_FREQ = 100_000_000,
    parameter BAUD     = 1_000_000
) (
    input  wire       clk,
    input  wire       rst,
    output wire       tx,
    output wire       busy,
    input  wire [7:0] data,
    input  wire       new_data
);

    localparam CLK_PER_BIT = (CLK_FREQ + BAUD) / BAUD - 1;
    localparam CTR_SIZE    = $clog2(CLK_PER_BIT);

    localparam [1:0] IDLE      = 2'd0,
                     START_BIT = 2'd1,
                     DATA      = 2'd2,
                     STOP_BIT  = 2'd3;

    reg [1:0]          state      = IDLE;
    reg [CTR_SIZE-1:0] ctr        = 0;
    reg [2:0]          bit_ctr    = 3'd0;
    reg [7:0]          saved_data = 8'h00;
    reg                tx_reg     = 1'b1;   // line idles high

    assign tx   = tx_reg;
    assign busy = (state != IDLE);

    wire bit_done = (ctr == CLK_PER_BIT - 1);

    always @(posedge clk) begin
        case (state)
            IDLE: begin
                tx_reg  <= 1'b1;
                bit_ctr <= 3'd0;
                ctr     <= 0;
                if (new_data) begin
                    saved_data <= data;
                    state      <= START_BIT;
                end
            end
            START_BIT: begin
                tx_reg <= 1'b0;
                ctr    <= ctr + 1'b1;
                if (bit_done) begin
                    ctr   <= 0;
                    state <= DATA;
                end
            end
            DATA: begin
                tx_reg <= saved_data[bit_ctr];      // LSB first
                ctr    <= ctr + 1'b1;
                if (bit_done) begin
                    ctr     <= 0;
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
        endcase

        if (rst)
            state <= IDLE;
    end

endmodule
