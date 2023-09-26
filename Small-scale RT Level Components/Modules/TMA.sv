`timescale 1ns/1ns
module tma(input [1:0] A, B, input ci, output S0, S1, output CO);
	assign #17 S0 = B[0] ? (A[0] ? ci : ~ci) : (A[0] ? ~ci : ci);

	wire [0:15] J;
	assign J = {1'b0,ci,1'b1,~ci,ci,1'b1,~ci,1'b0,
			1'b1,~ci,1'b0,ci,~ci,1'b0,ci,1'b1};
	wire [3:0] sel;
	assign sel = {B[1], B[0], A[1], A[0]};
	assign #(96,112) S1 = J[sel];

	wire [0:15] JJ;
	assign JJ = {1'b0,1'b0,1'b0,ci,1'b0,1'b0,ci,1'b1,
			1'b0,ci,1'b1,1'b1,ci,1'b1,1'b1,1'b1};
	assign #(96,112) CO = JJ[sel];
endmodule
	
