// ____________________________________________________________________
// Parallel In Serial Out(PISO) Shift Register.........................
// ____________________________________________________________________



module tb_piso();
  
  wire OUT;
  reg CLK,LOAD;
  reg [3:0] D_IN;
  
  
  PISO_Shift_Register inst(.clk(CLK),.d_in(D_IN),.load(LOAD),.out(OUT));
  
  
  initial
    begin
      CLK=0;
      forever
        #1 CLK=~CLK;
    end
  
  initial
    begin
      $monitor("CLK=%B D_IN=%B LOAD=%B  OUT=%B TIME=%0T",CLK,D_IN,LOAD,OUT,$time);
      
      D_IN=4'B1011;
      LOAD=1;
      #10;
      LOAD=0;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #50 $finish;
    end
endmodule
