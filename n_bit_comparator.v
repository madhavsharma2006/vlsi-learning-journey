module n_bit(
   input a1 ,a0,b1,b0 ,
   output G,E,L );
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12 ;
not n1 (w1,a1);
not n2 (w2,a0);
not n3 (w3,b1);
not n4 (w4,b0);
and an1 (w5,a0,w3,w4); 
and a2 (w6,a1,w3); 
and a3 (w7,w4,a0,a1); 
and a4 (w10,w1,w2,b0); 
and a5 (w11,w2,b1,b0); 
and a6 (w12,w1,w3); 
and a7 (G,w8,w9); 
xnor xn1(w8,a0,b0);
xnor xn2(w9,a1,b1);
or o1(G,w5,w6,w7);
or o2(L,w10,w11,w12);
endmodule
