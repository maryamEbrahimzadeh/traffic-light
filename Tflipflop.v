//T flip-flop
module T_FF (Q,T,CLK);
   output Q;
   input T,CLK;
   wire DT;
   assign DT = Q ^ T ;
//Instantiate the D flip-flop
   D_FF TF1 (Q,DT,CLK);

endmodule


