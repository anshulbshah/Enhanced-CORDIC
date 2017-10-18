`timescale 1ns / 1ps



module test_pre;

	// Inputs
	reg [17:0] theta1;
	reg [15:0] x0;
	reg [15:0] y0;

	// Outputs
	wire [12:0] phi;
	wire d0;
	wire d1;
	wire [15:0] Xin;
	wire [15:0] Yin;

	// Instantiate the Unit Under Test (UUT)
	preprocessing uut (
		.theta1(theta1), 
		.x0(x0), 
		.y0(y0), 
		.phi(phi), 
		.d0(d0), 
		.d1(d1), 
		.Xin(Xin), 
		.Yin(Yin)
	);

	initial begin
		// Initialize Inputs
		theta1 = 0;
		x0 = 0;
		y0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		x0 = 1;
		y0 = 0;
		theta1 = 18'h01921; //pi/8
        
		// Add stimulus here
		#200;
		x0 = 1;
		y0 = 0;
		theta1 = 18'h15FDB; //7pi/4
		
		#300;
		x0 = 1;
		y0 = 0;
		theta1 = 18'h0C90C; //pi-delta
		
		#300;
		x0 = 1;
		y0 = 0;
		theta1 = 18'h0C90C-18'h01921; //pi-delta-pi/8
		
	end
      
endmodule

