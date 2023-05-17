// __________________________________________________________________
// Traffic Signal Controller.........................................
// __________________________________________________________________



module tb_tsc();
  
  wire [1:0] HWY,CNTRY;
  reg X;
//   x= Car on CNTRY
//   If TRUE indicate that there is car on the country road
  
  reg CLK,CLR;
  
//   Instantiate Signal Controller
  
  Traffic_Signal_Controller  inst1(.clk(CLK),.clr(CLR),.x(X),.hwy(HWY),.cntry(CNTRY));
//   Traffic_Signal_Controller inst(HWY, CNTRY, X, CLK, CLR);
  
  
  initial
    begin
      $monitor("\t CLR=%B X=%0b HWY=%0d CNTRY=%0d   TIME=%0T",CLR,X,HWY,CNTRY,$time);
    end
   
//   Setup Clock...
  initial
    begin
      CLK=`FALSE;
      forever 
        #5 CLK=~CLK;
    end
  
//   Control Clear Signal...
  initial
    begin
      #3 CLR=`TRUE;
      #4 CLR=`FALSE;
    end
      

    initial
      begin
        #5   X=`TRUE;
        #100 X=`FALSE;
        #100 X=`TRUE;
        #100 $stop;
      end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
//       #200 $finish;
    end
    
endmodule
