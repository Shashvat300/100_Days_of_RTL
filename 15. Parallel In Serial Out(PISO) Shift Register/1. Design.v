// __________________________________________________________________
// Parallel In Serial Out(PISO) Shift Register.........................
// ____________________________________________________________________



module PISO_Shift_Register(out,clk,d_in,load);
  
  output reg out;
  input clk;
  input load;
  input [3:0] d_in;
  
  reg [3:0] q;
  
  initial
    q=4'b0;
  
  always @(negedge clk, posedge clk)
    begin
      if(load)
        q<=d_in;
      else
        begin
          q[3]<=d_in[0];
          q[2]<=q[3];
          q[1]<=q[2];
          q[0]<=q[1];
          out=q[0];
        end      
    end
  
endmodule
