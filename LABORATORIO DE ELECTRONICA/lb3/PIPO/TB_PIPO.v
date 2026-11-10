module TB_PIPO;

reg D0, D1, D2, D3, CLK;
wire Q0, Q1, Q2, Q3;

PIPO U1(Q0, Q1, Q2, Q3, D0, D1, D2, D3, CLK);

// Generador de Clock
initial begin
    CLK = 0;
    forever #5000 CLK = ~CLK;
end

// Cambios de las entradas
initial begin
    {D3,D2,D1,D0} = 4'b0000;

    #12000 {D3,D2,D1,D0} = 4'b1011;
    #20000 {D3,D2,D1,D0} = 4'b0101;
    #20000 {D3,D2,D1,D0} = 4'b1110;
    #20000 {D3,D2,D1,D0} = 4'b0011;