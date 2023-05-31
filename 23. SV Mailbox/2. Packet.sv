// Packet Class-------------------------------


class Packet;
  
  rand bit a;
  rand bit b;
  
  function void post_randomize();
    $display("\t Packet :: Packet Generated");
    $display("Packet :: a=%d b=%d",a,b);
  endfunction
endclass
