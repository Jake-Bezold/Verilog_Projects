`timescale 1ns / 1ps

////////////////////////////////////
//Jake Bezold and Paul Brodhead 2018
////////////////////////////////////

module fullAdder(
    input a,
    input b,
    input c_in,
    output p,
    output g,
    output sum,
    output c_out
    );
    
    wire s1;
    
    assign p     = a ^ b;
    assign g     = a & b;
    assign sum   = p ^ c_in;
    assign s1    = p & c_in;
    assign c_out = g | s1;
    
endmodule

module twoBitLookAhead(
    input [1:0] a,
    input [1:0] b,
    input c_in,
    output [1:0] sum,
    output c_out
    );
    
    wire p0, g0, p1, g1, c_temp, c1;
    
    fullAdder FA0(a[0], b[0], c_in, p0, g0, sum[0], c_temp);
    assign c1 = g0 | (p0 & c_in);
    fullAdder FA1(a[1], b[1], c1, p1, g1, sum[1], c_temp);
    assign c_out = g1 | (p1 & g0) | (p1 & p0 & c_in);
    
endmodule

module carryLookAhead(
    input [63:0] a,
    input [63:0] b,
    input c_in,
    output [63:0] sum,
    output c_out
    );
    wire c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31;
    
    twoBitLookAhead A0(a[1:0], b[1:0], c_in, sum[1:0], c1);
    twoBitLookAhead A1(a[3:2], b[3:2], c1, sum[3:2], c2);
    twoBitLookAhead A2(a[5:4], b[5:4], c2, sum[5:4], c3);
    twoBitLookAhead A3(a[7:6], b[7:6], c3, sum[7:6], c4);
    twoBitLookAhead A4(a[9:8], b[9:8], c4, sum[9:8], c5);
    twoBitLookAhead A5(a[11:10], b[11:10], c5, sum[11:10], c6);
    twoBitLookAhead A7(a[13:12], b[13:12], c6, sum[13:12], c7);
    twoBitLookAhead A8(a[15:14], b[15:14], c7, sum[15:14], c8);
    twoBitLookAhead A9(a[17:16], b[17:16], c8, sum[17:16], c9);
    twoBitLookAhead A10(a[19:18], b[19:18], c9, sum[19:18], c10);
    twoBitLookAhead A11(a[21:20], b[21:20], c10, sum[21:20], c11);
    twoBitLookAhead A12(a[23:22], b[23:22], c11, sum[23:22], c12);
    twoBitLookAhead A13(a[25:24], b[25:24], c12, sum[25:24], c13);
    twoBitLookAhead A14(a[27:26], b[27:26], c13, sum[27:26], c14);
    twoBitLookAhead A15(a[29:28], b[29:28], c14, sum[29:28], c15);
    twoBitLookAhead A16(a[31:30], b[31:30], c15, sum[31:30], c16);    
    twoBitLookAhead A17(a[33:32], b[33:32], c16, sum[33:32], c17);
    twoBitLookAhead A18(a[35:34], b[35:34], c17, sum[35:34], c18);
    twoBitLookAhead A19(a[37:36], b[37:36], c18, sum[37:36], c19);
    twoBitLookAhead A20(a[39:38], b[39:38], c19, sum[39:38], c20);
    twoBitLookAhead A21(a[41:40], b[41:40], c20, sum[41:40], c21);
    twoBitLookAhead A22(a[43:42], b[43:42], c21, sum[43:42], c22);
    twoBitLookAhead A23(a[45:44], b[45:44], c22, sum[45:44], c23);
    twoBitLookAhead A24(a[47:46], b[47:46], c23, sum[47:46], c24);
    twoBitLookAhead A25(a[49:48], b[49:48], c24, sum[49:48], c25);
    twoBitLookAhead A26(a[51:50], b[51:50], c25, sum[51:50], c26);
    twoBitLookAhead A27(a[53:52], b[53:52], c26, sum[53:52], c27);
    twoBitLookAhead A28(a[55:54], b[55:54], c27, sum[55:54], c28);
    twoBitLookAhead A29(a[57:56], b[57:56], c28, sum[57:56], c29);
    twoBitLookAhead A30(a[59:58], b[59:58], c29, sum[59:58], c30);
    twoBitLookAhead A31(a[61:60], b[61:60], c30, sum[61:60], c31);
    twoBitLookAhead A32(a[63:62], b[63:62], c31, sum[63:62], c_out);
 
endmodule
