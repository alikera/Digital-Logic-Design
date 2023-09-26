`timescale 1ns/1ns
module mux2to1(input [9:0] x_r, data, input selector, output [9:0] m_out);
	assign m_out = selector ? data : x_r;
endmodule
