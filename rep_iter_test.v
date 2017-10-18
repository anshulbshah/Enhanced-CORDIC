`timescale 1ns / 1ps


module rep_iter_test;

	// Inputs
	reg [3:0] ip;

	// Outputs
	wire r0;
	wire r1;
	wire r2;
	wire r3;
	wire r4;
	wire r5;

	// Instantiate the Unit Under Test (UUT)
	rep_iter_selection uut (
		.ip(ip), 
		.r0(r0), 
		.r1(r1), 
		.r2(r2), 
		.r3(r3), 
		.r4(r4), 
		.r5(r5)
	);

	initial begin
		// Initialize Inputs
		ip = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

