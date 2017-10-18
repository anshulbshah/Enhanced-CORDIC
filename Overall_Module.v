`timescale 1ns / 1ps

module Overall_Module(Xout,Yout);
	output signed [15:0] Xout,Yout;
	wire [12:0] angle_phi;
	wire signed [15:0] X,Y;
	wire signed [15:0] Xinterm,Yinterm;
	wire d0,d1,d1_o,d0_o;
	preprocessing pre(18'h12D97+18'h03200,16'h4000,16'h0000,angle_phi,d0,d1,X,Y,q0,q1);
	SFB mod(angle_phi,d1,d0,X,Y,d1_o,d0_0,Xinterm,Yinterm);
	post_processing final(d1,d0,q0,q1,Xinterm,Yinterm,Xout,Yout);

endmodule
