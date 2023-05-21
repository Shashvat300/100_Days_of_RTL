// ----------------------------------------------------------------------------------
//  SystemVerilog Randomization------------------------------------------------------
// ----------------------------------------------------------------------------------

class Parant;
  
  rand reg [3:0] rand_a;
  randc bit [3:0] randc_b;
  
  function void Display();
    $display("\t Rndom Value of rand_a=%d & randc_b=%d",rand_a,randc_b);
  endfunction
  
endclass

module Random();
  
  initial
    begin
      Parant c1=new();
      for(int i=0; i<20; i++)
        begin
          c1.randomize();
          c1.Display();
        end
    end
endmodule
