module regcor(output [3:0] Q, input [3:0] In, SIn, Shift, CLK);

wire w1,w2,w3,w4;

MUX M1(w1, SIn, In[0],Shift);
FLIPFLOPD_POS F1(Q[0], , w1, CLK);

MUX M2(w2, Q[0], In[1],Shift);
FLIPFLOPD_POS F2(Q[1], , w2, CLK);

MUX M3(w3, Q[1], In[2],Shift);
FLIPFLOPD_POS F3(Q[2], , w3, CLK);

MUX M4(w4, Q[2], In[3],Shift);
FLIPFLOPD_POS F4(Q[3], , w4, CLK);

endmodule