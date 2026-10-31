module GATE3(
output s,
input a, b);

wire s1;

GXOR A0(
	.z(s1),
	.e1(a),
	.e2(b)
	);

GNOT N1 (
	.z(s),
	.a(s1)
	);

endmodule