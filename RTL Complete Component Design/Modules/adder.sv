`timescale 1ns/1ns
module adder(input [7:0] y, output flag, input [9:0] a, b, input cin, output [9:0] out);
	assign out = {2'b00, b} < y ? a :
			cin ? (a-b): a+b;
	assign flag = {2'b00, b} < y ? 1'b1 : 1'b0;

endmodule
