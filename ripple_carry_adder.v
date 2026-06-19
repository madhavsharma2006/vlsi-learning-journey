module rca (input [3:0] a_rca, [3:0] b_rca , [3:0] c_rca , output [3:0] sum_rca , [3:0] carry_rca );
wire w1,w2,w3 ; 
FA fa1 ( a_rca  , b_rca  , c_rca  , sum_rca, w1  );
FA fa2 ( a_rca  , b_rca , c_rca  , sum_rca , w2  );
FA fa3 ( a_rca  , b_rca , c_rca  , sum_rca , w3  );
FA fa4 ( a_rca  , b_rca  , c_rca  , sum_rca , carry_rca );
endmodule 
