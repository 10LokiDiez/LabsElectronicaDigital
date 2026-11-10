module GNAND(output z, input a,b);

assign z = ~(a&b);

endmodule