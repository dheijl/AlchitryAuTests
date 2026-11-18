// Reset conditioner (Alchitry library component, MIT license).
// Asserts reset asynchronously, releases it synchronously to clk after
// STAGES clock cycles, so the whole design leaves reset on the same edge.

module reset_conditioner #(
    parameter STAGES = 4
) (
    input  wire clk,
    input  wire in,         // raw reset, active high
    output wire out         // conditioned reset, active high
);

    reg [STAGES-1:0] stage = {STAGES{1'b1}};

    always @(posedge clk or posedge in) begin
        if (in)
            stage <= {STAGES{1'b1}};
        else
            stage <= {stage[STAGES-2:0], 1'b0};
    end

    assign out = stage[STAGES-1];

endmodule
