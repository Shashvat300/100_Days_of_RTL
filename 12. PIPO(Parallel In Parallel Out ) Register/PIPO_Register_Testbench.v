// __________________________________________________________
// Testbench.................................................
// __________________________________________________________

module tb_pipo();
  
  wire [3:0] Q;
  reg [3:0] RESET;
  reg CLK;
  
  PIPO_Regester inst1(.clk(CLK),.reset(RESET),.q(Q));
  
  initial
    begin
      CLK=0;
      forever
        #1 CLK=~CLK;
    end
  
  initial
    begin
      $monitor("CLK=%B RESET=%B  Q=%B  TIME=%0T",CLK,RESET,Q,$time);
      
      RESET=4'b0;
      #10;
      RESET=4'b1110;
      #10;
      RESET=4'b1100;
      #10;
      RESET=4'b1001;
      #10;
      RESET=4'b0011;
      #10;
      RESET=4'b1;
      
      
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #55 $finish;
    end
endmodule
