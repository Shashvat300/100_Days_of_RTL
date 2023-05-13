// __________________________________________________
// D Flip Flop.......................................
// __________________________________________________

module d_ff(q,qbr,clk,d);
  
  output reg q;
  output reg qbr;
  input clk,d;

  always @(posedge clk)
    begin
      q <= d;
      qbr <= ~d;
    end

endmodule
