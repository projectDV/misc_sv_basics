//======================================SV=========================
module top;
  import "DPI-C" context function void c_test(int a,b);
  export "DPI-C" function sv_test;
  bit[1:0] a,b;
  function void sv_test();
      //a=$urandom;
      //b=$urandom;
    	a=3;
    	b=3;
    $display("A=%0d, B=%0d", a,b);
  endfunction
  initial begin 
    sv_test();
    c_test(a,b);
  end
endmodule
//=================================================================

//================================C================================
//#include<stdio.h>
#include<iostream>
#include<svdpi.h>
using namespace std;
int a,b;
extern "C" void sv_test();
extern "C" int c_test(int a, int b)
{
	int c=a+b;	
  	//printf(c);
  	cout<<c<<endl;
  	//dpi.sv_test();
}
//================================================================
//==========================NOTE==================================
//only use Cadence Xcelium for simulation
//==========================Result================================
xmsc: compiling $TESTDIR/dpi.cc
$TESTDIR/dpi.cc:14:1: warning: no return statement in function returning non-void [-Wreturn-type]

building library run.so

	Top level design units:
		top
Loading snapshot worklib.top:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
A=3, B=3
6
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
//=================================================================
