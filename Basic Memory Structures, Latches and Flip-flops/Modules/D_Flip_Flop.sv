`timescale 1ns/1ns

module d_flip_flop(input D, CLK, rst, output Q, Q_b);
	wire QQ, QQ_b;
	d_latch_rst D1(D, ~CLK, rst, QQ, QQ_b);
	d_latch_delay D2(QQ, CLK, Q, Q_b);
endmodule
		
