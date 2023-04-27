//______________________________________________________________
//Testbench.....................................................
// _____________________________________________________________

module tb_cd();
  
  wire DIV2,DIV4,DIV8;
  reg CLK;
  
  Clock_Divider Inst1(.clk(CLK),.div2(DIV2),.div4(DIV4),.div8(DIV8));
  
  initial
    begin
      CLK=0;
      forever
        #2 CLK=~CLK;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #200 $finish;
    end
endmodule
