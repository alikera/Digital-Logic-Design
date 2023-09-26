`timescale 1ns/1ns
module register(input clk, rst, init, ld, input [9:0] parallel_in, output logic [9:0] parallel_out);
	
	always @(posedge clk, posedge rst) begin
		if (rst)
			parallel_out <= 10'b0;
			
		else if (init)
			parallel_out <= 10'b0100000000;
			
		else if (ld)
			parallel_out <= parallel_in;

	end

endmodule
