// __________________________________________________________
// Testbench.................................................
// __________________________________________________________


module tb_jc();
  
  wire [3:0] COUNT;
  reg CLK,RESET;
  
  Johnson_Counter inst1(.clk(CLK),.reset(RESET),.count(COUNT));
  
  initial
    begin
      CLK=0;
      forever
        #2 CLK=~CLK;
    end
  
  initial
    begin
      $monitor("CLK=%b  RESET=%b  COUNT=%b TIME=%0T",CLK,RESET,COUNT,$time);
      
      RESET=1;
      #10;
      RESET=0;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #200 $finish;
    end
endmodule
