`timescale 1ns/1ns
module my_or(input k1,g0, output g1);
	supply1 Vdd;
	supply0 Gnd;
	wire w, gg;

	pmos #(5,6,7) OP1(w, Vdd, g0);
	pmos #(5,6,7) OP2(gg, w, k1);
	nmos #(3,4,5) ON1(gg, Gnd, k1);
	nmos #(3,4,5) ON2(gg, Gnd, g0);
	my_not N5(gg, g1);

endmodule