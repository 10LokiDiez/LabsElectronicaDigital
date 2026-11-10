module LATCHD_PC(output Q, NQ, input D, CLK, PRESET, CLEAR);
wire S, R;
wire w1,w2,w3,w4,w5,w6,w7;

GNOT U1(w1, D);

GAND U2(w2, CLK, D);
GAND U3(w3, CLK, w1);

GNOT U4(w4, CLEAR);
GNOT U5(w5, PRESET);

GAND U6(w6, w2, w4);
GAND U7(w7, w3, w5);

GOR U8(S, w6, PRESET);
GOR U9(R, w7, CLEAR);

LATCHRS U10(Q, NQ, R, S);

endmodule