module GNOR(output z, input x,y);

wire w1;

GOR U1 (w1, x,y);
GNOT U2 (z, w1);

endmodule