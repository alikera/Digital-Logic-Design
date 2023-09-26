`timescale 1ns/1ns
module eight_bit_Comparator(input[0:7] A,B, output EQ,LT);
	wire [0:17] W;
	assign EQ = W[16];
	assign LT = W[17];
	assign W[0] = 1;
	assign W[1] = 0;
	genvar i;
	generate
		for (i = 0; i < 8; i = i + 1) begin: BCSgates
			BCS_assign BB (A[i], B[i], W[2*i], W[2*i+1], W[2*i+2], W[2*i+3]);
		end
	endgenerate
endmodule
