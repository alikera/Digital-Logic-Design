`timescale 1ns/1ns
module ncs #(parameter N) (input[N-1:0] A,B, output EQ, GT);
	wire [N+1:0] W;
	assign EQ = W[1];
	assign GT = W[0];
	assign W[N] = 0;
	assign W[N+1] = 1;
	genvar i;
	generate
		for (i = N - 1; i >= 0; i = i - 2) begin: TCSgates
			tcs TT ({A[i], A[i-1]}, {B[i], B[i-1]}, W[i+2], W[i+1], W[i], W[i-1]);
		end
	endgenerate
endmodule

