class base();
  virtual function display();
    $display("Base");
  endfunction
endclass
class child extends base;
  int var=100;
  function display();
    $display("child");
  endfunction
endclass
module top;
  base b=new();
  child c=new();
  initial begin
    b.display();//Base
    b=c;
    b.display();//Child
    $display(b.data);//Not possible
    //c=b; Illegal
    $cast(c,b);//safely down casting 
    $display(c.data);//100
  end
endmodule
    
    
