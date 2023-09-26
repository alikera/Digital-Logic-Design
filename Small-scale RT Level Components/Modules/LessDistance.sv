`timescale 1ns/1ns
module lessdistance(input [7:0] ref1, dataA, dataB, output [7:0] LessOut);
	wire [7:0] A_distance, B_distance;
	wire EQ, GT;
	absdiff D1(ref1, dataA, A_distance);
	absdiff D2(ref1, dataB, B_distance);
	ncs #8 N1(A_distance, B_distance, EQ, GT);
	assign LessOut = GT ? dataB : dataA;
endmodule