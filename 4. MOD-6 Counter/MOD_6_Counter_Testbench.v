// ________________________________________________________
// Testbench...............................................
// ________________________________________________________

module tb_mod();
  
  wire[2:0] COUNT;
  reg CLK,RESET;
  
  Mod6_Counter inst1(.clk(CLK),.reset(RESET),.count(COUNT));
  
  initial
    begin
      CLK=0;
      forever
        #2 CLK=~CLK;
    end
  
  initial
    begin
      $monitor("CLK=%b  RESET=%b COUNT=%d  TIME=%0t",CLK,RESET,COUNT,$time);
      
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
