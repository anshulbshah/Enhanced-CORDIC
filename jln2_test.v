`timescale 1ns / 1ps


module jln2_test;

	// Inputs
	reg c2;
	reg c1;
	reg c0;
	reg [15:0] X;
	reg [15:0] Y;

	// Outputs
	wire [15:0] Xnew;
	wire [15:0] Ynew;

	// Instantiate the Unit Under Test (UUT)
	iter_jln2 uut (
		.c2(c2), 
		.c1(c1), 
		.c0(c0), 
		.X(X), 
		.Y(Y), 
		.Xnew(Xnew), 
		.Ynew(Ynew)
	);

	initial begin
		// Initialize Inputs
		c2 = 0;
		c1 = 0;
		c0 = 0;
		X = 0;
		Y = 0;

		// Wait 100 ns for global reset to finish
		#100;
       
		c2 = 0;
		c1 = 0;
		c0 = 1;
		X = 1024;
		Y = 2048;
		// Add stimulus here

	end
      
endmodule

