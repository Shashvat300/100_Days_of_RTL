// _______________________________________________
// Ring Counter...................................
// _______________________________________________
module Ring_Counter(count,clk,reset);
  
  output reg [3:0] count;
  input clk,reset;
    
  always @(negedge clk)
    begin
      if(reset)
        count=4'b1000;
      else
        begin
          count[3]<=count[0];
          count[2]<=count[3];
          count[1]<=count[2];
          count[0]<=count[1];
        end
    end
endmodule
