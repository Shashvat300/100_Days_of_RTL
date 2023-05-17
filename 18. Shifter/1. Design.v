// ___________________________________________________________
// Shifter____________________________________________________
//____________________________________________________________



module Shifter(shifted_data,data_in,shift_amount);
  
  input [31:0] data_in;
  input [3:0] shift_amount;
  output reg [31:0] shifted_data;
  
  initial 
    shifted_data=4'b0;

  always @(*) begin
    if (shift_amount<=3)
      shifted_data = data_in >> shift_amount; 
    else
      shifted_data = data_in << shift_amount;
  end
  
endmodule
