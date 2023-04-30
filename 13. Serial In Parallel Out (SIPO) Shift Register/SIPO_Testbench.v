// _________________________________________________________
// Teatbench................................................
// _________________________________________________________


module tb_sr();
  
  wire [3:0] RESET;
  reg CLK,A_IN;
  
  
  SIPO_Shift_Register inst1(.reset(RESET),.clk(CLK),.a_in(A_IN));
  
  initial
    begin
      CLK=1;
      forever
        #2 CLK=~CLK; 
    end
 
  
  initial
    begin
      $monitor("CLK=%B A_IN=%B   RESET=%B TIME=%0T",CLK,A_IN,RESET,$time);
      
      #4;
      A_IN=1;
      #4;
      A_IN=0;
      #4;
      A_IN=1;
      #4;
      A_IN=1;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #20 $finish;
    end
endmodule
