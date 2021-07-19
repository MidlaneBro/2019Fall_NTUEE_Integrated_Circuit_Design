`timescale 1ns/1ps

module averager(average, i0, i1, i2, i3, i4, i5, i6, i7, i8);
//DO NOT CHANGE!
	input  [5:0] i0, i1, i2, i3, i4 , i5, i6, i7, i8;
	output [5:0] average;
//---------------------------------------------------

//stage 0(sign extension)
	wire [9:0] a0,a1,a2,a3,a4,a5,a6,a7,a8;

	assign a0 = { {4{i0[5]}} , i0[5:0] };
	assign a1 = { {4{i1[5]}} , i1[5:0] };
	assign a2 = { {4{i2[5]}} , i2[5:0] };
	assign a3 = { {4{i3[5]}} , i3[5:0] };
	assign a4 = { {4{i4[5]}} , i4[5:0] };
	assign a5 = { {4{i5[5]}} , i5[5:0] };
	assign a6 = { {4{i6[5]}} , i6[5:0] };
	assign a7 = { {4{i7[5]}} , i7[5:0] };
	assign a8 = { {4{i8[5]}} , i8[5:0] };

//stage 1
	wire [9:0] s1,s2,s3,c1,c2,c3;

	FA1 fa1(c1[0],s1[0],a0[0],a1[0],a2[0]);
	FA1 fa2(c2[0],s2[0],a3[0],a4[0],a5[0]);
	FA1 fa3(c3[0],s3[0],a6[0],a7[0],a8[0]);
	FA1 fa4(c1[1],s1[1],a0[1],a1[1],a2[1]);
	FA1 fa5(c2[1],s2[1],a3[1],a4[1],a5[1]);
	FA1 fa6(c3[1],s3[1],a6[1],a7[1],a8[1]);
	FA1 fa7(c1[2],s1[2],a0[2],a1[2],a2[2]);
	FA1 fa8(c2[2],s2[2],a3[2],a4[2],a5[2]);
	FA1 fa9(c3[2],s3[2],a6[2],a7[2],a8[2]);
	FA1 fa10(c1[3],s1[3],a0[3],a1[3],a2[3]);
	FA1 fa11(c2[3],s2[3],a3[3],a4[3],a5[3]);
	FA1 fa12(c3[3],s3[3],a6[3],a7[3],a8[3]);
	FA1 fa13(c1[4],s1[4],a0[4],a1[4],a2[4]);
	FA1 fa14(c2[4],s2[4],a3[4],a4[4],a5[4]);
	FA1 fa15(c3[4],s3[4],a6[4],a7[4],a8[4]);
	FA1 fa16(c1[5],s1[5],a0[5],a1[5],a2[5]);
	FA1 fa17(c2[5],s2[5],a3[5],a4[5],a5[5]);
	FA1 fa18(c3[5],s3[5],a6[5],a7[5],a8[5]);
	FA1 fa19(c1[6],s1[6],a0[6],a1[6],a2[6]);
	FA1 fa20(c2[6],s2[6],a3[6],a4[6],a5[6]);
	FA1 fa21(c3[6],s3[6],a6[6],a7[6],a8[6]);
	FA1 fa22(c1[7],s1[7],a0[7],a1[7],a2[7]);
	FA1 fa23(c2[7],s2[7],a3[7],a4[7],a5[7]);
	FA1 fa24(c3[7],s3[7],a6[7],a7[7],a8[7]);
	FA1 fa25(c1[8],s1[8],a0[8],a1[8],a2[8]);
	FA1 fa26(c2[8],s2[8],a3[8],a4[8],a5[8]);
	FA1 fa27(c3[8],s3[8],a6[8],a7[8],a8[8]);
	FA1 fa28(c1[9],s1[9],a0[9],a1[9],a2[9]);
	FA1 fa29(c2[9],s2[9],a3[9],a4[9],a5[9]);
	FA1 fa30(c3[9],s3[9],a6[9],a7[9],a8[9]);

//stage 2
	wire [9:0] s4,c4;
	wire [8:0] s5,c5;

	FA1 fa31(c4[0],s4[0],s1[0],s2[0],s3[0]);
	FA1 fa32(c4[1],s4[1],s1[1],s2[1],s3[1]);
	FA1 fa33(c5[0],s5[0],c1[0],c2[0],c3[0]);
	FA1 fa34(c4[2],s4[2],s1[2],s2[2],s3[2]);
	FA1 fa35(c5[1],s5[1],c1[1],c2[1],c3[1]);
	FA1 fa36(c4[3],s4[3],s1[3],s2[3],s3[3]);
	FA1 fa37(c5[2],s5[2],c1[2],c2[2],c3[2]);
	FA1 fa38(c4[4],s4[4],s1[4],s2[4],s3[4]);
	FA1 fa39(c5[3],s5[3],c1[3],c2[3],c3[3]);
	FA1 fa40(c4[5],s4[5],s1[5],s2[5],s3[5]);
	FA1 fa41(c5[4],s5[4],c1[4],c2[4],c3[4]);
	FA1 fa42(c4[6],s4[6],s1[6],s2[6],s3[6]);
	FA1 fa43(c5[5],s5[5],c1[5],c2[5],c3[5]);
	FA1 fa44(c4[7],s4[7],s1[7],s2[7],s3[7]);
	FA1 fa45(c5[6],s5[6],c1[6],c2[6],c3[6]);
	FA1 fa46(c4[8],s4[8],s1[8],s2[8],s3[8]);
	FA1 fa47(c5[7],s5[7],c1[7],c2[7],c3[7]);
	FA1 fa48(c4[9],s4[9],s1[9],s2[9],s3[9]);
	FA1 fa49(c5[8],s5[8],c1[8],c2[8],c3[8]);

//stage 3
	wire [9:0] s6;
	wire [8:0] c6;
	//c5 remains unchanged

	assign s6[0] = s4[0];

	FA1 fa50(c6[0],s6[1],s4[1],s5[0],c4[0]);
	FA1 fa51(c6[1],s6[2],s4[2],s5[1],c4[1]);
	FA1 fa52(c6[2],s6[3],s4[3],s5[2],c4[2]);
	FA1 fa53(c6[3],s6[4],s4[4],s5[3],c4[3]);
	FA1 fa54(c6[4],s6[5],s4[5],s5[4],c4[4]);
	FA1 fa55(c6[5],s6[6],s4[6],s5[5],c4[5]);
	FA1 fa56(c6[6],s6[7],s4[7],s5[6],c4[6]);
	FA1 fa57(c6[7],s6[8],s4[8],s5[7],c4[7]);
	FA1 fa58(c6[8],s6[9],s4[9],s5[8],c4[8]);

//stage 4
	wire [9:0] s7;
	wire [7:0] c7;

	assign s7[1:0] = s6[1:0];

	FA1 fa59(c7[0],s7[2],s6[2],c5[0],c6[0]);
	FA1 fa60(c7[1],s7[3],s6[3],c5[1],c6[1]);
	FA1 fa61(c7[2],s7[4],s6[4],c5[2],c6[2]);
	FA1 fa62(c7[3],s7[5],s6[5],c5[3],c6[3]);
	FA1 fa63(c7[4],s7[6],s6[6],c5[4],c6[4]);
	FA1 fa64(c7[5],s7[7],s6[7],c5[5],c6[5]);
	FA1 fa65(c7[6],s7[8],s6[8],c5[6],c6[6]);
	FA1 fa66(c7[7],s7[9],s6[9],c5[7],c6[7]);

//stage 5(carry select adder)
	wire [9:0] sum;
	wire carryin1;
	wire useless1;

	assign sum[2:0] = s7[2:0];

	HA1 haha1(carryin1,sum[3],s7[3],c7[0]);
	Carry_Select_Adder_6bits csa6(useless1,sum[9:4],s7[9:4],c7[6:1],carryin1);

//stage 6(division)
	wire [16:0] d1,d2,d3,d4,d5; //d1=sum/16,d2=sum/32,d3=sum/64,d4=sum/1024,d5=sum/2048
	wire [16:0] s8,c8,s9,c9,s10,c10,s11;
	wire [15:0] c11;
	wire carryin2;
	wire useless2;
	wire [16:0] ave;

	assign d1 = { sum[9:0] , {7{1'b0}} };
	assign d2 = { sum[9] , sum[9:0] , {6{1'b0}} };
	assign d3 = { {2{sum[9]}} , sum[9:0] , {5{1'b0}} };
	assign d4 = { {6{sum[9]}} , sum[9:0] , 1'b0 };
	assign d5 = { {7{sum[9]}} , sum[9:0] };
	assign s11[0] = s10[0];
	assign ave[1:0] = s11[1:0];

	FA1 fa67(c8[0],s8[0],d1[0],d2[0],d3[0]);
	FA1 fa68(c8[1],s8[1],d1[1],d2[1],d3[1]);
	FA1 fa69(c8[2],s8[2],d1[2],d2[2],d3[2]);
	FA1 fa70(c8[3],s8[3],d1[3],d2[3],d3[3]);
	FA1 fa71(c8[4],s8[4],d1[4],d2[4],d3[4]);
	FA1 fa72(c8[5],s8[5],d1[5],d2[5],d3[5]);
	FA1 fa73(c8[6],s8[6],d1[6],d2[6],d3[6]);
	FA1 fa74(c8[7],s8[7],d1[7],d2[7],d3[7]);
	FA1 fa75(c8[8],s8[8],d1[8],d2[8],d3[8]);
	FA1 fa76(c8[9],s8[9],d1[9],d2[9],d3[9]);
	FA1 fa77(c8[10],s8[10],d1[10],d2[10],d3[10]);
	FA1 fa78(c8[11],s8[11],d1[11],d2[11],d3[11]);
	FA1 fa79(c8[12],s8[12],d1[12],d2[12],d3[12]);
	FA1 fa80(c8[13],s8[13],d1[13],d2[13],d3[13]);
	FA1 fa81(c8[14],s8[14],d1[14],d2[14],d3[14]);
	FA1 fa82(c8[15],s8[15],d1[15],d2[15],d3[15]);
	FA1 fa83(c8[16],s8[16],d1[16],d2[16],d3[16]);

	HA1 ha1(c9[0],s9[0],d4[0],d5[0]);
	HA1 ha2(c9[1],s9[1],d4[1],d5[1]);
	HA1 ha3(c9[2],s9[2],d4[2],d5[2]);
	HA1 ha4(c9[3],s9[3],d4[3],d5[3]);
	HA1 ha5(c9[4],s9[4],d4[4],d5[4]);
	HA1 ha6(c9[5],s9[5],d4[5],d5[5]);
	HA1 ha7(c9[6],s9[6],d4[6],d5[6]);
	HA1 ha8(c9[7],s9[7],d4[7],d5[7]);
	HA1 ha9(c9[8],s9[8],d4[8],d5[8]);
	HA1 ha10(c9[9],s9[9],d4[9],d5[9]);
	HA1 ha11(c9[10],s9[10],d4[10],d5[10]);
	HA1 ha12(c9[11],s9[11],d4[11],d5[11]);
	HA1 ha13(c9[12],s9[12],d4[12],d5[12]);
	HA1 ha14(c9[13],s9[13],d4[13],d5[13]);
	HA1 ha15(c9[14],s9[14],d4[14],d5[14]);
	HA1 ha16(c9[15],s9[15],d4[15],d5[15]);
	HA1 ha17(c9[16],s9[16],d4[16],d5[16]);

	HA1 ha18(c10[0],s10[0],s8[0],s9[0]);
	FA1 fa84(c10[1],s10[1],s8[1],s9[1],c8[0]);
	FA1 fa85(c10[2],s10[2],s8[2],s9[2],c8[1]);
	FA1 fa86(c10[3],s10[3],s8[3],s9[3],c8[2]);
	FA1 fa87(c10[4],s10[4],s8[4],s9[4],c8[3]);
	FA1 fa88(c10[5],s10[5],s8[5],s9[5],c8[4]);
	FA1 fa89(c10[6],s10[6],s8[6],s9[6],c8[5]);
	FA1 fa90(c10[7],s10[7],s8[7],s9[7],c8[6]);
	FA1 fa91(c10[8],s10[8],s8[8],s9[8],c8[7]);
	FA1 fa92(c10[9],s10[9],s8[9],s9[9],c8[8]);
	FA1 fa93(c10[10],s10[10],s8[10],s9[10],c8[9]);
	FA1 fa94(c10[11],s10[11],s8[11],s9[11],c8[10]);
	FA1 fa95(c10[12],s10[12],s8[12],s9[12],c8[11]);
	FA1 fa96(c10[13],s10[13],s8[13],s9[13],c8[12]);
	FA1 fa97(c10[14],s10[14],s8[14],s9[14],c8[13]);
	FA1 fa98(c10[15],s10[15],s8[15],s9[15],c8[14]);
	FA1 fa99(c10[16],s10[16],s8[16],s9[16],c8[15]);

	FA1 fa100(c11[0],s11[1],s10[1],c9[0],c10[0]);
	FA1 fa101(c11[1],s11[2],s10[2],c9[1],c10[1]);
	FA1 fa102(c11[2],s11[3],s10[3],c9[2],c10[2]);
	FA1 fa103(c11[3],s11[4],s10[4],c9[3],c10[3]);
	FA1 fa104(c11[4],s11[5],s10[5],c9[4],c10[4]);
	FA1 fa105(c11[5],s11[6],s10[6],c9[5],c10[5]);
	FA1 fa106(c11[6],s11[7],s10[7],c9[6],c10[6]);
	FA1 fa107(c11[7],s11[8],s10[8],c9[7],c10[7]);
	FA1 fa108(c11[8],s11[9],s10[9],c9[8],c10[8]);
	FA1 fa109(c11[9],s11[10],s10[10],c9[9],c10[9]);
	FA1 fa110(c11[10],s11[11],s10[11],c9[10],c10[10]);
	FA1 fa111(c11[11],s11[12],s10[12],c9[11],c10[11]);
	FA1 fa112(c11[12],s11[13],s10[13],c9[12],c10[12]);
	FA1 fa113(c11[13],s11[14],s10[14],c9[13],c10[13]);
	FA1 fa114(c11[14],s11[15],s10[15],c9[14],c10[14]);
	FA1 fa115(c11[15],s11[16],s10[16],c9[15],c10[15]);

	HA1 haha2(carryin2,ave[2],s11[2],c11[0]);
	Carry_Select_Adder_14bits csa14(useless2,ave[16:3],s11[16:3],c11[14:1],carryin2);

//stage 7(rounding)

	wire useless3;
	wire carry1,carry2,carry3,carry4,carry5;

	HA1 ha19(carry1,average[0],ave[11],ave[10]);
	HA1 ha20(carry2,average[1],ave[12],carry1);
	HA1 ha21(carry3,average[2],ave[13],carry2);
	HA1 ha22(carry4,average[3],ave[14],carry3);
	HA1 ha23(carry5,average[4],ave[15],carry4);
	HA1 ha24(useless3,average[5],ave[16],carry5);

endmodule

module Carry_Select_Adder_14bits(co,s,a,b,ci); //4,4,3,3
	input [13:0] a,b;
	input ci;
	output [13:0] s;
	output co;

	wire c3,c6_0,c6_1,c6,c10_0,c10_1,c10,c14_0,c14_1;
	wire [2:0] s5_3_0,s5_3_1;
	wire [3:0] s9_6_0,s9_6_1,s13_10_0,s13_10_1;
	wire and_out1,and_out2,and_out3;

	FA3 fa3_1(c3,s[2:0],a[2:0],b[2:0],ci);

	FA3 fa3_2(c6_0,s5_3_0,a[5:3],b[5:3],1'b0);
	FA3 fa3_3(c6_1,s5_3_1,a[5:3],b[5:3],1'b1);
	MUX21H mux1(s[3],s5_3_0[0],s5_3_1[0],c3);
	MUX21H mux2(s[4],s5_3_0[1],s5_3_1[1],c3);
	MUX21H mux3(s[5],s5_3_0[2],s5_3_1[2],c3);
	AN2 and1(and_out1,c6_1,c3);
	OR2 or1(c6,c6_0,and_out1);

	FA4 fa4_3(c10_0,s9_6_0,a[9:6],b[9:6],1'b0);
	FA4 fa4_4(c10_1,s9_6_1,a[9:6],b[9:6],1'b1);
	MUX21H mux5(s[6],s9_6_0[0],s9_6_1[0],c6);
	MUX21H mux6(s[7],s9_6_0[1],s9_6_1[1],c6);
	MUX21H mux7(s[8],s9_6_0[2],s9_6_1[2],c6);
	MUX21H mux8(s[9],s9_6_0[3],s9_6_1[3],c6);
	AN2 and2(and_out2,c10_1,c6);
	OR2 or2(c10,c10_0,and_out2);

	FA4 fa4_5(c14_0,s13_10_0,a[13:10],b[13:10],1'b0);
	FA4 fa4_6(c14_1,s13_10_1,a[13:10],b[13:10],1'b1);
	MUX21H mux9(s[10],s13_10_0[0],s13_10_1[0],c10);
	MUX21H mux10(s[11],s13_10_0[1],s13_10_1[1],c10);
	MUX21H mux11(s[12],s13_10_0[2],s13_10_1[2],c10);
	MUX21H mux12(s[13],s13_10_0[3],s13_10_1[3],c10);
	AN2 and3(and_out3,c14_1,c10);
	OR2 or3(co,c14_0,and_out3);

endmodule

module Carry_Select_Adder_6bits(co,s,a,b,ci); //3,3
	input [5:0] a,b;
	input ci;
	output [5:0] s;
	output co;

	wire c3,c6_0,c6_1;
	wire [2:0] s_0,s_1;
	wire and_out;

	FA3 fa3_1(c3,s[2:0],a[2:0],b[2:0],ci);
	FA3 fa3_2(c6_0,s_0,a[5:3],b[5:3],1'b0);
	FA3 fa3_3(c6_1,s_1,a[5:3],b[5:3],1'b1);
	MUX21H mux1(s[3],s_0[0],s_1[0],c3);
	MUX21H mux2(s[4],s_0[1],s_1[1],c3);
	MUX21H mux3(s[5],s_0[2],s_1[2],c3);
	AN2 and1(and_out,c6_1,c3);
	OR2 or1(co,c6_0,and_out);

endmodule

module FA3(co,s,a,b,ci);
	input [2:0] a,b;
	input ci;
	output [2:0] s;
	output co;

	wire c1,c2;

	FA1 fa1(c1,s[0],a[0],b[0],ci);
	FA1 fa2(c2,s[1],a[1],b[1],c1);
	FA1 fa3(co,s[2],a[2],b[2],c2);

endmodule

module FA4(co,s,a,b,ci);
	input [3:0] a,b;
	input ci;
	output [3:0] s;
	output co;

	wire c1,c2,c3;

	FA1 fa1(c1,s[0],a[0],b[0],ci);
	FA1 fa2(c2,s[1],a[1],b[1],c1);
	FA1 fa3(c3,s[2],a[2],b[2],c2);
	FA1 fa4(co,s[3],a[3],b[3],c3);

endmodule
