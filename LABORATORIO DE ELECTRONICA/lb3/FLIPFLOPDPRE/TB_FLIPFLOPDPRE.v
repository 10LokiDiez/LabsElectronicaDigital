module TB_FLIPFLOPDPRE;

reg D, CLK, PRESET, CLEAR;
wire Q, NQ;

FLIPFLOPD_POS_PC U1(Q, NQ, D, CLK, PRESET, CLEAR);

// Generador de Clock
initial begin
    CLK = 0;
    forever #5000 CLK = ~CLK;
end

// Pruebas
initial begin
    D = 0;
    PRESET = 1;
    CLEAR = 1;

    // Funcionamiento normal
    #12000 D = 1;
    #20000 D = 0;

    // Activar PRESET
    #10000 PRESET = 0;
    #5000 PRESET = 1;

    // Activar CLEAR
    #5000 CLEAR = 0;
    #5000 CLEAR = 1;

    // Funcionamiento normal
    #5000 D = 1;
    #20000 D = 0;

    #10000 $finish;
end

endmodule