`timescale 1ns/1ns
module tcs(input A0,A1,B0,B1, input e0,g0, output EQ, GT);
	assign #(29,34) EQ = (A0~^B0) & (A1~^B1) & e0;
	assign #(92,97) GT = ( ( (A0&~B0) | ((A0|B0) & (A1&~B1)) ) & e0) | g0;
endmodule
