// _______________________________________________
// Half Adder Testbench...........................
// _______________________________________________

module tb_ha();
  
  wire S,C;
  reg A,B;
  
  Half_Adder inst(.a(A),.b(B),.s(S),.c(C));
  
  initial
    begin
      $monitor("Value of A=%b B==%b Output S=%b C=%b    Time=%0t",A,B,S,C,$time);
      
         A=0; B=0;
      #2 A=0; B=1;
      
      #2 A=1; B=0;
      #2 A=1; B=1;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #10 $finish;
    end
endmodule
