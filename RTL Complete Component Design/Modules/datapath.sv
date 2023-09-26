`timescale 1ns/1ns
module datapath(input clk, rst, 
                ld_x, init_t, ld_t, init_r, ld_r, z_c, en_c, s_mux, s_signop,
		input [9:0] x, input[7:0] y, output CO, output logic[9:0] result, output flag);

	wire [7:0] data;
	wire [9:0] temp_result, out_mux, out_mult;
	logic [9:0] precision, out_x, x_x;
	wire [2:0] adr;
	
	lut_based_rom lut(adr, clk, data);

	register r_x(clk, rst, 0, ld_x, x, out_x);
	multiplier mult1(out_x, out_x, x_x);
	counter c(clk, rst, z_c, en_c, adr, CO);
	mux2to1 mux(x_x, {2'b00,data}, s_mux, out_mux);
	multiplier mult2(out_mux, precision, out_mult);
	register r_temp(clk, rst, init_t, ld_t, out_mult, precision);
	register r_result(clk, rst, init_r, ld_r, temp_result, result);
	adder add(y, flag, result, precision, s_signop, temp_result);
endmodule
