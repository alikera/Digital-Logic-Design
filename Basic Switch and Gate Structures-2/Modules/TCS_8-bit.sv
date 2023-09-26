`timescale 1ns/1ns
module eight_bit_TCS(input[0:7] A,B, output EQ,GT);
	wire [0:9] W;
	assign EQ = W[8];
	assign GT = W[9];
	assign W[0] = 1;
	assign W[1] = 0;
	genvar i;
	generate
		for (i = 0; i < 8; i = i + 2) begin: TCSgates
			tcs TT (A[i], A[i+1], B[i], B[i+1], W[i], W[i+1], W[i+2], W[i+3]);
		end
	endgenerate
endmodule
