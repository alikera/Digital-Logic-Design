`timescale 1ns/1ns
module register_dff(input [7:0] In, input clk, rst, output [7:0] Out);
	genvar k;
	generate
		for (k = 0; k < 8; k = k + 1) begin : dff_gates
			d_flip_flop dd(In[k], clk, rst, Out[k]);

		end
	endgenerate

endmodule
