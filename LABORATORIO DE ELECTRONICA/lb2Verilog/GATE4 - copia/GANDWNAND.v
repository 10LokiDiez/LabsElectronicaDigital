module GANDWNAND(output q, input e1,e2);

wire n1;

GNAND A1(
	.z(n1),
	.a(e1),
	.b(e2));

GNOTWNAND A2(
	.z(q),
	.a(n1)
	);
	

endmodule