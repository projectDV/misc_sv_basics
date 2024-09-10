class subclass;
    int x=100;
    function subclass copy();
        copy=new();
        copy.x=this.x;
        return(copy);
    endfunction
endclass
class parent;
    int y=200;
    subclass s=new();
    function parent copy();
        copy=new();
        copy.y=this.y;
        copy.s=s.copy();
      	$display(y,s);
        return(copy);
    endfunction
endclass
module top;
    parent p=new();
  subclass s=new();
    initial begin
        p.copy();
      	p.y=400;
      	p.s.x=300;
      	p.copy();
    end
endmodule
===========================RESULT============================
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4747 kB (elbread=455 elab2=4147 kernel=144 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL:         200'{x:100}
# KERNEL:         400'{x:300}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
