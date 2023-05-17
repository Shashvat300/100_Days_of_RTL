// __________________________________________________________________________________________________
// Swapping (Using Non-Blocking)_____________________________________________________________________
// __________________________________________________________________________________________________



module Swap();
  
  int a;
  reg [31:0] b;
  
  initial
    begin
      a=10;
      b=32;
      $display("\t Value Before Swapping a=%0d & b=%0d",a,b, $time);
    end
  
  initial
    begin
      #10;
      a<=b;
      b<=a;
      $display("\t Value After Swapping a=%0d & b=%0d",a,b,$time);
    end
  
endmodule
