`timescale 1ns / 1ps

////////////////////////////////////
//Jake Bezold and Paul Brodhead 2018
////////////////////////////////////

module tb();
    reg [63:0] a;
    reg [63:0] b;
    reg [3:0] Control;
    wire [63:0] out;
    wire carry;
    
 ALU uut(
    .a(a),
    .b(b),
    .Control(Control),
    .out(out),
    .carry(carry)
    );
    
initial begin
        
            a = 0;
            b = 0;
            Control = 0;

            
            a = 64'hd;
            b = 64'h1;
            Control = 4'b1100;
            
        end
    endmodule
