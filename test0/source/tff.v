module tff (
  input clk,
  input rst,
  input  T,
  output Q, 
  output Qn
);
  always @(posedge clk, posedge rst) begin
    if (rst) begin
      Q  <= 0;
      Qn <= 1;
    end else if (T) begin
      Q  <= ~Q;
      Qn <= Q;
    end
  end
endmodule