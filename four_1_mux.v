module four_1_mux (input [3:0] i ,
input [1:0] s , 
output y 
);
wire w1,w2,w3,w4,w5,w6 ;
and a1(w3,w1,w2,i[0]);
and a2(w4,s[0],w1,i[1]);
and a3(w5,w2,i[2],s[1]);
and a4(w6,s[0],i[3],s[1]);
or o1(y,w3,w4,w5,w6);
not n1(w1,s[1]);
not n2(w2,s[0]);
endmodule
