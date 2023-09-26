`timescale 1ns/1ns
module sub_8b(input [5:0] in, output [5:0] out);
	assign out = 64 - in;
endmodule