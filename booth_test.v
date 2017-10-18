`timescale 1ns / 1ps



module booth_test;

	// Inputs
	reg [3:0] d0_a;

	// Outputs
	wire c0;
	wire c1;
	wire c2;

	// Instantiate the Unit Under Test (UUT)
	booth uut (
		.d0_a(d0_a), 
		.c0(c0), 
		.c1(c1), 
		.c2(c2)
	);

	initial begin
		// Initialize Inputs
		d0_a = 4'b0001;

		// Wait 100 ns for global reset to finish
		#100;
		
		d0_a = 4'b0011;
		
		#100;
		
		d0_a = 4'b1001;
        
		// Add stimulus here

	end
      
endmodule

