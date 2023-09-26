`timescale 1ns/1ns
module multiplier(input [9:0] m_out, temp_out, output [9:0] temp_in);
	wire [19:0] out;
	assign out = temp_out * m_out;
	assign temp_in = out[17:8];
endmodule
