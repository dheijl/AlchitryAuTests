// Reset conditioner (Alchitry library component, MIT license).
// Asserts reset asynchronously, releases it synchronously to clk after
// STAGES clock cycles, so the whole design leaves reset on the same edge.

`default_nettype none

module reset_conditioner #(
    parameter int STAGES = 4
) (
    input  wire  clk,
    input  wire  in,        // raw reset, active high
    output logic out        // conditioned reset, active high
);

    logic [STAGES-1:0] stage = '1;

    always_ff @(posedge clk or posedge in) begin
        if (in)
            stage <= '1;
        else
            stage <= {stage[STAGES-2:0], 1'b0};
    end

    assign out = stage[STAGES-1];

endmodule

`default_nettype wire
