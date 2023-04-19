// ___________________________________________________
// 3-Bit Asynchronous Up Counter......................
// ___________________________________________________
 

module up_counter(count,clk,reset);
  
  output reg [3:0] count;
  input clk,reset;
  
  always @(negedge clk)
    begin
      if(reset)
        count=3'b000;
      else
        count=count+1;
    end
  
endmodule
