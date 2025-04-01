//cross/intersect
bit[4:0] data,addr;

    covergroup cg;
        cp_data: coverpoint data{bins d1={[0:7]};
                                 bins d2={[8:15]};    
                                }
        cp_addr: coverpoint addr{bins a1={[0:7]};
                                 bins a2={[8:15]};    
                                }
        dataXaddr: cross data,addr{
                                 bins d1_to_addr=binsof(data.d1);//d1a1,d1a2;
                                 bins d2_to_addr=binsof(data.d2);//d2a1,d2a2;
                                 bins d1a2=binsof(data.d1) && binsof(addr.a2);
                                 bins d2a1=binsof (cp_data) intersect {[9:11]};
                                 bins not_beyond_15=!binsof(cp_data) intersect {[16:31]};
        }
    endgroup
