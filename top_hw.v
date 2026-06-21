module top (input x , l, p ,q , output e );
wire w1,w2;
four_1_mux m1 (
   .i({1'b0,1'b1,1'b1,1'b0}),
   .s({x,l}),
   .y(w1)
   );
four_1_mux m2 (
   .i({w1,1'b0,w2,1'b0}),
   .s({p,q}),
   .y(e)
);
four_1_mux m3 (
   .i({1'b0,1'b1,1'b0,1'b1}),
   .s({x,l}),
   .y(w2)
);
endmodule  
