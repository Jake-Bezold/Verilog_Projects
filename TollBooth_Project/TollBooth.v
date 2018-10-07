`timescale 1ns / 1ps
////////////////////////////////////
//Jake Bezold and Paul Brodhead 2017
////////////////////////////////////
module TollBooth(
    input Nickel1,
    input Nickel2,
    input Dime,
    input Quarter,
    inout LEDgo,
    output LEDstop
    );
	 
	 wire Nickel;
	 and (Nickel, Nickel1, Nickel2);
	 or (LEDgo, Nickel, Dime, Quarter);
	 not (LEDstop, LEDgo);


endmodule
