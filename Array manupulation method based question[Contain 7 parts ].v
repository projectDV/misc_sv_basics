//Declare an associative array having 20 elements.
  //Array index from 10-40.
  //Array elements value from 50-90.
  //Find all elements in array whose values are greater than 70, similarly do it for index and put it inside queue.
  //Find all the elements in array whose values are in range of 70-80, similarly do it for index and put it inside queue.
  //Find all the elements in array which are divisible by 5, similalry do it for index and put inside queue.


module top;
  int arr[int];
  int index;
  int arr_q[$];
  
  initial begin
    for(int i=0;i<20;i++)begin
      index=$urandom_range(10,40);
      assert(arr.exists(index)==0)begin
        arr[index]=$urandom_range(50,90);
      end
    end
    $display("Arr: %0p",arr);
  
  //Find >70 element inside queue
    arr_q=arr.find() with (item>=70);
    $display("arr_q %p",arr_q);
  //Find >70 index inside queue
    arr_q=arr.find_index() with (item>=70);
    $display("arr_q %p",arr_q);
   //Find >70&<80 element inside queue
    arr_q=arr.find() with (item>=70 && item<=80);
    $display("arr_q range %p",arr_q);
   //Find >70&<80 index inside queue
    arr_q=arr.find_index() with (item>=70 && item<=80);
    $display("arr_q range %p",arr_q);
   //Find >70 element divisible by 5
    arr_q=arr.find() with (item%5==0);
    $display("arr_q div %p",arr_q);
   //Find >70 index divisible by 5
    arr_q=arr.find_index() with (item%5==0);
    $display("arr_q div %p",arr_q);
    
  end
endmodule

//===========================================
//                Result
//===========================================
# Arr: {13:58} {15:53} {18:60} {24:86} {25:70} {26:59} {28:68} {30:89} {31:78} {32:57} {34:70} {36:65} {38:66} {40:64} 
# arr_q '{86, 70, 89, 78, 70}
# arr_q '{24, 25, 30, 31, 34}
# arr_q range '{70, 78, 70}
# arr_q range '{25, 31, 34}
# arr_q div '{60, 70, 70, 65}
# arr_q div '{18, 25, 34, 36}
# exit
