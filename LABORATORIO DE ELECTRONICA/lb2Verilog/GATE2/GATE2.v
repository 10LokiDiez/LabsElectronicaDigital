module GATE2(
output s,
input a, b, c, d, e);

wire n1,n2,n3,n4,n5,s1,s2,s3,s4,s5,s6,s7,s8;

GNOT NA (
	.z(n1),
	.a(a)
	);

GNOT NB (
	.z(n2),
	.a(b)
	);
	
GNOT NC (
	.z(n3),
	.a(c)
	);
	
GNOT ND (
	.z(n4),
	.a(d)
	);
	
GNOT NE (
	.z(n5),
	.a(e)
	);
	
GAND3 A1(
	.z(s1),
	.e1(n1),
	.e2(n2),
	.e3(n3)
	);
	
GAND3 A2(
	.z(s2),
	.e1(n1),
	.e2(n2),
	.e3(d)
	);
	
GAND4 A3(
	.z(s3),
	.e1(n1),
	.e2(c),
	.e3(d),
	.e4(e)
	);
	
GAND4 A4(
	.z(s4),
	.e1(n1),
	.e2(b),
	.e3(n4),
	.e4(e)
	);

GAND3 A5(
	.z(s5),
	.e1(n1),
	.e2(n3),
	.e3(n5)
	);

GAND3 A6(
	.z(s6),
	.e1(a),
	.e2(n2),
	.e3(e)
	);

GAND4 A7(
	.z(s7),
	.e1(a),
	.e2(c),
	.e3(n4),
	.e4(e)
	);	
	
GAND4 A8(
	.z(s8),
	.e1(a),
	.e2(b),
	.e3(c),
	.e4(n5)
	);	
GOR8 A(
	.z(s),
	.e1(s1),
	.e2(s2),
	.e3(s3),
	.e4(s4),
	.e5(s5),
	.e6(s6),
	.e7(s7),
	.e8(s8)
	);
	
	
endmodule
