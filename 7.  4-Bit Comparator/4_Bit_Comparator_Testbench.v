// ________________________________________________________
// 4 Bit Comparators.......................................
// ________________________________________________________


module tb_4btc();
  
  parameter BIT=4;
  
  wire OUT_A,OUT_B,OUT_C;
  reg [BIT-1:0] IN_A,IN_B;
  
  Bit4_Comparator inst1(.in_a(IN_A),.in_b(IN_B),.out_0(OUT_A),.out_1(OUT_B),.out_2(OUT_C));
  
  initial
    begin
      $monitor("IN_A=%B IN_B=%B  OUT_A [IN_A<IN_B] =%B OUT_B [IN_A>IN_B] =%B OUT_C [IN_A=IN_B] =%B  TIME=%0T",IN_A,IN_B,OUT_A,OUT_B,OUT_C,$time);
      
//  Assuming some random values hear..................... .....
      
         IN_A=4'b1100;   IN_B=4'b1100;
      #2 IN_A=4'b0100;   IN_B=4'b1100;
      
      #2 IN_A=4'b1111;   IN_B=4'b1100;
      #2 IN_A=4'b0010;   IN_B=4'b0100;
      
      #2 IN_A=4'b0000;   IN_B=4'b1110;
      #2 IN_A=4'b0110;   IN_B=4'b0001;
      
      #2 IN_A=4'b0011;   IN_B=4'b1100;
      #2 IN_A=4'b1010;   IN_B=4'b0101;
      
      #2 IN_A=4'b1111;   IN_B=4'b1111;
      #2 IN_A=4'b1001;   IN_B=4'b1110;  
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #50 $finish;
    end
endmodule
