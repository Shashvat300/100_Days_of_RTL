// Testbench_Top-----------------------


`include "Packet.sv"
`include "Generator.sv"
`include "Driver.sv"

module Sp;
  
  initial
    begin
      mailbox spaceX=new();
      Generator gen=new(spaceX);
      Driver dri=new(spaceX);
      
      $display("-----------------------------------------");
      fork
        gen.run();
        dri.run();
      join
      $display("----------------------------------------");
    end
endmodule
  

