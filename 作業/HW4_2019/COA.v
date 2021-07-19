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


/* -------------------- Add up your number of transistors ------------------- */
    assign COA_num = ;

endmodule
