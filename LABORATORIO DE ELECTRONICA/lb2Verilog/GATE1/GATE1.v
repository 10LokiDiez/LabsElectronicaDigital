module GATE1(
output s,
input a, b, c, d);

wire n1,n2,n3,n4,s1,s2,s3,s4,s5;

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
	
GAND3 A1(
	.z(s1),
	.e1(n1),
	.e2(c),
	.e3(d)
	);
	
GAND3 A2(
	.z(s2),
	.e1(b),
	.e2(c),
	.e3(d)
	);
	
GAND3 A3(
	.z(s3),
	.e1(n1),
	.e2(b),
	.e3(d)
	);
	
GAND3 A4(
	.z(s4),
	.e1(n2),
	.e2(n3),
	.e3(n4)
	);

GAND3 A5(
	.z(s5),
	.e1(a),
	.e2(n3),
	.e3(n4)
	);
	
GOR5 A(
	.z(s),
	.e1(s1),
	.e2(s2),
	.e3(s3),
	.e4(s4),
	.e5(s5)
	);
	
	
endmodule