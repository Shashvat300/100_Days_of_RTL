// ___________________________________________
// 4 Bit Comparators..........................
// ___________________________________________


module Bit4_Comparator(out_0,out_1,out_2,in_a,in_b);
  
  	parameter BIT=4;
  
  output reg out_0;
  output reg out_1;
  output reg out_2;
  
  input [BIT-1:0] in_a,in_b;
  
  always @(in_a, in_b)
    begin
      if(in_a<in_b)
        out_0<=1;
      else
        out_0<=0;
      
      if(in_a>in_b)
        out_1<=1;
      else
        out_1=0;
      
      if(in_a==in_b)
        out_2<=1;
      else
        out_2<=0;
    end
endmodule
