`timescale 1ns / 1ps

////////////////////////////////////
//Jake Bezold and Paul Brodhead 2018
////////////////////////////////////

module Behavioral_adder(
    input [63:0] a,
    input [63:0] b,
    output [64:0] sum
    );
    
    assign sum = a + b;
    
endmodule
