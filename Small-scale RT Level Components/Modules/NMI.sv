`timescale 1ns/1ns
module nmi #(parameter N) (input [N-1:0] A, output [N-1:0] Inc, output CO);
	wire [N:0] W;
	assign W[0] = 1;
	assign CO = W[N];
	genvar i;
	generate
		for (i = 0; i < N-1; i = i + 2) begin: TMIgates
			tmi TT ({A[i+1], A[i]}, W[i], Inc[i], Inc[i+1], W[i+2]);
		end
	endgenerate
endmodule



