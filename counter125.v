module Counter125 (Clear,Count,Q,Clk);
 input Clear,Count,Clk;
  
 output [0:6] Q;
  
 //reg [0:6] Q;
 
 wire [0:6] D;
 

 
 wire h1;
 wire h2;
 wire h3;
 wire h4;
 wire h5;
 wire h6;
 wire h7;
 assign h7 = (((~Clear)&Count)&Q[6]&Q[5]&Q[4]&Q[3]&Q[2]&Q[1])^Q[0];
 assign h6 = (((~Clear)&Count)&Q[6]&Q[5]&Q[4]&Q[3]&Q[2])^Q[1];
 assign h5 = (((~Clear)&Count)&Q[6]&Q[5]&Q[4]&Q[3])^Q[2];
 assign h4 = (((~Clear)&Count)&Q[6]&Q[5]&Q[4]) ^ Q[3];
 assign h3 = (((~Clear)&Count)&Q[6]&Q[5]) ^ Q[4];
 assign h2 = (((~Clear)&Count)&Q[6]) ^ Q[5];
 assign h1 = (((~Clear)&Count)) ^ Q[6];
 assign D[6] = h1&(~Clear);
 assign D[5] = h2&(~Clear);
 assign D[4] = h3&(~Clear);
 assign D[3] = h4&(~Clear);
 assign D[2] = h5&(~Clear);
 assign D[1] = h6&(~Clear);
 assign D[0] = h7&(~Clear);
 D_FF d1 (Q[0],D[0],Clk);
 D_FF d2 (Q[1],D[1],Clk);
 D_FF d3 (Q[2],D[2],Clk);
 D_FF d4 (Q[3],D[3],Clk);
 D_FF d5 (Q[4],D[4],Clk);
 D_FF d6 (Q[5],D[5],Clk);
 D_FF d7 (Q[6],D[6],Clk);
endmodule
