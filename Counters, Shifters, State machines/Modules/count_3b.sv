`timescale 1ns/1ns
module count_3b(input clk,en, output[2:0] out, output logic co);
	logic [2:0] count_up;
	always @(posedge clk)
	begin
		if(en)
			count_up <= count_up + 1;
		else
			count_up <= 3'b0;
	end
	assign out = count_up;
	assign co = &{out[0], out[1], out[2]};
endmodule