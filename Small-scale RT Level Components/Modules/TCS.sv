`timescale 1ns/1ns
module tcs(input [1:0] A, input [1:0] B, input e0, g0, output logic EQ,GT);
	always @ (A, B, e0, g0) begin
		if (e0 == 0)begin
			#29 EQ = 0;
			#25 GT = g0;
		end

		else if (A == B) begin
			#34 EQ = 1;
			#21 GT = 0;
		end
		
		else begin
			#29 EQ = 0;
			if (A > B)
				#28 GT = 1;

			else if (A < B)
				#21 GT = 0;
		end
	end
endmodule

