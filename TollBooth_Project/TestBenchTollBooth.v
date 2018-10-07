`timescale 1ns / 1ps

////////////////////////////////////
//Jake Bezold and Paul Brodhead 2017
////////////////////////////////////

module TestBenchTollBooth;

	// Inputs
	reg Nickel1;
	reg Nickel2;
	reg Dime;
	reg Quarter;

	// Outputs
	wire LEDstop;

	// Bidirs
	wire LEDgo;

	// Instantiate the Unit Under Test (UUT)
	TollBooth uut (
		.Nickel1(Nickel1), 
		.Nickel2(Nickel2), 
		.Dime(Dime), 
		.Quarter(Quarter), 
		.LEDgo(LEDgo), 
		.LEDstop(LEDstop)
	);

	initial begin
		// Initialize Inputs
		Nickel1 = 0;
		Nickel2 = 0;
		Dime = 0;
		Quarter = 0;

		// Wait 100 ns for global reset to finish
		#100;
		Nickel1 = 0; Nickel2 = 0; Dime = 0; Quarter = 0;
      #50; 
		Nickel1 = 0; Nickel2 = 0; Dime = 0; Quarter = 1;
      #50; 
		Nickel1 = 0; Nickel2 = 0; Dime = 1; Quarter = 0;
      #50; 
		Nickel1 = 0; Nickel2 = 0; Dime = 1; Quarter = 1;
      #50; 
		Nickel1 = 0; Nickel2 = 1; Dime = 0; Quarter = 0;
      #50; 
		Nickel1 = 0; Nickel2 = 1; Dime = 0; Quarter = 1;
      #50; 
		Nickel1 = 0; Nickel2 = 1; Dime = 1; Quarter = 0;
      #50; 
		Nickel1 = 0; Nickel2 = 1; Dime = 1; Quarter = 1;
      #50; 
		Nickel1 = 1; Nickel2 = 0; Dime = 0; Quarter = 0;
      #50; 
		Nickel1 = 1; Nickel2 = 0; Dime = 0; Quarter = 1;
      #50; 
		Nickel1 = 1; Nickel2 = 0; Dime = 1; Quarter = 0;
      #50; 
		Nickel1 = 1; Nickel2 = 0; Dime = 1; Quarter = 1;
      #50; 
		Nickel1 = 1; Nickel2 = 1; Dime = 0; Quarter = 0;
      #50; 
		Nickel1 = 1; Nickel2 = 1; Dime = 0; Quarter = 1;
      #50; 
		Nickel1 = 1; Nickel2 = 1; Dime = 1; Quarter = 0;
      #50; 
		Nickel1 = 1; Nickel2 = 1; Dime = 1; Quarter = 1;
      #50; 
		// Add stimulus here

	end
      
endmodule

