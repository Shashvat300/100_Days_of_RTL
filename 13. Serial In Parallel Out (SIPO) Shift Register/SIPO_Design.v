// _________________________________________________________
// Serial In Parallel Out (SIPO) Shift Rregister............
// _________________________________________________________


module SIPO_Shift_Register(reset,clk,a_in);
  
  output reg [3:0] reset;
  input clk,a_in;
  
  initial
    reset=4'b0;
  
  always @(negedge clk)
    begin
      reset[3]<=a_in;
      reset[2:0]<=reset[3:1];
    end
endmodule
