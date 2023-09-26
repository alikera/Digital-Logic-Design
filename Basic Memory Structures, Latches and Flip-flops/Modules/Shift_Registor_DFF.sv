`timescale 1ns/1ns
module shift_register_dff(input clk, rst, sIn, output [7:0] Out, output sOut);
	wire [8:0] W;

	assign W[8] = sIn;
	assign Out = W[7:0];
	assign sOut = W[0];

	genvar k;
	generate
		for (k = 1; k <= 8; k = k + 1) begin : d_gates
			d_flip_flop dd(W[k], clk, rst, W[k-1]);
		end
	endgenerate

endmodule
