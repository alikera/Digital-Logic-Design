`timescale 1ns/1ns
module my_not(input in, output out);
	supply1 Vdd;
	supply0 Gnd;

	pmos #(5,6,7) NP1(out, Vdd, in);
	nmos #(3,4,5) NN1(out, Gnd, in);

endmodule
