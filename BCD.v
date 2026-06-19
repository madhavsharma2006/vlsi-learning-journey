module bcd(
    input [3:0] a_bcd, 
    input [3:0] b_bcd , 
    input [3:0] c_bcd , 
    output[3:0] sum_bcd , 
    output[3:0] carry_bcd);
wire w1,w2,w3,w4,w5,w6,w7,w8,x1,x2;
assign x1=1'b0 ;
assign x2=1'b1 ; 
rca r1 ( .a_rca(a_bcd),  
         .b_rca(b_bcd), 
         .c_rca(c_bcd) , 
         .sum_rca({w4, w3, w2, w1}) , 
         .carry_rca(carry_bcd)
);
and a1 (w5,w3,w4 );
and a2 ( w6 , w4,w2 );
or o1 (w8 , w7 , w5 ,w6 );
rca r2 ( .a_rca({w4, w3, w2, w1}),  
         .b_rca({x1,w8,w8,x1}), 
         .c_rca(1'b0) , 
         .sum_rca(sum_bcd) , 
         .carry_rca(carry_bcd)
);
endmodule 
