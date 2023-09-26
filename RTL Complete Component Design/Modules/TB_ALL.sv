`timescale 1ns/1ns
module tb_all();
	logic clk, rst, start;
	logic [9:0] x;
	logic [7:0] y;
	wire done, done2;
	wire [1:0] intpart, intpart2;
	wire [7:0] fracpart, fracpart2;
	
	coss coss(clk, rst, start, x, y, done, intpart, fracpart);
	coss cos(clk, rst, start, x, y, done2, intpart2, fracpart2);
	
	initial begin
		rst = 1'b1;
		clk = 1'b0;
		start = 1'b0;
	end
	
	initial #24 rst = 1'b0;
	
	always #5 clk = ~clk;
	
	initial begin
		#10 start = 1'b1;
		#50 start = 1'b0;
		#1 x = 10'b0110000000;
		y = 8'b10000000;
		
		
		#460 start = 1'b1;
		#900 y = 8'b00000000;

		#200 start = 1'b0;

		#5000 $stop;
	end
endmodule


