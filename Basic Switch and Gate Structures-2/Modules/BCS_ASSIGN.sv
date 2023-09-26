`timescale 1ns/1ns
module BCS_assign(input a0,b0,e0,g0, output e1,g1);
	wire j1,k1;

	assign #(12,12) j1 = a0 ~^ b0;
	assign #(13,17) e1 = j1 & e0;
	assign #(17,22) k1 = ~a0 & b0 & e0;
	assign #(19,17) g1 = k1 | g0;
endmodule
