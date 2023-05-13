// __________________________________________________
// D Flip Flop.......................................
// __________________________________________________



module d_ff_tb;

  reg CLK, D;
  wire Q,Qbr;

  d_ff uut(.q(Q),.qbr(Qbr),.clk(CLK),.d(D));

  initial
    begin
      CLK=0;
      forever
        #5 CLK=~CLK;
    end

  initial
    begin
          D=0;
      #10 D=1;
      
      #10 D=0;
      #10 D=1;
      
      #10 D=0;
      #10 D=1;
      
      #10 D=0;
      #10 D=1;
    end

  always @(posedge CLK)
    $display("CLK=%B D=%B Q=%B Qbr=%B  TIME=%0T",CLK,D,Q,Qbr,$time);
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #100 $finish;
    end
endmodule
