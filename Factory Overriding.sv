//factory overriding
class drv extends uvm_driver#(wr_txn);
    `uvm_component_utils(drv)
    function new(string name="drv", uvm_component parent=null);
        super.new(name,parent);
    endfunction
endclass
class ahb_drv extends uvm_driver#(ahb_txn);
    `uvm_component_utils(ahb_drv)
    function new(string name="ahb_drv", uvm_component parent=null);
        super.new(name,parent);
    endfunction
endclass
class drv_agt extends uvm_agent;
    `uvm_component_utils(drv_agt)
    function new();
    endfunction
    function build_phase(uvm_phase phase);
        super.build_phase(phase);
        set_type_override_by_type(drv::get_type(),ahb_drv::get_type());
    endfunction
endclass
