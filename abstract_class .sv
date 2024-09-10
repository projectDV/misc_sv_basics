//abstract
virtual class sequence_item;
    pure virtual function void display();
endclass
class actual_sequence extends sequence_item;
    virtual function void display();
        $display("Abstarct");
    endfunction
endclass
module top;
    actual_sequence as= new();
    initial begin
        as.display();
    end
endmodule
====================RESULT===================
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4747 kB (elbread=459 elab2=4144 kernel=143 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Abstarct
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
