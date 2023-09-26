`timescale 1ns/1ns
module coss(input clk, rst, start, input[9:0] x, input[7:0] y,
			output done, output[1:0] intpart, output [7:0] fracpart);
	
	wire co, ldx, initt, ldt, initr, ldr, zc, enc, s1, s2, flag;
	
	controller control(clk, rst, start, co, done, ldx, initt, ldt, initr, ldr, zc, enc, s1, s2, flag);
	
	datapath dP(clk, rst, ldx, initt, ldt, initr, ldr, zc, enc, s1, s2, x, y, co, {intpart, fracpart}, flag);

endmodule 

