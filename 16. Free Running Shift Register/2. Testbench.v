// ______________________________________________________
// Free Running Shift Regester...........................
// ______________________________________________________



module tb_bsr();
  
  wire OUT;
  reg CLK,RESET,S_IN;
  
  Bidirectional inst1(.clk(CLK),.reset(RESET),.s_in(S_IN),.out(OUT));
  
  initial
    begin
      CLK=0;
      forever
        #2 CLK=~CLK;
    end
  
  initial
    begin
      $monitor("CLK=%B RESET=%B S_IN=%B OUT=%B,TIME=%0T",CLK,RESET,S_IN,OUT,$time);
      
      RESET=1;
      #10;
      RESET=0;
      #4;
      S_IN=1;
      S_IN=1;
      #4;
      S_IN=0;
      S_IN=0;
      #4;
      S_IN=1;
      S_IN=1;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #100 $finish;
    end
endmodule
