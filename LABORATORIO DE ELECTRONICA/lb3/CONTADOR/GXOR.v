module GXOR(output z, input a, b);

wire w1, w2, w3, w4;

GNOT U1(w1, a);
GNOT U2(w2, b);

GAND U3(w3, a, w2);
GAND U4(w4, w1, b);

GOR U5(z, w3, w4);

endmodule