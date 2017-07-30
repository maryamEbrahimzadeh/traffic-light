module mux4x1_bh (i0,i1,i2,i3,i4,select,y);
 
  input i0,i1,i2,i3,i4;
 
  input [0:2] select;
   
output y;
   
reg y;
   
always @ (i0 or i1 or i2 or i3 or i4 or select) 
       
     case (select)
              
 3'b000: y = i0;
             
 3'b001: y = i1;
              
 3'b010: y = i2;
             
 3'b011: y = i3;
	       
3'b100: y = i4;
          
  endcase

endmodule


