`timescale 1ns / 1ps


module test_rep_iter;

	// Inputs
	reg r;
	reg d;
	reg [15:0] X;
	reg [15:0] Y;

	// Outputs
	wire [15:0] Xnew;
	wire [15:0] Ynew;

	// Instantiate the Unit Under Test (UUT)
	rep_iter uut (
		.r(r), 
		.d(d), 
		.X(X), 
		.Y(Y), 
		.Xnew(Xnew), 
		.Ynew(Ynew)
	);

	initial begin
		// Initialize Inputs
		r = 1;
		d = 1;
		X = 20;
		Y = 30;

		// Wait 100 ns for global reset to finish
		#100;
		
		r = 0;
        
		// Add stimulus here

	end
      
endmodule

