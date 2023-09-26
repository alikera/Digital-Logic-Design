`timescale 1ns/1ns
module my_bcs_g(input a0,b0,e0,g0, output e1, g1);
	wire j1, k1;

	xnor #(12,12) X1(j1, a0, b0);
	and #(13,17) A1(e1, j1, e0);
	and #(17,22) A2(k1, ~a0, b0, e0);
	or #(19,17) O1(g1, g0, k1);

endmodule
