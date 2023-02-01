

module clefia_con_128 (
    con,
    round
    );

output  [63:0]  con;
input   [ 4:0]  round;

reg     [63:0]  con;
wire    [ 4:0]  round;


always @ (*)
begin
    case (round)
        // for L generation.
        6'h00: con = 64'hF56B_7AEB_994A_8A42;
        6'h01: con = 64'h96A4_BD75_FA85_4521;
        6'h02: con = 64'h735B_768A_1F7A_BAC4;
        6'h03: con = 64'hD5BC_3B45_B99D_5D62;
        6'h04: con = 64'h52D7_3592_3EF6_36E5;
        6'h05: con = 64'hC57A_1AC9_A95B_9B72;
        6'h06: con = 64'h5AB4_2554_3695_55ED;
        6'h07: con = 64'h1553_BA9A_7972_B2A2;
        6'h08: con = 64'hE6B8_5D4D_8A99_5951;
        6'h09: con = 64'h4B55_0696_2774_B4FC;
        6'h0A: con = 64'hC9BB_034B_A59A_5A7E;
        6'h0B: con = 64'h88CC_81A5_E4ED_2D3F;

        // for RK generation.
        6'h0C: con = 64'h7C6F_68E2_104E_8ECB;
        6'h0D: con = 64'hD226_3471_BE07_C765;
        6'h0E: con = 64'h511A_3208_3D3B_FBE6;
        6'h0F: con = 64'h1084_B134_7CA5_65A7;
        6'h10: con = 64'h304B_F0AA_5C6A_AA87;
        6'h11: con = 64'hF434_7855_9815_D543;
        6'h12: con = 64'h4213_141A_2E32_F2F5;
        6'h13: con = 64'hCD18_0A0D_A139_F97A;
        6'h14: con = 64'h5E85_2D36_32A4_64E9;
        6'h15: con = 64'hC353_169B_AF72_B274;
        6'h16: con = 64'h8DB8_8B4D_E199_593A;
        6'h17: con = 64'h7ED5_6D96_12F4_34C9;
        6'h18: con = 64'hD37B_36CB_BF5A_9A64;
        6'h19: con = 64'h85AC_9B65_E98D_4D32;
        6'h1A: con = 64'h7ADF_6582_16FE_3ECD;
        6'h1B: con = 64'hD17E_32C1_BD5F_9F66;
        6'h1C: con = 64'h50B6_3150_3C97_57E7;
        6'h1D: con = 64'h1052_B098_7C73_B3A7;

        // unused.
        default: con = 64'h0;
    endcase
end        
           
endmodule 
