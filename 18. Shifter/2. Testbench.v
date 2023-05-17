// ______________________________________________________________________
// Shifter_______________________________________________________________
// ______________________________________________________________________




module tb_sf();
  
  wire [31:0] SHIFTED_DATA;
  
  reg [31:0] DATA_IN;
  reg [3:0] SHIFT_AMOUNT;
  
  Shifter INST(.data_in(DATA_IN),.shift_amount(SHIFT_AMOUNT),.shifted_data(SHIFTED_DATA));
  
  
 initial
    begin
      $monitor("Time=%0t   DATA_IN=%0b SHIFT_AMOUNT=%0d  SHIFTED_DATA=%0b ",$time,DATA_IN,SHIFT_AMOUNT,SHIFTED_DATA);
      
      SHIFT_AMOUNT=4;
      DATA_IN=4'b1011;
      #10;
      SHIFT_AMOUNT=3;
      DATA_IN=4'b1010;
      #10
      SHIFT_AMOUNT=7;
      DATA_IN=4'b1101;
      #10;
      SHIFT_AMOUNT=1;
      DATA_IN=4'b1011;
      
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #100 $finish;
    end
endmodule
