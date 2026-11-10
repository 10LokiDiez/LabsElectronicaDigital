module TB_CONTADOR;

reg En, CLK;
wire [3:0] Q;
wire Z;

CONTADOR U1(Q, Z, En, CLK);

initial begin
    CLK = 0;
    forever #5000 CLK = ~CLK;
end

initial begin
    En = 0;

    force Q = 4'b0000;
    #1000 release Q;

    #1000 En = 1;
    #40000 En = 0;

    #10000 $finish;
end

endmodule