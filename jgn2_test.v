`timescale 1ns / 1ps


module jgn2_test;

	// Inputs
	reg c2;
	reg c1;
	reg c0;
	reg [15:0] X;
	reg [15:0] Y;
	reg [3:0] j;

	// Outputs
	wire [15:0] Xnew;
	wire [15:0] Ynew;

	// Instantiate the Unit Under Test (UUT)
	jgn2 uut (
		.c2(c2), 
		.c1(c1), 
		.c0(c0), 
		.X(X), 
		.Y(Y), 
		.Xnew(Xnew), 
		.Ynew(Ynew), 
		.j(j)
	);

	initial begin
		// Initialize Inputs
		c2 = 0;
		c1 = 0;
		c0 = 0;
		X = 0;
		Y = 0;
		j = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		c2 = 1;
		c1 = 1;
		c0 = 1;
		X = 2048;
		Y = 4096;
		j = 9;
	end
      
endmodule

