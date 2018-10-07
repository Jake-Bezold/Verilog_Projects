`timescale 1ns / 1ps

////////////////////////////////////
//Jake Bezold and Paul Brodhead 2018
////////////////////////////////////


module ALU(
    input [63:0] a,
    input [63:0] b,
    input [3:0] Control,
    output [63:0] out,
    output carry
    );
      
    reg [63:0] out;
    reg carry; 
      
    always @*
    begin
        case(Control)
        4'b0000: out = a & b;
        4'b0001: out = a | b;
        4'b0010: begin
                 out = a + b;
                 carry = (a[63] & b[63] & ~out[63]) | (~a[63] & ~b[63] & out[63]);
                 end
        4'b0110: out = a - b;
        4'b0111: out = b;
        4'b1100: out = ~(a | b);
    endcase
    end
endmodule
