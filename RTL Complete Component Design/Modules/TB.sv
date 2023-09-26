`timescale 1ns/1ns
module cos_tb();
	logic clk, rst, start;
	logic [9:0] x;
	logic [7:0] y;
	wire done;
	wire [1:0] intpart;
	wire [7:0] fracpart;
	
	coss coss(clk, rst, start, x, y, done, intpart, fracpart);
	
	initial begin
		rst = 1'b1;
		clk = 1'b0;
		start = 1'b0;
	end
	
	initial #24 rst = 1'b0;
	
	always #5 clk = ~clk;
	
	initial begin

		#200 start = 1'b1;
		#1 x = 10'b0100001100;
		y = 8'b00000000;
		#40 start = 1'b1;
		#200 start = 1'b0;

		#5000 $stop;
	end
endmodule

