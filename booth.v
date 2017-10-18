`timescale 1ns / 1ps

module booth(d0_a,c2,c1,c0);
input [3:0] d0_a;
output reg c0,c1,c2;

always @ *
	case (d0_a)
		4'b0000 : 
		begin
		c2 = 1'b0;
		c1 = 1'b0;
		c0 = 1'b0;
		end

		4'b0001 :
		begin
		c2 = 1'b0;
		c1 = 1'b1;
		c0 = 1'b1;
		end

		4'b0010 :
		begin
		c2 = 1'b0;
		c1 = 1'b1;
		c0 = 1'b1;
		end

		4'b0011 :
		begin
		c2 = 1'b0;
		c1 = 1'b0;
		c0 = 1'b1;
		end

		4'b0100 : 
		begin
		c2 = 1'b1;
		c1 = 1'b0;
		c0 = 1'b1;
		end

		4'b0101 :
		begin
		c2 = 1'b1;
		c1 = 1'b1;
		c0 = 1'b1;
		end

		4'b0110 : 
		begin
		c2 = 1'b1;
		c1 = 1'b1;
		c0 = 1'b1;
		end

		4'b0111 :
		begin	
		c2 = 1'b0;
		c1 = 1'b0;
		c0 = 1'b0;
		end
		
		4'b1000 : 
		begin
		c2 = 1'b0;
		c1 = 1'b0;
		c0 = 1'b0;
		end

		4'b1001 :
		begin
		c2 = 1'b1;
		c1 = 1'b1;
		c0 = 1'b1;
		end

		4'b1010 :
		begin
		c2 = 1'b1;
		c1 = 1'b1;
		c0 = 1'b1;
		end

		4'b1011 :
		begin
		c2 = 1'b1;
		c1 = 1'b0;
		c0 = 1'b1;
		end

		4'b1100 : 
		begin
		c2 = 1'b0;
		c1 = 1'b0;
		c0 = 1'b1;
		end

		4'b1101 :
		begin
		c2 = 1'b0;
		c1 = 1'b1;
		c0 = 1'b1;
		end

		4'b1110 :
		begin	
		c2 = 1'b0;
		c1 = 1'b1;
		c0 = 1'b1;
		end

		4'b1111 : 
		begin
		c2 = 1'b0;
		c1 = 1'b0;
		c0 = 1'b0;
		end
	endcase


endmodule
