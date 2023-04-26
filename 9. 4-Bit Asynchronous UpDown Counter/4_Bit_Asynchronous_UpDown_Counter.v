// _______________________________________________________
// 4-Bit Asynchronous UpDown Counter......................
// _______________________________________________________
 

module up_counter(count,clk,reset);
  
  output reg [3:0] count;
  input clk,reset;
  
  initial
    count=4'b0;
  
  always @(negedge clk, posedge clk)
    begin
      if(reset)
        count=count+1;
      else
        count=count-1;
    end
  
endmodule
