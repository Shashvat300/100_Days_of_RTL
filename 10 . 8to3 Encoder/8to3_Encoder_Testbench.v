// _______________________________________________________
// Testbench..............................................
// _______________________________________________________
 


module tb_e8to3();
  
  wire [3:0] OUT;
  reg [7:0] A_IN;
  
  Encoder_8to3 inst1(.a_in(A_IN),.out(OUT));
  
  initial
    begin
      $monitor("A_IN=%B  OUT=%B  TIME=%0T",A_IN,OUT,$time);
      
      A_IN = 8'b00000001;
      #2; 
      A_IN = 8'b00000010;
      #2;
      A_IN = 8'b00000100;
      #2;
      A_IN = 8'b00001000;
      #2;
      A_IN = 8'b00010000;
      #2;
      A_IN = 8'b00100000;
      #2;
      A_IN = 8'b01000000;
      #2;
      A_IN = 8'b10000000;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #50 $finish;
    end
endmodule
