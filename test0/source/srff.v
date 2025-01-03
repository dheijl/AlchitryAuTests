module srff (
  input clk,
  input rst,
  input  S, R,
  output Q, Qn
);
  always @(posedge clk, posedge rst) begin
    if (rst) begin
      Q  <= 0;
      Qn <= 1;
    end else if (S) begin
      Q  <= 1;
      Qn <= 0;
    end else if (R) begin
      Q  <= 0;
      Qn <= 1;
    end
  end
endmodule