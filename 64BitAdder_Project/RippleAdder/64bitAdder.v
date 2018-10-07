`timescale 1ns / 1ps

////////////////////////////////////
//Jake Bezold and Paul Brodhead 2018
////////////////////////////////////

module full_Adder(
    input a,
    input b,
    input c_in,
    output sum,
    output c_out
    );
    
    wire s1, s2, s3;
    
    assign s1 = a ^ b;
    assign s2 = s1 & c_in;
    assign s3 = a & b;
    assign sum = s1 ^ c_in;
    assign c_out = s2 | s3;
endmodule

module Ripple_Adder_64(
    input [63:0] a,
    input [63:0] b,
    input c_in,
    output [63:0] sum,
    output c_out
    );
    
    wire c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30;
    wire c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58;
    wire c59, c60, c61, c62, c63;
    
    full_Adder FA0(a[0], b[0], c_in, sum[0], c1);
    full_Adder FA1(a[1], b[1], c1, sum[1], c2);
    full_Adder FA2(a[2], b[2], c2, sum[2], c3);
    full_Adder FA3(a[3], b[3], c3, sum[3], c4);
    full_Adder FA4(a[4], b[4], c4, sum[4], c5);
    full_Adder FA5(a[5], b[5], c5, sum[5], c6);
    full_Adder FA6(a[6], b[6], c6, sum[6], c7);
    full_Adder FA7(a[7], b[7], c7, sum[7], c8);
    full_Adder FA8(a[8], b[8], c8, sum[8], c9);
    full_Adder FA9(a[9], b[9], c9, sum[9], c10);
    full_Adder FA10(a[10], b[10], c10, sum[10], c11);
    full_Adder FA11(a[11], b[11], c11, sum[11], c12);
    full_Adder FA12(a[12], b[12], c12, sum[12], c13);
    full_Adder FA13(a[13], b[13], c13, sum[13], c14);
    full_Adder FA14(a[14], b[14], c14, sum[14], c15);
    full_Adder FA15(a[15], b[15], c15, sum[15], c16);
    full_Adder FA16(a[16], b[16], c16, sum[16], c17);
    full_Adder FA17(a[17], b[17], c17, sum[17], c18);
    full_Adder FA18(a[18], b[18], c18, sum[18], c19);
    full_Adder FA19(a[19], b[19], c19, sum[19], c20);
    full_Adder FA20(a[20], b[20], c20, sum[20], c21);
    full_Adder FA21(a[21], b[21], c21, sum[21], c22);
    full_Adder FA22(a[22], b[22], c22, sum[22], c23);
    full_Adder FA23(a[23], b[23], c23, sum[23], c24);
    full_Adder FA24(a[24], b[24], c24, sum[24], c25);
    full_Adder FA25(a[25], b[25], c25, sum[25], c26);
    full_Adder FA26(a[26], b[26], c26, sum[26], c27);
    full_Adder FA27(a[27], b[27], c27, sum[27], c28);
    full_Adder FA28(a[28], b[28], c28, sum[28], c29);
    full_Adder FA29(a[29], b[29], c29, sum[29], c30);
    full_Adder FA30(a[30], b[30], c30, sum[30], c31);
    full_Adder FA31(a[31], b[31], c31, sum[31], c32);
    full_Adder FA32(a[32], b[32], c32, sum[32], c33);
    full_Adder FA33(a[33], b[33], c33, sum[33], c34);
    full_Adder FA34(a[34], b[34], c34, sum[34], c35);    
    full_Adder FA35(a[35], b[35], c35, sum[35], c36);
    full_Adder FA36(a[36], b[36], c36, sum[36], c37);
    full_Adder FA37(a[37], b[37], c37, sum[37], c38);
    full_Adder FA38(a[38], b[38], c38, sum[38], c39);
    full_Adder FA39(a[39], b[39], c39, sum[39], c40);
    full_Adder FA40(a[40], b[40], c40, sum[40], c41);
    full_Adder FA41(a[41], b[41], c41, sum[41], c42);
    full_Adder FA42(a[42], b[42], c42, sum[42], c43);
    full_Adder FA43(a[43], b[43], c43, sum[43], c44);
    full_Adder FA44(a[44], b[44], c44, sum[44], c45);
    full_Adder FA45(a[45], b[45], c45, sum[45], c46);
    full_Adder FA46(a[46], b[46], c46, sum[46], c47);
    full_Adder FA47(a[47], b[47], c47, sum[47], c48);
    full_Adder FA48(a[48], b[48], c48, sum[48], c49);
    full_Adder FA49(a[49], b[49], c49, sum[49], c50);
    full_Adder FA50(a[50], b[50], c50, sum[50], c51);
    full_Adder FA51(a[51], b[51], c51, sum[51], c52);
    full_Adder FA52(a[52], b[52], c52, sum[52], c53);
    full_Adder FA53(a[53], b[53], c53, sum[53], c54);
    full_Adder FA56(a[56], b[56], c56, sum[56], c57);
    full_Adder FA57(a[57], b[57], c57, sum[57], c58);
    full_Adder FA58(a[58], b[58], c58, sum[58], c59);
    full_Adder FA59(a[59], b[59], c59, sum[59], c60);
    full_Adder FA60(a[60], b[60], c60, sum[60], c61);
    full_Adder FA61(a[61], b[61], c61, sum[61], c62);
    full_Adder FA62(a[62], b[62], c62, sum[62], c63);
    full_Adder FA63(a[63], b[63], c63, sum[63], c_out);


endmodule

