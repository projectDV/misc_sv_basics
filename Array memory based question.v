//Declare an associative array of int datatype and an index variable.
  //Allocate 10 random locations between 10-200 index value.
  //Element aso randomly between 200-300
  //Write a logic to print all the elements of Associative array.
  //Print in reverse order
  //Print Max and Min index
  //Print Max and Min element

module top;
  int arr[int];
	int index;
  int index_q[$];
  int arr_q[$];
	initial begin
     for(int i=0; i<10; i++) begin
       index =  $urandom_range(10,200);
       assert(arr.exists(index)==0) begin 
		arr[index]=$urandom_range(200,300);
              end
     end
      $display("Associative Arr value: %p",arr);

      //Reverse Print
      arr.last(index);
      $display("arr[%p]= %p",index,arr[index]);
      index_q.push_back(index);
      while(arr.prev(index)) begin
        $display("arr[%p]= %p",index,arr[index]);
        //max_index print
        index_q.push_back(index);
      end
       $display("Queue %p",index_q);
	   $display("Max %p",index_q.max());
      //min_index print
      $display("Min %p",index_q.min());
      
      //max_element print
      $display("Max_element %p",arr.max());
      
      //min_element print
      $display("Min_element %p",arr.min());
      
      //a little complex way for Max and Min
      foreach(arr[i])begin
      	arr_q.push_back(arr[i]);
      end
      $display("Max_element using Queue %p",arr_q.max());
      $display("Min element using Queue %p",arr_q.min());
    end
 endmodule
//==================================================
//                  Result
//==================================================

Associative Arr value: '{31:230, 77:300, 83:297, 96:282, 115:220, 138:288, 139:227, 146:201, 188:267, 196:206 }
# arr[196]= 206
# arr[188]= 267
# arr[146]= 201
# arr[139]= 227
# arr[138]= 288
# arr[115]= 220
# arr[96]= 282
# arr[83]= 297
# arr[77]= 300
# arr[31]= 230
# Queue '{196, 188, 146, 139, 138, 115, 96, 83, 77, 31}
# Max '{196}
# Min '{31}
# Max_element '{300}
# Min_element '{201}
# Max_element using Queue '{300}
# Min element using Queue '{201}
