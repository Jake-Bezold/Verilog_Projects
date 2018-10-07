`timescale 1ns / 1ps

////////////////////////////////////
//Jake Bezold and Paul Brodhead 2018
////////////////////////////////////

module behaviorTB();
   reg [63:0] a;
   reg [63:0] b;
   wire [64:0] sum;
  
   
  Behavioral_adder uut(
       .a(a),
       .b(b),
       .sum(sum)
   ); 
   
   initial begin
   
       a = 0;
       b = 0;
       
       
       a = 64'hff;  //255 in binary
       b = 64'h12;  //18 in binary
       
   end
endmodule
