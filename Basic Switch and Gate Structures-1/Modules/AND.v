`timescale 1ns/1ns
module my_and(input j1,e0, output e1);
	supply1 Vdd;
	supply0 Gnd;
	wire w, ee;

	pmos #(5,6,7) AP1(ee, Vdd, j1);
	pmos #(5,6,7) AP2(ee, Vdd, e0);
	nmos #(3,4,5) AN1(ee, w, j1);
	nmos #(3,4,5) AN2(w, Gnd, e0);
	my_not N3(ee, e1);

endmodule