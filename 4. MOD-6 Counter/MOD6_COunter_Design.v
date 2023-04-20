// ________________________________________________________
// MOD-6 Counter...........................................
// ________________________________________________________

module Mod6_Counter(count,clk,reset);
  
  output reg[2:0] count;
  input clk, reset;
  
  
  always @(negedge clk)
    begin
      if(reset)
        count=0;
        
      else if(count<5)
        count=count+1;
      
      else
        count=0;
    end
endmodule

