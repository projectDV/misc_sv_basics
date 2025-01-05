class pbv;
  function void count(ref int c);
        c=c+1;
        $display(c);
        endfunction
endclass
module top;
    int a=10;
    pbv p=new();
    initial begin
        $display(a);
        p.count(a);
        $display(a);
    end
endmodule
//======================OUTPUT======================
Before function call: a = 10
Inside function: c = 11
After function call: a = 11
