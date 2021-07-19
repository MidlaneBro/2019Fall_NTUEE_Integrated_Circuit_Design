/* ----------------------------- DO NOT CHANGE ! ---------------------------- */
`timescale 1ns/1ps

module COA(clk, rst_n, A, B, C, D, valid_in, valid_out, COA_num);
    input clk, rst_n;
    
    // Input/Output Data
    input   [5-1:0] A;
    input   [5-1:0] B;
    input   [5-1:0] C;
    output [10-1:0] D;

    // Handshake signal
    input  valid_in;
    output valid_out;

    // Area count
    output [50:0] COA_num;
/* ----------------------------- DO NOT CHANGE ! ---------------------------- */


/* --------------------- Write your code from this line --------------------- */
    //version 1 of square
    //partial product generator
    /*wire [4:0] A_pp0,A_pp1,A_pp2,A_pp3,A_pp4;
    wire [50:0] A_num0,A_num1,A_num2,A_num3,A_num4;
    wire [4:0] B_pp0,B_pp1,B_pp2,B_pp3,B_pp4;
    wire [50:0] B_num0,B_num1,B_num2,B_num3,B_num4;
    wire [4:0] C_pp0,C_pp1,C_pp2,C_pp3,C_pp4;
    wire [50:0] C_num0,C_num1,C_num2,C_num3,C_num4;
    wire [50:0] ppg_num;

    partial_product_generator A_ppg0(A_pp0,A,A[0],A_num0);
    partial_product_generator A_ppg1(A_pp1,A,A[1],A_num1);
    partial_product_generator A_ppg2(A_pp2,A,A[2],A_num2);
    partial_product_generator A_ppg3(A_pp3,A,A[3],A_num3);
    partial_product_generator A_ppg4(A_pp4,A,A[4],A_num4);
    partial_product_generator B_ppg0(B_pp0,B,B[0],B_num0);
    partial_product_generator B_ppg1(B_pp1,B,B[1],B_num1);
    partial_product_generator B_ppg2(B_pp2,B,B[2],B_num2);
    partial_product_generator B_ppg3(B_pp3,B,B[3],B_num3);
    partial_product_generator B_ppg4(B_pp4,B,B[4],B_num4);
    partial_product_generator C_ppg0(C_pp0,C,C[0],C_num0);
    partial_product_generator C_ppg1(C_pp1,C,C[1],C_num1);
    partial_product_generator C_ppg2(C_pp2,C,C[2],C_num2);
    partial_product_generator C_ppg3(C_pp3,C,C[3],C_num3);
    partial_product_generator C_ppg4(C_pp4,C,C[4],C_num4);

    //wallace_tree_structure
    wire [9:0] A_square,B_square,C_square;
    wire [50:0] A_num5,B_num5,C_num5;
    wire [50:0] wt_num;

    wallace_tree A_wt(A_square,A_pp0,A_pp1,A_pp2,A_pp3,A_pp4,A_num5);
    wallace_tree B_wt(B_square,B_pp0,B_pp1,B_pp2,B_pp3,B_pp4,B_num5);
    wallace_tree C_wt(C_square,C_pp0,C_pp1,C_pp2,C_pp3,C_pp4,C_num5);*/

    //version 2 of square
    //kmap
    wire [9:0] A_square,B_square,C_square;
    wire [50:0] A_num,B_num,C_num;
    wire [50:0] k_num;

    kmap k1(A_square,A,A_num);
    kmap k2(B_square,B,B_num);
    kmap k3(C_square,C,C_num);

    //calculate the result
    wire [10:0] B_plus_C,A_square_n;
    wire [10:0] numerator;
    wire [9:0] ans;
    wire [50:0] a10b_num,neg_num,a11b_num;

    adder_10_bits a10b(B_plus_C,B_square,C_square,a10b_num);
    negative neg0(A_square_n,A_square,neg_num);
    adder_11_bits a11b(numerator,B_plus_C,A_square_n,a11b_num);

    assign ans = numerator[10:1];

    //output
    wire valid_temp;
    wire [50:0] fd_num,fd_num0,fd_num1;

    FD2 fd2_0(valid_out,valid_in,clk,rst_n,fd_num0);
    reg_10_bits r10b_3(D,ans,clk,rst_n,fd_num1);

/* -------------------- Add up your number of transistors ------------------- */
    //assign ppg_num = A_num0 + A_num1 + A_num2 + A_num3 + A_num4 + B_num0 + B_num1 + B_num2 + B_num3 + B_num4 + C_num0 + C_num1 + C_num2 + C_num3 + C_num4;
    //assign wt_num = A_num5 + B_num5 + C_num5;
    assign k_num = A_num + B_num + C_num;
    assign fd_num = fd_num0 + fd_num1;
    assign COA_num = k_num + a10b_num + neg_num + a11b_num + fd_num;

endmodule

module kmap(Z,A,number);

    input [4:0] A;
    output [9:0] Z;
    output [50:0] number;

    wire neg0,neg1,neg2,neg3,neg4;
    wire [50:0] ivnum,ivnum0,ivnum1,ivnum2,ivnum3,ivnum4;
    wire [50:0] num,num0,num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,num20,num21,num22,num23,num24,num25,num26,num27,num28,num29,num30,num31,num32,num33,num34,num35,num36,num37,num38,num39;
    wire tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8,tmp9,tmp10,tmp11,tmp12,tmp13,tmp14,tmp15,tmp16,tmp17,tmp18,tmp19,tmp20,tmp21,tmp22,tmp23,tmp24,tmp25,tmp26,tmp27,tmp28,tmp29,tmp30,tmp31;

    IV iv_0(neg0,A[0],ivnum0);
    IV iv_1(neg1,A[1],ivnum1);
    IV iv_2(neg2,A[2],ivnum2);
    IV iv_3(neg3,A[3],ivnum3);
    IV iv_4(neg4,A[4],ivnum4);

    assign Z[0]=A[0];

    assign Z[1]=0;

    AN2 an2_0(Z[2],A[1],neg0,num0);
    AN3 an3_0(tmp0,neg2,A[1],A[0],num1);
    AN3 an3_1(tmp1,A[2],neg1,A[0],num2);
    OR2 or2_0(Z[3],tmp0,tmp1,num3);

    AN3 an3_2(tmp2,A[2],neg1,neg0,num4);
    AN3 an3_3(tmp3,neg3,A[2],A[0],num5);
    AN3 an3_4(tmp4,A[3],neg2,A[0],num6);
    OR3 or3_0(Z[4],tmp2,tmp3,tmp4,num7);

    AN4 an4_0(tmp5,neg4,neg3,A[2],A[1],num8);
    AN4 an4_1(tmp6,neg3,A[2],A[1],neg0,num9);
    AN4 an4_2(tmp7,neg4,A[3],neg2,A[1],num10);
    AN4 an4_3(tmp8,A[3],neg2,A[1],neg0,num11);
    AN4 an4_4(tmp9,neg4,A[3],A[2],A[0],num12);
    AN4 an4_5(tmp10,A[4],neg3,neg2,A[0],num13);
    AN4 an4_6(tmp11,A[4],neg3,neg1,A[0],num14);
    AN4 an4_7(tmp12,A[4],neg2,neg1,A[0],num15);
    OR4 or4_0(tmp13,tmp5,tmp6,tmp7,tmp8,num16);
    OR4 or4_1(tmp14,tmp9,tmp10,tmp11,tmp12,num17);
    OR2 or2_1(Z[5],tmp13,tmp14,num18);

    AN3 an3_5(tmp15,A[3],neg2,neg1,num19);
    AN3 an3_6(tmp16,neg4,A[3],A[1],num20);
    AN3 an3_7(tmp17,A[4],A[3],A[0],num21);
    AN4 an4_8(tmp18,A[4],neg3,neg2,A[1],num22);
    AN4 an4_9(tmp19,A[4],neg3,A[1],neg0,num23);
    OR3 or3_1(tmp20,tmp15,tmp16,tmp17,num24);
    OR2 or2_2(tmp21,tmp18,tmp19,num25);
    OR2 or2_3(Z[6],tmp20,tmp21,num26);

    AN3 an3_8(tmp22,neg4,A[3],A[2],num27);
    AN3 an3_9(tmp23,A[4],A[3],A[1],num28);
    AN4 an4_10(tmp24,A[4],neg3,A[2],neg1,num29);
    AN4 an4_11(tmp25,A[4],neg3,A[2],neg0,num30);
    OR4 or4_2(Z[7],tmp22,tmp23,tmp24,tmp25,num31);

    AN3 an3_10(tmp26,A[4],neg3,neg2,num32);
    AN3 an3_11(tmp27,A[4],neg3,neg1,num33);
    AN3 an3_12(tmp28,A[4],neg3,neg0,num34);
    AN3 an3_13(tmp29,A[4],A[3],A[2],num35);
    OR4 or4_3(Z[8],tmp26,tmp27,tmp28,tmp29,num36);

    AN2 an2_5(tmp30,A[4],A[3],num37);
    AN4 an4_12(tmp31,A[4],A[2],A[1],A[0],num38);
    OR2 or2_4(Z[9],tmp30,tmp31,num39);

    assign ivnum = ivnum0 + ivnum1 + ivnum2 + ivnum3 + ivnum4;
    assign num = num0 + num1 + num2 + num3 + num4 + num5 + num6 + num7 + num8 + num9 + num10 + num11 + num12 + num13 + num14 + num15 + num16 + num17 + num18 + num19 + num20 + num21 + num22 + num23 + num24 + num25 + num26 + num27 + num28 + num29 + num30 + num31 + num32 + num33 + num34 + num35 + num36 + num37 + num38 + num39;
    assign number = ivnum + num;

endmodule

/*module partial_product_generator(Z,A,B,number);

    input [4:0] A;
    input B;
    output [4:0] Z;
    output [50:0] number;

    wire [50:0] num0,num1,num2,num3,num4;

    AN2 an2_0(Z[0],A[0],B,num0);
    AN2 an2_1(Z[1],A[1],B,num1);
    AN2 an2_2(Z[2],A[2],B,num2);
    AN2 an2_3(Z[3],A[3],B,num3);
    AN2 an2_4(Z[4],A[4],B,num4);

    assign number = num0 + num1 + num2 + num3 + num4;

endmodule*/

/*module wallace_tree(Z,PP0,PP1,PP2,PP3,PP4,number);

    input [4:0] PP0,PP1,PP2,PP3,PP4;
    output [9:0] Z;
    output [50:0] number;

    wire c1_1;
    wire s2_1,c2_1,c2_2;
    wire s3_1,c3_1,s3_2,c3_2,c3_3;
    wire s4_1,c4_1,s4_2,c4_2,s4_3,c4_3,c4_4;
    wire s5_1,c5_1,s5_2,c5_2,s5_3,c5_3,c5_4;
    wire s6_1,c6_1,s6_2,c6_2,c6_3;
    wire s7_1,c7_1,c7_2;
    wire c8_1;
    wire [50:0] hnum,hnum0,hnum1,hnum2,hnum3,hnum4;
    wire [50:0] fnum,fnum0,fnum1,fnum2,fnum3,fnum4,fnum5,fnum6,fnum7,fnum8,fnum9,fnum10,fnum11,fnum12,fnum13,fnum14;

    assign Z[0] = PP0[0];

    HA1 ha1_0(c1_1,Z[1],PP0[1],PP1[0],hnum0);

    FA1 fa1_0(c2_1,s2_1,PP0[2],PP1[1],PP2[0],fnum0);
    HA1 ha1_1(c2_2,Z[2],c1_1,s2_1,hnum1);

    FA1 fa1_1(c3_1,s3_1,PP0[3],PP1[2],PP2[1],fnum1);
    FA1 fa1_2(c3_2,s3_2,c2_1,s3_1,PP3[0],fnum2);
    HA1 ha1_2(c3_3,Z[3],c2_2,s3_2,hnum2);

    FA1 fa1_3(c4_1,s4_1,PP0[4],PP1[3],PP2[2],fnum3);
    FA1 fa1_4(c4_2,s4_2,s4_1,PP3[1],PP4[0],fnum4);
    FA1 fa1_5(c4_3,s4_3,c3_2,c3_1,s4_2,fnum5);
    HA1 ha1_3(c4_4,Z[4],c3_3,s4_3,hnum3);

    FA1 fa1_6(c5_1,s5_1,PP1[4],PP2[3],PP3[2],fnum6);
    FA1 fa1_7(c5_2,s5_2,c4_1,s5_1,PP4[1],fnum7);
    FA1 fa1_8(c5_3,s5_3,c4_3,c4_2,s5_2,fnum8);
    HA1 ha1_4(c5_4,Z[5],c4_4,s5_3,hnum4);

    FA1 fa1_9(c6_1,s6_1,PP2[4],PP3[3],PP4[2],fnum9);
    FA1 fa1_10(c6_2,s6_2,c5_2,c5_1,s6_1,fnum10);
    FA1 fa1_11(c6_3,Z[6],c5_4,c5_3,s6_2,fnum11);

    FA1 fa1_12(c7_1,s7_1,c6_1,PP3[4],PP4[3],fnum12);
    FA1 fa1_13(c7_2,Z[7],c6_3,c6_2,s7_1,fnum13);

    FA1 fa1_14(Z[9],Z[8],c7_2,c7_1,PP4[4],fnum14);

    assign hnum = hnum0 + hnum1 + hnum2 + hnum3 + hnum4;
    assign fnum = fnum0 + fnum1 + fnum2 + fnum3 + fnum4 + fnum5 + fnum6 + fnum7 + fnum8 + fnum9 + fnum10 + fnum11 + fnum12 + fnum13 + fnum14;
    assign number = hnum + fnum;

endmodule*/

module reg_10_bits(Z,A,clk,rst_n,number);

    input [9:0] A;
    input clk,rst_n;
    output [9:0] Z;
    output [50:0] number;

    wire [50:0] num0,num1,num2,num3,num4,num5,num6,num7,num8,num9;

    FD2 reg0(Z[0],A[0],clk,rst_n,num0);
    FD2 reg1(Z[1],A[1],clk,rst_n,num1);
    FD2 reg2(Z[2],A[2],clk,rst_n,num2);
    FD2 reg3(Z[3],A[3],clk,rst_n,num3);
    FD2 reg4(Z[4],A[4],clk,rst_n,num4);
    FD2 reg5(Z[5],A[5],clk,rst_n,num5);
    FD2 reg6(Z[6],A[6],clk,rst_n,num6);
    FD2 reg7(Z[7],A[7],clk,rst_n,num7);
    FD2 reg8(Z[8],A[8],clk,rst_n,num8);
    FD2 reg9(Z[9],A[9],clk,rst_n,num9);

    assign number = num0 + num1 + num2 + num3 + num4 + num5 + num6 + num7 + num8 + num9;

endmodule

module adder_10_bits(Z,A,B,number);//simple carry ripple adder

    input [9:0] A,B;
    output [10:0] Z;
    output [50:0] number;

    wire c0,c1,c2,c3,c4,c5,c6,c7,c8;
    wire [50:0] hnum,fnum0,fnum1,fnum2,fnum3,fnum4,fnum5,fnum6,fnum7,fnum8;

    HA1 ha1_0(c0,Z[0],A[0],B[0],hnum);
    FA1 fa1_0(c1,Z[1],A[1],B[1],c0,fnum0);
    FA1 fa1_1(c2,Z[2],A[2],B[2],c1,fnum1);
    FA1 fa1_2(c3,Z[3],A[3],B[3],c2,fnum2);
    FA1 fa1_3(c4,Z[4],A[4],B[4],c3,fnum3);
    FA1 fa1_4(c5,Z[5],A[5],B[5],c4,fnum4);
    FA1 fa1_5(c6,Z[6],A[6],B[6],c5,fnum5);
    FA1 fa1_6(c7,Z[7],A[7],B[7],c6,fnum6);
    FA1 fa1_7(c8,Z[8],A[8],B[8],c7,fnum7);
    FA1 fa1_8(Z[10],Z[9],A[9],B[9],c8,fnum8);

    assign number = hnum + fnum0 + fnum1 + fnum2 + fnum3 + fnum4 + fnum5 + fnum6 + fnum7 + fnum8;

endmodule

module negative(Z,A,number);

    input [9:0] A;
    output [10:0] Z;
    output [50:0] number;

    wire [10:0] A_c;
    wire [50:0] iv_num,iv_num0,iv_num1,iv_num2,iv_num3,iv_num4,iv_num5,iv_num6,iv_num7,iv_num8,iv_num9;
    wire c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10;
    wire [50:0] ha_num,ha_num0,ha_num1,ha_num2,ha_num3,ha_num4,ha_num5,ha_num6,ha_num7,ha_num8,ha_num9,ha_num10;

    assign A_c[10] = 1;

    IV iv_0(A_c[0],A[0],iv_num0);
    IV iv_1(A_c[1],A[1],iv_num1);
    IV iv_2(A_c[2],A[2],iv_num2);
    IV iv_3(A_c[3],A[3],iv_num3);
    IV iv_4(A_c[4],A[4],iv_num4);
    IV iv_5(A_c[5],A[5],iv_num5);
    IV iv_6(A_c[6],A[6],iv_num6);
    IV iv_7(A_c[7],A[7],iv_num7);
    IV iv_8(A_c[8],A[8],iv_num8);
    IV iv_9(A_c[9],A[9],iv_num9);

    HA1 ha1_0(c0,Z[0],A_c[0],1'b1,ha_num0);
    HA1 ha1_1(c1,Z[1],A_c[1],c0,ha_num1);
    HA1 ha1_2(c2,Z[2],A_c[2],c1,ha_num2);
    HA1 ha1_3(c3,Z[3],A_c[3],c2,ha_num3);
    HA1 ha1_4(c4,Z[4],A_c[4],c3,ha_num4);
    HA1 ha1_5(c5,Z[5],A_c[5],c4,ha_num5);
    HA1 ha1_6(c6,Z[6],A_c[6],c5,ha_num6);
    HA1 ha1_7(c7,Z[7],A_c[7],c6,ha_num7);
    HA1 ha1_8(c8,Z[8],A_c[8],c7,ha_num8);
    HA1 ha1_9(c9,Z[9],A_c[9],c8,ha_num9);
    HA1 ha1_10(c10,Z[10],A_c[10],c9,ha_num10);

    assign iv_num = iv_num0 + iv_num1 + iv_num2 + iv_num3 + iv_num4 + iv_num5 + iv_num6 + iv_num7 + iv_num8 + iv_num9;
    assign ha_num = ha_num0 + ha_num1 + ha_num2 + ha_num3 + ha_num4 + ha_num5 + ha_num6 + ha_num7 + ha_num8 + ha_num9 + ha_num10;
    assign number = iv_num + ha_num;

endmodule

module adder_11_bits(Z,A,B,number);//simple carry ripple adder

    input [10:0] A,B;
    output [10:0] Z;
    output [50:0] number;

    wire c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10;
    wire [50:0] hnum,fnum0,fnum1,fnum2,fnum3,fnum4,fnum5,fnum6,fnum7,fnum8,fnum9;

    HA1 ha1_0(c0,Z[0],A[0],B[0],hnum);
    FA1 fa1_0(c1,Z[1],A[1],B[1],c0,fnum0);
    FA1 fa1_1(c2,Z[2],A[2],B[2],c1,fnum1);
    FA1 fa1_2(c3,Z[3],A[3],B[3],c2,fnum2);
    FA1 fa1_3(c4,Z[4],A[4],B[4],c3,fnum3);
    FA1 fa1_4(c5,Z[5],A[5],B[5],c4,fnum4);
    FA1 fa1_5(c6,Z[6],A[6],B[6],c5,fnum5);
    FA1 fa1_6(c7,Z[7],A[7],B[7],c6,fnum6);
    FA1 fa1_7(c8,Z[8],A[8],B[8],c7,fnum7);
    FA1 fa1_8(c9,Z[9],A[9],B[9],c8,fnum8);
    FA1 fa1_9(c10,Z[10],A[10],B[10],c9,fnum9);

    assign number = hnum + fnum0 + fnum1 + fnum2 + fnum3 + fnum4 + fnum5 + fnum6 + fnum7 + fnum8 + fnum9;

endmodule