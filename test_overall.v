`timescale 1ns / 1ps



module test_overall;

	// Outputs
	wire [15:0] Xout;
	wire [15:0] Yout;

	// Instantiate the Unit Under Test (UUT)
	Overall_Module uut (
		.Xout(Xout), 
		.Yout(Yout)
	);

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

