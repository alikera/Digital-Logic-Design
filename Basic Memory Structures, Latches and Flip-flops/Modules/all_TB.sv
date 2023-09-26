`timescale 1ns/1ns
module all_TB();
	logic [7:0] ii = 8'b0;
	logic ss = 1, cc = 1, rr = 0;
	wire [7:0] oo_d;
	wire [7:0] oo_dff;
	wire [7:0] oo_always;
	wire so_d, so_dff, so_always;
	shift_register_d shift_register_d_CUT(cc, rr, ss, oo_d, so_d);
	shift_register_dff shift_register_dff_CUT(cc, rr, ss, oo_dff, so_dff);
	shift_register_always shift_register_always_CUT(ii, cc, rr, ss, oo_always, so_always);
	
	always #100
		cc = ~cc;

	initial begin
		#300 rr = 1;
		#300 rr = 0;
		repeat(8) #1379 ss = ~ss;

		#1500 $stop;
	end
	always begin
		#3 ii = oo_always;
	end
endmodule
