// $Id: receive.v 9 2009-04-12 05:19:40Z baixf $
//------------------------------------------------------------------------------
// (C) 2009 Laboratory of Integrated Circuits & Systems, USTC
//------------------------------------------------------------------------------
// Project       : ICS0603-DPA
// File Name     : clefia_round.v
// Author        : Bai Xuefei
//------------------------------------------------------------------------------
// Platform      : CentOS 4.7 Linux, LDV 5.10
//------------------------------------------------------------------------------
// Description   : CLEFIA round.
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Revision History
//------------------------------------------------------------------------------
// Rev.     Author      Date        Description 
//------------------------------------------------------------------------------
// 1.0      Bai Xuefei  2009/05/06  Created.
//------------------------------------------------------------------------------


`timescale 1ns/10ps


module clefia_round (
    rout,
    rin,
    rk0,
    rk1
    );


//------------------------------------------------------------------------------
// Port declarations
//------------------------------------------------------------------------------
// Outputs
output  [127:0] rout;       // round output

// Inputs
input   [127:0] rin;        // round input
input   [ 31:0] rk0;        // round key for F0
input   [ 31:0] rk1;        // round key for F1


//------------------------------------------------------------------------------
// Signal declarations
//------------------------------------------------------------------------------
// Outputs
wire    [127:0] rout;

// Inputs
wire    [127:0] rin;
wire    [ 31:0] rk0;
wire    [ 31:0] rk1;

// Internal signals
wire    [ 31:0] sin0;       // input of four parallel S-box in F0
wire    [ 31:0] sin1;       // input of four parallel S-box in F1
wire    [ 31:0] sout0;      // output of four parallel S-box in F0
wire    [ 31:0] sout1;      // output of four parallel S-box in F1


//------------------------------------------------------------------------------
// Beginning of main code
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// Round function F0 and F1.
//------------------------------------------------------------------------------
assign sin0 = rin[127:96] ^ rk0;
assign sin1 = rin[ 63:32] ^ rk1;

clefia_sbox0 x_sbox00 (.sout(sout0[31:24]), .sin(sin0[31:24]));
clefia_sbox1 x_sbox01 (.sout(sout0[23:16]), .sin(sin0[23:16]));
clefia_sbox0 x_sbox02 (.sout(sout0[15: 8]), .sin(sin0[15: 8]));
clefia_sbox1 x_sbox03 (.sout(sout0[ 7: 0]), .sin(sin0[ 7: 0]));

clefia_sbox1 x_sbox10 (.sout(sout1[31:24]), .sin(sin1[31:24]));
clefia_sbox0 x_sbox11 (.sout(sout1[23:16]), .sin(sin1[23:16]));
clefia_sbox1 x_sbox12 (.sout(sout1[15: 8]), .sin(sin1[15: 8]));
clefia_sbox0 x_sbox13 (.sout(sout1[ 7: 0]), .sin(sin1[ 7: 0]));


//------------------------------------------------------------------------------
// Round outputs.
//------------------------------------------------------------------------------
assign rout[127:96] = rin[ 95:64] ^ mulm0(sout0);
assign rout[ 95:64] = rin[ 63:32];
assign rout[ 63:32] = rin[ 31: 0] ^ mulm1(sout1);
assign rout[ 31: 0] = rin[127:96];


//------------------------------------------------------------------------------
// Functions.
//------------------------------------------------------------------------------
// xtime for a byte.
function    [7:0]   xtime;
    input   [7:0]   b;
    xtime = b[7] ? ((b << 1) ^ 8'h1D) : (b << 1);
endfunction

// Multiplication by {04}.
function    [7:0]   mul04;
    input   [7:0]   b;
    mul04 = xtime(xtime(b));
endfunction

// Multiplication by {06}.
function    [7:0]   mul06;
    input   [7:0]   b;
    mul06 = mul04(b) ^ xtime(b);
endfunction

// Multiplication by {08}.
function    [7:0]   mul08;
    input   [7:0]   b;
    mul08 = xtime(mul04(b));
endfunction

// Multiplication by {0A}.
function    [7:0]   mul0a;
    input   [7:0]   b;
    mul0a = xtime(b) ^ mul08(b);
endfunction

// Multiplication by M0.
function    [31:0]  mulm0;
    input   [31:0]  s;
    reg     [ 7:0]  s0;
    reg     [ 7:0]  s1;
    reg     [ 7:0]  s2;
    reg     [ 7:0]  s3;
    begin
        {s0, s1, s2, s3} = s;
        mulm0[31:24] = s0 ^ xtime(s1) ^ mul04(s2) ^ mul06(s3);
        mulm0[23:16] = s1 ^ xtime(s0) ^ mul04(s3) ^ mul06(s2);
        mulm0[15: 8] = s2 ^ xtime(s3) ^ mul04(s0) ^ mul06(s1);
        mulm0[ 7: 0] = s3 ^ xtime(s2) ^ mul04(s1) ^ mul06(s0);
    end
endfunction

// Multiplication by M1.
function    [31:0]  mulm1;
    input   [31:0]  s;
    reg     [ 7:0]  s0;
    reg     [ 7:0]  s1;
    reg     [ 7:0]  s2;
    reg     [ 7:0]  s3;
    begin
        {s0, s1, s2, s3} = s;
        mulm1[31:24] = s0 ^ mul08(s1) ^ xtime(s2) ^ mul0a(s3);
        mulm1[23:16] = s1 ^ mul08(s0) ^ xtime(s3) ^ mul0a(s2);
        mulm1[15: 8] = s2 ^ mul08(s3) ^ xtime(s0) ^ mul0a(s1);
        mulm1[ 7: 0] = s3 ^ mul08(s2) ^ xtime(s1) ^ mul0a(s0);
    end
endfunction


//------------------------------------------------------------------------------
// The End
//------------------------------------------------------------------------------

endmodule
