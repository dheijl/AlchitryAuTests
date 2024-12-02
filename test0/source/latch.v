module latch (
  input  clk,
  input  enable,
  input  dataIn,
  output dataOut
);

  always @(posedge clk) begin
    if (enable) begin
      dataOut <= dataIn;
    end
  end

endmodule