//===========================================Static Function========================================
//Works independetly | since it dosen't belong to a specific class we cannot use 'super' and 'this' keyword
//Application: used for utility purpose, can be used for any stateless operations that can be resued across the testbench.
//This also avoid unneccesary instance declaration for just calling a method. Make a code simpler and more efficient.
class mathsUtil;
    static function int add(int a,b);
            return a+b;
    endfunction 
endclass
module top;
    initial begin
        int result=mathsUtil::add(2,3);//since it belongs to the class independetly, therefore we can avoid using class instance for calling 
                                       //this method instead can be called directly using class name.
        $display(result);
    end
endmodule

//===========================================Function Static========================================
//used to maintain state information within function and avoinding global variables
class sample;
    function void record_count();
        static int event_count=0;
        event_count++;
        $display(event_count);
    endfunction 
endclass
module top;
    sample s=new();
    initial begin
        s.record_count();
        s.record_count();
        s.record_count();
    end
endmodule
