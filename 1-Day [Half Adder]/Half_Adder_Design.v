// ___________________________________________________
// Half Adder.........................................
// ___________________________________________________

module Half_Adder(s,c,a,b);
  
  output s,c;
  input a,b;
  
  wire s,c;
  
  assign s=a^b;
  assign c=a&b;
  
endmodule
