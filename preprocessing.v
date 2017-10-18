`timescale 1ns / 1ps

module preprocessing(theta1,x0,y0,phi,d0,d1,Xin,Yin,q0,q1);
input [17:0] theta1;
input signed [15:0] x0,y0;
output reg d0,d1,q0,q1;
output reg signed[15:0] Xin,Yin;
output reg [12:0] phi;
reg [17:0] interm,interm2;
always @(theta1)
begin
	if(theta1 <= 18'h06487) //pi/2
		begin
		interm = theta1;
		q0=0;
		q1=0;
		end
	else if(theta1 <= 18'h0C90F)
		begin
		interm = theta1 - 18'h06487;
		q0=1;
		q1=0;
		end
	else if(theta1 <= 18'h12D97)
		begin
		interm = theta1 - 18'h0C90F;
		q0=0;
		q1=1;
		end
	else
		begin
		interm = theta1 - 18'h12D97;
		q0=1;
		q1=1;
		end
end

always @(interm)
begin
	if(interm <= 18'h01921)
		begin
		phi = interm[12:0];
		d0 = 0;
		d1 = 0;
		end
	else if(interm <= 18'h03243)
		begin	
		interm2 = 18'h3243-interm;
		phi = interm2[12:0];
		d0 = 1;
		d1 = 0;
		end
	else if(interm <= 18'h04B65)
		begin
		interm2 = interm-18'h03243;
		phi = interm2[12:0];
		d0 = 0;
		d1 = 1;
		end
	else
		begin
		interm2 = 18'h06487-interm;
		phi = interm2[12:0];
		d0 = 1;
		d1 = 1;
		end
end
	
always @ (phi)
		begin
		Xin = x0;
		Yin = y0;
		end



	
	
	
	 


endmodule
