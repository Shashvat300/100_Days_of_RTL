
module Bidirectional(out,clk,reset,s_in);
  
  parameter n=8;
  
  output out;
  input clk, reset;
  input s_in;
  
  reg [n-1:0] r_reg;
  wire [n-1:0] r_next;
  
  always @(posedge clk)
    begin
      if(reset)
        r_reg<=0;
      else
        r_reg<=r_next;
    end
  
  assign r_next={s_in, r_reg[n-1:1]};
  assign out=r_reg[0];
endmodule

