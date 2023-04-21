// _____________________________________________
// 3to1 Multiplexer............................
// _____________________________________________


module mux_3to1(out,i0,i1,i2,s0,s1);
  
  output reg out;
  input i0,i1,i2,s0,s1;
  
  always @(*)
    begin
      case({s0,s1})
        2'b00 : out=i0;
        2'b01 : out=i0;
        2'b10 : out=i1;
        2'b11 : out=i2;
      endcase
    end
endmodule
