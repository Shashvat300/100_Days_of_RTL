// Genarator Class------------------------- 

class Generator;
  
  Packet c1;
  mailbox spaceX;
  
//   Constructor , Getting mailbox handle
  function new(mailbox spaceX);
    this.spaceX=spaceX;
  endfunction
  
  task run;
    repeat(2)
      begin
        c1=new();
        c1.randomize();
        spaceX.put(c1);
        $display("Generator :: Packet put into Mailbox");
        #5;
      end
  endtask
endclass
