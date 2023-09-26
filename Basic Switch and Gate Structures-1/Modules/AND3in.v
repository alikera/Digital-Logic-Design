`timescale 1ns/1ns
module my_and3in(input a0,b0,e0, output k1);
	supply1 Vdd;
	supply0 Gnd;
	wire ai0, w1, w2, kk;
	my_not N4(a0, ai0);

	pmos #(5,6,7) A3iP1(kk, Vdd, ai0);
	pmos #(5,6,7) A3iP2(kk, Vdd, b0);
	pmos #(5,6,7) A3iP3(kk, Vdd, e0);
	nmos #(3,4,5) A3iN1(kk, w1, ai0);
	nmos #(3,4,5) A3iN2(w1, w2, b0);
	nmos #(3,4,5) A3iN3(w2, Gnd, e0);
	my_not N5(kk, k1);

endmodule