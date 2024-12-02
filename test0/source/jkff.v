module jkff (
    input clk,
    input rst,
  input  J, K,
  output Q, Qn
);
  always @(posedge clk, posedge rst) begin
    if (rst) begin
      Q  <= 0;
      Qn <= 1;
    end else if (J && K) begin
      Q  <= ~Q;
      Qn <= Q;
    end else if (J) begin
      Q  <= 1;
      Qn <= 0;
    end else if (K) begin
      Q  <= 0;
      Qn <= 1;
    end
  end
endmodule