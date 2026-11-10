module GNOTWNAND(output z, input a);


GNAND A1(
	.z(z),
	.a(a),
	.b(a));

endmodule