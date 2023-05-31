//   Driver Class --------------------------------
  
  class Driver;
    
    Packet c1=new;
    mailbox spaceX;
    
//   Constructor , Getting mailbox handle
    function new(mailbox spaceX);
      this.spaceX=spaceX;
    endfunction
    
    task run;
      repeat(2)
        begin
          spaceX.get(c1);
          $display("Driver :: Packet Recived");
          $display("Drive :: a=%d b=%d \n ",c1.a,c1.b);
        end
    endtask
  endclass
