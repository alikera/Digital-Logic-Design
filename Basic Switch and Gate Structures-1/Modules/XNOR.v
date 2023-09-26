`timescale 1ns/1ns
module my_xnor(input a0, b0, output j1);
	wire ai0, bi0;

	my_not N1(a0, ai0), N2(b0, bi0);
	nmos #(3,4,5) NXN1(j1,ai0,bi0);
	nmos #(3,4,5) NXN2(j1,a0,b0);

endmodule