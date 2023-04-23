// _________________________________________________________
// Johnson Counter..........................................
// _________________________________________________________


module Johnson_Counter(count,clk,reset);
  
  output reg [3:0] count;
  input clk, reset;
  
  always @(negedge clk)
    begin
      if(reset)
        count=4'b0;
      else
        count={~count[0], count[3:1]};
    end
endmodule
