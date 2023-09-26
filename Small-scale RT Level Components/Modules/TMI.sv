`timescale 1ns/1ns
module tmi(input [1:0] A, input ci, output S0, S1, output CO);
	assign #12 S0 = A[0] ? ~ci : ci;

	assign #(38,42) S1 = A[1] ? (A[0] ? ~ci : 1) : (A[0] ? ci : 0);

	assign #(38,42) CO = A[1] ? (A[0] ? ci : 0) : 0;
endmodule
	

