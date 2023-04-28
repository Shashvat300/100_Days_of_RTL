// __________________________________________________________
// PIPO(Parallel In Parallel Out ) Register..................
// __________________________________________________________

module PIPO_Regester(q,reset,clk);
  
  
  output reg [3:0] q;
  input [3:0] reset;
  input clk;
  
  always @(negedge clk)
    begin
      q<=reset;
    end
endmodule
