typedef enum {red=3'b001, blue=3'b010, green=3'b011  } colors;
module top;
    colors c;
    bit[2:0] a;
    initial begin
        c=red;
        $display(c);//1
        //a=green;
        //$display(a)//error
        $cast(a,c);
      	a=green;
        $display(a);//3
    end
endmodule
=================================RESULTS=============================
# Allocation: Simulator allocated 4664 kB (elbread=427 elab2=4103 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL:           1
# KERNEL: 3
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
