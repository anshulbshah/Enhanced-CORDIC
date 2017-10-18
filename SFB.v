`timescale 1ns / 1ps

module SFB(phi,d1,d0,Xin,Yin,d1_o,d0_o,Xout,Yout,r5,r4,r3,r2,r1,r0,X6,Y6,c22,c12,c02);
input [12:0] phi;
input d1,d0;
input [15:0] Xin;
input [15:0] Yin;
output d1_o,d0_o;
output [15:0] Xout,Yout;
output r5,r4,r3,r2,r1,r0;
output [15:0] X6,Y6;
wire [15:0] X1,Y1,X3,Y3,X4,Y4,X5,Y5,X2,Y2,X7,Y7,X8,Y8,X9,Y9,X10,Y10;
output c22,c12,c02;
wire c21,c11,c01,c23,c13,c03,c24,c14,c04,c25,c15,c05;

rep_iter_selection rep_iter_sel(phi[12:9],r0,r1,r2,r3,r4,r5);

rep_iter first(r0,d0,Xin,Yin,X1,Y1);

rep_iter second(r1,d0,X1,Y1,X2,Y2);

rep_iter third(r2,d0,X2,Y2,X3,Y3);

rep_iter fourth(r3,d0,X3,Y3,X4,Y4);

rep_iter fifth(r4,d0,X4,Y4,X5,Y5);

rep_iter sixth(r5,d0,X5,Y5,X6,Y6);

booth b1({d0,phi[9:7]},c21,c11,c01);

iter_jln2 jln21(c21,c11,c01,X6,Y6,X7,Y7);

booth b2({d0,phi[7:5]},c22,c12,c02);

jgn2 jgn21(c22,c12,c02,X7,Y7,X8,Y8,4'b0111);

booth b3({d0,phi[5:3]},c23,c13,c03);

jgn2 jgn22(c23,c13,c03,X8,Y8,X9,Y9,4'b1001);

booth b4({d0,phi[3:1]},c24,c14,c04);

jgn2 jgn23(c24,c14,c04,X9,Y9,X10,Y10,4'b1011);

booth b5({d0,phi[1:0],0},c25,c15,c05);

jgn2 jgn24(c25,c15,c05,X10,Y10,Xout,Yout,4'b1101);

assign d1_o = d1;

assign d0_o = d0;

endmodule
