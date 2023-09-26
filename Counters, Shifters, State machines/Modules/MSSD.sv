`timescale 1ns/1ns
module MSSD2(input serIn, clk, output logic[3:0] p, output logic[1:0] dest, output logic outvalid, error);
    logic[1:0] nstate, pstate;
    logic en_3bcnt,en_shift,en_9bcnt;
    wire co_3bcnt, co_9bcnt;
    wire[2:0] out_3bcnt;
    wire[7:0] out_shift;
    wire[5:0] out_sub;
    wire[8:0] out_9bcnt;
    parameter[1:0] idle = 2'd0, second = 2'b01, xmit = 2'b10, stop = 2'b11;
    always @(serIn, pstate)
    begin
        outvalid <= 1'b0;
        en_3bcnt <= 1'b0;
        en_shift <= 1'b0;
        en_9bcnt <= 1'b0;
        nstate <= idle;
        error <= 1'b0;
		case(pstate)
		idle: begin
			if(serIn == 1'b0) begin
				nstate <= second;
				en_3bcnt <= 1'b1;
				en_shift <= 1'b1;
			end
			else begin
				nstate <= idle;
				en_3bcnt <= 1'b0;
				en_shift <= 1'b0;
			end
		end
		second: begin
			if(co_3bcnt == 1'b1) begin
				nstate <= xmit;
				en_9bcnt <= 1'b1;
				
				en_shift <= 1'b0;
				en_3bcnt <= 1'b0;
			end
			else begin
			    nstate <= second;
			    en_3bcnt <= 1'b1;
			    en_shift <= 1'b1;
            end
        end
        xmit: begin
            if(co_9bcnt == 1'b1) begin
                nstate <= stop;
                outvalid <= 1'b1;
                
                en_9bcnt <= 1'b0;
            end
            else begin
                nstate <= xmit;
                en_9bcnt <= 1'b1;
            end
        end
        stop: begin
            if(serIn == 1'b1) begin
                nstate <= idle;
            end
            else begin
                error <= 1'b1;
            end
        end
        default: begin
            nstate <= idle;
        end
        endcase
    end
    
    always @(posedge clk)
        pstate <= nstate;
    
    assign dest = out_shift[1:0];
    
    count_3b C1(clk, en_3bcnt, out_3bcnt, co_3bcnt);
    shift_8b S1(clk, en_shift, serIn, out_shift);
    sub_8b S2(out_shift[7:2], out_sub);
    count_9b C2(clk, en_9bcnt, out_sub, out_9bcnt, co_9bcnt);
    demux_4b D1(clk, serIn, dest, p);
    
endmodule
    
	        
	    