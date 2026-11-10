module TB_FLIPFLOPD;

reg D, CLK;
wire Q, NQ;

FLIPFLOPD U1(Q, NQ, D, CLK);

// Generador de Clock
initial begin
    CLK = 0;
    forever #5000 CLK = ~CLK;
end

// Cambios de D
initial begin
    D = 0;
//Lo establecemos en 12000 para que no cambie junto al clock
    #12000 D = 1;
    #20000 D = 0;
    #20000 D = 1;
    #20000 $finish;
end

endmodule