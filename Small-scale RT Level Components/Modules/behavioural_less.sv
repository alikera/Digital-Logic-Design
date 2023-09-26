`timescale 1ns/1ns
module behavioural(input [7:0] ref1, dataA, dataB, output logic [7:0] LessOut);
	logic [7:0] A_distance, B_distance;
	always @ (ref1, dataA, dataB) begin
		if (ref1 > dataA)
			A_distance = ref1 - dataA;
		
		if (ref1 < dataA)
			A_distance = dataA - ref1;

		if (ref1 == dataA)
			A_distance = dataA - ref1;
		
		if (ref1 > dataB)
			B_distance = ref1 - dataB;
		
		if (ref1 <= dataB)
			B_distance = dataB - ref1;

		if (A_distance > B_distance)
			LessOut = dataB;
		
		else
			LessOut = dataA;
	end
endmodule
