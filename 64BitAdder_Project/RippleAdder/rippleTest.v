`timescale 1ns / 1ps

////////////////////////////////////
//Jake Bezold and Paul Brodhead 2017
////////////////////////////////////

module rippleTest();
    reg [63:0] a;
    reg [63:0] b;
    reg c_in;
    
    wire [63:0] sum;
    wire carry;
    
    //integer i = 0;
    //integer j = 0;
    
    Ripple_Adder_64 uut(
        .a(a),
        .b(b),
        .c_in(c_in),
        .sum(sum),
        .c_out(carry)
    ); 
    
    initial begin
    
        a = 0;
        b = 0;
        
        
        c_in = 0;
        a = 64'hff;  //255 in binary
        b = 64'h12;  //18 in binary
        
    end
endmodule
