// ____________________________________________________________
// SERIAL IN SERIAL OUT (SISO) SHIFT REGISTER .................
// ____________________________________________________________



module tb_sr();
  
  wire OUT;
  reg CLK,A_IN;
  
  SISO_SHIFT_REGISTER inst23(.clk(CLK),.a_in(A_IN),.out(OUT));
  
  initial
    begin
      CLK=0;
      forever
        #2 CLK=~CLK;
    end
  
  initial
    begin
      $monitor("CLK=%B A_IN=%B  OUT=%B  TIME=%0T",CLK,A_IN,OUT,$time);
      
      A_IN=0;
      #4;
      A_IN=1;
      #4;
      A_IN=1;
      #4;
      A_IN=0;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #40 $finish;
    end
endmodule
