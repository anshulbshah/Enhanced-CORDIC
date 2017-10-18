`timescale 1ns / 1ps



module SFB_Test;

	// Inputs
	reg [12:0] phi;
	reg d1;
	reg d0;
	reg [15:0] Xin;
	reg [15:0] Yin;

	// Outputs
	wire d1_o;
	wire d0_o;
	wire [15:0] Xout,X6;
	wire [15:0] Yout,Y6;
	wire r5;
	wire r4;
	wire r3;
	wire r2;
	wire r1;
	wire r0;
	wire c22,c12,c02;
	

	// Instantiate the Unit Under Test (UUT)
	SFB uut (
		.phi(phi), 
		.d1(d1), 
		.d0(d0), 
		.Xin(Xin), 
		.Yin(Yin), 
		.d1_o(d1_o), 
		.d0_o(d0_o), 
		.Xout(Xout), 
		.Yout(Yout), 
		.r5(r5), 
		.r4(r4), 
		.r3(r3), 
		.r2(r2), 
		.r1(r1), 
		.r0(r0),
		.X6(X6),
		.Y6(Y6),
		.c22(c22),
		.c12(c12),
		.c02(c02)
	);

	initial begin
		// Initialize Inputs
		phi = 0;
		d1 = 0;
		d0 = 0;
		Xin = 0;
		Yin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		phi = 13'h0A0D;
		d1 = 0;
		d0 = 0;
		Xin = 16'h4000;
		Yin = 0;
		
		#100;
		phi = 13'h0C90;
		d1 = 0;
		d0 = 0;
		Xin = 16'h4000;
		Yin = 0;
        
		// Add stimulus here

	end
      
endmodule

