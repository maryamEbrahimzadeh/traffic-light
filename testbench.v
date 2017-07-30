module testbench;
reg A,B,R,Clk,TA,TB;
wire [0:3] A_Time_L;
wire [0:3] A_Time_H;
wire [0:3] B_Time_L;
wire [0:3] B_Time_H;
wire A_light,B_light;

traffic_light traffic_light (TA,TB,A,B,R,Clk,A_Time_L,A_Time_H,B_Time_L,B_Time_H,A_light,B_light);
initial
   begin
   Clk = 1;
   A=0;
   B=1;
   R=0;
   TA=1;
   TB=1;
   #50 R=1;
       B=0;
   #50 TA=0;
       TB=0;
   #400
       TA=1;

   #1500 $finish ;
   end
 always
   #1 Clk = ~Clk;
  
   

endmodule



