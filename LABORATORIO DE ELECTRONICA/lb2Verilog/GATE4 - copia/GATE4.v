// n1 no se usa
module GATE4(output s, input b1,b2,n2);

wire nb1,nb2,s1,s2;

GNOTWNAND A1(
	.z(nb1),
	.a(b1)
	);
	
GNOTWNAND A2(
	.z(nb2),
	.a(b2)
	);
	
GANDWNAND A3(
	.q(s1),
	.e1(nb1),
	.e2(n2));
	
GANDWNAND A4(
	.q(s2),
	.e1(b1),
	.e2(nb2));
	
GORWNAND A5(
	.q(s),
	.e1(s1),
	.e2(s2));
endmodule