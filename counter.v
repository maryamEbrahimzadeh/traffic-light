module counter(Clear,Count,Q,Clk);
 
 input Clear,Count,Clk;
  
 output [0:3] Q;
 
 wire [0:3] D;
 wire h1;
 wire h2;
 wire h3;
 wire h4;
 
assign h4 = (((~Clear)&Count)&Q[3]&Q[2]&Q[1]) ^ Q[0];
 
assign h3 = (((~Clear)&Count)&Q[3]&Q[2]) ^ Q[1];
 
assign h2 = (((~Clear)&Count)&Q[3]) ^ Q[2];
 
assign h1 = (((~Clear)&Count)) ^ Q[3];
 assign D[3] = h1&(~Clear);
 
 assign D[2] = h2&(~Clear);
 
 assign D[1] = h3&(~Clear);
  
 assign D[0] = h4&(~Clear);
 
 D_FF d1 (Q[0],D[0],Clk);

 D_FF d2 (Q[1],D[1],Clk);
 
 D_FF d3 (Q[2],D[2],Clk);
 
 D_FF d4 (Q[3],D[3],Clk);
 
endmodule


