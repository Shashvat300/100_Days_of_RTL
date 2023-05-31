// -------------------------------------------------------------------
// Sequence Detector(Overlapping)-------------------------------------
// -------------------------------------------------------------------




module Sequence_1010_TB();
  
  wire OUT;
  reg IN,CLK,RST;
  
  Sequence_1010 inst1(.in(IN),.clk(CLK),.rst(RST),.out(OUT));
  
  initial
    begin
      CLK=0;
      forever
        #2 CLK=~CLK;
    end
  
  initial
    begin
      $monitor("\t CLK=%B RST=%B IN=%B OUT=%B  Time=%0T",CLK,RST,IN,OUT,$time);
     
      
      RST=0;
      IN=0;
      
      #4;
      RST=1;
      
      #4  IN=1;
      #4  IN=0;
      
      #4  IN=1;
      #4  IN=0;
      
      #4  IN=1;
      #4  IN=0;
      
      #4  IN=1;
      #4  IN=0;
      
      #4  IN=1;
      #4  IN=0;
      
      #4  IN=1;
      #4  IN=0;
      
      #4  IN=1;
      #4  IN=0;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #200 $finish;
    end
endmodule
