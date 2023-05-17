// __________________________________________________________________
// Traffic Signal Controller.........................................
// __________________________________________________________________




`define TRUE   1'b1
`define FALSE  1'b0

// Delays...

`define Y2RDELAY 3  //YELLOW to RED Delay
`define R2GDELAY 2  //RED to GREAN Delay



module Traffic_Signal_Controller(hwy,cntry,x,clk,clr);
  
  output [1:0] hwy,cntry;  
//   2-bit Output for 3 state of signal Green, Yellow ,Red
  
  reg [1:0] hwy, cntry;
//   Declared output signal are registers
  
  input x;
//   if TRUE indicates that there is a car on the country
//   rode otherwise FALSE
  
  input clk,clr;
  
  parameter RED=2'd0,
            YELLOW=2'd1,
            GREEN=2'd2;
  
  
//   State Definition     HWY       CNTRY
  parameter S0=3'd0,  //  GREEN     RED
            S1=3'd1,  //  YELLOW    RED
            S2=3'd2,  //  RED       RED
            S3=3'd3,  //  RED       GREEN
            S4=3'd4;  //  RED       YELLOW
  
//   Internal State Variables
  reg [2:0] state;
  reg [2:0] next_state;
  
//   State change only at postive edge of clock
  always @(posedge clk)
    if(clr)
      state<=S0; // Controller starts in S0 state
    else
      state<=next_state;  // State change
  
  
//   Computing value of main signal & cuntry signal
  always @(state)
    begin
      hwy=GREEN; // Defalt Light Assignment for Highway Light
      cntry=RED; // Defalt Light Assignment for Country Light
      case(state)
        S0: begin
              hwy=GREEN;
              cntry=RED;
            end
        
        S1: begin  
              hwy=YELLOW;
              cntry=RED;
            end
        
        S2: begin
              hwy=RED;
              cntry=RED;
            end
        
        S3: begin
              hwy=RED;
              cntry=GREEN;
            end
        
        S4: begin
              hwy=RED;
              cntry=YELLOW;
            end
      endcase
    end
  
  
  
//   State machine logic using case statement
  always @(state,x)
    begin
      case(state)
        S0: if(x)
              next_state=S1;
            else
              next_state=S0;
        
        S1: begin   //Delay some postive edge of clock
             repeat(`Y2RDELAY) @(posedge clk);
             next_state = S2;
            end
        
        S2: begin  //Delay some postive edge of clock
             repeat(`R2GDELAY) @(posedge clk);
             next_state = S3;
            end
        
        S3: if(x)
             next_state=S3;
           else
             next_state=S4;
        
        S4: begin  //Delay some postive edge of clock
             repeat(`Y2RDELAY) @(posedge clk);
             next_state = S0;
            end
        default: next_state=S0;
      endcase
    end
  
endmodule
  
  
  
  
