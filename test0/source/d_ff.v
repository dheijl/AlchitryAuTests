module d_ff (
  input clk,
  input rst,
  input  D,
  output Q,
  output Qn
);
  always @(posedge clk, posedge rst) begin
    if (rst) begin
      Q  <= 0;
      Qn <= 1;
    end else begin
      Q  <= D;
      Qn <= ~D;
    end
  end
endmodule