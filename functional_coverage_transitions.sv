class sample;

    bit[3:0]a;

    covergroup single_transition;
        t1_2: coverpoint a{bins a1_2=(1=>2)};
        t2_3: coverpoint a{bins a2_3=(2=>3)};
        t3_0: coverpoint a{bins a3_0=(3=>0)};
    endgroup
    covergroup multiple_transition;
        t1_2_3: coverpoint a{bins a1_2_3=(1=>2=>3)};
    endgroup
    covergroup set_of_multiple_transition;
        t0_1__2_3: coverpoint a{bins a=(1,2=>3,4)};//1=>3,1=>4,2=>3,2=>4 
    endgroup
    covergroup consecutive_repetition;
        2_repeats_3_times: coverpoint a{bins a2*3= (2[*3])};//2=>2=>2
    endgroup
    covergroup consecutive_repetition_range;
        4_repeats_2_4_times: coverpoint a{bins a4*2*3*4=(a[*2:4]);}//4=>4, 4=>4=>4, 4=>4=>4=>4
    endgroup
    covergroup goto_repeat_transition;
        cp2_5_5_5_7: coverpoint a{bins a2_5_5_5_7=(2=>5[->3]=>7);}//2…=>5…=>5…=>5=>7
    endgroup
    
endclass
