// --------------------------------------------------------------
// Sequence Detector(Overlapping)--------------------------------
// --------------------------------------------------------------



module Sequence_1010(out,in,clk,rst);
  
  output reg out;
  input in,clk,rst;
  
  reg [1:0] state,next_state;
  
  parameter S0=0,
            S1=1,
            S2=2,
            S3=3;  
  
  always @(posedge clk)
    begin
      if(!rst)
        state<=2'b00;
      else
        state<=next_state;
    end
  
  always @(*)
    case(state)
      S0: begin
           next_state=in? S1:S0;
           out=0;
          end
          
      S1: begin
            next_state=in? S1:S2;
            out=0;
          end
          
      S2: begin
            next_state=in? S3:S0;
            out=0;
          end
          
      S3: begin
            next_state=in? S1:S2;
            out=in? 1'b0:1'b1;
          end
         
      default : begin
                  next_state=2'b00;
                  out=1'b0;             
                end
    endcase
endmodule
  
