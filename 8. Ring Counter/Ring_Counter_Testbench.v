// ___________________________________________________________
// Testbench..................................................
// ___________________________________________________________

module tb_rc();
  
  wire [3:0] COUNT;
  reg CLK,RESET;
  
  Ring_Counter inst12(.clk(CLK),.reset(RESET),.count(COUNT));
  
  initial
    begin
      CLK=0;
      forever
        #2 CLK=~CLK;
    end
  
  initial
    begin
      $monitor("CLK=%B  RESET=%B COUNT=%B  TIME=%0T",CLK,RESET,COUNT,$time);
      
      RESET=1;
      #10;
      RESET=0;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #100 $finish;
    end
  
endmodule
