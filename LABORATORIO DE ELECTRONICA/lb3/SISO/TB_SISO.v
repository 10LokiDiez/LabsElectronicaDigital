module TB_SISO;

reg In, CLK;
wire Out;

SISO U1(Out, In, CLK);

// Generador de Clock
initial begin
    CLK = 0;
    forever #5000 CLK = ~CLK;
end

// Cambios de In
initial begin
    In = 0;

    #12000 In = 1;
    #10000 In = 0;
    #10000 In = 1;
    #10000 In = 1;
    #10000 In = 0;
    #40000 $finish;
end

endmodule