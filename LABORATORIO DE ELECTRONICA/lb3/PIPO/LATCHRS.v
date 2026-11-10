module LATCHRS(output Q, NQ,input R, S);


GNOR U1(Q, R,NQ);

GNOR U2(NQ, Q, S);

endmodule