`timescale 1ns/1ns
module my_bcs(input a0,b0,e0,g0, output e1,g1);
	wire j1,k1;

	my_xnor X1(a0, b0, j1);
	my_and A1(j1, e0, e1);
	my_and3in A2(a0, b0, e0, k1);
	my_or O1(k1, g0, g1);

endmodule
