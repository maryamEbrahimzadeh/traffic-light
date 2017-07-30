module Mux4_2 (i0,i1,i2,i3,i4,i5,i6,i7,select,y0,y1,y2,y3);
input i0,i1,i2,i3,i4,i5,i6,i7,select;
output y0,y1,y2,y3;
mux2x1_df M1 (i0,i4,select,y0);
mux2x1_df M2 (i1,i5,select,y1);
mux2x1_df M3 (i2,i6,select,y2);
mux2x1_df M4 (i3,i7,select,y3);
endmodule




