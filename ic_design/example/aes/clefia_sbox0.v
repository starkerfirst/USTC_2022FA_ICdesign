// $Id: receive.v 9 2009-04-12 05:19:40Z baixf $
//------------------------------------------------------------------------------
// (C) 2009 Laboratory of Integrated Circuits & Systems, USTC
//------------------------------------------------------------------------------
// Project       : ICS0603-DPA
// File Name     : clefia_sbox0.v
// Author        : Bai Xuefei
//------------------------------------------------------------------------------
// Platform      : CentOS 4.7 Linux, LDV 5.10
//------------------------------------------------------------------------------
// Description   : CLEFIA S-box S0 lookup table.
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Revision History
//------------------------------------------------------------------------------
// Rev.     Author      Date        Description 
//------------------------------------------------------------------------------
// 1.0      Bai Xuefei  2009/05/06  Created.
//------------------------------------------------------------------------------


`timescale 1ns/10ps


module clefia_sbox0 (
    sout,
    sin
    );


//------------------------------------------------------------------------------
// Port declarations
//------------------------------------------------------------------------------
output  [7:0]   sout;
input   [7:0]   sin;


//------------------------------------------------------------------------------
// Signal declarations
//------------------------------------------------------------------------------
reg     [7:0]   sout;
wire    [7:0]   sin;


//------------------------------------------------------------------------------
// Beginning of main code
//------------------------------------------------------------------------------
always @ (*)
begin
    case (sin)
        8'h00: sout = 8'h57;
        8'h01: sout = 8'h49;
        8'h02: sout = 8'hD1;
        8'h03: sout = 8'hC6;
        8'h04: sout = 8'h2F;
        8'h05: sout = 8'h33;
        8'h06: sout = 8'h74;
        8'h07: sout = 8'hFB;
        8'h08: sout = 8'h95;
        8'h09: sout = 8'h6D;
        8'h0A: sout = 8'h82;
        8'h0B: sout = 8'hEA;
        8'h0C: sout = 8'h0E;
        8'h0D: sout = 8'hB0;
        8'h0E: sout = 8'hA8;
        8'h0F: sout = 8'h1C;
        
        8'h10: sout = 8'h28;
        8'h11: sout = 8'hD0;
        8'h12: sout = 8'h4B;
        8'h13: sout = 8'h92;
        8'h14: sout = 8'h5C;
        8'h15: sout = 8'hEE;
        8'h16: sout = 8'h85;
        8'h17: sout = 8'hB1;
        8'h18: sout = 8'hC4;
        8'h19: sout = 8'h0A;
        8'h1A: sout = 8'h76;
        8'h1B: sout = 8'h3D;
        8'h1C: sout = 8'h63;
        8'h1D: sout = 8'hF9;
        8'h1E: sout = 8'h17;
        8'h1F: sout = 8'hAF;

        8'h20: sout = 8'hBF;
        8'h21: sout = 8'hA1;
        8'h22: sout = 8'h19;
        8'h23: sout = 8'h65;
        8'h24: sout = 8'hF7;
        8'h25: sout = 8'h7A;
        8'h26: sout = 8'h32;
        8'h27: sout = 8'h20;
        8'h28: sout = 8'h06;
        8'h29: sout = 8'hCE;
        8'h2A: sout = 8'hE4;
        8'h2B: sout = 8'h83;
        8'h2C: sout = 8'h9D;
        8'h2D: sout = 8'h5B;
        8'h2E: sout = 8'h4C;
        8'h2F: sout = 8'hD8;

        8'h30: sout = 8'h42;
        8'h31: sout = 8'h5D;
        8'h32: sout = 8'h2E;
        8'h33: sout = 8'hE8;
        8'h34: sout = 8'hD4;
        8'h35: sout = 8'h9B;
        8'h36: sout = 8'h0F;
        8'h37: sout = 8'h13;
        8'h38: sout = 8'h3C;
        8'h39: sout = 8'h89;
        8'h3A: sout = 8'h67;
        8'h3B: sout = 8'hC0;
        8'h3C: sout = 8'h71;
        8'h3D: sout = 8'hAA;
        8'h3E: sout = 8'hB6;
        8'h3F: sout = 8'hF5;

        8'h40: sout = 8'hA4;
        8'h41: sout = 8'hBE;
        8'h42: sout = 8'hFD;
        8'h43: sout = 8'h8C;
        8'h44: sout = 8'h12;
        8'h45: sout = 8'h00;
        8'h46: sout = 8'h97;
        8'h47: sout = 8'hDA;
        8'h48: sout = 8'h78;
        8'h49: sout = 8'hE1;
        8'h4A: sout = 8'hCF;
        8'h4B: sout = 8'h6B;
        8'h4C: sout = 8'h39;
        8'h4D: sout = 8'h43;
        8'h4E: sout = 8'h55;
        8'h4F: sout = 8'h26;

        8'h50: sout = 8'h30;
        8'h51: sout = 8'h98;
        8'h52: sout = 8'hCC;
        8'h53: sout = 8'hDD;
        8'h54: sout = 8'hEB;
        8'h55: sout = 8'h54;
        8'h56: sout = 8'hB3;
        8'h57: sout = 8'h8F;
        8'h58: sout = 8'h4E;
        8'h59: sout = 8'h16;
        8'h5A: sout = 8'hFA;
        8'h5B: sout = 8'h22;
        8'h5C: sout = 8'hA5;
        8'h5D: sout = 8'h77;
        8'h5E: sout = 8'h09;
        8'h5F: sout = 8'h61;

        8'h60: sout = 8'hD6;
        8'h61: sout = 8'h2A;
        8'h62: sout = 8'h53;
        8'h63: sout = 8'h37;
        8'h64: sout = 8'h45;
        8'h65: sout = 8'hC1;
        8'h66: sout = 8'h6C;
        8'h67: sout = 8'hAE;
        8'h68: sout = 8'hEF;
        8'h69: sout = 8'h70;
        8'h6A: sout = 8'h08;
        8'h6B: sout = 8'h99;
        8'h6C: sout = 8'h8B;
        8'h6D: sout = 8'h1D;
        8'h6E: sout = 8'hF2;
        8'h6F: sout = 8'hB4;

        8'h70: sout = 8'hE9;
        8'h71: sout = 8'hC7;
        8'h72: sout = 8'h9F;
        8'h73: sout = 8'h4A;
        8'h74: sout = 8'h31;
        8'h75: sout = 8'h25;
        8'h76: sout = 8'hFE;
        8'h77: sout = 8'h7C;
        8'h78: sout = 8'hD3;
        8'h79: sout = 8'hA2;
        8'h7A: sout = 8'hBD;
        8'h7B: sout = 8'h56;
        8'h7C: sout = 8'h14;
        8'h7D: sout = 8'h88;
        8'h7E: sout = 8'h60;
        8'h7F: sout = 8'h0B;

        8'h80: sout = 8'hCD;
        8'h81: sout = 8'hE2;
        8'h82: sout = 8'h34;
        8'h83: sout = 8'h50;
        8'h84: sout = 8'h9E;
        8'h85: sout = 8'hDC;
        8'h86: sout = 8'h11;
        8'h87: sout = 8'h05;
        8'h88: sout = 8'h2B;
        8'h89: sout = 8'hB7;
        8'h8A: sout = 8'hA9;
        8'h8B: sout = 8'h48;
        8'h8C: sout = 8'hFF;
        8'h8D: sout = 8'h66;
        8'h8E: sout = 8'h8A;
        8'h8F: sout = 8'h73;

        8'h90: sout = 8'h03;
        8'h91: sout = 8'h75;
        8'h92: sout = 8'h86;
        8'h93: sout = 8'hF1;
        8'h94: sout = 8'h6A;
        8'h95: sout = 8'hA7;
        8'h96: sout = 8'h40;
        8'h97: sout = 8'hC2;
        8'h98: sout = 8'hB9;
        8'h99: sout = 8'h2C;
        8'h9A: sout = 8'hDB;
        8'h9B: sout = 8'h1F;
        8'h9C: sout = 8'h58;
        8'h9D: sout = 8'h94;
        8'h9E: sout = 8'h3E;
        8'h9F: sout = 8'hED;

        8'hA0: sout = 8'hFC;
        8'hA1: sout = 8'h1B;
        8'hA2: sout = 8'hA0;
        8'hA3: sout = 8'h04;
        8'hA4: sout = 8'hB8;
        8'hA5: sout = 8'h8D;
        8'hA6: sout = 8'hE6;
        8'hA7: sout = 8'h59;
        8'hA8: sout = 8'h62;
        8'hA9: sout = 8'h93;
        8'hAA: sout = 8'h35;
        8'hAB: sout = 8'h7E;
        8'hAC: sout = 8'hCA;
        8'hAD: sout = 8'h21;
        8'hAE: sout = 8'hDF;
        8'hAF: sout = 8'h47;

        8'hB0: sout = 8'h15;
        8'hB1: sout = 8'hF3;
        8'hB2: sout = 8'hBA;
        8'hB3: sout = 8'h7F;
        8'hB4: sout = 8'hA6;
        8'hB5: sout = 8'h69;
        8'hB6: sout = 8'hC8;
        8'hB7: sout = 8'h4D;
        8'hB8: sout = 8'h87;
        8'hB9: sout = 8'h3B;
        8'hBA: sout = 8'h9C;
        8'hBB: sout = 8'h01;
        8'hBC: sout = 8'hE0;
        8'hBD: sout = 8'hDE;
        8'hBE: sout = 8'h24;
        8'hBF: sout = 8'h52;

        8'hC0: sout = 8'h7B;
        8'hC1: sout = 8'h0C;
        8'hC2: sout = 8'h68;
        8'hC3: sout = 8'h1E;
        8'hC4: sout = 8'h80;
        8'hC5: sout = 8'hB2;
        8'hC6: sout = 8'h5A;
        8'hC7: sout = 8'hE7;
        8'hC8: sout = 8'hAD;
        8'hC9: sout = 8'hD5;
        8'hCA: sout = 8'h23;
        8'hCB: sout = 8'hF4;
        8'hCC: sout = 8'h46;
        8'hCD: sout = 8'h3F;
        8'hCE: sout = 8'h91;
        8'hCF: sout = 8'hC9;

        8'hD0: sout = 8'h6E;
        8'hD1: sout = 8'h84;
        8'hD2: sout = 8'h72;
        8'hD3: sout = 8'hBB;
        8'hD4: sout = 8'h0D;
        8'hD5: sout = 8'h18;
        8'hD6: sout = 8'hD9;
        8'hD7: sout = 8'h96;
        8'hD8: sout = 8'hF0;
        8'hD9: sout = 8'h5F;
        8'hDA: sout = 8'h41;
        8'hDB: sout = 8'hAC;
        8'hDC: sout = 8'h27;
        8'hDD: sout = 8'hC5;
        8'hDE: sout = 8'hE3;
        8'hDF: sout = 8'h3A;

        8'hE0: sout = 8'h81;
        8'hE1: sout = 8'h6F;
        8'hE2: sout = 8'h07;
        8'hE3: sout = 8'hA3;
        8'hE4: sout = 8'h79;
        8'hE5: sout = 8'hF6;
        8'hE6: sout = 8'h2D;
        8'hE7: sout = 8'h38;
        8'hE8: sout = 8'h1A;
        8'hE9: sout = 8'h44;
        8'hEA: sout = 8'h5E;
        8'hEB: sout = 8'hB5;
        8'hEC: sout = 8'hD2;
        8'hED: sout = 8'hEC;
        8'hEE: sout = 8'hCB;
        8'hEF: sout = 8'h90;

        8'hF0: sout = 8'h9A;
        8'hF1: sout = 8'h36;
        8'hF2: sout = 8'hE5;
        8'hF3: sout = 8'h29;
        8'hF4: sout = 8'hC3;
        8'hF5: sout = 8'h4F;
        8'hF6: sout = 8'hAB;
        8'hF7: sout = 8'h64;
        8'hF8: sout = 8'h51;
        8'hF9: sout = 8'hF8;
        8'hFA: sout = 8'h10;
        8'hFB: sout = 8'hD7;
        8'hFC: sout = 8'hBC;
        8'hFD: sout = 8'h02;
        8'hFE: sout = 8'h7D;
        8'hFF: sout = 8'h8E;
    endcase
end


//------------------------------------------------------------------------------
// The End
//------------------------------------------------------------------------------

endmodule
