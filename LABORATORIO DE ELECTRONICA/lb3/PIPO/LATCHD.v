module LATCHD(output Q, NQ, input D, CLK);
wire w1,w2,w3;

GAND U1(w1, CLK, D);

GNOT U2(w2, D);

GAND U3(w3, CLK, w2);

LATCHRS U4(Q,NQ, w3,w1);

endmodule