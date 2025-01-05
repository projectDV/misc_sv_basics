class parent;
  virtual function void display();
    $display("Parent");
  endfunction
endclass
class child extends parent;
  function void display();
    $display("CHILD");
  endfunction 
endclass
module top;
  parent p=new();
  child c=new();
  initial begin
    p.display();
    c.display();
    $cast(p,c);
    p.display();
  end
endmodule
//===============================RESULT==================================
# Allocation: Simulator allocated 4748 kB (elbread=459 elab2=4145 kernel=143 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Parent
# KERNEL: CHILD
# KERNEL: CHILD
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
