`timescale 1ns / 1ps

module rep_iter_selection(ip,r0,r1,r2,r3,r4,r5);
input [3:0] ip;
output reg r0,r1,r2,r3,r4,r5;
always @ *
	case (ip)
		4'b0000 : 
		begin
		r5 = 1'b0;
		r4 = 1'b0;
		r3 = 1'b0;
		r2 = 1'b0;
		r1 = 1'b0;
		r0 = 1'b0;
		end
		
		4'b0001 : 
		begin
		r5 = 1'b0;
		r4 = 1'b0;
		r3 = 1'b0;
		r2 = 1'b0;
		r1 = 1'b0;
		r0 = 1'b1;
		end
		
		4'b0010 : 
		begin
		r5 = 1'b0;
		r4 = 1'b0;
		r3 = 1'b0;
		r2 = 1'b0;
		r1 = 1'b0;
		r0 = 1'b1;
		end
		
		4'b0011 : 
		begin
		r5 = 1'b0;
		r4 = 1'b0;
		r3 = 1'b0;
		r2 = 1'b0;
		r1 = 1'b1;
		r0 = 1'b1;
		end
		
		4'b0100 : 
		begin
		r5 = 1'b0;
		r4 = 1'b0;
		r3 = 1'b0;
		r2 = 1'b0;
		r1 = 1'b1;
		r0 = 1'b1;
		end
		
		4'b0101 : 
		begin
		r5 = 1'b0;
		r4 = 1'b0;
		r3 = 1'b0;
		r2 = 1'b1;
		r1 = 1'b1;
		r0 = 1'b1;
		end
		
		4'b0110 : 
		begin
		r5 = 1'b0;
		r4 = 1'b0;
		r3 = 1'b0;
		r2 = 1'b1;
		r1 = 1'b1;
		r0 = 1'b1;
		end
		
		4'b0111 : 
		begin
		r5 = 1'b0;
		r4 = 1'b0;
		r3 = 1'b1;
		r2 = 1'b1;
		r1 = 1'b1;
		r0 = 1'b1;
		end
		
		4'b1000 : 
		begin
		r5 = 1'b0;
		r4 = 1'b0;
		r3 = 1'b1;
		r2 = 1'b1;
		r1 = 1'b1;
		r0 = 1'b1;
		end
		
		4'b1001 : 
		begin
		r5 = 1'b0;
		r4 = 1'b1;
		r3 = 1'b1;
		r2 = 1'b1;
		r1 = 1'b1;
		r0 = 1'b1;
		end
		
		4'b1010 : 
		begin
		r5 = 1'b0;
		r4 = 1'b1;
		r3 = 1'b1;
		r2 = 1'b1;
		r1 = 1'b1;
		r0 = 1'b1;
		end
		
		4'b1011 : 
		begin
		r5 = 1'b1;
		r4 = 1'b1;
		r3 = 1'b1;
		r2 = 1'b1;
		r1 = 1'b1;
		r0 = 1'b1;
		end
		
		4'b1100 : 
		begin
		r5 = 1'b1;
		r4 = 1'b1;
		r3 = 1'b1;
		r2 = 1'b1;
		r1 = 1'b1;
		r0 = 1'b1;
		end

		default :
		begin
		r5 = 1'b0;
		r4 = 1'b0;
		r3 = 1'b0;
		r2 = 1'b0;
		r1 = 1'b0;
		r0 = 1'b0;
		end
	endcase
endmodule
