// Code your testbench here
// or browse Examples
//polymorphism 
class packets;
    virtual function void process();
        $display("base packet");
    endfunction
endclass
class large_packet extends packets;
    function void process();
        $display("large packets");
    endfunction
endclass
class small_packet extends packets;
    function void process();
        $display("Small packets");
    endfunction
endclass
module top; 
    packets p;
    large_packet lp;
    small_packet sp;
    initial begin   
        p=new();
        p.process();
        lp=new();
        lp.process();
        sp=new();
        sp.process();
      	p=lp;
      	p.process();
      	p=sp;
      	p.process();
    end
endmodule
===============================RESULT==================================
SUCCESS "Compile success 0 Errors 0 Warnings  Analysis time: 0[s]."
done
# Aldec, Inc. Riviera-PRO version 2023.04.112.8911 built for Linux64 on May 12, 2023.
# HDL, SystemC, and Assertions simulator, debugger, and design environment.
# (c) 1999-2023 Aldec, Inc. All rights reserved.
# ELBREAD: Elaboration process.
# ELBREAD: Elaboration time 0.0 [s].
# KERNEL: Main thread initiated.
# KERNEL: Kernel process initialization phase.
# ELAB2: Elaboration final pass...
# ELAB2: Create instances ...
# KERNEL: Time resolution set to 1ns.
# ELAB2: Create instances complete.
# SLP: Started
# SLP: Elaboration phase ...
# SLP: Elaboration phase ... skipped, nothing to simulate in SLP mode : 0.0 [s]
# SLP: Finished : 0.0 [s]
# ELAB2: Elaboration final pass complete - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4764 kB (elbread=459 elab2=4157 kernel=147 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: base packet
# KERNEL: large packets
# KERNEL: Small packets
# KERNEL: large packets
# KERNEL: Small packets
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
