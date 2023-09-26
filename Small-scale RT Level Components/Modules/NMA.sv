`timescale 1ns/1ns
module nma #(parameter N) (input [N-1:0] A,B, output [N-1:0] Sum, output CO);
	wire [N:0] W;
	assign W[0] = 0;
	assign CO = W[N];
	genvar i;
	generate
		for (i = 0; i < N-1; i = i + 2) begin: TMAgates
			tma TT ({A[i+1], A[i]}, {B[i+1], B[i]}, W[i], Sum[i], Sum[i+1], W[i+2]);
		end
	endgenerate
endmodule


