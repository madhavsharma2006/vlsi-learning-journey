module rca(
    input [3:0] a_rca, b_rca,
    input cin,
    output [3:0] sum_rca,
    output cout
);

wire w1, w2, w3;

FA fa1(a_rca[0], b_rca[0], cin, sum_rca[0], w1);
FA fa2(a_rca[1], b_rca[1], w1,  sum_rca[1], w2);
FA fa3(a_rca[2], b_rca[2], w2,  sum_rca[2], w3);
FA fa4(a_rca[3], b_rca[3], w3,  sum_rca[3], cout);

endmodule
