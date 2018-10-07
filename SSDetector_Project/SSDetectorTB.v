`timescale 1ns / 1ps

////////////////////////////////////
//Jake Bezold and Paul Brodhead 2017
////////////////////////////////////

module SSDetectorTB;

	// Inputs
	reg clock;
	reg in;
	reg reset;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	SSDetector uut (
		.clock(clock), 
		.in(in), 
		.reset(reset), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		in = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		in = 0; clock = 0; reset= 1;
		#50
		in = 0; clock = 1;
		#25
		in = 0; clock = 1;
		#25
		in = 1; clock = 0;
		#50
		in = 1; clock = 1;
		#50
		in = 1; clock = 0;
		#50
		in = 1; clock = 1;
		#25
		in = 1; clock = 1;
		#25
		in = 0; clock = 0; 
		#50
		in = 0; clock = 1;
		#50
		in = 0; clock = 0; reset = 0;
		#50
		in = 0; clock = 1;
		#50
		in = 0; clock = 0;

	end
      
endmodule

