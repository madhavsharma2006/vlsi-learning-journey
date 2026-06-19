module half_subtractor (input a ,b, output diff, borrow) ; 
wire w1 ;
xor x1 (diff , a ,b );
and a1 (borrow , b ,w1 ); 
not n1 (w1 ,a );
endmodule 
module fullsub (input a ,b, cin ,  output diff, borrow) ; 
wire w1,w2,w3,w4,w5,w6 ;
xor x1 (w1 , a ,b );
xor x2 (diff ,cin,w1 );
not n1 (w4 ,w1 );
not n2 (w3 , a );
and a1 ( w5,w4,cin); 
and a2 (w6,w3,b);
or o1 (borrow , w5,w6);
endmodule 
