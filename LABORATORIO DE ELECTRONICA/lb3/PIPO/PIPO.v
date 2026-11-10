module PIPO(
    output Q0, Q1, Q2, Q3,
    input D0, D1, D2, D3, CLK
);

FLIPFLOPD_POS U1(Q0, , D0, CLK);
FLIPFLOPD_POS U2(Q1, , D1, CLK);
FLIPFLOPD_POS U3(Q2, , D2, CLK);
FLIPFLOPD_POS U4(Q3, , D3, CLK);

endmodule