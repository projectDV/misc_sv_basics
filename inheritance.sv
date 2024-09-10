//inheritance
class parent;
    int addr=10;
  function print();
        $display(addr);
    endfunction
endclass
class child extends parent;
    int data=100;
    function print();
        super.print();
        $display(data);
    endfunction
endclass
module top;
    parent p;
    child c;
    initial begin
        p=new();
        c=new();
	    c.print();
    end
endmodule
=======================RESULT==========================
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4745 kB (elbread=455 elab2=4145 kernel=144 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL:          10
# KERNEL:         100
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
