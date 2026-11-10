module GORWNAND(output q, input e1,e2);

wire n1,n2;

GNOTWNAND A1(
	.z(n1),
	.a(e1)
	);
	
GNOTWNAND A2(
	.z(n2),
	.a(e2)
	);
	
GNAND A3(
	.z(q),
	.a(n1),
	.b(n2));

endmodule