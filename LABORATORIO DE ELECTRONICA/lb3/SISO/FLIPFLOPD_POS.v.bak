module FLIPFLOPD(output Q, NQ, input D, CLK);

wire CLKN;
wire QM, NQM;

GNOT U1(CLKN, CLK);

LATCHD U2(QM, NQM, D, CLK);

LATCHD U3(Q, NQ, QM, CLKN);

endmodule