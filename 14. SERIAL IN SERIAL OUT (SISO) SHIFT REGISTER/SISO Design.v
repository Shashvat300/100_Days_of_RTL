// ____________________________________________________________
// SERIAL IN SERIAL OUT (SISO) SHIFT REGISTER .................
// ____________________________________________________________

module SISO_SHIFT_REGISTER(out,clk,a_in);
  
  output reg out;
  input clk,a_in;
  reg [2:0] q;
  
  always @(negedge clk)
    begin
      q[0]<=a_in;
      q[1]<=q[0];
      q[2]<=q[1];
      out<=q[2];
    end
endmodule
