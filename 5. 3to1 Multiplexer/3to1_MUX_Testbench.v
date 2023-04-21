// ________________________________________________________
// Testbench...............................................
// ________________________________________________________


module tb_mux();
  
  wire OUT;
  reg I0,I1,I2,S0,S1;
  
  mux_3to1 inst1(.i0(I0),.i1(I1),.i2(I2),.s0(S0),.s1(S1),.out(OUT)); 
  
  initial
    begin
      $monitor("I0=%b I1=%b I2=%b  SO=%b S1=%b  OUT=%b  TIME=%0t",I0,I1,I2,S0,S1,OUT,$time);
      
      I0=1; I1=0; I2=0;
      
         S0=0; S1=0;
      #2 S0=0; S1=1;
      
      #2 S0=1; S1=0;
      #2 S0=1; S1=1;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
endmodule
