// Code your testbench here
// or browse Examples
class sample;
  
  rand bit[7:0] a,b;
  
  function copy(output sample s);
    s=new this;
  endfunction
  
  function void print(string name = "Sample");
    $display("Print %s values",name);
    $display("A= %d",a);
    $display("B= %d",b);
  endfunction  
endclass
module top;
  
  sample s1=new();
  sample s2;
  initial begin
    assert(s1.randomize());
    s1.print("Sample 1");
        
    s1.copy(s2);
    s2.print("Sample 2");
    
  end
endmodule
//=========================RESULTS==========================
# Print Sample 1 values
# A= 173
# B= 142
# Print Sample 2 values
# A= 173
# B= 142
