`timescale 1ns/1ns
module counter(input clk, rst, z_c, en_c ,output[2:0] adr, output co);
	logic [2:0] count_up;
	always @(posedge clk, posedge rst)
	begin
		if(rst)
			count_up <= 3'b0;

		else if(en_c)
			count_up <= count_up + 1;

		else if(z_c)
			count_up <= 3'b0;
		
	end
	assign adr = count_up;
	assign co = &adr;
endmodule