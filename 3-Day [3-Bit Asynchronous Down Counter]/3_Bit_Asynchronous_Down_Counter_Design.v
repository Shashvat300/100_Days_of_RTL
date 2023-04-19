// ___________________________________________________
// 3-Bit Asynchronous Down Counter.....................
// ____________________________________________________
 

module Down_Counter(count,clk,reset);
  
  output reg [2:0] count;
  input clk, reset;
  
  always @(negedge clk)
    begin
      if(reset)
        count=3'b111;
      else
        count=count-1;
    end
endmodule
