//ignore_illegal bins
module top;
    bit[5:0] addr;

    covergroup ignore_illegal;
        cp_11_13: coverpoint addr {bins addr_1={[0:6]};
                                   bins addr_2[]={[7:10],15};
                                   ignore_bins addr_3[]={11,12,13};
                                   ignore_bins addr_transition={16=>17=>18=>19}};
                                   illegal_bins addr_20_beyond={[20:31]};
                                   }
    endgroup
    ignore_illegal.sample();
endmodule
