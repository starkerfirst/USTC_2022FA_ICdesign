`timescale 1ns/1ps
`include "definitions.v"
/*`define wrong 8'h00

`define AES_CTRL 8'h02
`define AES_STATUS 8'h03
`define CORDIC_CTRL 8'h04
`define CORDIC_STATUS 8'h05
`define DCT_CTRL 8'h06
`define DCT_STATUS 8'h07
`define SAMM_CTRL 8'h08
`define SAMM_STATUS 8'h09
`define SM4_CTRL 8'h0A
`define SM4_STATUS 8'h0B

`define AES_DIN_1 8'h10
`define AES_DIN_2 8'h11
`define AES_DIN_3 8'h12
`define AES_DIN_4 8'h13
`define AES_DIN_5 8'h14
`define AES_DIN_6 8'h15
`define AES_DIN_7 8'h16
`define AES_DIN_8 8'h17
`define AES_DIN_9 8'h18
`define AES_DIN_10 8'h19
`define AES_DIN_11 8'h1A
`define AES_DIN_12 8'h1B
`define AES_DIN_13 8'h1C
`define AES_DIN_14 8'h1D
`define AES_DIN_15 8'h1E
`define AES_DIN_16 8'h1F

`define AES_KEY_1 8'h20
`define AES_KEY_2 8'h21
`define AES_KEY_3 8'h22
`define AES_KEY_4 8'h23
`define AES_KEY_5 8'h24
`define AES_KEY_6 8'h25
`define AES_KEY_7 8'h26
`define AES_KEY_8 8'h27
`define AES_KEY_9 8'h28
`define AES_KEY_10 8'h29
`define AES_KEY_11 8'h2A
`define AES_KEY_12 8'h2B
`define AES_KEY_13 8'h2C
`define AES_KEY_14 8'h2D
`define AES_KEY_15 8'h2E
`define AES_KEY_16 8'h2F

`define AES_DOUT_1 8'h10
`define AES_DOUT_2 8'h11
`define AES_DOUT_3 8'h12
`define AES_DOUT_4 8'h13
`define AES_DOUT_5 8'h14
`define AES_DOUT_6 8'h15
`define AES_DOUT_7 8'h16
`define AES_DOUT_8 8'h17
`define AES_DOUT_9 8'h18
`define AES_DOUT_10 8'h19
`define AES_DOUT_11 8'h1A
`define AES_DOUT_12 8'h1B
`define AES_DOUT_13 8'h1C
`define AES_DOUT_14 8'h1D
`define AES_DOUT_15 8'h1E
`define AES_DOUT_16 8'h1F

`define CORDIC_X_1 8'h30
`define CORDIC_X_2 8'h31
`define CORDIC_X_3 8'h32
`define CORDIC_X_4 8'h33

`define CORDIC_Y_1 8'h34
`define CORDIC_Y_2 8'h35
`define CORDIC_Y_3 8'h36
`define CORDIC_Y_4 8'h37

`define CORDIC_Z_1 8'h38
`define CORDIC_Z_2 8'h39
`define CORDIC_Z_3 8'h3A
`define CORDIC_Z_4 8'h3B

`define CORDIC_XOUT_1 8'h30
`define CORDIC_XOUT_2 8'h31
`define CORDIC_XOUT_3 8'h32
`define CORDIC_XOUT_4 8'h33

`define CORDIC_YOUT_1 8'h34
`define CORDIC_YOUT_2 8'h35
`define CORDIC_YOUT_3 8'h36
`define CORDIC_YOUT_4 8'h37

`define CORDIC_ZOUT_1 8'h38
`define CORDIC_ZOUT_2 8'h39
`define CORDIC_ZOUT_3 8'h3A
`define CORDIC_ZOUT_4 8'h3B

`define DCT_DATA_1 8'h40
`define DCT_DATA_2 8'h41
`define DCT_DATA_3 8'h42
`define DCT_DATA_4 8'h43
`define DCT_DATA_5 8'h44
`define DCT_DATA_6 8'h45
`define DCT_DATA_7 8'h46
`define DCT_DATA_8 8'h47
`define DCT_DATA_9 8'h48
`define DCT_DATA_10 8'h49
`define DCT_DATA_11 8'h4A
`define DCT_DATA_12 8'h4B
`define DCT_DATA_13 8'h4C
`define DCT_DATA_14 8'h4D
`define DCT_DATA_15 8'h4E
`define DCT_DATA_16 8'h4F
`define DCT_DATA_17 8'h50
`define DCT_DATA_18 8'h51
`define DCT_DATA_19 8'h52
`define DCT_DATA_20 8'h53
`define DCT_DATA_21 8'h54
`define DCT_DATA_22 8'h55
`define DCT_DATA_23 8'h56
`define DCT_DATA_24 8'h57
`define DCT_DATA_25 8'h58
`define DCT_DATA_26 8'h59
`define DCT_DATA_27 8'h5A
`define DCT_DATA_28 8'h5B
`define DCT_DATA_29 8'h5C
`define DCT_DATA_30 8'h5D
`define DCT_DATA_31 8'h5E
`define DCT_DATA_32 8'h5F
`define DCT_DATA_33 8'h60
`define DCT_DATA_34 8'h61
`define DCT_DATA_35 8'h62
`define DCT_DATA_36 8'h63
`define DCT_DATA_37 8'h64
`define DCT_DATA_38 8'h65
`define DCT_DATA_39 8'h66
`define DCT_DATA_40 8'h67
`define DCT_DATA_41 8'h68
`define DCT_DATA_42 8'h69
`define DCT_DATA_43 8'h6A
`define DCT_DATA_44 8'h6B
`define DCT_DATA_45 8'h6C
`define DCT_DATA_46 8'h6D
`define DCT_DATA_47 8'h6E
`define DCT_DATA_48 8'h6F
`define DCT_DATA_49 8'h70
`define DCT_DATA_50 8'h71
`define DCT_DATA_51 8'h72
`define DCT_DATA_52 8'h73
`define DCT_DATA_53 8'h74
`define DCT_DATA_54 8'h75
`define DCT_DATA_55 8'h76
`define DCT_DATA_56 8'h77
`define DCT_DATA_57 8'h78
`define DCT_DATA_58 8'h79
`define DCT_DATA_59 8'h7A
`define DCT_DATA_60 8'h7B
`define DCT_DATA_61 8'h7C
`define DCT_DATA_62 8'h7D
`define DCT_DATA_63 8'h7E
`define DCT_DATA_64 8'h7F

`define DCT_OUT_1 8'h40
`define DCT_OUT_2 8'h41
`define DCT_OUT_3 8'h42
`define DCT_OUT_4 8'h43
`define DCT_OUT_5 8'h44
`define DCT_OUT_6 8'h45
`define DCT_OUT_7 8'h46
`define DCT_OUT_8 8'h47
`define DCT_OUT_9 8'h48
`define DCT_OUT_10 8'h49
`define DCT_OUT_11 8'h4A
`define DCT_OUT_12 8'h4B
`define DCT_OUT_13 8'h4C
`define DCT_OUT_14 8'h4D
`define DCT_OUT_15 8'h4E
`define DCT_OUT_16 8'h4F
`define DCT_OUT_17 8'h50
`define DCT_OUT_18 8'h51
`define DCT_OUT_19 8'h52
`define DCT_OUT_20 8'h53
`define DCT_OUT_21 8'h54
`define DCT_OUT_22 8'h55
`define DCT_OUT_23 8'h56
`define DCT_OUT_24 8'h57
`define DCT_OUT_25 8'h58
`define DCT_OUT_26 8'h59
`define DCT_OUT_27 8'h5A
`define DCT_OUT_28 8'h5B
`define DCT_OUT_29 8'h5C
`define DCT_OUT_30 8'h5D
`define DCT_OUT_31 8'h5E
`define DCT_OUT_32 8'h5F
`define DCT_OUT_33 8'h60
`define DCT_OUT_34 8'h61
`define DCT_OUT_35 8'h62
`define DCT_OUT_36 8'h63
`define DCT_OUT_37 8'h64
`define DCT_OUT_38 8'h65
`define DCT_OUT_39 8'h66
`define DCT_OUT_40 8'h67
`define DCT_OUT_41 8'h68
`define DCT_OUT_42 8'h69
`define DCT_OUT_43 8'h6A
`define DCT_OUT_44 8'h6B
`define DCT_OUT_45 8'h6C
`define DCT_OUT_46 8'h6D
`define DCT_OUT_47 8'h6E
`define DCT_OUT_48 8'h6F
`define DCT_OUT_49 8'h70
`define DCT_OUT_50 8'h71
`define DCT_OUT_51 8'h72
`define DCT_OUT_52 8'h73
`define DCT_OUT_53 8'h74
`define DCT_OUT_54 8'h75
`define DCT_OUT_55 8'h76
`define DCT_OUT_56 8'h77
`define DCT_OUT_57 8'h78
`define DCT_OUT_58 8'h79
`define DCT_OUT_59 8'h7A
`define DCT_OUT_60 8'h7B
`define DCT_OUT_61 8'h7C
`define DCT_OUT_62 8'h7D
`define DCT_OUT_63 8'h7E
`define DCT_OUT_64 8'h7F

`define SAMM_A_1 8'h80
`define SAMM_A_2 8'h81
`define SAMM_A_3 8'h82
`define SAMM_A_4 8'h83
`define SAMM_A_5 8'h84
`define SAMM_A_6 8'h85
`define SAMM_A_7 8'h86
`define SAMM_A_8 8'h87
`define SAMM_A_9 8'h88
`define SAMM_A_10 8'h89
`define SAMM_A_11 8'h8A
`define SAMM_A_12 8'h8B
`define SAMM_A_13 8'h8C
`define SAMM_A_14 8'h8D
`define SAMM_A_15 8'h8E
`define SAMM_A_16 8'h8F

`define SAMM_OUT_DATA_1 8'h80
`define SAMM_OUT_DATA_2 8'h81
`define SAMM_OUT_DATA_3 8'h82
`define SAMM_OUT_DATA_4 8'h83
`define SAMM_OUT_DATA_5 8'h84
`define SAMM_OUT_DATA_6 8'h85
`define SAMM_OUT_DATA_7 8'h86
`define SAMM_OUT_DATA_8 8'h87
`define SAMM_OUT_DATA_9 8'h88
`define SAMM_OUT_DATA_10 8'h89
`define SAMM_OUT_DATA_11 8'h8A
`define SAMM_OUT_DATA_12 8'h8B
`define SAMM_OUT_DATA_13 8'h8C
`define SAMM_OUT_DATA_14 8'h8D
`define SAMM_OUT_DATA_15 8'h8E
`define SAMM_OUT_DATA_16 8'h8F
`define SAMM_OUT_DATA_17 8'h90
`define SAMM_OUT_DATA_18 8'h91
`define SAMM_OUT_DATA_19 8'h92
`define SAMM_OUT_DATA_20 8'h93
`define SAMM_OUT_DATA_21 8'h94
`define SAMM_OUT_DATA_22 8'h95
`define SAMM_OUT_DATA_23 8'h96
`define SAMM_OUT_DATA_24 8'h97
`define SAMM_OUT_DATA_25 8'h98
`define SAMM_OUT_DATA_26 8'h99
`define SAMM_OUT_DATA_27 8'h9A
`define SAMM_OUT_DATA_28 8'h9B
`define SAMM_OUT_DATA_29 8'h9C
`define SAMM_OUT_DATA_30 8'h9D
`define SAMM_OUT_DATA_31 8'h9E
`define SAMM_OUT_DATA_32 8'h9F
`define SAMM_OUT_DATA_33 8'hA0
`define SAMM_OUT_DATA_34 8'hA1
`define SAMM_OUT_DATA_35 8'hA2
`define SAMM_OUT_DATA_36 8'hA3
`define SAMM_OUT_DATA_37 8'hA4
`define SAMM_OUT_DATA_38 8'hA5
`define SAMM_OUT_DATA_39 8'hA6
`define SAMM_OUT_DATA_40 8'hA7
`define SAMM_OUT_DATA_41 8'hA8
`define SAMM_OUT_DATA_42 8'hA9
`define SAMM_OUT_DATA_43 8'hAA
`define SAMM_OUT_DATA_44 8'hAB
`define SAMM_OUT_DATA_45 8'hAC
`define SAMM_OUT_DATA_46 8'hAD
`define SAMM_OUT_DATA_47 8'hAE
`define SAMM_OUT_DATA_48 8'hAF
`define SAMM_OUT_DATA_49 8'hB0
`define SAMM_OUT_DATA_50 8'hB1
`define SAMM_OUT_DATA_51 8'hB2
`define SAMM_OUT_DATA_52 8'hB3
`define SAMM_OUT_DATA_53 8'hB4
`define SAMM_OUT_DATA_54 8'hB5
`define SAMM_OUT_DATA_55 8'hB6
`define SAMM_OUT_DATA_56 8'hB7
`define SAMM_OUT_DATA_57 8'hB8
`define SAMM_OUT_DATA_58 8'hB9
`define SAMM_OUT_DATA_59 8'hBA
`define SAMM_OUT_DATA_60 8'hBB
`define SAMM_OUT_DATA_61 8'hBC
`define SAMM_OUT_DATA_62 8'hBD
`define SAMM_OUT_DATA_63 8'hBE
`define SAMM_OUT_DATA_64 8'hBF
`define SAMM_OUT_DATA_65 8'hC0
`define SAMM_OUT_DATA_66 8'hC1
`define SAMM_OUT_DATA_67 8'hC2
`define SAMM_OUT_DATA_68 8'hC3
`define SAMM_OUT_DATA_69 8'hC4
`define SAMM_OUT_DATA_70 8'hC5
`define SAMM_OUT_DATA_71 8'hC6
`define SAMM_OUT_DATA_72 8'hC7
`define SAMM_OUT_DATA_73 8'hC8
`define SAMM_OUT_DATA_74 8'hC9
`define SAMM_OUT_DATA_75 8'hCA
`define SAMM_OUT_DATA_76 8'hCB
`define SAMM_OUT_DATA_77 8'hCC
`define SAMM_OUT_DATA_78 8'hCD
`define SAMM_OUT_DATA_79 8'hCE
`define SAMM_OUT_DATA_80 8'hCF
`define SAMM_OUT_DATA_81 8'hD0
`define SAMM_OUT_DATA_82 8'hD1
`define SAMM_OUT_DATA_83 8'hD2
`define SAMM_OUT_DATA_84 8'hD3
`define SAMM_OUT_DATA_85 8'hD4
`define SAMM_OUT_DATA_86 8'hD5
`define SAMM_OUT_DATA_87 8'hD6
`define SAMM_OUT_DATA_88 8'hD7
`define SAMM_OUT_DATA_89 8'hD8
`define SAMM_OUT_DATA_90 8'hD9
`define SAMM_OUT_DATA_91 8'hDA
`define SAMM_OUT_DATA_92 8'hDB
`define SAMM_OUT_DATA_93 8'hDC
`define SAMM_OUT_DATA_94 8'hDD
`define SAMM_OUT_DATA_95 8'hDE
`define SAMM_OUT_DATA_96 8'hDF
`define SAMM_OUT_DATA_97 8'hE0
`define SAMM_OUT_DATA_98 8'hE1
`define SAMM_OUT_DATA_99 8'hE2
`define SAMM_OUT_DATA_100 8'hE3
`define SAMM_OUT_DATA_101 8'hE4
`define SAMM_OUT_DATA_102 8'hE5
`define SAMM_OUT_DATA_103 8'hE6
`define SAMM_OUT_DATA_104 8'hE7
`define SAMM_OUT_DATA_105 8'hE8
`define SAMM_OUT_DATA_106 8'hE9
`define SAMM_OUT_DATA_107 8'hEA
`define SAMM_OUT_DATA_108 8'hEB
`define SAMM_OUT_DATA_109 8'hEC
`define SAMM_OUT_DATA_110 8'hED
`define SAMM_OUT_DATA_111 8'hEE
`define SAMM_OUT_DATA_112 8'hEF
`define SAMM_OUT_DATA_113 8'hF0
`define SAMM_OUT_DATA_114 8'hF1
`define SAMM_OUT_DATA_115 8'hF2
`define SAMM_OUT_DATA_116 8'hF3
`define SAMM_OUT_DATA_117 8'hF4
`define SAMM_OUT_DATA_118 8'hF5
`define SAMM_OUT_DATA_119 8'hF6
`define SAMM_OUT_DATA_120 8'hF7
`define SAMM_OUT_DATA_121 8'hF8
`define SAMM_OUT_DATA_122 8'hF9
`define SAMM_OUT_DATA_123 8'hFA
`define SAMM_OUT_DATA_124 8'hFB
`define SAMM_OUT_DATA_125 8'hFC
`define SAMM_OUT_DATA_126 8'hFD
`define SAMM_OUT_DATA_127 8'hFE
`define SAMM_OUT_DATA_128 8'hFF

`define SM4_DATA_1 8'h90
`define SM4_DATA_2 8'h91
`define SM4_DATA_3 8'h92
`define SM4_DATA_4 8'h93
`define SM4_DATA_5 8'h94
`define SM4_DATA_6 8'h95
`define SM4_DATA_7 8'h96
`define SM4_DATA_8 8'h97
`define SM4_DATA_9 8'h98
`define SM4_DATA_10 8'h99
`define SM4_DATA_11 8'h9A
`define SM4_DATA_12 8'h9B
`define SM4_DATA_13 8'h9C
`define SM4_DATA_14 8'h9D
`define SM4_DATA_15 8'h9E
`define SM4_DATA_16 8'h9F

`define SM4_RESULT_1 8'h20
`define SM4_RESULT_2 8'h21
`define SM4_RESULT_3 8'h22
`define SM4_RESULT_4 8'h23
`define SM4_RESULT_5 8'h24
`define SM4_RESULT_6 8'h25
`define SM4_RESULT_7 8'h26
`define SM4_RESULT_8 8'h27
`define SM4_RESULT_9 8'h28
`define SM4_RESULT_10 8'h29
`define SM4_RESULT_11 8'h2A
`define SM4_RESULT_12 8'h2B
`define SM4_RESULT_13 8'h2C
`define SM4_RESULT_14 8'h2D
`define SM4_RESULT_15 8'h2E
`define SM4_RESULT_16 8'h2F
*/

module spi(
  input wire clk,
  input wire CSB,
  input wire SIO1I,
  output reg SIO1O,
  input wire SIO2I,
  output reg SIO2O,
  output reg en1,
  output reg en2,
  input wire reset_n,
  input wire [31:0] data_in,
  output reg [31:0] data_out,
  input wire wr,
  input wire debug_en,
  input wire [7:0] addr,
  output reg [7:0] AES_CTRL,
  input wire [7:0] AES_STATUS,
  output reg [7:0] CORDIC_CTRL,
  input wire [7:0] CORDIC_STATUS,
  output reg [7:0] DCT_CTRL,
  input wire [7:0] DCT_STATUS,
  output reg [7:0] SAMM_CTRL,
  input wire [7:0] SAMM_STATUS,
  output reg [7:0] SM4_CTRL,
  input wire [7:0] SM4_STATUS,
  output reg [7:0] AES_DIN_1,
  output reg [7:0] AES_DIN_2,
  output reg [7:0] AES_DIN_3,
  output reg [7:0] AES_DIN_4,
  output reg [7:0] AES_DIN_5,
  output reg [7:0] AES_DIN_6,
  output reg [7:0] AES_DIN_7,
  output reg [7:0] AES_DIN_8,
  output reg [7:0] AES_DIN_9,
  output reg [7:0] AES_DIN_10,
  output reg [7:0] AES_DIN_11,
  output reg [7:0] AES_DIN_12,
  output reg [7:0] AES_DIN_13,
  output reg [7:0] AES_DIN_14,
  output reg [7:0] AES_DIN_15,
  output reg [7:0] AES_DIN_16,
  output reg [7:0] AES_KEY_1,
  output reg [7:0] AES_KEY_2,
  output reg [7:0] AES_KEY_3,
  output reg [7:0] AES_KEY_4,
  output reg [7:0] AES_KEY_5,
  output reg [7:0] AES_KEY_6,
  output reg [7:0] AES_KEY_7,
  output reg [7:0] AES_KEY_8,
  output reg [7:0] AES_KEY_9,
  output reg [7:0] AES_KEY_10,
  output reg [7:0] AES_KEY_11,
  output reg [7:0] AES_KEY_12,
  output reg [7:0] AES_KEY_13,
  output reg [7:0] AES_KEY_14,
  output reg [7:0] AES_KEY_15,
  output reg [7:0] AES_KEY_16,
  input wire [7:0] AES_DOUT_1,
  input wire [7:0] AES_DOUT_2,
  input wire [7:0] AES_DOUT_3,
  input wire [7:0] AES_DOUT_4,
  input wire [7:0] AES_DOUT_5,
  input wire [7:0] AES_DOUT_6,
  input wire [7:0] AES_DOUT_7,
  input wire [7:0] AES_DOUT_8,
  input wire [7:0] AES_DOUT_9,
  input wire [7:0] AES_DOUT_10,
  input wire [7:0] AES_DOUT_11,
  input wire [7:0] AES_DOUT_12,
  input wire [7:0] AES_DOUT_13,
  input wire [7:0] AES_DOUT_14,
  input wire [7:0] AES_DOUT_15,
  input wire [7:0] AES_DOUT_16,
  output reg [7:0] CORDIC_X_1,
  output reg [7:0] CORDIC_X_2,
  output reg [7:0] CORDIC_X_3,
  output reg [7:0] CORDIC_X_4,
  output reg [7:0] CORDIC_Y_1,
  output reg [7:0] CORDIC_Y_2,
  output reg [7:0] CORDIC_Y_3,
  output reg [7:0] CORDIC_Y_4,
  output reg [7:0] CORDIC_Z_1,
  output reg [7:0] CORDIC_Z_2,
  output reg [7:0] CORDIC_Z_3,
  output reg [7:0] CORDIC_Z_4,
  input wire [7:0] CORDIC_XOUT_1,
  input wire [7:0] CORDIC_XOUT_2,
  input wire [7:0] CORDIC_XOUT_3,
  input wire [7:0] CORDIC_XOUT_4,
  input wire [7:0] CORDIC_YOUT_1,
  input wire [7:0] CORDIC_YOUT_2,
  input wire [7:0] CORDIC_YOUT_3,
  input wire [7:0] CORDIC_YOUT_4,
  input wire [7:0] CORDIC_ZOUT_1,
  input wire [7:0] CORDIC_ZOUT_2,
  input wire [7:0] CORDIC_ZOUT_3,
  input wire [7:0] CORDIC_ZOUT_4,
  output reg [7:0] DCT_DATA_1,
  output reg [7:0] DCT_DATA_2,
  output reg [7:0] DCT_DATA_3,
  output reg [7:0] DCT_DATA_4,
  output reg [7:0] DCT_DATA_5,
  output reg [7:0] DCT_DATA_6,
  output reg [7:0] DCT_DATA_7,
  output reg [7:0] DCT_DATA_8,
  output reg [7:0] DCT_DATA_9,
  output reg [7:0] DCT_DATA_10,
  output reg [7:0] DCT_DATA_11,
  output reg [7:0] DCT_DATA_12,
  output reg [7:0] DCT_DATA_13,
  output reg [7:0] DCT_DATA_14,
  output reg [7:0] DCT_DATA_15,
  output reg [7:0] DCT_DATA_16,
  output reg [7:0] DCT_DATA_17,
  output reg [7:0] DCT_DATA_18,
  output reg [7:0] DCT_DATA_19,
  output reg [7:0] DCT_DATA_20,
  output reg [7:0] DCT_DATA_21,
  output reg [7:0] DCT_DATA_22,
  output reg [7:0] DCT_DATA_23,
  output reg [7:0] DCT_DATA_24,
  output reg [7:0] DCT_DATA_25,
  output reg [7:0] DCT_DATA_26,
  output reg [7:0] DCT_DATA_27,
  output reg [7:0] DCT_DATA_28,
  output reg [7:0] DCT_DATA_29,
  output reg [7:0] DCT_DATA_30,
  output reg [7:0] DCT_DATA_31,
  output reg [7:0] DCT_DATA_32,
  output reg [7:0] DCT_DATA_33,
  output reg [7:0] DCT_DATA_34,
  output reg [7:0] DCT_DATA_35,
  output reg [7:0] DCT_DATA_36,
  output reg [7:0] DCT_DATA_37,
  output reg [7:0] DCT_DATA_38,
  output reg [7:0] DCT_DATA_39,
  output reg [7:0] DCT_DATA_40,
  output reg [7:0] DCT_DATA_41,
  output reg [7:0] DCT_DATA_42,
  output reg [7:0] DCT_DATA_43,
  output reg [7:0] DCT_DATA_44,
  output reg [7:0] DCT_DATA_45,
  output reg [7:0] DCT_DATA_46,
  output reg [7:0] DCT_DATA_47,
  output reg [7:0] DCT_DATA_48,
  output reg [7:0] DCT_DATA_49,
  output reg [7:0] DCT_DATA_50,
  output reg [7:0] DCT_DATA_51,
  output reg [7:0] DCT_DATA_52,
  output reg [7:0] DCT_DATA_53,
  output reg [7:0] DCT_DATA_54,
  output reg [7:0] DCT_DATA_55,
  output reg [7:0] DCT_DATA_56,
  output reg [7:0] DCT_DATA_57,
  output reg [7:0] DCT_DATA_58,
  output reg [7:0] DCT_DATA_59,
  output reg [7:0] DCT_DATA_60,
  output reg [7:0] DCT_DATA_61,
  output reg [7:0] DCT_DATA_62,
  output reg [7:0] DCT_DATA_63,
  output reg [7:0] DCT_DATA_64,
  input wire [7:0] DCT_OUT_1,
  input wire [7:0] DCT_OUT_2,
  input wire [7:0] DCT_OUT_3,
  input wire [7:0] DCT_OUT_4,
  input wire [7:0] DCT_OUT_5,
  input wire [7:0] DCT_OUT_6,
  input wire [7:0] DCT_OUT_7,
  input wire [7:0] DCT_OUT_8,
  input wire [7:0] DCT_OUT_9,
  input wire [7:0] DCT_OUT_10,
  input wire [7:0] DCT_OUT_11,
  input wire [7:0] DCT_OUT_12,
  input wire [7:0] DCT_OUT_13,
  input wire [7:0] DCT_OUT_14,
  input wire [7:0] DCT_OUT_15,
  input wire [7:0] DCT_OUT_16,
  input wire [7:0] DCT_OUT_17,
  input wire [7:0] DCT_OUT_18,
  input wire [7:0] DCT_OUT_19,
  input wire [7:0] DCT_OUT_20,
  input wire [7:0] DCT_OUT_21,
  input wire [7:0] DCT_OUT_22,
  input wire [7:0] DCT_OUT_23,
  input wire [7:0] DCT_OUT_24,
  input wire [7:0] DCT_OUT_25,
  input wire [7:0] DCT_OUT_26,
  input wire [7:0] DCT_OUT_27,
  input wire [7:0] DCT_OUT_28,
  input wire [7:0] DCT_OUT_29,
  input wire [7:0] DCT_OUT_30,
  input wire [7:0] DCT_OUT_31,
  input wire [7:0] DCT_OUT_32,
  input wire [7:0] DCT_OUT_33,
  input wire [7:0] DCT_OUT_34,
  input wire [7:0] DCT_OUT_35,
  input wire [7:0] DCT_OUT_36,
  input wire [7:0] DCT_OUT_37,
  input wire [7:0] DCT_OUT_38,
  input wire [7:0] DCT_OUT_39,
  input wire [7:0] DCT_OUT_40,
  input wire [7:0] DCT_OUT_41,
  input wire [7:0] DCT_OUT_42,
  input wire [7:0] DCT_OUT_43,
  input wire [7:0] DCT_OUT_44,
  input wire [7:0] DCT_OUT_45,
  input wire [7:0] DCT_OUT_46,
  input wire [7:0] DCT_OUT_47,
  input wire [7:0] DCT_OUT_48,
  input wire [7:0] DCT_OUT_49,
  input wire [7:0] DCT_OUT_50,
  input wire [7:0] DCT_OUT_51,
  input wire [7:0] DCT_OUT_52,
  input wire [7:0] DCT_OUT_53,
  input wire [7:0] DCT_OUT_54,
  input wire [7:0] DCT_OUT_55,
  input wire [7:0] DCT_OUT_56,
  input wire [7:0] DCT_OUT_57,
  input wire [7:0] DCT_OUT_58,
  input wire [7:0] DCT_OUT_59,
  input wire [7:0] DCT_OUT_60,
  input wire [7:0] DCT_OUT_61,
  input wire [7:0] DCT_OUT_62,
  input wire [7:0] DCT_OUT_63,
  input wire [7:0] DCT_OUT_64,
  output reg [7:0] SAMM_A_1,
  output reg [7:0] SAMM_A_2,
  output reg [7:0] SAMM_A_3,
  output reg [7:0] SAMM_A_4,
  output reg [7:0] SAMM_A_5,
  output reg [7:0] SAMM_A_6,
  output reg [7:0] SAMM_A_7,
  output reg [7:0] SAMM_A_8,
  output reg [7:0] SAMM_A_9,
  output reg [7:0] SAMM_A_10,
  output reg [7:0] SAMM_A_11,
  output reg [7:0] SAMM_A_12,
  output reg [7:0] SAMM_A_13,
  output reg [7:0] SAMM_A_14,
  output reg [7:0] SAMM_A_15,
  output reg [7:0] SAMM_A_16,
  
  input wire [7:0] SAMM_OUT_DATA_1,
  input wire [7:0] SAMM_OUT_DATA_2,
  input wire [7:0] SAMM_OUT_DATA_3,
  input wire [7:0] SAMM_OUT_DATA_4,
  input wire [7:0] SAMM_OUT_DATA_5,
  input wire [7:0] SAMM_OUT_DATA_6,
  input wire [7:0] SAMM_OUT_DATA_7,
  input wire [7:0] SAMM_OUT_DATA_8,
  input wire [7:0] SAMM_OUT_DATA_9,
  input wire [7:0] SAMM_OUT_DATA_10,
  input wire [7:0] SAMM_OUT_DATA_11,
  input wire [7:0] SAMM_OUT_DATA_12,
  input wire [7:0] SAMM_OUT_DATA_13,
  input wire [7:0] SAMM_OUT_DATA_14,
  input wire [7:0] SAMM_OUT_DATA_15,
  input wire [7:0] SAMM_OUT_DATA_16,
  input wire [7:0] SAMM_OUT_DATA_17,
  input wire [7:0] SAMM_OUT_DATA_18,
  input wire [7:0] SAMM_OUT_DATA_19,
  input wire [7:0] SAMM_OUT_DATA_20,
  input wire [7:0] SAMM_OUT_DATA_21,
  input wire [7:0] SAMM_OUT_DATA_22,
  input wire [7:0] SAMM_OUT_DATA_23,
  input wire [7:0] SAMM_OUT_DATA_24,
  input wire [7:0] SAMM_OUT_DATA_25,
  input wire [7:0] SAMM_OUT_DATA_26,
  input wire [7:0] SAMM_OUT_DATA_27,
  input wire [7:0] SAMM_OUT_DATA_28,
  input wire [7:0] SAMM_OUT_DATA_29,
  input wire [7:0] SAMM_OUT_DATA_30,
  input wire [7:0] SAMM_OUT_DATA_31,
  input wire [7:0] SAMM_OUT_DATA_32,
  input wire [7:0] SAMM_OUT_DATA_33, 
  input wire [7:0] SAMM_OUT_DATA_34,
  input wire [7:0] SAMM_OUT_DATA_35,  
  input wire [7:0] SAMM_OUT_DATA_36, 
  input wire [7:0] SAMM_OUT_DATA_37, 
  input wire [7:0] SAMM_OUT_DATA_38, 
  input wire [7:0] SAMM_OUT_DATA_39,  
  input wire [7:0] SAMM_OUT_DATA_40,  
  input wire [7:0] SAMM_OUT_DATA_41,  
  input wire [7:0] SAMM_OUT_DATA_42,  
  input wire [7:0] SAMM_OUT_DATA_43,  
  input wire [7:0] SAMM_OUT_DATA_44,  
  input wire [7:0] SAMM_OUT_DATA_45,  
  input wire [7:0] SAMM_OUT_DATA_46,  
  input wire [7:0] SAMM_OUT_DATA_47,  
  input wire [7:0] SAMM_OUT_DATA_48,  
  input wire [7:0] SAMM_OUT_DATA_49,  
  input wire [7:0] SAMM_OUT_DATA_50,  
  input wire [7:0] SAMM_OUT_DATA_51,  
  input wire [7:0] SAMM_OUT_DATA_52,  
  input wire [7:0] SAMM_OUT_DATA_53,  
  input wire [7:0] SAMM_OUT_DATA_54,  
  input wire [7:0] SAMM_OUT_DATA_55,  
  input wire [7:0] SAMM_OUT_DATA_56,  
  input wire [7:0] SAMM_OUT_DATA_57,  
  input wire [7:0] SAMM_OUT_DATA_58,  
  input wire [7:0] SAMM_OUT_DATA_59,  
  input wire [7:0] SAMM_OUT_DATA_60,  
  input wire [7:0] SAMM_OUT_DATA_61,  
  input wire [7:0] SAMM_OUT_DATA_62,  
  input wire [7:0] SAMM_OUT_DATA_63,  
  input wire [7:0] SAMM_OUT_DATA_64,  
  input wire [7:0] SAMM_OUT_DATA_65, 
  input wire [7:0] SAMM_OUT_DATA_66,  
  input wire [7:0] SAMM_OUT_DATA_67,  
  input wire [7:0] SAMM_OUT_DATA_68,  
  input wire [7:0] SAMM_OUT_DATA_69,  
  input wire [7:0] SAMM_OUT_DATA_70,  
  input wire [7:0] SAMM_OUT_DATA_71,  
  input wire [7:0] SAMM_OUT_DATA_72,  
  input wire [7:0] SAMM_OUT_DATA_73,  
  input wire [7:0] SAMM_OUT_DATA_74,  
  input wire [7:0] SAMM_OUT_DATA_75,  
  input wire [7:0] SAMM_OUT_DATA_76,  
  input wire [7:0] SAMM_OUT_DATA_77,  
  input wire [7:0] SAMM_OUT_DATA_78,  
  input wire [7:0] SAMM_OUT_DATA_79,  
  input wire [7:0] SAMM_OUT_DATA_80,  
  input wire [7:0] SAMM_OUT_DATA_81,  
  input wire [7:0] SAMM_OUT_DATA_82,  
  input wire [7:0] SAMM_OUT_DATA_83,  
  input wire [7:0] SAMM_OUT_DATA_84,  
  input wire [7:0] SAMM_OUT_DATA_85,  
  input wire [7:0] SAMM_OUT_DATA_86,  
  input wire [7:0] SAMM_OUT_DATA_87,  
  input wire [7:0] SAMM_OUT_DATA_88,  
  input wire [7:0] SAMM_OUT_DATA_89,  
  input wire [7:0] SAMM_OUT_DATA_90,  
  input wire [7:0] SAMM_OUT_DATA_91,  
  input wire [7:0] SAMM_OUT_DATA_92,  
  input wire [7:0] SAMM_OUT_DATA_93,  
  input wire [7:0] SAMM_OUT_DATA_94,  
  input wire [7:0] SAMM_OUT_DATA_95,  
  input wire [7:0] SAMM_OUT_DATA_96,  
  input wire [7:0] SAMM_OUT_DATA_97,  
  input wire [7:0] SAMM_OUT_DATA_98,  
  input wire [7:0] SAMM_OUT_DATA_99,  
  input wire [7:0] SAMM_OUT_DATA_100,  
  input wire [7:0] SAMM_OUT_DATA_101,  
  input wire [7:0] SAMM_OUT_DATA_102,  
  input wire [7:0] SAMM_OUT_DATA_103, 
  input wire [7:0] SAMM_OUT_DATA_104,
  input wire [7:0] SAMM_OUT_DATA_105,  
  input wire [7:0] SAMM_OUT_DATA_106,  
  input wire [7:0] SAMM_OUT_DATA_107, 
  input wire [7:0] SAMM_OUT_DATA_108, 
  input wire [7:0] SAMM_OUT_DATA_109, 
  input wire [7:0] SAMM_OUT_DATA_110, 
  input wire [7:0] SAMM_OUT_DATA_111, 
  input wire [7:0] SAMM_OUT_DATA_112, 
  input wire [7:0] SAMM_OUT_DATA_113, 
  input wire [7:0] SAMM_OUT_DATA_114, 
  input wire [7:0] SAMM_OUT_DATA_115, 
  input wire [7:0] SAMM_OUT_DATA_116, 
  input wire [7:0] SAMM_OUT_DATA_117, 
  input wire [7:0] SAMM_OUT_DATA_118, 
  input wire [7:0] SAMM_OUT_DATA_119, 
  input wire [7:0] SAMM_OUT_DATA_120, 
  input wire [7:0] SAMM_OUT_DATA_121, 
  input wire [7:0] SAMM_OUT_DATA_122, 
  input wire [7:0] SAMM_OUT_DATA_123, 
  input wire [7:0] SAMM_OUT_DATA_124, 
  input wire [7:0] SAMM_OUT_DATA_125, 
  input wire [7:0] SAMM_OUT_DATA_126, 
  input wire [7:0] SAMM_OUT_DATA_127, 
  input wire [7:0] SAMM_OUT_DATA_128, 
  
  output reg [7:0] SM4_DATA_1,
  output reg [7:0] SM4_DATA_2,
  output reg [7:0] SM4_DATA_3,
  output reg [7:0] SM4_DATA_4,
  output reg [7:0] SM4_DATA_5,
  output reg [7:0] SM4_DATA_6,
  output reg [7:0] SM4_DATA_7,
  output reg [7:0] SM4_DATA_8,
  output reg [7:0] SM4_DATA_9,
  output reg [7:0] SM4_DATA_10,
  output reg [7:0] SM4_DATA_11,
  output reg [7:0] SM4_DATA_12,
  output reg [7:0] SM4_DATA_13,
  output reg [7:0] SM4_DATA_14,
  output reg [7:0] SM4_DATA_15,
  output reg [7:0] SM4_DATA_16,
  input wire [7:0] SM4_RESULT_1,
  input wire [7:0] SM4_RESULT_2,
  input wire [7:0] SM4_RESULT_3,
  input wire [7:0] SM4_RESULT_4,
  input wire [7:0] SM4_RESULT_5,
  input wire [7:0] SM4_RESULT_6,
  input wire [7:0] SM4_RESULT_7,
  input wire [7:0] SM4_RESULT_8,
  input wire [7:0] SM4_RESULT_9,
  input wire [7:0] SM4_RESULT_10,
  input wire [7:0] SM4_RESULT_11,
  input wire [7:0] SM4_RESULT_12,
  input wire [7:0] SM4_RESULT_13,
  input wire [7:0] SM4_RESULT_14,
  input wire [7:0] SM4_RESULT_15,
  input wire [7:0] SM4_RESULT_16
	);              
  reg [5:0] counter; 
  reg [15:0] yw;  //输入移位寄存器
  wire [5:0] crc_outi;
  wire [5:0] crc_outo;
  reg [15:0] zl;  //指令寄存器
  reg [15:0] ywo; //输出移位寄存器
  reg reset;
  reg enable;
  reg [7:0] wrong;
  reg [3:0]crc1;
  crc crci(.DATA2(SIO1I),.DATA1(SIO2I),.CRC_OUT(crc_outi),.RESET(reset),.ENABLE(enable),.CLK(clk));
  crc crco(.DATA2(SIO1O),.DATA1(SIO2O),.CRC_OUT(crc_outo),.RESET(reset),.ENABLE(enable),.CLK(clk));
  
  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      counter<={1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
      en1<=1'b1;
      en2<=1'b1; 
		yw<={1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
		ywo<={1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
		zl<={1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
		SIO1O<=0;
		SIO2O<=0;
		reset<=1'b1;
		enable<=1'b1;
    wrong<={1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
    end
	 else begin
    if (debug_en == 1) begin
       if (wr == 1) begin
         case(addr)
                `AES_CTRL : AES_CTRL<=data_in[7:0];
                `CORDIC_CTRL : CORDIC_CTRL<=data_in[7:0];
                `DCT_CTRL : DCT_CTRL<=data_in[7:0];
                `SAMM_CTRL : SAMM_CTRL<=data_in[7:0];
                `SM4_CTRL : SM4_CTRL<=data_in[7:0];

                `AES_DIN_1 : begin AES_DIN_1<=data_in[7:0];
                             AES_DIN_2<=data_in[15:8];
                             AES_DIN_3<=data_in[23:16];
                             AES_DIN_4<=data_in[31:24];
                             end
                `AES_DIN_5 : begin AES_DIN_5<=data_in[7:0];
                             AES_DIN_6<=data_in[15:8];
                             AES_DIN_7<=data_in[23:16];
                             AES_DIN_8<=data_in[31:24];
                             end
                `AES_DIN_9 : begin AES_DIN_9<=data_in[7:0];
                             AES_DIN_10<=data_in[15:8];
                             AES_DIN_11<=data_in[23:16];
                             AES_DIN_12<=data_in[31:24];
                             end
                `AES_DIN_13 : begin AES_DIN_13<=data_in[7:0];
                             AES_DIN_14<=data_in[15:8];
                             AES_DIN_15<=data_in[23:16];
                             AES_DIN_16<=data_in[31:24];
                             end

                `AES_KEY_1 : begin AES_KEY_1<=data_in[7:0];
                             AES_KEY_2<=data_in[15:8];
                             AES_KEY_3<=data_in[23:16];
                             AES_KEY_4<=data_in[31:24];
                             end
                `AES_KEY_5 : begin AES_KEY_5<=data_in[7:0];
                             AES_KEY_6<=data_in[15:8];
                             AES_KEY_7<=data_in[23:16];
                             AES_KEY_8<=data_in[31:24];
                             end
                `AES_KEY_9 : begin AES_KEY_9<=data_in[7:0];
                             AES_KEY_10<=data_in[15:8];
                             AES_KEY_11<=data_in[23:16];
                             AES_KEY_12<=data_in[31:24];
                             end
                `AES_KEY_13 : begin AES_KEY_13<=data_in[7:0];
                             AES_KEY_14<=data_in[15:8];
                             AES_KEY_15<=data_in[23:16];
                             AES_KEY_16<=data_in[31:24];
                             end

                `CORDIC_X_1 : begin CORDIC_X_1<=data_in[7:0];
                             CORDIC_X_2<=data_in[15:8];
                             CORDIC_X_3<=data_in[23:16];
                             CORDIC_X_4<=data_in[31:24];
                             end

                `CORDIC_Y_1 : begin CORDIC_Y_1<=data_in[7:0];
                             CORDIC_Y_2<=data_in[15:8];
                             CORDIC_Y_3<=data_in[23:16];
                             CORDIC_Y_4<=data_in[31:24];
                             end

                `CORDIC_Z_1 : begin CORDIC_Z_1<=data_in[7:0];
                             CORDIC_Z_2<=data_in[15:8];
                             CORDIC_Z_3<=data_in[23:16];
                             CORDIC_Z_4<=data_in[31:24];
                             end

                `DCT_DATA_1 : begin DCT_DATA_1<=data_in[7:0];
                             DCT_DATA_2<=data_in[15:8];
                             DCT_DATA_3<=data_in[23:16];
                             DCT_DATA_4<=data_in[31:24];
                             end
                `DCT_DATA_5 : begin DCT_DATA_5<=data_in[7:0];
                             DCT_DATA_6<=data_in[15:8];
                             DCT_DATA_7<=data_in[23:16];
                             DCT_DATA_8<=data_in[31:24];
                             end
                `DCT_DATA_9 : begin DCT_DATA_9<=data_in[7:0];
                             DCT_DATA_10<=data_in[15:8];
                             DCT_DATA_11<=data_in[23:16];
                             DCT_DATA_12<=data_in[31:24];
                             end
                `DCT_DATA_13 : begin DCT_DATA_13<=data_in[7:0];
                             DCT_DATA_14<=data_in[15:8];
                             DCT_DATA_15<=data_in[23:16];
                             DCT_DATA_16<=data_in[31:24];
                             end
                `DCT_DATA_17 : begin DCT_DATA_17<=data_in[7:0];
                             DCT_DATA_18<=data_in[15:8];
                             DCT_DATA_19<=data_in[23:16];
                             DCT_DATA_20<=data_in[31:24];
                             end
                `DCT_DATA_21 : begin DCT_DATA_21<=data_in[7:0];
                             DCT_DATA_22<=data_in[15:8];
                             DCT_DATA_23<=data_in[23:16];
                             DCT_DATA_24<=data_in[31:24];
                             end
                `DCT_DATA_25 : begin DCT_DATA_25<=data_in[7:0];
                             DCT_DATA_26<=data_in[15:8];
                             DCT_DATA_27<=data_in[23:16];
                             DCT_DATA_28<=data_in[31:24];
                             end
                `DCT_DATA_29 : begin DCT_DATA_29<=data_in[7:0];
                             DCT_DATA_30<=data_in[15:8];
                             DCT_DATA_31<=data_in[23:16];
                             DCT_DATA_32<=data_in[31:24];
                             end
                `DCT_DATA_33 : begin DCT_DATA_33<=data_in[7:0];
                             DCT_DATA_34<=data_in[15:8];
                             DCT_DATA_35<=data_in[23:16];
                             DCT_DATA_36<=data_in[31:24];
                             end
                `DCT_DATA_37 : begin DCT_DATA_37<=data_in[7:0];
                             DCT_DATA_38<=data_in[15:8];
                             DCT_DATA_39<=data_in[23:16];
                             DCT_DATA_40<=data_in[31:24];
                             end
                `DCT_DATA_41 : begin DCT_DATA_41<=data_in[7:0];
                             DCT_DATA_42<=data_in[15:8];
                             DCT_DATA_43<=data_in[23:16];
                             DCT_DATA_44<=data_in[31:24];
                             end
                `DCT_DATA_45 : begin DCT_DATA_45<=data_in[7:0];
                             DCT_DATA_46<=data_in[15:8];
                             DCT_DATA_47<=data_in[23:16];
                             DCT_DATA_48<=data_in[31:24];
                             end
                `DCT_DATA_49 : begin DCT_DATA_49<=data_in[7:0];
                             DCT_DATA_50<=data_in[15:8];
                             DCT_DATA_51<=data_in[23:16];
                             DCT_DATA_52<=data_in[31:24];
                             end
                `DCT_DATA_53 : begin DCT_DATA_53<=data_in[7:0];
                             DCT_DATA_54<=data_in[15:8];
                             DCT_DATA_55<=data_in[23:16];
                             DCT_DATA_56<=data_in[31:24];
                             end
                `DCT_DATA_57 : begin DCT_DATA_57<=data_in[7:0];
                             DCT_DATA_58<=data_in[15:8];
                             DCT_DATA_59<=data_in[23:16];
                             DCT_DATA_60<=data_in[31:24];
                             end
                `DCT_DATA_61 : begin DCT_DATA_61<=data_in[7:0];
                             DCT_DATA_62<=data_in[15:8];
                             DCT_DATA_63<=data_in[23:16];
                             DCT_DATA_64<=data_in[31:24];
                             end

                `SAMM_A_1 : begin SAMM_A_1<=data_in[7:0];
                             SAMM_A_2<=data_in[15:8];
                             SAMM_A_3<=data_in[23:16];
                             SAMM_A_4<=data_in[31:24];
                             end
                `SAMM_A_5 : begin SAMM_A_5<=data_in[7:0];
                             SAMM_A_6<=data_in[15:8];
                             SAMM_A_7<=data_in[23:16];
                             SAMM_A_8<=data_in[31:24];
                             end
                `SAMM_A_9 : begin SAMM_A_9<=data_in[7:0];
                             SAMM_A_10<=data_in[15:8];
                             SAMM_A_11<=data_in[23:16];
                             SAMM_A_12<=data_in[31:24];
                             end
                `SAMM_A_13 : begin SAMM_A_13<=data_in[7:0];
                             SAMM_A_14<=data_in[15:8];
                             SAMM_A_15<=data_in[23:16];
                             SAMM_A_16<=data_in[31:24];
                             end

                `SM4_DATA_1 : begin SM4_DATA_1<=data_in[7:0];
                             SM4_DATA_2<=data_in[15:8];
                             SM4_DATA_3<=data_in[23:16];
                             SM4_DATA_4<=data_in[31:24];
                             end
                `SM4_DATA_5 : begin SM4_DATA_5<=data_in[7:0];
                             SM4_DATA_6<=data_in[15:8];
                             SM4_DATA_7<=data_in[23:16];
                             SM4_DATA_8<=data_in[31:24];
                             end
                `SM4_DATA_9 : begin SM4_DATA_9<=data_in[7:0];
                             SM4_DATA_10<=data_in[15:8];
                             SM4_DATA_11<=data_in[23:16];
                             SM4_DATA_12<=data_in[31:24];
                             end
                `SM4_DATA_13 : begin SM4_DATA_13<=data_in[7:0];
                             SM4_DATA_14<=data_in[15:8];
                             SM4_DATA_15<=data_in[23:16];
                             SM4_DATA_16<=data_in[31:24];
                             end
          endcase
       end
       else if (wr == 0) begin
         case(addr)
                `AES_CTRL : data_out[7:0]<=AES_CTRL;
                `CORDIC_CTRL : data_out[7:0]<=CORDIC_CTRL;
                `DCT_CTRL : data_out[7:0]<=DCT_CTRL;
                `SAMM_CTRL : data_out[7:0]<=SAMM_CTRL;
                `SM4_CTRL : data_out[7:0]<=SM4_CTRL;
                `AES_STATUS : data_out[7:0]<=AES_STATUS;
                `CORDIC_STATUS : data_out[7:0]<=CORDIC_STATUS;
                `DCT_STATUS : data_out[7:0]<=DCT_STATUS;
                `SAMM_STATUS : data_out[7:0]<=SAMM_STATUS;
                `SM4_STATUS : data_out[7:0]<=SM4_STATUS;

                `AES_DOUT_1 : begin data_out[7:0]<=AES_DOUT_1;
                              data_out[15:8]<=AES_DOUT_2;
                              data_out[23:16]<=AES_DOUT_3;
                              data_out[31:24]<=AES_DOUT_4;
                              end
                `AES_DOUT_5 : begin data_out[7:0]<=AES_DOUT_5;
                              data_out[15:8]<=AES_DOUT_6;
                              data_out[23:16]<=AES_DOUT_7;
                              data_out[31:24]<=AES_DOUT_8;
                              end
                `AES_DOUT_9 : begin data_out[7:0]<=AES_DOUT_9;
                              data_out[15:8]<=AES_DOUT_10;
                              data_out[23:16]<=AES_DOUT_11;
                              data_out[31:24]<=AES_DOUT_12;
                              end
                `AES_DOUT_13 : begin data_out[7:0]<=AES_DOUT_13;
                              data_out[15:8]<=AES_DOUT_14;
                              data_out[23:16]<=AES_DOUT_15;
                              data_out[31:24]<=AES_DOUT_16;
                              end

                `CORDIC_XOUT_1 : begin data_out[7:0]<=CORDIC_XOUT_1;
                              data_out[15:8]<=CORDIC_XOUT_2;
                              data_out[23:16]<=CORDIC_XOUT_3;
                              data_out[31:24]<=CORDIC_XOUT_4;
                              end

                `CORDIC_YOUT_1 : begin data_out[7:0]<=CORDIC_YOUT_1;
                              data_out[15:8]<=CORDIC_YOUT_2;
                              data_out[23:16]<=CORDIC_YOUT_3;
                              data_out[31:24]<=CORDIC_YOUT_4;
                              end

                `CORDIC_ZOUT_1 : begin data_out[7:0]<=CORDIC_ZOUT_1;
                              data_out[15:8]<=CORDIC_ZOUT_2;
                              data_out[23:16]<=CORDIC_ZOUT_3;
                              data_out[31:24]<=CORDIC_ZOUT_4;
                              end

                `DCT_OUT_1 : begin data_out[7:0]<=DCT_OUT_1;
                              data_out[15:8]<=DCT_OUT_2;
                              data_out[23:16]<=DCT_OUT_3;
                              data_out[31:24]<=DCT_OUT_4;
                              end
                `DCT_OUT_5 : begin data_out[7:0]<=DCT_OUT_5;
                              data_out[15:8]<=DCT_OUT_6;
                              data_out[23:16]<=DCT_OUT_7;
                              data_out[31:24]<=DCT_OUT_8;
                              end
                `DCT_OUT_9 : begin data_out[7:0]<=DCT_OUT_9;
                              data_out[15:8]<=DCT_OUT_10;
                              data_out[23:16]<=DCT_OUT_11;
                              data_out[31:24]<=DCT_OUT_12;
                              end
                `DCT_OUT_13 : begin data_out[7:0]<=DCT_OUT_13;
                              data_out[15:8]<=DCT_OUT_14;
                              data_out[23:16]<=DCT_OUT_15;
                              data_out[31:24]<=DCT_OUT_16;
                              end
                `DCT_OUT_17 : begin data_out[7:0]<=DCT_OUT_17;
                              data_out[15:8]<=DCT_OUT_18;
                              data_out[23:16]<=DCT_OUT_19;
                              data_out[31:24]<=DCT_OUT_20;
                              end
                `DCT_OUT_21 : begin data_out[7:0]<=DCT_OUT_21;
                              data_out[15:8]<=DCT_OUT_22;
                              data_out[23:16]<=DCT_OUT_23;
                              data_out[31:24]<=DCT_OUT_24;
                              end
                `DCT_OUT_25 : begin data_out[7:0]<=DCT_OUT_25;
                              data_out[15:8]<=DCT_OUT_26;
                              data_out[23:16]<=DCT_OUT_27;
                              data_out[31:24]<=DCT_OUT_28;
                              end
                `DCT_OUT_29 : begin data_out[7:0]<=DCT_OUT_29;
                              data_out[15:8]<=DCT_OUT_30;
                              data_out[23:16]<=DCT_OUT_31;
                              data_out[31:24]<=DCT_OUT_32;
                              end
                `DCT_OUT_33 : begin data_out[7:0]<=DCT_OUT_33;
                              data_out[15:8]<=DCT_OUT_34;
                              data_out[23:16]<=DCT_OUT_35;
                              data_out[31:24]<=DCT_OUT_36;
                              end
                `DCT_OUT_37 : begin data_out[7:0]<=DCT_OUT_37;
                              data_out[15:8]<=DCT_OUT_38;
                              data_out[23:16]<=DCT_OUT_39;
                              data_out[31:24]<=DCT_OUT_40;
                              end
                `DCT_OUT_41 : begin data_out[7:0]<=DCT_OUT_41;
                              data_out[15:8]<=DCT_OUT_42;
                              data_out[23:16]<=DCT_OUT_43;
                              data_out[31:24]<=DCT_OUT_44;
                              end
                `DCT_OUT_45 : begin data_out[7:0]<=DCT_OUT_45;
                              data_out[15:8]<=DCT_OUT_46;
                              data_out[23:16]<=DCT_OUT_47;
                              data_out[31:24]<=DCT_OUT_48;
                              end
                `DCT_OUT_49 : begin data_out[7:0]<=DCT_OUT_49;
                              data_out[15:8]<=DCT_OUT_50;
                              data_out[23:16]<=DCT_OUT_51;
                              data_out[31:24]<=DCT_OUT_52;
                              end
                `DCT_OUT_53 : begin data_out[7:0]<=DCT_OUT_53;
                              data_out[15:8]<=DCT_OUT_54;
                              data_out[23:16]<=DCT_OUT_55;
                              data_out[31:24]<=DCT_OUT_56;
                              end
                `DCT_OUT_57 : begin data_out[7:0]<=DCT_OUT_57;
                              data_out[15:8]<=DCT_OUT_58;
                              data_out[23:16]<=DCT_OUT_59;
                              data_out[31:24]<=DCT_OUT_60;
                              end
                `DCT_OUT_61 : begin data_out[7:0]<=DCT_OUT_61;
                              data_out[15:8]<=DCT_OUT_62;
                              data_out[23:16]<=DCT_OUT_63;
                              data_out[31:24]<=DCT_OUT_64;
                              end

                `SAMM_OUT_DATA_1 : begin data_out[7:0]<=SAMM_OUT_DATA_1;
                              data_out[15:8]<=SAMM_OUT_DATA_2;
                              data_out[23:16]<=SAMM_OUT_DATA_3;
                              data_out[31:24]<=SAMM_OUT_DATA_4;
                              end
                `SAMM_OUT_DATA_5 : begin data_out[7:0]<=SAMM_OUT_DATA_5;
                              data_out[15:8]<=SAMM_OUT_DATA_6;
                              data_out[23:16]<=SAMM_OUT_DATA_7;
                              data_out[31:24]<=SAMM_OUT_DATA_8;
                              end
                `SAMM_OUT_DATA_9 : begin data_out[7:0]<=SAMM_OUT_DATA_9;
                              data_out[15:8]<=SAMM_OUT_DATA_10;
                              data_out[23:16]<=SAMM_OUT_DATA_11;
                              data_out[31:24]<=SAMM_OUT_DATA_12;
                              end
                `SAMM_OUT_DATA_13 : begin data_out[7:0]<=SAMM_OUT_DATA_13;
                              data_out[15:8]<=SAMM_OUT_DATA_14;
                              data_out[23:16]<=SAMM_OUT_DATA_15;
                              data_out[31:24]<=SAMM_OUT_DATA_16;
                              end
                `SAMM_OUT_DATA_17 : begin data_out[7:0]<=SAMM_OUT_DATA_17;
                              data_out[15:8]<=SAMM_OUT_DATA_18;
                              data_out[23:16]<=SAMM_OUT_DATA_19;
                              data_out[31:24]<=SAMM_OUT_DATA_20;
                              end
                `SAMM_OUT_DATA_21 : begin data_out[7:0]<=SAMM_OUT_DATA_21;
                              data_out[15:8]<=SAMM_OUT_DATA_22;
                              data_out[23:16]<=SAMM_OUT_DATA_23;
                              data_out[31:24]<=SAMM_OUT_DATA_24;
                              end
                `SAMM_OUT_DATA_25 : begin data_out[7:0]<=SAMM_OUT_DATA_25;
                              data_out[15:8]<=SAMM_OUT_DATA_26;
                              data_out[23:16]<=SAMM_OUT_DATA_27;
                              data_out[31:24]<=SAMM_OUT_DATA_28;
                              end
                `SAMM_OUT_DATA_29 : begin data_out[7:0]<=SAMM_OUT_DATA_29;
                              data_out[15:8]<=SAMM_OUT_DATA_30;
                              data_out[23:16]<=SAMM_OUT_DATA_31;
                              data_out[31:24]<=SAMM_OUT_DATA_32;
                              end
                `SAMM_OUT_DATA_33 : begin data_out[7:0]<=SAMM_OUT_DATA_33;
                              data_out[15:8]<=SAMM_OUT_DATA_34;
                              data_out[23:16]<=SAMM_OUT_DATA_35;
                              data_out[31:24]<=SAMM_OUT_DATA_36;
                              end
                `SAMM_OUT_DATA_37 : begin data_out[7:0]<=SAMM_OUT_DATA_37;
                              data_out[15:8]<=SAMM_OUT_DATA_38;
                              data_out[23:16]<=SAMM_OUT_DATA_39;
                              data_out[31:24]<=SAMM_OUT_DATA_40;
                              end
                `SAMM_OUT_DATA_41 : begin data_out[7:0]<=SAMM_OUT_DATA_41;
                              data_out[15:8]<=SAMM_OUT_DATA_42;
                              data_out[23:16]<=SAMM_OUT_DATA_43;
                              data_out[31:24]<=SAMM_OUT_DATA_44;
                              end
                `SAMM_OUT_DATA_45 : begin data_out[7:0]<=SAMM_OUT_DATA_45;
                              data_out[15:8]<=SAMM_OUT_DATA_46;
                              data_out[23:16]<=SAMM_OUT_DATA_47;
                              data_out[31:24]<=SAMM_OUT_DATA_48;
                              end
                `SAMM_OUT_DATA_49 : begin data_out[7:0]<=SAMM_OUT_DATA_49;
                              data_out[15:8]<=SAMM_OUT_DATA_50;
                              data_out[23:16]<=SAMM_OUT_DATA_51;
                              data_out[31:24]<=SAMM_OUT_DATA_52;
                              end
                `SAMM_OUT_DATA_53 : begin data_out[7:0]<=SAMM_OUT_DATA_53;
                              data_out[15:8]<=SAMM_OUT_DATA_54;
                              data_out[23:16]<=SAMM_OUT_DATA_55;
                              data_out[31:24]<=SAMM_OUT_DATA_56;
                              end
                `SAMM_OUT_DATA_57 : begin data_out[7:0]<=SAMM_OUT_DATA_57;
                              data_out[15:8]<=SAMM_OUT_DATA_58;
                              data_out[23:16]<=SAMM_OUT_DATA_59;
                              data_out[31:24]<=SAMM_OUT_DATA_60;
                              end
                `SAMM_OUT_DATA_61 : begin data_out[7:0]<=SAMM_OUT_DATA_61;
                              data_out[15:8]<=SAMM_OUT_DATA_62;
                              data_out[23:16]<=SAMM_OUT_DATA_63;
                              data_out[31:24]<=SAMM_OUT_DATA_64;
										end
                `SAMM_OUT_DATA_65 : begin data_out[7:0]<=SAMM_OUT_DATA_65;
                              data_out[15:8]<=SAMM_OUT_DATA_66;
                              data_out[23:16]<=SAMM_OUT_DATA_67;
                              data_out[31:24]<=SAMM_OUT_DATA_68;
                              end
                `SAMM_OUT_DATA_69 : begin data_out[7:0]<=SAMM_OUT_DATA_69;
                              data_out[15:8]<=SAMM_OUT_DATA_70;
                              data_out[23:16]<=SAMM_OUT_DATA_71;
                              data_out[31:24]<=SAMM_OUT_DATA_72;
                              end
                `SAMM_OUT_DATA_73 : begin data_out[7:0]<=SAMM_OUT_DATA_73;
                              data_out[15:8]<=SAMM_OUT_DATA_74;
                              data_out[23:16]<=SAMM_OUT_DATA_75;
                              data_out[31:24]<=SAMM_OUT_DATA_76;
                              end
                `SAMM_OUT_DATA_77 : begin data_out[7:0]<=SAMM_OUT_DATA_77;
                              data_out[15:8]<=SAMM_OUT_DATA_78;
                              data_out[23:16]<=SAMM_OUT_DATA_79;
                              data_out[31:24]<=SAMM_OUT_DATA_80;
                              end
                `SAMM_OUT_DATA_81 : begin data_out[7:0]<=SAMM_OUT_DATA_81;
                              data_out[15:8]<=SAMM_OUT_DATA_82;
                              data_out[23:16]<=SAMM_OUT_DATA_83;
                              data_out[31:24]<=SAMM_OUT_DATA_84;
                              end
                `SAMM_OUT_DATA_85 : begin data_out[7:0]<=SAMM_OUT_DATA_85;
                              data_out[15:8]<=SAMM_OUT_DATA_86;
                              data_out[23:16]<=SAMM_OUT_DATA_87;
                              data_out[31:24]<=SAMM_OUT_DATA_88;
                              end
                `SAMM_OUT_DATA_89 : begin data_out[7:0]<=SAMM_OUT_DATA_89;
                              data_out[15:8]<=SAMM_OUT_DATA_90;
                              data_out[23:16]<=SAMM_OUT_DATA_91;
                              data_out[31:24]<=SAMM_OUT_DATA_92;
                              end
                `SAMM_OUT_DATA_93 : begin data_out[7:0]<=SAMM_OUT_DATA_93;
                              data_out[15:8]<=SAMM_OUT_DATA_94;
                              data_out[23:16]<=SAMM_OUT_DATA_95;
                              data_out[31:24]<=SAMM_OUT_DATA_96;
                              end
                `SAMM_OUT_DATA_97 : begin data_out[7:0]<=SAMM_OUT_DATA_97;
                              data_out[15:8]<=SAMM_OUT_DATA_98;
                              data_out[23:16]<=SAMM_OUT_DATA_99;
                              data_out[31:24]<=SAMM_OUT_DATA_100;
                              end
                `SAMM_OUT_DATA_101 : begin data_out[7:0]<=SAMM_OUT_DATA_101;
                              data_out[15:8]<=SAMM_OUT_DATA_102;
                              data_out[23:16]<=SAMM_OUT_DATA_103;
                              data_out[31:24]<=SAMM_OUT_DATA_104;
                              end
                `SAMM_OUT_DATA_105 : begin data_out[7:0]<=SAMM_OUT_DATA_105;
                              data_out[15:8]<=SAMM_OUT_DATA_106;
                              data_out[23:16]<=SAMM_OUT_DATA_107;
                              data_out[31:24]<=SAMM_OUT_DATA_108;
                              end
                `SAMM_OUT_DATA_109 : begin data_out[7:0]<=SAMM_OUT_DATA_109;
                              data_out[15:8]<=SAMM_OUT_DATA_110;
                              data_out[23:16]<=SAMM_OUT_DATA_111;
                              data_out[31:24]<=SAMM_OUT_DATA_112;
                              end
                `SAMM_OUT_DATA_113 : begin data_out[7:0]<=SAMM_OUT_DATA_113;
                              data_out[15:8]<=SAMM_OUT_DATA_114;
                              data_out[23:16]<=SAMM_OUT_DATA_115;
                              data_out[31:24]<=SAMM_OUT_DATA_116;
                              end
                `SAMM_OUT_DATA_117 : begin data_out[7:0]<=SAMM_OUT_DATA_117;
                              data_out[15:8]<=SAMM_OUT_DATA_118;
                              data_out[23:16]<=SAMM_OUT_DATA_119;
                              data_out[31:24]<=SAMM_OUT_DATA_120;
                              end
                `SAMM_OUT_DATA_121 : begin data_out[7:0]<=SAMM_OUT_DATA_121;
                              data_out[15:8]<=SAMM_OUT_DATA_122;
                              data_out[23:16]<=SAMM_OUT_DATA_123;
                              data_out[31:24]<=SAMM_OUT_DATA_124;
                              end
                `SAMM_OUT_DATA_125 : begin data_out[7:0]<=SAMM_OUT_DATA_125;
                              data_out[15:8]<=SAMM_OUT_DATA_126;
                              data_out[23:16]<=SAMM_OUT_DATA_127;
                              data_out[31:24]<=SAMM_OUT_DATA_128;
                              end

                `SM4_RESULT_1 : begin data_out[7:0]<=SM4_RESULT_1;
                              data_out[15:8]<=SM4_RESULT_2;
                              data_out[23:16]<=SM4_RESULT_3;
                              data_out[31:24]<=SM4_RESULT_4;
                              end
                `SM4_RESULT_5 : begin data_out[7:0]<=SM4_RESULT_5;
                              data_out[15:8]<=SM4_RESULT_6;
                              data_out[23:16]<=SM4_RESULT_7;
                              data_out[31:24]<=SM4_RESULT_8;
                              end
                `SM4_RESULT_9 : begin data_out[7:0]<=SM4_RESULT_9;
                              data_out[15:8]<=SM4_RESULT_10;
                              data_out[23:16]<=SM4_RESULT_11;
                              data_out[31:24]<=SM4_RESULT_12;
                              end
                `SM4_RESULT_13 : begin data_out[7:0]<=SM4_RESULT_13;
                              data_out[15:8]<=SM4_RESULT_14;
                              data_out[23:16]<=SM4_RESULT_15;
                              data_out[31:24]<=SM4_RESULT_16;
                              end
         endcase
       end
    end
    else begin
    if (CSB==0) begin
      if (counter<=4) begin        //指令输入阶段
        zl[15:11]<={zl[14:11],SIO2I};
		  zl[10:6]<={zl[9:6],SIO1I};
        counter<=counter+1;
		  if(counter==4) begin
		    enable<=1'b1;
          reset<=1'b0;
		  end
		  else begin
		    enable<=1'b0;
          reset<=1'b1;
		  end
      end
      else if(counter<=15 && 4<counter) begin  //处理阶段
      	if (zl[15]==0) begin                    //zl[15]==0 写入数据
          en1<=1'b1;
          en2<=1'b1; 
      	  if (counter<=12) begin                //将要写入的数据输入寄存器
      	    yw[15:8]<={yw[14:8],SIO2I};
				 yw[7:0]<={yw[6:0],SIO1I};
				 if (counter==12) begin
				    enable<=1'b0;
				 end
      	  end
      	  else if(counter<=15 && 12<counter) begin
			    if (counter==13) begin
				   crc1[3]<=SIO2I;
					crc1[2]<=SIO1I;
				 end
				 if (counter==14) begin
				   crc1[1]<=SIO2I;
					crc1[0]<=SIO1I;
				 end
             if(counter==15) begin
      	      if (zl[14]==0) begin                //zl[14]==0 只写入一字节
      			  case(zl[13:6])
      			    `AES_CTRL : AES_CTRL<=yw[15:8];
      			    `CORDIC_CTRL : CORDIC_CTRL<=yw[15:8];
      			    `DCT_CTRL : DCT_CTRL<=yw[15:8];
      			    `SAMM_CTRL : SAMM_CTRL<=yw[15:8];
      			    `SM4_CTRL : SM4_CTRL<=yw[15:8];

      			    `AES_DIN_1 : AES_DIN_1<=yw[15:8];
                `AES_DIN_2 : AES_DIN_2<=yw[15:8];
                `AES_DIN_3 : AES_DIN_3<=yw[15:8];
                `AES_DIN_4 : AES_DIN_4<=yw[15:8];
                `AES_DIN_5 : AES_DIN_5<=yw[15:8];
                `AES_DIN_6 : AES_DIN_6<=yw[15:8];
                `AES_DIN_7 : AES_DIN_7<=yw[15:8];
                `AES_DIN_8 : AES_DIN_8<=yw[15:8];
                `AES_DIN_9 : AES_DIN_9<=yw[15:8];
                `AES_DIN_10 : AES_DIN_10<=yw[15:8];
                `AES_DIN_11 : AES_DIN_11<=yw[15:8];
                `AES_DIN_12 : AES_DIN_12<=yw[15:8];
                `AES_DIN_13 : AES_DIN_13<=yw[15:8];
                `AES_DIN_14 : AES_DIN_14<=yw[15:8];
                `AES_DIN_15 : AES_DIN_15<=yw[15:8];
                `AES_DIN_16 : AES_DIN_16<=yw[15:8];

                `AES_KEY_1 : AES_KEY_1<=yw[15:8];
                `AES_KEY_2 : AES_KEY_2<=yw[15:8];
                `AES_KEY_3 : AES_KEY_3<=yw[15:8];
                `AES_KEY_4 : AES_KEY_4<=yw[15:8];
                `AES_KEY_5 : AES_KEY_5<=yw[15:8];
                `AES_KEY_6 : AES_KEY_6<=yw[15:8];
                `AES_KEY_7 : AES_KEY_7<=yw[15:8];
                `AES_KEY_8 : AES_KEY_8<=yw[15:8];
                `AES_KEY_9 : AES_KEY_9<=yw[15:8];
                `AES_KEY_10 : AES_KEY_10<=yw[15:8];
                `AES_KEY_11 : AES_KEY_11<=yw[15:8];
                `AES_KEY_12 : AES_KEY_12<=yw[15:8];
                `AES_KEY_13 : AES_KEY_13<=yw[15:8];
                `AES_KEY_14 : AES_KEY_14<=yw[15:8];
                `AES_KEY_15 : AES_KEY_15<=yw[15:8];
                `AES_KEY_16 : AES_KEY_16<=yw[15:8];

                `CORDIC_X_1 : CORDIC_X_1<=yw[15:8];
                `CORDIC_X_2 : CORDIC_X_2<=yw[15:8];
                `CORDIC_X_3 : CORDIC_X_3<=yw[15:8];
                `CORDIC_X_4 : CORDIC_X_4<=yw[15:8];

                `CORDIC_Y_1 : CORDIC_Y_1<=yw[15:8];
                `CORDIC_Y_2 : CORDIC_Y_2<=yw[15:8];
                `CORDIC_Y_3 : CORDIC_Y_3<=yw[15:8];
                `CORDIC_Y_4 : CORDIC_Y_4<=yw[15:8];

                `CORDIC_Z_1 : CORDIC_Z_1<=yw[15:8];
                `CORDIC_Z_2 : CORDIC_Z_2<=yw[15:8];
                `CORDIC_Z_3 : CORDIC_Z_3<=yw[15:8];
                `CORDIC_Z_4 : CORDIC_Z_4<=yw[15:8];

                `DCT_DATA_1 : DCT_DATA_1<=yw[15:8];
                `DCT_DATA_2 : DCT_DATA_2<=yw[15:8];
                `DCT_DATA_3 : DCT_DATA_3<=yw[15:8];
                `DCT_DATA_4 : DCT_DATA_4<=yw[15:8];
                `DCT_DATA_5 : DCT_DATA_5<=yw[15:8];
                `DCT_DATA_6 : DCT_DATA_6<=yw[15:8];
                `DCT_DATA_7 : DCT_DATA_7<=yw[15:8];
                `DCT_DATA_8 : DCT_DATA_8<=yw[15:8];
                `DCT_DATA_9 : DCT_DATA_9<=yw[15:8];
                `DCT_DATA_10 : DCT_DATA_10<=yw[15:8];
                `DCT_DATA_11 : DCT_DATA_11<=yw[15:8];
                `DCT_DATA_12 : DCT_DATA_12<=yw[15:8];
                `DCT_DATA_13 : DCT_DATA_13<=yw[15:8];
                `DCT_DATA_14 : DCT_DATA_14<=yw[15:8];
                `DCT_DATA_15 : DCT_DATA_15<=yw[15:8];
                `DCT_DATA_16 : DCT_DATA_16<=yw[15:8];
                `DCT_DATA_17 : DCT_DATA_17<=yw[15:8];
                `DCT_DATA_18 : DCT_DATA_18<=yw[15:8];
                `DCT_DATA_19 : DCT_DATA_19<=yw[15:8];
                `DCT_DATA_20 : DCT_DATA_20<=yw[15:8];
                `DCT_DATA_21 : DCT_DATA_21<=yw[15:8];
                `DCT_DATA_22 : DCT_DATA_22<=yw[15:8];
                `DCT_DATA_23 : DCT_DATA_23<=yw[15:8];
                `DCT_DATA_24 : DCT_DATA_24<=yw[15:8];
                `DCT_DATA_25 : DCT_DATA_25<=yw[15:8];
                `DCT_DATA_26 : DCT_DATA_26<=yw[15:8];
                `DCT_DATA_27 : DCT_DATA_27<=yw[15:8];
                `DCT_DATA_28 : DCT_DATA_28<=yw[15:8];
                `DCT_DATA_29 : DCT_DATA_29<=yw[15:8];
                `DCT_DATA_30 : DCT_DATA_30<=yw[15:8];
                `DCT_DATA_31 : DCT_DATA_31<=yw[15:8];
                `DCT_DATA_32 : DCT_DATA_32<=yw[15:8];
                `DCT_DATA_33 : DCT_DATA_33<=yw[15:8];
                `DCT_DATA_34 : DCT_DATA_34<=yw[15:8];
                `DCT_DATA_35 : DCT_DATA_35<=yw[15:8];
                `DCT_DATA_36 : DCT_DATA_36<=yw[15:8];
                `DCT_DATA_37 : DCT_DATA_37<=yw[15:8];
                `DCT_DATA_38 : DCT_DATA_38<=yw[15:8];
                `DCT_DATA_39 : DCT_DATA_39<=yw[15:8];
                `DCT_DATA_40 : DCT_DATA_40<=yw[15:8];
                `DCT_DATA_41 : DCT_DATA_41<=yw[15:8];
                `DCT_DATA_42 : DCT_DATA_42<=yw[15:8];
                `DCT_DATA_43 : DCT_DATA_43<=yw[15:8];
                `DCT_DATA_44 : DCT_DATA_44<=yw[15:8];
                `DCT_DATA_45 : DCT_DATA_45<=yw[15:8];
                `DCT_DATA_46 : DCT_DATA_46<=yw[15:8];
                `DCT_DATA_47 : DCT_DATA_47<=yw[15:8];
                `DCT_DATA_48 : DCT_DATA_48<=yw[15:8];
                `DCT_DATA_49 : DCT_DATA_49<=yw[15:8];
                `DCT_DATA_50 : DCT_DATA_50<=yw[15:8];
                `DCT_DATA_51 : DCT_DATA_51<=yw[15:8];
                `DCT_DATA_52 : DCT_DATA_52<=yw[15:8];
                `DCT_DATA_53 : DCT_DATA_53<=yw[15:8];
                `DCT_DATA_54 : DCT_DATA_54<=yw[15:8];
                `DCT_DATA_55 : DCT_DATA_55<=yw[15:8];
                `DCT_DATA_56 : DCT_DATA_56<=yw[15:8];
                `DCT_DATA_57 : DCT_DATA_57<=yw[15:8];
                `DCT_DATA_58 : DCT_DATA_58<=yw[15:8];
                `DCT_DATA_59 : DCT_DATA_59<=yw[15:8];
                `DCT_DATA_60 : DCT_DATA_60<=yw[15:8];
                `DCT_DATA_61 : DCT_DATA_61<=yw[15:8];
                `DCT_DATA_62 : DCT_DATA_62<=yw[15:8];
                `DCT_DATA_63 : DCT_DATA_63<=yw[15:8];
                `DCT_DATA_64 : DCT_DATA_64<=yw[15:8];

                `SAMM_A_1 : SAMM_A_1<=yw[15:8];
                `SAMM_A_2 : SAMM_A_2<=yw[15:8];
                `SAMM_A_3 : SAMM_A_3<=yw[15:8];
                `SAMM_A_4 : SAMM_A_4<=yw[15:8];
                `SAMM_A_5 : SAMM_A_5<=yw[15:8];
                `SAMM_A_6 : SAMM_A_6<=yw[15:8];
                `SAMM_A_7 : SAMM_A_7<=yw[15:8];
                `SAMM_A_8 : SAMM_A_8<=yw[15:8];
                `SAMM_A_9 : SAMM_A_9<=yw[15:8];
                `SAMM_A_10 : SAMM_A_10<=yw[15:8];
                `SAMM_A_11 : SAMM_A_11<=yw[15:8];
                `SAMM_A_12 : SAMM_A_12<=yw[15:8];
                `SAMM_A_13 : SAMM_A_13<=yw[15:8];
                `SAMM_A_14 : SAMM_A_14<=yw[15:8];
                `SAMM_A_15 : SAMM_A_15<=yw[15:8];
                `SAMM_A_16 : SAMM_A_16<=yw[15:8];

                `SM4_DATA_1 : SM4_DATA_1<=yw[15:8];
                `SM4_DATA_2 : SM4_DATA_2<=yw[15:8];
                `SM4_DATA_3 : SM4_DATA_3<=yw[15:8];
                `SM4_DATA_4 : SM4_DATA_4<=yw[15:8];
                `SM4_DATA_5 : SM4_DATA_5<=yw[15:8];
                `SM4_DATA_6 : SM4_DATA_6<=yw[15:8];
                `SM4_DATA_7 : SM4_DATA_7<=yw[15:8];
                `SM4_DATA_8 : SM4_DATA_8<=yw[15:8];
                `SM4_DATA_9 : SM4_DATA_9<=yw[15:8];
                `SM4_DATA_10 : SM4_DATA_10<=yw[15:8];
                `SM4_DATA_11 : SM4_DATA_11<=yw[15:8];
                `SM4_DATA_12 : SM4_DATA_12<=yw[15:8];
                `SM4_DATA_13 : SM4_DATA_13<=yw[15:8];
                `SM4_DATA_14 : SM4_DATA_14<=yw[15:8];
                `SM4_DATA_15 : SM4_DATA_15<=yw[15:8];
                `SM4_DATA_16 : SM4_DATA_16<=yw[15:8];
      			    /*updata*/
      			  endcase
      		   end
      		  else begin
      			  case(zl[13:6])                    //zl[14]==1 写入两个字节
                `AES_CTRL : AES_CTRL<=yw[15:8];
      			    `CORDIC_CTRL : CORDIC_CTRL<=yw[15:8];
      			    `DCT_CTRL : DCT_CTRL<=yw[15:8];
      			    `SAMM_CTRL : SAMM_CTRL<=yw[15:8];
      			    `SM4_CTRL : SM4_CTRL<=yw[15:8];

      			    `AES_DIN_1 : begin 
      			               AES_DIN_1<=yw[15:8];
                           AES_DIN_2<=yw[7:0];
                        end  
                `AES_DIN_2 : begin 
      			               AES_DIN_2<=yw[15:8];
                           AES_DIN_3<=yw[7:0];
                        end  
                `AES_DIN_3 : begin 
      			               AES_DIN_3<=yw[15:8];
                           AES_DIN_4<=yw[7:0];
                        end  
                `AES_DIN_4 : begin 
      			               AES_DIN_4<=yw[15:8];
                           AES_DIN_5<=yw[7:0];
                        end  
                `AES_DIN_5 : begin 
      			               AES_DIN_5<=yw[15:8];
                           AES_DIN_6<=yw[7:0];
                        end  
                `AES_DIN_6 : begin 
      			               AES_DIN_6<=yw[15:8];
                           AES_DIN_7<=yw[7:0];
                        end  
                `AES_DIN_7 : begin 
      			               AES_DIN_7<=yw[15:8];
                           AES_DIN_8<=yw[7:0];
                        end  
                `AES_DIN_8 : begin 
      			               AES_DIN_8<=yw[15:8];
                           AES_DIN_9<=yw[7:0];
                        end  
                `AES_DIN_9 : begin 
      			               AES_DIN_9<=yw[15:8];
                           AES_DIN_10<=yw[7:0];
                        end  
                `AES_DIN_10 : begin 
      			               AES_DIN_10<=yw[15:8];
                           AES_DIN_11<=yw[7:0];
                        end  
                `AES_DIN_11 : begin 
      			               AES_DIN_11<=yw[15:8];
                           AES_DIN_12<=yw[7:0];
                        end  
                `AES_DIN_12 : begin 
      			               AES_DIN_12<=yw[15:8];
                           AES_DIN_13<=yw[7:0];
                        end  
                `AES_DIN_13 : begin 
      			               AES_DIN_13<=yw[15:8];
                           AES_DIN_14<=yw[7:0];
                        end  
                `AES_DIN_14 : begin 
      			               AES_DIN_14<=yw[15:8];
                           AES_DIN_15<=yw[7:0];
                        end  
                `AES_DIN_15 : begin 
      			               AES_DIN_15<=yw[15:8];
                           AES_DIN_16<=yw[7:0];
                        end  
                `AES_DIN_16 : begin 
      			               AES_DIN_16<=yw[15:8];
                           AES_DIN_1<=yw[7:0];
                        end  
                `AES_KEY_1 : begin 
                           AES_KEY_1<=yw[15:8];
                           AES_KEY_2<=yw[7:0];
                        end  
                `AES_KEY_2 : begin 
                           AES_KEY_2<=yw[15:8];
                           AES_KEY_3<=yw[7:0];
                        end  
                `AES_KEY_3 : begin 
                           AES_KEY_3<=yw[15:8];
                           AES_KEY_4<=yw[7:0];
                        end  
                `AES_KEY_4 : begin 
                           AES_KEY_4<=yw[15:8];
                           AES_KEY_5<=yw[7:0];
                        end  
                `AES_KEY_5 : begin 
                           AES_KEY_5<=yw[15:8];
                           AES_KEY_6<=yw[7:0];
                        end  
                `AES_KEY_6 : begin 
                           AES_KEY_6<=yw[15:8];
                           AES_KEY_7<=yw[7:0];
                        end  
                `AES_KEY_7 : begin 
                           AES_KEY_7<=yw[15:8];
                           AES_KEY_8<=yw[7:0];
                        end  
                `AES_KEY_8 : begin 
                           AES_KEY_8<=yw[15:8];
                           AES_KEY_9<=yw[7:0];
                        end  
                `AES_KEY_9 : begin 
                           AES_KEY_9<=yw[15:8];
                           AES_KEY_10<=yw[7:0];
                        end  
                `AES_KEY_10 : begin 
                           AES_KEY_10<=yw[15:8];
                           AES_KEY_11<=yw[7:0];
                        end  
                `AES_KEY_11 : begin 
                           AES_KEY_11<=yw[15:8];
                           AES_KEY_12<=yw[7:0];
                        end  
                `AES_KEY_12 : begin 
                           AES_KEY_12<=yw[15:8];
                           AES_KEY_13<=yw[7:0];
                        end  
                `AES_KEY_13 : begin 
                           AES_KEY_13<=yw[15:8];
                           AES_KEY_14<=yw[7:0];
                        end  
                `AES_KEY_14 : begin 
                           AES_KEY_14<=yw[15:8];
                           AES_KEY_15<=yw[7:0];
                        end  
                `AES_KEY_15 : begin 
                           AES_KEY_15<=yw[15:8];
                           AES_KEY_16<=yw[7:0];
                        end  
                `AES_KEY_16 : begin 
                           AES_KEY_16<=yw[15:8];
                           AES_KEY_1<=yw[7:0];
                        end  
                `CORDIC_X_1 : begin 
                           CORDIC_X_1<=yw[15:8];
                           CORDIC_X_2<=yw[7:0];
                        end  
                `CORDIC_X_2 : begin 
                           CORDIC_X_2<=yw[15:8];
                           CORDIC_X_3<=yw[7:0];
                        end  
                `CORDIC_X_3 : begin 
                           CORDIC_X_3<=yw[15:8];
                           CORDIC_X_4<=yw[7:0];
                        end  
                `CORDIC_X_4 : begin 
                           CORDIC_X_4<=yw[15:8];
                           CORDIC_X_1<=yw[7:0];
                        end  
                `CORDIC_Y_1 : begin 
                           CORDIC_Y_1<=yw[15:8];
                           CORDIC_Y_2<=yw[7:0];
                        end  
                `CORDIC_Y_2 : begin 
                           CORDIC_Y_2<=yw[15:8];
                           CORDIC_Y_3<=yw[7:0];
                        end  
                `CORDIC_Y_3 : begin 
                           CORDIC_Y_3<=yw[15:8];
                           CORDIC_Y_4<=yw[7:0];
                        end  
                `CORDIC_Y_4 : begin 
                           CORDIC_Y_4<=yw[15:8];
                           CORDIC_Y_1<=yw[7:0];
                        end  
                `CORDIC_Z_1 : begin 
                           CORDIC_Z_1<=yw[15:8];
                           CORDIC_Z_2<=yw[7:0];
                        end  
                `CORDIC_Z_2 : begin 
                           CORDIC_Z_2<=yw[15:8];
                           CORDIC_Z_3<=yw[7:0];
                        end  
                `CORDIC_Z_3 : begin 
                           CORDIC_Z_3<=yw[15:8];
                           CORDIC_Z_4<=yw[7:0];
                        end  
                `CORDIC_Z_4 : begin 
                           CORDIC_Z_4<=yw[15:8];
                           CORDIC_Z_1<=yw[7:0];
                        end  

                `DCT_DATA_1 : begin 
                           DCT_DATA_1<=yw[15:8];
                           DCT_DATA_2<=yw[7:0];
                        end  
                `DCT_DATA_2 : begin 
                           DCT_DATA_2<=yw[15:8];
                           DCT_DATA_3<=yw[7:0];
                        end  
                `DCT_DATA_3 : begin 
                           DCT_DATA_3<=yw[15:8];
                           DCT_DATA_4<=yw[7:0];
                        end  
                `DCT_DATA_4 : begin 
                           DCT_DATA_4<=yw[15:8];
                           DCT_DATA_5<=yw[7:0];
                        end  
                `DCT_DATA_5 : begin 
                           DCT_DATA_5<=yw[15:8];
                           DCT_DATA_6<=yw[7:0];
                        end  
                `DCT_DATA_6 : begin 
                           DCT_DATA_6<=yw[15:8];
                           DCT_DATA_7<=yw[7:0];
                        end  
                `DCT_DATA_7 : begin 
                           DCT_DATA_7<=yw[15:8];
                           DCT_DATA_8<=yw[7:0];
                        end  
                `DCT_DATA_8 : begin 
                           DCT_DATA_8<=yw[15:8];
                           DCT_DATA_9<=yw[7:0];
                        end  
                `DCT_DATA_9 : begin 
                           DCT_DATA_9<=yw[15:8];
                           DCT_DATA_10<=yw[7:0];
                        end  
                `DCT_DATA_10 : begin 
                           DCT_DATA_10<=yw[15:8];
                           DCT_DATA_11<=yw[7:0];
                        end  
                `DCT_DATA_11 : begin 
                           DCT_DATA_11<=yw[15:8];
                           DCT_DATA_12<=yw[7:0];
                        end  
                `DCT_DATA_12 : begin 
                           DCT_DATA_12<=yw[15:8];
                           DCT_DATA_13<=yw[7:0];
                        end  
                `DCT_DATA_13 : begin 
                           DCT_DATA_13<=yw[15:8];
                           DCT_DATA_14<=yw[7:0];
                        end  
                `DCT_DATA_14 : begin 
                           DCT_DATA_14<=yw[15:8];
                           DCT_DATA_15<=yw[7:0];
                        end  
                `DCT_DATA_15 : begin 
                           DCT_DATA_15<=yw[15:8];
                           DCT_DATA_16<=yw[7:0];
                        end  
                `DCT_DATA_16 : begin 
                           DCT_DATA_16<=yw[15:8];
                           DCT_DATA_17<=yw[7:0];
                        end  
                `DCT_DATA_17 : begin 
                           DCT_DATA_17<=yw[15:8];
                           DCT_DATA_18<=yw[7:0];
                        end  
                `DCT_DATA_18 : begin 
                           DCT_DATA_18<=yw[15:8];
                           DCT_DATA_19<=yw[7:0];
                        end  
                `DCT_DATA_19 : begin 
                           DCT_DATA_19<=yw[15:8];
                           DCT_DATA_20<=yw[7:0];
                        end  
                `DCT_DATA_20 : begin 
                           DCT_DATA_20<=yw[15:8];
                           DCT_DATA_21<=yw[7:0];
                        end  
                `DCT_DATA_21 : begin 
                           DCT_DATA_21<=yw[15:8];
                           DCT_DATA_22<=yw[7:0];
                        end  
                `DCT_DATA_22 : begin 
                           DCT_DATA_22<=yw[15:8];
                           DCT_DATA_23<=yw[7:0];
                        end  
                `DCT_DATA_23 : begin 
                           DCT_DATA_23<=yw[15:8];
                           DCT_DATA_24<=yw[7:0];
                        end  
                `DCT_DATA_24 : begin 
                           DCT_DATA_24<=yw[15:8];
                           DCT_DATA_25<=yw[7:0];
                        end  
                `DCT_DATA_25 : begin 
                           DCT_DATA_25<=yw[15:8];
                           DCT_DATA_26<=yw[7:0];
                        end  
                `DCT_DATA_26 : begin 
                           DCT_DATA_26<=yw[15:8];
                           DCT_DATA_27<=yw[7:0];
                        end  
                `DCT_DATA_27 : begin 
                           DCT_DATA_27<=yw[15:8];
                           DCT_DATA_28<=yw[7:0];
                        end  
                `DCT_DATA_28 : begin 
                           DCT_DATA_28<=yw[15:8];
                           DCT_DATA_29<=yw[7:0];
                        end  
                `DCT_DATA_29 : begin 
                           DCT_DATA_29<=yw[15:8];
                           DCT_DATA_30<=yw[7:0];
                        end  
                `DCT_DATA_30 : begin 
                           DCT_DATA_30<=yw[15:8];
                           DCT_DATA_31<=yw[7:0];
                        end  
                `DCT_DATA_31 : begin 
                           DCT_DATA_31<=yw[15:8];
                           DCT_DATA_32<=yw[7:0];
                        end  
                `DCT_DATA_32 : begin 
                           DCT_DATA_32<=yw[15:8];
                           DCT_DATA_33<=yw[7:0];
                        end  
                `DCT_DATA_33 : begin 
                           DCT_DATA_33<=yw[15:8];
                           DCT_DATA_34<=yw[7:0];
                        end  
                `DCT_DATA_34 : begin 
                           DCT_DATA_34<=yw[15:8];
                           DCT_DATA_35<=yw[7:0];
                        end  
                `DCT_DATA_35 : begin 
                           DCT_DATA_35<=yw[15:8];
                           DCT_DATA_36<=yw[7:0];
                        end  
                `DCT_DATA_36 : begin 
                           DCT_DATA_36<=yw[15:8];
                           DCT_DATA_37<=yw[7:0];
                        end  
                `DCT_DATA_37 : begin 
                           DCT_DATA_37<=yw[15:8];
                           DCT_DATA_38<=yw[7:0];
                        end  
                `DCT_DATA_38 : begin 
                           DCT_DATA_38<=yw[15:8];
                           DCT_DATA_39<=yw[7:0];
                        end  
                `DCT_DATA_39 : begin 
                           DCT_DATA_39<=yw[15:8];
                           DCT_DATA_40<=yw[7:0];
                        end  
                `DCT_DATA_40 : begin 
                           DCT_DATA_40<=yw[15:8];
                           DCT_DATA_41<=yw[7:0];
                        end  
                `DCT_DATA_41 : begin 
                           DCT_DATA_41<=yw[15:8];
                           DCT_DATA_42<=yw[7:0];
                        end  
                `DCT_DATA_42 : begin 
                           DCT_DATA_42<=yw[15:8];
                           DCT_DATA_43<=yw[7:0];
                        end  
                `DCT_DATA_43 : begin 
                           DCT_DATA_43<=yw[15:8];
                           DCT_DATA_44<=yw[7:0];
                        end  
                `DCT_DATA_44 : begin 
                           DCT_DATA_44<=yw[15:8];
                           DCT_DATA_45<=yw[7:0];
                        end  
                `DCT_DATA_45 : begin 
                           DCT_DATA_45<=yw[15:8];
                           DCT_DATA_46<=yw[7:0];
                        end  
                `DCT_DATA_46 : begin 
                           DCT_DATA_46<=yw[15:8];
                           DCT_DATA_47<=yw[7:0];
                        end  
                `DCT_DATA_47 : begin 
                           DCT_DATA_47<=yw[15:8];
                           DCT_DATA_48<=yw[7:0];
                        end  
                `DCT_DATA_48 : begin 
                           DCT_DATA_48<=yw[15:8];
                           DCT_DATA_49<=yw[7:0];
                        end  
                `DCT_DATA_49 : begin 
                           DCT_DATA_49<=yw[15:8];
                           DCT_DATA_50<=yw[7:0];
                        end  
                `DCT_DATA_50 : begin 
                           DCT_DATA_50<=yw[15:8];
                           DCT_DATA_51<=yw[7:0];
                        end  
                `DCT_DATA_51 : begin 
                           DCT_DATA_51<=yw[15:8];
                           DCT_DATA_52<=yw[7:0];
                        end  
                `DCT_DATA_52 : begin 
                           DCT_DATA_52<=yw[15:8];
                           DCT_DATA_53<=yw[7:0];
                        end  
                `DCT_DATA_53 : begin 
                           DCT_DATA_53<=yw[15:8];
                           DCT_DATA_54<=yw[7:0];
                        end  
                `DCT_DATA_54 : begin 
                           DCT_DATA_54<=yw[15:8];
                           DCT_DATA_55<=yw[7:0];
                        end  
                `DCT_DATA_55 : begin 
                           DCT_DATA_55<=yw[15:8];
                           DCT_DATA_56<=yw[7:0];
                        end  
                `DCT_DATA_56 : begin 
                           DCT_DATA_56<=yw[15:8];
                           DCT_DATA_57<=yw[7:0];
                        end  
                `DCT_DATA_57 : begin 
                           DCT_DATA_57<=yw[15:8];
                           DCT_DATA_58<=yw[7:0];
                        end  
                `DCT_DATA_58 : begin 
                           DCT_DATA_58<=yw[15:8];
                           DCT_DATA_59<=yw[7:0];
                        end  
                `DCT_DATA_59 : begin 
                           DCT_DATA_59<=yw[15:8];
                           DCT_DATA_60<=yw[7:0];
                        end  
                `DCT_DATA_60 : begin 
                           DCT_DATA_60<=yw[15:8];
                           DCT_DATA_61<=yw[7:0];
                        end  
                `DCT_DATA_61 : begin 
                           DCT_DATA_61<=yw[15:8];
                           DCT_DATA_62<=yw[7:0];
                        end  
                `DCT_DATA_62 : begin 
                           DCT_DATA_62<=yw[15:8];
                           DCT_DATA_63<=yw[7:0];
                        end  
                `DCT_DATA_63 : begin 
                           DCT_DATA_63<=yw[15:8];
                           DCT_DATA_64<=yw[7:0];
                        end  
                `DCT_DATA_64 : begin 
                           DCT_DATA_64<=yw[15:8];
                           DCT_DATA_1<=yw[7:0];
                        end  
                `SAMM_A_1 : begin 
                           SAMM_A_1<=yw[15:8];
                           SAMM_A_2<=yw[7:0];
                        end  
                `SAMM_A_2 : begin 
                           SAMM_A_2<=yw[15:8];
                           SAMM_A_3<=yw[7:0];
                        end  
                `SAMM_A_3 : begin 
                           SAMM_A_3<=yw[15:8];
                           SAMM_A_4<=yw[7:0];
                        end  
                `SAMM_A_4 : begin 
                           SAMM_A_4<=yw[15:8];
                           SAMM_A_5<=yw[7:0];
                        end  
                `SAMM_A_5 : begin 
                           SAMM_A_5<=yw[15:8];
                           SAMM_A_6<=yw[7:0];
                        end  
                `SAMM_A_6 : begin 
                           SAMM_A_6<=yw[15:8];
                           SAMM_A_7<=yw[7:0];
                        end  
                `SAMM_A_7 : begin 
                           SAMM_A_7<=yw[15:8];
                           SAMM_A_8<=yw[7:0];
                        end  
                `SAMM_A_8 : begin 
                           SAMM_A_8<=yw[15:8];
                           SAMM_A_9<=yw[7:0];
                        end  
                `SAMM_A_9 : begin 
                           SAMM_A_9<=yw[15:8];
                           SAMM_A_10<=yw[7:0];
                        end  
                `SAMM_A_10 : begin 
                           SAMM_A_10<=yw[15:8];
                           SAMM_A_11<=yw[7:0];
                        end  
                `SAMM_A_11 : begin 
                           SAMM_A_11<=yw[15:8];
                           SAMM_A_12<=yw[7:0];
                        end  
                `SAMM_A_12 : begin 
                           SAMM_A_12<=yw[15:8];
                           SAMM_A_13<=yw[7:0];
                        end  
                `SAMM_A_13 : begin 
                           SAMM_A_13<=yw[15:8];
                           SAMM_A_14<=yw[7:0];
                        end  
                `SAMM_A_14 : begin 
                           SAMM_A_14<=yw[15:8];
                           SAMM_A_15<=yw[7:0];
                        end  
                `SAMM_A_15 : begin 
                           SAMM_A_15<=yw[15:8];
                           SAMM_A_16<=yw[7:0];
                        end  
                `SAMM_A_16 : begin 
                           SAMM_A_16<=yw[15:8];
                           SAMM_A_1<=yw[7:0];
                        end  
                `SM4_DATA_1 : begin 
                           SM4_DATA_1<=yw[15:8];
                           SM4_DATA_2<=yw[7:0];
                        end  
                `SM4_DATA_2 : begin 
                           SM4_DATA_2<=yw[15:8];
                           SM4_DATA_3<=yw[7:0];
                        end  
                `SM4_DATA_3 : begin 
                           SM4_DATA_3<=yw[15:8];
                           SM4_DATA_4<=yw[7:0];
                        end  
                `SM4_DATA_4 : begin 
                           SM4_DATA_4<=yw[15:8];
                           SM4_DATA_5<=yw[7:0];
                        end  
                `SM4_DATA_5 : begin 
                           SM4_DATA_5<=yw[15:8];
                           SM4_DATA_6<=yw[7:0];
                        end  
                `SM4_DATA_6 : begin 
                           SM4_DATA_6<=yw[15:8];
                           SM4_DATA_7<=yw[7:0];
                        end  
                `SM4_DATA_7 : begin 
                           SM4_DATA_7<=yw[15:8];
                           SM4_DATA_8<=yw[7:0];
                        end  
                `SM4_DATA_8 : begin 
                           SM4_DATA_8<=yw[15:8];
                           SM4_DATA_9<=yw[7:0];
                        end  
                `SM4_DATA_9 : begin 
                           SM4_DATA_9<=yw[15:8];
                           SM4_DATA_10<=yw[7:0];
                        end  
                `SM4_DATA_10 : begin 
                           SM4_DATA_10<=yw[15:8];
                           SM4_DATA_11<=yw[7:0];
                        end  
                `SM4_DATA_11 : begin 
                           SM4_DATA_11<=yw[15:8];
                           SM4_DATA_12<=yw[7:0];
                        end  
                `SM4_DATA_12 : begin 
                           SM4_DATA_12<=yw[15:8];
                           SM4_DATA_13<=yw[7:0];
                        end  
                `SM4_DATA_13 : begin 
                           SM4_DATA_13<=yw[15:8];
                           SM4_DATA_14<=yw[7:0];
                        end  
                `SM4_DATA_14 : begin 
                           SM4_DATA_14<=yw[15:8];
                           SM4_DATA_15<=yw[7:0];
                        end  
                `SM4_DATA_15 : begin 
                           SM4_DATA_15<=yw[15:8];
                           SM4_DATA_16<=yw[7:0];
                        end  
                `SM4_DATA_16 : begin 
                           SM4_DATA_16<=yw[15:8];
                           SM4_DATA_1<=yw[7:0];
                        end  

      		  	    /*updata reg>=2byte only*/
      			  endcase
      		  end
                  if (crc_outi=={crc1[3],crc1[2],crc1[1],crc1[0],SIO2I,SIO1I}) begin
              wrong[7:0]<={wrong[6:0],1'b0};
                  end
				 else begin   //如果有错误，请求重传
				   wrong[7:0]<={wrong[6:0],1'b1};
				 end
			   end
      	  end
         end
      	else begin
			 en1<=1'b0;
			 en2<=1'b0;			//zl[15]=1 写出数据
      	 if (counter==5) begin                 //在一个周期内，先移动数据
              case(zl[13:6])                     //写出两字节
                `AES_CTRL : begin 
                         ywo[6:0]<=AES_CTRL[6:0];
                         ywo[14:8]<=AES_STATUS[6:0];
                         SIO1O<=AES_CTRL[7];
								         SIO2O<=AES_STATUS[7];
								        end
                `AES_STATUS : begin 
                         ywo[6:0]<=AES_STATUS[6:0];
                         ywo[14:8]<=CORDIC_CTRL[6:0];
                         SIO1O<=AES_STATUS[7];
								         SIO2O<=CORDIC_CTRL[7];
								        end
								`CORDIC_CTRL : begin 
                         ywo[6:0]<=CORDIC_CTRL[6:0];
                         ywo[14:8]<=CORDIC_STATUS[6:0];
                         SIO1O<=CORDIC_CTRL[7];
								         SIO2O<=CORDIC_STATUS[7];
								        end
								`CORDIC_STATUS : begin 
                         ywo[6:0]<=CORDIC_STATUS[6:0];
                         ywo[14:8]<=DCT_CTRL[6:0];
                         SIO1O<=CORDIC_STATUS[7];
								         SIO2O<=DCT_CTRL[7];
								        end
                `DCT_CTRL : begin 
                         ywo[6:0]<=DCT_CTRL[6:0];
                         ywo[14:8]<=DCT_STATUS[6:0];
                         SIO1O<=DCT_CTRL[7];
								         SIO2O<=DCT_STATUS[7];
								        end
								`DCT_STATUS : begin 
                         ywo[6:0]<=DCT_STATUS[6:0];
                         ywo[14:8]<=SAMM_CTRL[6:0];
                         SIO1O<=DCT_STATUS[7];
								         SIO2O<=SAMM_CTRL[7];
								        end
								`SAMM_CTRL : begin 
                         ywo[6:0]<=SAMM_CTRL[6:0];
                         ywo[14:8]<=SAMM_STATUS[6:0];
                         SIO1O<=SAMM_CTRL[7];
								         SIO2O<=SAMM_STATUS[7];
								        end
								`SAMM_STATUS : begin 
                         ywo[6:0]<=SAMM_STATUS[6:0];
                         ywo[14:8]<=SM4_CTRL[6:0];
                         SIO1O<=SAMM_STATUS[7];
								         SIO2O<=SM4_CTRL[7];
								        end
								`SM4_CTRL : begin 
                         ywo[6:0]<=SM4_CTRL[6:0];
                         ywo[14:8]<=SM4_STATUS[6:0];
                         SIO1O<=SM4_CTRL[7];
								         SIO2O<=SM4_STATUS[7];
								        end
								`SM4_STATUS : begin 
                         ywo[6:0]<=SM4_STATUS[6:0];
                         ywo[14:8]<=AES_CTRL[6:0];
                         SIO1O<=SM4_STATUS[7];
								         SIO2O<=AES_CTRL[7];
								        end
                
                `AES_DOUT_1 : begin 
                         ywo[6:0]<=AES_DOUT_1[6:0];
                         ywo[14:8]<=AES_DOUT_2[6:0];
                         SIO1O<=AES_DOUT_1[7];
								         SIO2O<=AES_DOUT_2[7];
								        end
								`AES_DOUT_2 : begin 
                         ywo[6:0]<=AES_DOUT_2[6:0];
                         ywo[14:8]<=AES_DOUT_3[6:0];
                         SIO1O<=AES_DOUT_2[7];
								         SIO2O<=AES_DOUT_3[7];
								        end
								`AES_DOUT_3 : begin 
                         ywo[6:0]<=AES_DOUT_3[6:0];
                         ywo[14:8]<=AES_DOUT_4[6:0];
                         SIO1O<=AES_DOUT_3[7];
								         SIO2O<=AES_DOUT_4[7];
								        end
								`AES_DOUT_4 : begin 
                         ywo[6:0]<=AES_DOUT_4[6:0];
                         ywo[14:8]<=AES_DOUT_5[6:0];
                         SIO1O<=AES_DOUT_4[7];
								         SIO2O<=AES_DOUT_5[7];
								        end
								`AES_DOUT_5 : begin 
                         ywo[6:0]<=AES_DOUT_5[6:0];
                         ywo[14:8]<=AES_DOUT_6[6:0];
                         SIO1O<=AES_DOUT_5[7];
								         SIO2O<=AES_DOUT_6[7];
								        end
								`AES_DOUT_6 : begin 
                         ywo[6:0]<=AES_DOUT_6[6:0];
                         ywo[14:8]<=AES_DOUT_7[6:0];
                         SIO1O<=AES_DOUT_6[7];
								         SIO2O<=AES_DOUT_7[7];
								        end
								`AES_DOUT_7 : begin 
                         ywo[6:0]<=AES_DOUT_7[6:0];
                         ywo[14:8]<=AES_DOUT_8[6:0];
                         SIO1O<=AES_DOUT_7[7];
								         SIO2O<=AES_DOUT_8[7];
								        end
								`AES_DOUT_8 : begin 
                         ywo[6:0]<=AES_DOUT_8[6:0];
                         ywo[14:8]<=AES_DOUT_9[6:0];
                         SIO1O<=AES_DOUT_8[7];
								         SIO2O<=AES_DOUT_9[7];
								        end
								`AES_DOUT_9 : begin 
                         ywo[6:0]<=AES_DOUT_9[6:0];
                         ywo[14:8]<=AES_DOUT_10[6:0];
                         SIO1O<=AES_DOUT_9[7];
								         SIO2O<=AES_DOUT_10[7];
								        end
								`AES_DOUT_10 : begin 
                         ywo[6:0]<=AES_DOUT_10[6:0];
                         ywo[14:8]<=AES_DOUT_11[6:0];
                         SIO1O<=AES_DOUT_10[7];
								         SIO2O<=AES_DOUT_11[7];
								        end
								`AES_DOUT_11 : begin 
                         ywo[6:0]<=AES_DOUT_11[6:0];
                         ywo[14:8]<=AES_DOUT_12[6:0];
                         SIO1O<=AES_DOUT_11[7];
								         SIO2O<=AES_DOUT_12[7];
								        end
								`AES_DOUT_12 : begin 
                         ywo[6:0]<=AES_DOUT_12[6:0];
                         ywo[14:8]<=AES_DOUT_13[6:0];
                         SIO1O<=AES_DOUT_12[7];
								         SIO2O<=AES_DOUT_13[7];
								        end
								`AES_DOUT_13 : begin 
                         ywo[6:0]<=AES_DOUT_13[6:0];
                         ywo[14:8]<=AES_DOUT_14[6:0];
                         SIO1O<=AES_DOUT_13[7];
								         SIO2O<=AES_DOUT_14[7];
								        end
								`AES_DOUT_14 : begin 
                         ywo[6:0]<=AES_DOUT_14[6:0];
                         ywo[14:8]<=AES_DOUT_15[6:0];
                         SIO1O<=AES_DOUT_14[7];
								         SIO2O<=AES_DOUT_15[7];
								        end
								`AES_DOUT_15 : begin 
                         ywo[6:0]<=AES_DOUT_15[6:0];
                         ywo[14:8]<=AES_DOUT_16[6:0];
                         SIO1O<=AES_DOUT_15[7];
								         SIO2O<=AES_DOUT_16[7];
								        end
								`AES_DOUT_16 : begin 
                         ywo[6:0]<=AES_DOUT_16[6:0];
                         ywo[14:8]<=AES_DOUT_1[6:0];
                         SIO1O<=AES_DOUT_16[7];
								         SIO2O<=AES_DOUT_1[7];
								        end

								`CORDIC_XOUT_1 : begin 
                         ywo[6:0]<=CORDIC_XOUT_1[6:0];
                         ywo[14:8]<=CORDIC_XOUT_2[6:0];
                         SIO1O<=CORDIC_XOUT_1[7];
                         SIO2O<=CORDIC_XOUT_2[7];
                        end
                `CORDIC_XOUT_2 : begin 
                         ywo[6:0]<=CORDIC_XOUT_2[6:0];
                         ywo[14:8]<=CORDIC_XOUT_3[6:0];
                         SIO1O<=CORDIC_XOUT_2[7];
                         SIO2O<=CORDIC_XOUT_3[7];
                        end
                `CORDIC_XOUT_3 : begin 
                         ywo[6:0]<=CORDIC_XOUT_3[6:0];
                         ywo[14:8]<=CORDIC_XOUT_4[6:0];
                         SIO1O<=CORDIC_XOUT_3[7];
                         SIO2O<=CORDIC_XOUT_4[7];
                        end
                `CORDIC_XOUT_4 : begin 
                         ywo[6:0]<=CORDIC_XOUT_4[6:0];
                         ywo[14:8]<=CORDIC_XOUT_1[6:0];
                         SIO1O<=CORDIC_XOUT_4[7];
                         SIO2O<=CORDIC_XOUT_1[7];
                        end
                `CORDIC_YOUT_1 : begin 
                         ywo[6:0]<=CORDIC_YOUT_1[6:0];
                         ywo[14:8]<=CORDIC_YOUT_2[6:0];
                         SIO1O<=CORDIC_YOUT_1[7];
                         SIO2O<=CORDIC_YOUT_2[7];
                        end
                `CORDIC_YOUT_2 : begin 
                         ywo[6:0]<=CORDIC_YOUT_2[6:0];
                         ywo[14:8]<=CORDIC_YOUT_3[6:0];
                         SIO1O<=CORDIC_YOUT_2[7];
                         SIO2O<=CORDIC_YOUT_3[7];
                        end
                `CORDIC_YOUT_3 : begin 
                         ywo[6:0]<=CORDIC_YOUT_3[6:0];
                         ywo[14:8]<=CORDIC_YOUT_4[6:0];
                         SIO1O<=CORDIC_YOUT_3[7];
                         SIO2O<=CORDIC_YOUT_4[7];
                        end
                `CORDIC_YOUT_4 : begin 
                         ywo[6:0]<=CORDIC_YOUT_4[6:0];
                         ywo[14:8]<=CORDIC_YOUT_1[6:0];
                         SIO1O<=CORDIC_YOUT_4[7];
                         SIO2O<=CORDIC_YOUT_1[7];
                        end
                `CORDIC_ZOUT_1 : begin 
                         ywo[6:0]<=CORDIC_ZOUT_1[6:0];
                         ywo[14:8]<=CORDIC_ZOUT_2[6:0];
                         SIO1O<=CORDIC_ZOUT_1[7];
                         SIO2O<=CORDIC_ZOUT_2[7];
                        end
                `CORDIC_ZOUT_2 : begin 
                         ywo[6:0]<=CORDIC_ZOUT_2[6:0];
                         ywo[14:8]<=CORDIC_ZOUT_3[6:0];
                         SIO1O<=CORDIC_ZOUT_2[7];
                         SIO2O<=CORDIC_ZOUT_3[7];
                        end
                `CORDIC_ZOUT_3 : begin 
                         ywo[6:0]<=CORDIC_ZOUT_3[6:0];
                         ywo[14:8]<=CORDIC_ZOUT_4[6:0];
                         SIO1O<=CORDIC_ZOUT_3[7];
                         SIO2O<=CORDIC_ZOUT_4[7];
                        end
                `CORDIC_ZOUT_4 : begin 
                         ywo[6:0]<=CORDIC_ZOUT_4[6:0];
                         ywo[14:8]<=CORDIC_ZOUT_1[6:0];
                         SIO1O<=CORDIC_ZOUT_4[7];
                         SIO2O<=CORDIC_ZOUT_1[7];
                        end
                `DCT_OUT_1 : begin 
                         ywo[6:0]<=DCT_OUT_1[6:0];
                         ywo[14:8]<=DCT_OUT_2[6:0];
                         SIO1O<=DCT_OUT_1[7];
                         SIO2O<=DCT_OUT_2[7];
                        end
                `DCT_OUT_2 : begin 
                         ywo[6:0]<=DCT_OUT_2[6:0];
                         ywo[14:8]<=DCT_OUT_3[6:0];
                         SIO1O<=DCT_OUT_2[7];
                         SIO2O<=DCT_OUT_3[7];
                        end
                `DCT_OUT_3 : begin 
                         ywo[6:0]<=DCT_OUT_3[6:0];
                         ywo[14:8]<=DCT_OUT_4[6:0];
                         SIO1O<=DCT_OUT_3[7];
                         SIO2O<=DCT_OUT_4[7];
                        end
                `DCT_OUT_4 : begin 
                         ywo[6:0]<=DCT_OUT_4[6:0];
                         ywo[14:8]<=DCT_OUT_5[6:0];
                         SIO1O<=DCT_OUT_4[7];
                         SIO2O<=DCT_OUT_5[7];
                        end
                `DCT_OUT_5 : begin 
                         ywo[6:0]<=DCT_OUT_5[6:0];
                         ywo[14:8]<=DCT_OUT_6[6:0];
                         SIO1O<=DCT_OUT_5[7];
                         SIO2O<=DCT_OUT_6[7];
                        end
                `DCT_OUT_6 : begin 
                         ywo[6:0]<=DCT_OUT_6[6:0];
                         ywo[14:8]<=DCT_OUT_7[6:0];
                         SIO1O<=DCT_OUT_6[7];
                         SIO2O<=DCT_OUT_7[7];
                        end
                `DCT_OUT_7 : begin 
                         ywo[6:0]<=DCT_OUT_7[6:0];
                         ywo[14:8]<=DCT_OUT_8[6:0];
                         SIO1O<=DCT_OUT_7[7];
                         SIO2O<=DCT_OUT_8[7];
                        end
                `DCT_OUT_8 : begin 
                         ywo[6:0]<=DCT_OUT_8[6:0];
                         ywo[14:8]<=DCT_OUT_9[6:0];
                         SIO1O<=DCT_OUT_8[7];
                         SIO2O<=DCT_OUT_9[7];
                        end
                `DCT_OUT_9 : begin 
                         ywo[6:0]<=DCT_OUT_9[6:0];
                         ywo[14:8]<=DCT_OUT_10[6:0];
                         SIO1O<=DCT_OUT_9[7];
                         SIO2O<=DCT_OUT_10[7];
                        end
                `DCT_OUT_10 : begin 
                         ywo[6:0]<=DCT_OUT_10[6:0];
                         ywo[14:8]<=DCT_OUT_11[6:0];
                         SIO1O<=DCT_OUT_10[7];
                         SIO2O<=DCT_OUT_11[7];
                        end
                `DCT_OUT_11 : begin 
                         ywo[6:0]<=DCT_OUT_11[6:0];
                         ywo[14:8]<=DCT_OUT_12[6:0];
                         SIO1O<=DCT_OUT_11[7];
                         SIO2O<=DCT_OUT_12[7];
                        end
                `DCT_OUT_12 : begin 
                         ywo[6:0]<=DCT_OUT_12[6:0];
                         ywo[14:8]<=DCT_OUT_13[6:0];
                         SIO1O<=DCT_OUT_12[7];
                         SIO2O<=DCT_OUT_13[7];
                        end
                `DCT_OUT_13 : begin 
                         ywo[6:0]<=DCT_OUT_13[6:0];
                         ywo[14:8]<=DCT_OUT_14[6:0];
                         SIO1O<=DCT_OUT_13[7];
                         SIO2O<=DCT_OUT_14[7];
                        end
                `DCT_OUT_14 : begin 
                         ywo[6:0]<=DCT_OUT_14[6:0];
                         ywo[14:8]<=DCT_OUT_15[6:0];
                         SIO1O<=DCT_OUT_14[7];
                         SIO2O<=DCT_OUT_15[7];
                        end
                `DCT_OUT_15 : begin 
                         ywo[6:0]<=DCT_OUT_15[6:0];
                         ywo[14:8]<=DCT_OUT_16[6:0];
                         SIO1O<=DCT_OUT_15[7];
                         SIO2O<=DCT_OUT_16[7];
                        end
                `DCT_OUT_16 : begin 
                         ywo[6:0]<=DCT_OUT_16[6:0];
                         ywo[14:8]<=DCT_OUT_17[6:0];
                         SIO1O<=DCT_OUT_16[7];
                         SIO2O<=DCT_OUT_17[7];
                        end
                `DCT_OUT_17 : begin 
                         ywo[6:0]<=DCT_OUT_17[6:0];
                         ywo[14:8]<=DCT_OUT_18[6:0];
                         SIO1O<=DCT_OUT_17[7];
                         SIO2O<=DCT_OUT_18[7];
                        end
                `DCT_OUT_18: begin 
                         ywo[6:0]<=DCT_OUT_18[6:0];
                         ywo[14:8]<=DCT_OUT_19[6:0];
                         SIO1O<=DCT_OUT_18[7];
                         SIO2O<=DCT_OUT_19[7];
                        end
                `DCT_OUT_19 : begin 
                         ywo[6:0]<=DCT_OUT_19[6:0];
                         ywo[14:8]<=DCT_OUT_20[6:0];
                         SIO1O<=DCT_OUT_19[7];
                         SIO2O<=DCT_OUT_20[7];
                        end
                `DCT_OUT_20 : begin 
                         ywo[6:0]<=DCT_OUT_20[6:0];
                         ywo[14:8]<=DCT_OUT_21[6:0];
                         SIO1O<=DCT_OUT_20[7];
                         SIO2O<=DCT_OUT_21[7];
                        end
                `DCT_OUT_21 : begin 
                         ywo[6:0]<=DCT_OUT_21[6:0];
                         ywo[14:8]<=DCT_OUT_22[6:0];
                         SIO1O<=DCT_OUT_21[7];
                         SIO2O<=DCT_OUT_22[7];
                        end
                `DCT_OUT_22 : begin 
                         ywo[6:0]<=DCT_OUT_22[6:0];
                         ywo[14:8]<=DCT_OUT_23[6:0];
                         SIO1O<=DCT_OUT_22[7];
                         SIO2O<=DCT_OUT_23[7];
                        end
                `DCT_OUT_23 : begin 
                         ywo[6:0]<=DCT_OUT_23[6:0];
                         ywo[14:8]<=DCT_OUT_24[6:0];
                         SIO1O<=DCT_OUT_23[7];
                         SIO2O<=DCT_OUT_24[7];
                        end
                `DCT_OUT_24 : begin 
                         ywo[6:0]<=DCT_OUT_24[6:0];
                         ywo[14:8]<=DCT_OUT_25[6:0];
                         SIO1O<=DCT_OUT_24[7];
                         SIO2O<=DCT_OUT_25[7];
                        end
                `DCT_OUT_25 : begin 
                         ywo[6:0]<=DCT_OUT_25[6:0];
                         ywo[14:8]<=DCT_OUT_26[6:0];
                         SIO1O<=DCT_OUT_25[7];
                         SIO2O<=DCT_OUT_26[7];
                        end
                `DCT_OUT_26 : begin 
                         ywo[6:0]<=DCT_OUT_26[6:0];
                         ywo[14:8]<=DCT_OUT_27[6:0];
                         SIO1O<=DCT_OUT_26[7];
                         SIO2O<=DCT_OUT_27[7];
                        end
                `DCT_OUT_27 : begin 
                         ywo[6:0]<=DCT_OUT_27[6:0];
                         ywo[14:8]<=DCT_OUT_28[6:0];
                         SIO1O<=DCT_OUT_27[7];
                         SIO2O<=DCT_OUT_28[7];
                        end
                `DCT_OUT_28 : begin 
                         ywo[6:0]<=DCT_OUT_28[6:0];
                         ywo[14:8]<=DCT_OUT_29[6:0];
                         SIO1O<=DCT_OUT_28[7];
                         SIO2O<=DCT_OUT_29[7];
                        end
                `DCT_OUT_29 : begin 
                         ywo[6:0]<=DCT_OUT_29[6:0];
                         ywo[14:8]<=DCT_OUT_30[6:0];
                         SIO1O<=DCT_OUT_29[7];
                         SIO2O<=DCT_OUT_30[7];
                        end
                `DCT_OUT_30 : begin 
                         ywo[6:0]<=DCT_OUT_30[6:0];
                         ywo[14:8]<=DCT_OUT_31[6:0];
                         SIO1O<=DCT_OUT_30[7];
                         SIO2O<=DCT_OUT_31[7];
                        end
                `DCT_OUT_31 : begin 
                         ywo[6:0]<=DCT_OUT_31[6:0];
                         ywo[14:8]<=DCT_OUT_32[6:0];
                         SIO1O<=DCT_OUT_31[7];
                         SIO2O<=DCT_OUT_32[7];
                        end
                `DCT_OUT_32 : begin 
                         ywo[6:0]<=DCT_OUT_32[6:0];
                         ywo[14:8]<=DCT_OUT_33[6:0];
                         SIO1O<=DCT_OUT_32[7];
                         SIO2O<=DCT_OUT_33[7];
                        end
                `DCT_OUT_33 : begin 
                         ywo[6:0]<=DCT_OUT_33[6:0];
                         ywo[14:8]<=DCT_OUT_34[6:0];
                         SIO1O<=DCT_OUT_33[7];
                         SIO2O<=DCT_OUT_34[7];
                        end
                `DCT_OUT_34 : begin 
                         ywo[6:0]<=DCT_OUT_34[6:0];
                         ywo[14:8]<=DCT_OUT_35[6:0];
                         SIO1O<=DCT_OUT_34[7];
                         SIO2O<=DCT_OUT_35[7];
                        end
                `DCT_OUT_35 : begin 
                         ywo[6:0]<=DCT_OUT_35[6:0];
                         ywo[14:8]<=DCT_OUT_36[6:0];
                         SIO1O<=DCT_OUT_35[7];
                         SIO2O<=DCT_OUT_36[7];
                        end
                `DCT_OUT_36 : begin 
                         ywo[6:0]<=DCT_OUT_36[6:0];
                         ywo[14:8]<=DCT_OUT_37[6:0];
                         SIO1O<=DCT_OUT_36[7];
                         SIO2O<=DCT_OUT_37[7];
                        end
                `DCT_OUT_37 : begin 
                         ywo[6:0]<=DCT_OUT_37[6:0];
                         ywo[14:8]<=DCT_OUT_38[6:0];
                         SIO1O<=DCT_OUT_37[7];
                         SIO2O<=DCT_OUT_38[7];
                        end
                `DCT_OUT_38 : begin 
                         ywo[6:0]<=DCT_OUT_38[6:0];
                         ywo[14:8]<=DCT_OUT_39[6:0];
                         SIO1O<=DCT_OUT_38[7];
                         SIO2O<=DCT_OUT_39[7];
                        end
                `DCT_OUT_39 : begin 
                         ywo[6:0]<=DCT_OUT_39[6:0];
                         ywo[14:8]<=DCT_OUT_40[6:0];
                         SIO1O<=DCT_OUT_39[7];
                         SIO2O<=DCT_OUT_40[7];
                        end
                `DCT_OUT_40 : begin 
                         ywo[6:0]<=DCT_OUT_40[6:0];
                         ywo[14:8]<=DCT_OUT_41[6:0];
                         SIO1O<=DCT_OUT_40[7];
                         SIO2O<=DCT_OUT_41[7];
                        end
                `DCT_OUT_41 : begin 
                         ywo[6:0]<=DCT_OUT_41[6:0];
                         ywo[14:8]<=DCT_OUT_42[6:0];
                         SIO1O<=DCT_OUT_41[7];
                         SIO2O<=DCT_OUT_42[7];
                        end
                `DCT_OUT_42 : begin 
                         ywo[6:0]<=DCT_OUT_42[6:0];
                         ywo[14:8]<=DCT_OUT_43[6:0];
                         SIO1O<=DCT_OUT_42[7];
                         SIO2O<=DCT_OUT_43[7];
                        end
                `DCT_OUT_43 : begin 
                         ywo[6:0]<=DCT_OUT_43[6:0];
                         ywo[14:8]<=DCT_OUT_44[6:0];
                         SIO1O<=DCT_OUT_43[7];
                         SIO2O<=DCT_OUT_44[7];
                        end
                `DCT_OUT_44 : begin 
                         ywo[6:0]<=DCT_OUT_44[6:0];
                         ywo[14:8]<=DCT_OUT_45[6:0];
                         SIO1O<=DCT_OUT_44[7];
                         SIO2O<=DCT_OUT_45[7];
                        end
                `DCT_OUT_45 : begin 
                         ywo[6:0]<=DCT_OUT_45[6:0];
                         ywo[14:8]<=DCT_OUT_46[6:0];
                         SIO1O<=DCT_OUT_45[7];
                         SIO2O<=DCT_OUT_46[7];
                        end
                `DCT_OUT_46 : begin 
                         ywo[6:0]<=DCT_OUT_46[6:0];
                         ywo[14:8]<=DCT_OUT_47[6:0];
                         SIO1O<=DCT_OUT_46[7];
                         SIO2O<=DCT_OUT_47[7];
                        end
                `DCT_OUT_47 : begin 
                         ywo[6:0]<=DCT_OUT_47[6:0];
                         ywo[14:8]<=DCT_OUT_48[6:0];
                         SIO1O<=DCT_OUT_47[7];
                         SIO2O<=DCT_OUT_48[7];
                        end
                `DCT_OUT_48 : begin 
                         ywo[6:0]<=DCT_OUT_48[6:0];
                         ywo[14:8]<=DCT_OUT_49[6:0];
                         SIO1O<=DCT_OUT_48[7];
                         SIO2O<=DCT_OUT_49[7];
                        end
                `DCT_OUT_49 : begin 
                         ywo[6:0]<=DCT_OUT_49[6:0];
                         ywo[14:8]<=DCT_OUT_50[6:0];
                         SIO1O<=DCT_OUT_49[7];
                         SIO2O<=DCT_OUT_50[7];
                        end
                `DCT_OUT_50 : begin 
                         ywo[6:0]<=DCT_OUT_50[6:0];
                         ywo[14:8]<=DCT_OUT_51[6:0];
                         SIO1O<=DCT_OUT_50[7];
                         SIO2O<=DCT_OUT_51[7];
                        end
                `DCT_OUT_51 : begin 
                         ywo[6:0]<=DCT_OUT_51[6:0];
                         ywo[14:8]<=DCT_OUT_52[6:0];
                         SIO1O<=DCT_OUT_51[7];
                         SIO2O<=DCT_OUT_52[7];
                        end
                `DCT_OUT_52 : begin 
                         ywo[6:0]<=DCT_OUT_52[6:0];
                         ywo[14:8]<=DCT_OUT_53[6:0];
                         SIO1O<=DCT_OUT_52[7];
                         SIO2O<=DCT_OUT_53[7];
                        end
                `DCT_OUT_53 : begin 
                         ywo[6:0]<=DCT_OUT_53[6:0];
                         ywo[14:8]<=DCT_OUT_54[6:0];
                         SIO1O<=DCT_OUT_53[7];
                         SIO2O<=DCT_OUT_54[7];
                        end
                `DCT_OUT_54 : begin 
                         ywo[6:0]<=DCT_OUT_54[6:0];
                         ywo[14:8]<=DCT_OUT_55[6:0];
                         SIO1O<=DCT_OUT_54[7];
                         SIO2O<=DCT_OUT_55[7];
                        end
                `DCT_OUT_55 : begin 
                         ywo[6:0]<=DCT_OUT_55[6:0];
                         ywo[14:8]<=DCT_OUT_56[6:0];
                         SIO1O<=DCT_OUT_55[7];
                         SIO2O<=DCT_OUT_56[7];
                        end
                `DCT_OUT_56 : begin 
                         ywo[6:0]<=DCT_OUT_56[6:0];
                         ywo[14:8]<=DCT_OUT_57[6:0];
                         SIO1O<=DCT_OUT_56[7];
                         SIO2O<=DCT_OUT_57[7];
                        end
                `DCT_OUT_57 : begin 
                         ywo[6:0]<=DCT_OUT_57[6:0];
                         ywo[14:8]<=DCT_OUT_58[6:0];
                         SIO1O<=DCT_OUT_57[7];
                         SIO2O<=DCT_OUT_58[7];
                        end
                `DCT_OUT_58 : begin 
                         ywo[6:0]<=DCT_OUT_58[6:0];
                         ywo[14:8]<=DCT_OUT_59[6:0];
                         SIO1O<=DCT_OUT_58[7];
                         SIO2O<=DCT_OUT_59[7];
                        end
                `DCT_OUT_59 : begin 
                         ywo[6:0]<=DCT_OUT_59[6:0];
                         ywo[14:8]<=DCT_OUT_60[6:0];
                         SIO1O<=DCT_OUT_59[7];
                         SIO2O<=DCT_OUT_60[7];
                        end
                `DCT_OUT_60 : begin 
                         ywo[6:0]<=DCT_OUT_60[6:0];
                         ywo[14:8]<=DCT_OUT_61[6:0];
                         SIO1O<=DCT_OUT_60[7];
                         SIO2O<=DCT_OUT_61[7];
                        end
                `DCT_OUT_61 : begin 
                         ywo[6:0]<=DCT_OUT_61[6:0];
                         ywo[14:8]<=DCT_OUT_62[6:0];
                         SIO1O<=DCT_OUT_61[7];
                         SIO2O<=DCT_OUT_62[7];
                        end
                `DCT_OUT_62 : begin 
                         ywo[6:0]<=DCT_OUT_62[6:0];
                         ywo[14:8]<=DCT_OUT_63[6:0];
                         SIO1O<=DCT_OUT_62[7];
                         SIO2O<=DCT_OUT_63[7];
                        end
                `DCT_OUT_63 : begin 
                         ywo[6:0]<=DCT_OUT_63[6:0];
                         ywo[14:8]<=DCT_OUT_64[6:0];
                         SIO1O<=DCT_OUT_63[7];
                         SIO2O<=DCT_OUT_64[7];
                        end
                `DCT_OUT_64 : begin 
                         ywo[6:0]<=DCT_OUT_64[6:0];
                         ywo[14:8]<=DCT_OUT_1[6:0];
                         SIO1O<=DCT_OUT_64[7];
                         SIO2O<=DCT_OUT_1[7];
                        end
                `SAMM_OUT_DATA_1 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_1[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_2[6:0];
                         SIO1O<=SAMM_OUT_DATA_1[7];
                         SIO2O<=SAMM_OUT_DATA_2[7];
                        end
                `SAMM_OUT_DATA_2 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_2[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_3[6:0];
                         SIO1O<=SAMM_OUT_DATA_2[7];
                         SIO2O<=SAMM_OUT_DATA_3[7];
                        end
                `SAMM_OUT_DATA_3 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_3[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_4[6:0];
                         SIO1O<=SAMM_OUT_DATA_3[7];
                         SIO2O<=SAMM_OUT_DATA_4[7];
                        end
                `SAMM_OUT_DATA_4 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_4[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_5[6:0];
                         SIO1O<=SAMM_OUT_DATA_4[7];
                         SIO2O<=SAMM_OUT_DATA_5[7];
                        end
                `SAMM_OUT_DATA_5 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_5[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_6[6:0];
                         SIO1O<=SAMM_OUT_DATA_5[7];
                         SIO2O<=SAMM_OUT_DATA_6[7];
                        end
                `SAMM_OUT_DATA_6 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_6[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_7[6:0];
                         SIO1O<=SAMM_OUT_DATA_6[7];
                         SIO2O<=SAMM_OUT_DATA_7[7];
                        end
                `SAMM_OUT_DATA_7 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_7[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_8[6:0];
                         SIO1O<=SAMM_OUT_DATA_7[7];
                         SIO2O<=SAMM_OUT_DATA_8[7];
                        end
                `SAMM_OUT_DATA_8 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_8[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_9[6:0];
                         SIO1O<=SAMM_OUT_DATA_8[7];
                         SIO2O<=SAMM_OUT_DATA_9[7];
                        end
                `SAMM_OUT_DATA_9 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_9[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_10[6:0];
                         SIO1O<=SAMM_OUT_DATA_9[7];
                         SIO2O<=SAMM_OUT_DATA_10[7];
                        end
                `SAMM_OUT_DATA_10 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_10[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_11[6:0];
                         SIO1O<=SAMM_OUT_DATA_10[7];
                         SIO2O<=SAMM_OUT_DATA_11[7];
                        end
                `SAMM_OUT_DATA_11 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_11[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_12[6:0];
                         SIO1O<=SAMM_OUT_DATA_11[7];
                         SIO2O<=SAMM_OUT_DATA_12[7];
                        end
                `SAMM_OUT_DATA_12 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_12[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_13[6:0];
                         SIO1O<=SAMM_OUT_DATA_12[7];
                         SIO2O<=SAMM_OUT_DATA_13[7];
                        end
                `SAMM_OUT_DATA_13 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_13[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_14[6:0];
                         SIO1O<=SAMM_OUT_DATA_13[7];
                         SIO2O<=SAMM_OUT_DATA_14[7];
                        end
                `SAMM_OUT_DATA_14 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_14[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_15[6:0];
                         SIO1O<=SAMM_OUT_DATA_14[7];
                         SIO2O<=SAMM_OUT_DATA_15[7];
                        end
                `SAMM_OUT_DATA_15 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_15[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_16[6:0];
                         SIO1O<=SAMM_OUT_DATA_15[7];
                         SIO2O<=SAMM_OUT_DATA_16[7];
                        end
                `SAMM_OUT_DATA_16 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_16[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_17[6:0];
                         SIO1O<=SAMM_OUT_DATA_16[7];
                         SIO2O<=SAMM_OUT_DATA_17[7];
                        end
                `SAMM_OUT_DATA_17 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_17[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_18[6:0];
                         SIO1O<=SAMM_OUT_DATA_17[7];
                         SIO2O<=SAMM_OUT_DATA_18[7];
                        end
                `SAMM_OUT_DATA_18: begin 
                         ywo[6:0]<=SAMM_OUT_DATA_18[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_19[6:0];
                         SIO1O<=SAMM_OUT_DATA_18[7];
                         SIO2O<=SAMM_OUT_DATA_19[7];
                        end
                `SAMM_OUT_DATA_19 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_19[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_20[6:0];
                         SIO1O<=SAMM_OUT_DATA_19[7];
                         SIO2O<=SAMM_OUT_DATA_20[7];
                        end
                `SAMM_OUT_DATA_20 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_20[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_21[6:0];
                         SIO1O<=SAMM_OUT_DATA_20[7];
                         SIO2O<=SAMM_OUT_DATA_21[7];
                        end
                `SAMM_OUT_DATA_21 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_21[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_22[6:0];
                         SIO1O<=SAMM_OUT_DATA_21[7];
                         SIO2O<=SAMM_OUT_DATA_22[7];
                        end
                `SAMM_OUT_DATA_22 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_22[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_23[6:0];
                         SIO1O<=SAMM_OUT_DATA_22[7];
                         SIO2O<=SAMM_OUT_DATA_23[7];
                        end
                `SAMM_OUT_DATA_23 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_23[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_24[6:0];
                         SIO1O<=SAMM_OUT_DATA_23[7];
                         SIO2O<=SAMM_OUT_DATA_24[7];
                        end
                `SAMM_OUT_DATA_24 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_24[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_25[6:0];
                         SIO1O<=SAMM_OUT_DATA_24[7];
                         SIO2O<=SAMM_OUT_DATA_25[7];
                        end
                `SAMM_OUT_DATA_25 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_25[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_26[6:0];
                         SIO1O<=SAMM_OUT_DATA_25[7];
                         SIO2O<=SAMM_OUT_DATA_26[7];
                        end
                `SAMM_OUT_DATA_26 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_26[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_27[6:0];
                         SIO1O<=SAMM_OUT_DATA_26[7];
                         SIO2O<=SAMM_OUT_DATA_27[7];
                        end
                `SAMM_OUT_DATA_27 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_27[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_28[6:0];
                         SIO1O<=SAMM_OUT_DATA_27[7];
                         SIO2O<=SAMM_OUT_DATA_28[7];
                        end
                `SAMM_OUT_DATA_28 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_28[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_29[6:0];
                         SIO1O<=SAMM_OUT_DATA_28[7];
                         SIO2O<=SAMM_OUT_DATA_29[7];
                        end
                `SAMM_OUT_DATA_29 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_29[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_30[6:0];
                         SIO1O<=SAMM_OUT_DATA_29[7];
                         SIO2O<=SAMM_OUT_DATA_30[7];
                        end
                `SAMM_OUT_DATA_30 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_30[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_31[6:0];
                         SIO1O<=SAMM_OUT_DATA_30[7];
                         SIO2O<=SAMM_OUT_DATA_31[7];
                        end
                `SAMM_OUT_DATA_31 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_31[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_32[6:0];
                         SIO1O<=SAMM_OUT_DATA_31[7];
                         SIO2O<=SAMM_OUT_DATA_32[7];
                        end
                `SAMM_OUT_DATA_32 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_32[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_1[6:0];
                         SIO1O<=SAMM_OUT_DATA_32[7];
                         SIO2O<=SAMM_OUT_DATA_1[7];
                        end
                `SAMM_OUT_DATA_33 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_33[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_34[6:0];
                         SIO1O<=SAMM_OUT_DATA_33[7];
                         SIO2O<=SAMM_OUT_DATA_34[7];
                        end
                `SAMM_OUT_DATA_34 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_34[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_35[6:0];
                         SIO1O<=SAMM_OUT_DATA_34[7];
                         SIO2O<=SAMM_OUT_DATA_35[7];
                        end
                `SAMM_OUT_DATA_35 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_35[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_36[6:0];
                         SIO1O<=SAMM_OUT_DATA_35[7];
                         SIO2O<=SAMM_OUT_DATA_36[7];
                        end
                `SAMM_OUT_DATA_36 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_36[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_37[6:0];
                         SIO1O<=SAMM_OUT_DATA_36[7];
                         SIO2O<=SAMM_OUT_DATA_37[7];
                        end
                `SAMM_OUT_DATA_37 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_37[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_38[6:0];
                         SIO1O<=SAMM_OUT_DATA_37[7];
                         SIO2O<=SAMM_OUT_DATA_38[7];
                        end
                `SAMM_OUT_DATA_38 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_38[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_39[6:0];
                         SIO1O<=SAMM_OUT_DATA_38[7];
                         SIO2O<=SAMM_OUT_DATA_39[7];
                        end
                `SAMM_OUT_DATA_39 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_39[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_40[6:0];
                         SIO1O<=SAMM_OUT_DATA_39[7];
                         SIO2O<=SAMM_OUT_DATA_40[7];
                        end
                `SAMM_OUT_DATA_40 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_40[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_41[6:0];
                         SIO1O<=SAMM_OUT_DATA_40[7];
                         SIO2O<=SAMM_OUT_DATA_41[7];
                        end
                `SAMM_OUT_DATA_41 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_41[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_42[6:0];
                         SIO1O<=SAMM_OUT_DATA_41[7];
                         SIO2O<=SAMM_OUT_DATA_42[7];
                        end
                `SAMM_OUT_DATA_42 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_42[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_43[6:0];
                         SIO1O<=SAMM_OUT_DATA_42[7];
                         SIO2O<=SAMM_OUT_DATA_43[7];
                        end
                `SAMM_OUT_DATA_43 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_43[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_44[6:0];
                         SIO1O<=SAMM_OUT_DATA_43[7];
                         SIO2O<=SAMM_OUT_DATA_44[7];
                        end
                `SAMM_OUT_DATA_44 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_44[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_45[6:0];
                         SIO1O<=SAMM_OUT_DATA_44[7];
                         SIO2O<=SAMM_OUT_DATA_45[7];
                        end
                `SAMM_OUT_DATA_45 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_45[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_46[6:0];
                         SIO1O<=SAMM_OUT_DATA_45[7];
                         SIO2O<=SAMM_OUT_DATA_46[7];
                        end
                `SAMM_OUT_DATA_46 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_46[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_47[6:0];
                         SIO1O<=SAMM_OUT_DATA_46[7];
                         SIO2O<=SAMM_OUT_DATA_47[7];
                        end
                `SAMM_OUT_DATA_47 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_47[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_48[6:0];
                         SIO1O<=SAMM_OUT_DATA_47[7];
                         SIO2O<=SAMM_OUT_DATA_48[7];
                        end
                `SAMM_OUT_DATA_48 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_48[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_49[6:0];
                         SIO1O<=SAMM_OUT_DATA_48[7];
                         SIO2O<=SAMM_OUT_DATA_49[7];
                        end
                `SAMM_OUT_DATA_49 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_49[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_50[6:0];
                         SIO1O<=SAMM_OUT_DATA_49[7];
                         SIO2O<=SAMM_OUT_DATA_50[7];
                        end
                `SAMM_OUT_DATA_50 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_50[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_51[6:0];
                         SIO1O<=SAMM_OUT_DATA_50[7];
                         SIO2O<=SAMM_OUT_DATA_51[7];
                        end
                `SAMM_OUT_DATA_51 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_51[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_52[6:0];
                         SIO1O<=SAMM_OUT_DATA_51[7];
                         SIO2O<=SAMM_OUT_DATA_52[7];
                        end
                `SAMM_OUT_DATA_52 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_52[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_53[6:0];
                         SIO1O<=SAMM_OUT_DATA_52[7];
                         SIO2O<=SAMM_OUT_DATA_53[7];
                        end
                `SAMM_OUT_DATA_53 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_53[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_54[6:0];
                         SIO1O<=SAMM_OUT_DATA_53[7];
                         SIO2O<=SAMM_OUT_DATA_54[7];
                        end
                `SAMM_OUT_DATA_54 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_54[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_55[6:0];
                         SIO1O<=SAMM_OUT_DATA_54[7];
                         SIO2O<=SAMM_OUT_DATA_55[7];
                        end
                `SAMM_OUT_DATA_55 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_55[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_56[6:0];
                         SIO1O<=SAMM_OUT_DATA_55[7];
                         SIO2O<=SAMM_OUT_DATA_56[7];
                        end
                `SAMM_OUT_DATA_56 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_56[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_57[6:0];
                         SIO1O<=SAMM_OUT_DATA_56[7];
                         SIO2O<=SAMM_OUT_DATA_57[7];
                        end
                `SAMM_OUT_DATA_57 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_57[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_58[6:0];
                         SIO1O<=SAMM_OUT_DATA_57[7];
                         SIO2O<=SAMM_OUT_DATA_58[7];
                        end
                `SAMM_OUT_DATA_58 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_58[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_59[6:0];
                         SIO1O<=SAMM_OUT_DATA_58[7];
                         SIO2O<=SAMM_OUT_DATA_59[7];
                        end
                `SAMM_OUT_DATA_59 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_59[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_60[6:0];
                         SIO1O<=SAMM_OUT_DATA_59[7];
                         SIO2O<=SAMM_OUT_DATA_60[7];
                        end
                `SAMM_OUT_DATA_60 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_60[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_61[6:0];
                         SIO1O<=SAMM_OUT_DATA_60[7];
                         SIO2O<=SAMM_OUT_DATA_61[7];
                        end
                `SAMM_OUT_DATA_61 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_61[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_62[6:0];
                         SIO1O<=SAMM_OUT_DATA_61[7];
                         SIO2O<=SAMM_OUT_DATA_62[7];
                        end
                `SAMM_OUT_DATA_62 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_62[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_63[6:0];
                         SIO1O<=SAMM_OUT_DATA_62[7];
                         SIO2O<=SAMM_OUT_DATA_63[7];
                        end
                `SAMM_OUT_DATA_63 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_63[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_64[6:0];
                         SIO1O<=SAMM_OUT_DATA_63[7];
                         SIO2O<=SAMM_OUT_DATA_64[7];
                        end
                `SAMM_OUT_DATA_64 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_64[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_65[6:0];
                         SIO1O<=SAMM_OUT_DATA_64[7];
                         SIO2O<=SAMM_OUT_DATA_65[7];
                        end
                `SAMM_OUT_DATA_65 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_65[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_66[6:0];
                         SIO1O<=SAMM_OUT_DATA_65[7];
                         SIO2O<=SAMM_OUT_DATA_66[7];
                        end
                `SAMM_OUT_DATA_66 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_66[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_67[6:0];
                         SIO1O<=SAMM_OUT_DATA_66[7];
                         SIO2O<=SAMM_OUT_DATA_67[7];
                        end
                `SAMM_OUT_DATA_67 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_67[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_68[6:0];
                         SIO1O<=SAMM_OUT_DATA_67[7];
                         SIO2O<=SAMM_OUT_DATA_68[7];
                        end
                `SAMM_OUT_DATA_68 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_68[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_69[6:0];
                         SIO1O<=SAMM_OUT_DATA_68[7];
                         SIO2O<=SAMM_OUT_DATA_69[7];
                        end
                `SAMM_OUT_DATA_69 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_69[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_70[6:0];
                         SIO1O<=SAMM_OUT_DATA_69[7];
                         SIO2O<=SAMM_OUT_DATA_70[7];
                        end
                `SAMM_OUT_DATA_70 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_70[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_71[6:0];
                         SIO1O<=SAMM_OUT_DATA_70[7];
                         SIO2O<=SAMM_OUT_DATA_71[7];
                        end
                `SAMM_OUT_DATA_71 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_71[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_72[6:0];
                         SIO1O<=SAMM_OUT_DATA_71[7];
                         SIO2O<=SAMM_OUT_DATA_72[7];
                        end
                `SAMM_OUT_DATA_72 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_72[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_73[6:0];
                         SIO1O<=SAMM_OUT_DATA_72[7];
                         SIO2O<=SAMM_OUT_DATA_73[7];
                        end
                `SAMM_OUT_DATA_73 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_73[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_74[6:0];
                         SIO1O<=SAMM_OUT_DATA_73[7];
                         SIO2O<=SAMM_OUT_DATA_74[7];
                        end
                `SAMM_OUT_DATA_74 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_74[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_75[6:0];
                         SIO1O<=SAMM_OUT_DATA_74[7];
                         SIO2O<=SAMM_OUT_DATA_75[7];
                        end
                `SAMM_OUT_DATA_75 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_75[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_76[6:0];
                         SIO1O<=SAMM_OUT_DATA_75[7];
                         SIO2O<=SAMM_OUT_DATA_76[7];
                        end
                `SAMM_OUT_DATA_76 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_76[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_77[6:0];
                         SIO1O<=SAMM_OUT_DATA_76[7];
                         SIO2O<=SAMM_OUT_DATA_77[7];
                        end
                `SAMM_OUT_DATA_77 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_77[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_78[6:0];
                         SIO1O<=SAMM_OUT_DATA_77[7];
                         SIO2O<=SAMM_OUT_DATA_78[7];
                        end
                `SAMM_OUT_DATA_78 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_78[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_79[6:0];
                         SIO1O<=SAMM_OUT_DATA_78[7];
                         SIO2O<=SAMM_OUT_DATA_79[7];
                        end
                `SAMM_OUT_DATA_79 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_79[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_80[6:0];
                         SIO1O<=SAMM_OUT_DATA_79[7];
                         SIO2O<=SAMM_OUT_DATA_80[7];
                        end
                `SAMM_OUT_DATA_80 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_80[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_81[6:0];
                         SIO1O<=SAMM_OUT_DATA_80[7];
                         SIO2O<=SAMM_OUT_DATA_81[7];
                        end
                `SAMM_OUT_DATA_81 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_81[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_82[6:0];
                         SIO1O<=SAMM_OUT_DATA_81[7];
                         SIO2O<=SAMM_OUT_DATA_82[7];
                        end
                `SAMM_OUT_DATA_82: begin 
                         ywo[6:0]<=SAMM_OUT_DATA_82[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_83[6:0];
                         SIO1O<=SAMM_OUT_DATA_82[7];
                         SIO2O<=SAMM_OUT_DATA_83[7];
                        end
                `SAMM_OUT_DATA_83 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_83[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_84[6:0];
                         SIO1O<=SAMM_OUT_DATA_83[7];
                         SIO2O<=SAMM_OUT_DATA_84[7];
                        end
                `SAMM_OUT_DATA_84 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_84[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_85[6:0];
                         SIO1O<=SAMM_OUT_DATA_84[7];
                         SIO2O<=SAMM_OUT_DATA_85[7];
                        end
                `SAMM_OUT_DATA_85 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_85[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_86[6:0];
                         SIO1O<=SAMM_OUT_DATA_85[7];
                         SIO2O<=SAMM_OUT_DATA_86[7];
                        end
                `SAMM_OUT_DATA_86 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_86[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_87[6:0];
                         SIO1O<=SAMM_OUT_DATA_86[7];
                         SIO2O<=SAMM_OUT_DATA_87[7];
                        end
                `SAMM_OUT_DATA_87 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_87[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_88[6:0];
                         SIO1O<=SAMM_OUT_DATA_87[7];
                         SIO2O<=SAMM_OUT_DATA_88[7];
                        end
                `SAMM_OUT_DATA_88 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_88[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_89[6:0];
                         SIO1O<=SAMM_OUT_DATA_88[7];
                         SIO2O<=SAMM_OUT_DATA_89[7];
                        end
                `SAMM_OUT_DATA_89 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_89[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_90[6:0];
                         SIO1O<=SAMM_OUT_DATA_89[7];
                         SIO2O<=SAMM_OUT_DATA_90[7];
                        end
                `SAMM_OUT_DATA_90 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_90[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_91[6:0];
                         SIO1O<=SAMM_OUT_DATA_90[7];
                         SIO2O<=SAMM_OUT_DATA_91[7];
                        end
                `SAMM_OUT_DATA_91 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_91[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_92[6:0];
                         SIO1O<=SAMM_OUT_DATA_91[7];
                         SIO2O<=SAMM_OUT_DATA_92[7];
                        end
                `SAMM_OUT_DATA_92 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_92[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_93[6:0];
                         SIO1O<=SAMM_OUT_DATA_92[7];
                         SIO2O<=SAMM_OUT_DATA_93[7];
                        end
                `SAMM_OUT_DATA_93 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_93[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_94[6:0];
                         SIO1O<=SAMM_OUT_DATA_93[7];
                         SIO2O<=SAMM_OUT_DATA_94[7];
                        end
                `SAMM_OUT_DATA_94 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_94[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_95[6:0];
                         SIO1O<=SAMM_OUT_DATA_94[7];
                         SIO2O<=SAMM_OUT_DATA_95[7];
                        end
                `SAMM_OUT_DATA_95 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_95[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_96[6:0];
                         SIO1O<=SAMM_OUT_DATA_95[7];
                         SIO2O<=SAMM_OUT_DATA_96[7];
                        end
                `SAMM_OUT_DATA_96 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_96[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_97[6:0];
                         SIO1O<=SAMM_OUT_DATA_96[7];
                         SIO2O<=SAMM_OUT_DATA_97[7];
                        end
                `SAMM_OUT_DATA_97 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_97[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_98[6:0];
                         SIO1O<=SAMM_OUT_DATA_97[7];
                         SIO2O<=SAMM_OUT_DATA_98[7];
                        end
                `SAMM_OUT_DATA_98 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_98[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_99[6:0];
                         SIO1O<=SAMM_OUT_DATA_98[7];
                         SIO2O<=SAMM_OUT_DATA_99[7];
                        end
                `SAMM_OUT_DATA_99 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_99[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_100[6:0];
                         SIO1O<=SAMM_OUT_DATA_99[7];
                         SIO2O<=SAMM_OUT_DATA_100[7];
                        end
                `SAMM_OUT_DATA_100 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_100[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_101[6:0];
                         SIO1O<=SAMM_OUT_DATA_100[7];
                         SIO2O<=SAMM_OUT_DATA_101[7];
                        end
                `SAMM_OUT_DATA_101 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_101[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_102[6:0];
                         SIO1O<=SAMM_OUT_DATA_101[7];
                         SIO2O<=SAMM_OUT_DATA_102[7];
                        end
                `SAMM_OUT_DATA_102 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_102[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_103[6:0];
                         SIO1O<=SAMM_OUT_DATA_102[7];
                         SIO2O<=SAMM_OUT_DATA_103[7];
                        end
                `SAMM_OUT_DATA_103 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_103[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_104[6:0];
                         SIO1O<=SAMM_OUT_DATA_103[7];
                         SIO2O<=SAMM_OUT_DATA_104[7];
                        end
                `SAMM_OUT_DATA_104 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_104[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_105[6:0];
                         SIO1O<=SAMM_OUT_DATA_104[7];
                         SIO2O<=SAMM_OUT_DATA_105[7];
                        end
                `SAMM_OUT_DATA_105 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_105[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_106[6:0];
                         SIO1O<=SAMM_OUT_DATA_105[7];
                         SIO2O<=SAMM_OUT_DATA_106[7];
                        end
                `SAMM_OUT_DATA_106 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_106[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_107[6:0];
                         SIO1O<=SAMM_OUT_DATA_106[7];
                         SIO2O<=SAMM_OUT_DATA_107[7];
                        end
                `SAMM_OUT_DATA_107 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_107[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_108[6:0];
                         SIO1O<=SAMM_OUT_DATA_107[7];
                         SIO2O<=SAMM_OUT_DATA_108[7];
                        end
                `SAMM_OUT_DATA_108 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_108[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_109[6:0];
                         SIO1O<=SAMM_OUT_DATA_108[7];
                         SIO2O<=SAMM_OUT_DATA_109[7];
                        end
                `SAMM_OUT_DATA_109 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_109[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_110[6:0];
                         SIO1O<=SAMM_OUT_DATA_109[7];
                         SIO2O<=SAMM_OUT_DATA_110[7];
                        end
                `SAMM_OUT_DATA_110 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_110[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_111[6:0];
                         SIO1O<=SAMM_OUT_DATA_110[7];
                         SIO2O<=SAMM_OUT_DATA_111[7];
                        end
                `SAMM_OUT_DATA_111 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_111[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_112[6:0];
                         SIO1O<=SAMM_OUT_DATA_111[7];
                         SIO2O<=SAMM_OUT_DATA_112[7];
                        end
                `SAMM_OUT_DATA_112 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_112[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_113[6:0];
                         SIO1O<=SAMM_OUT_DATA_112[7];
                         SIO2O<=SAMM_OUT_DATA_113[7];
                        end
                `SAMM_OUT_DATA_113 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_113[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_114[6:0];
                         SIO1O<=SAMM_OUT_DATA_113[7];
                         SIO2O<=SAMM_OUT_DATA_114[7];
                        end
                `SAMM_OUT_DATA_114 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_114[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_115[6:0];
                         SIO1O<=SAMM_OUT_DATA_114[7];
                         SIO2O<=SAMM_OUT_DATA_115[7];
                        end
                `SAMM_OUT_DATA_115 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_115[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_116[6:0];
                         SIO1O<=SAMM_OUT_DATA_115[7];
                         SIO2O<=SAMM_OUT_DATA_116[7];
                        end
                `SAMM_OUT_DATA_116 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_116[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_117[6:0];
                         SIO1O<=SAMM_OUT_DATA_116[7];
                         SIO2O<=SAMM_OUT_DATA_117[7];
                        end
                `SAMM_OUT_DATA_117 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_117[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_118[6:0];
                         SIO1O<=SAMM_OUT_DATA_117[7];
                         SIO2O<=SAMM_OUT_DATA_118[7];
                        end
                `SAMM_OUT_DATA_118 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_118[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_119[6:0];
                         SIO1O<=SAMM_OUT_DATA_118[7];
                         SIO2O<=SAMM_OUT_DATA_119[7];
                        end
                `SAMM_OUT_DATA_119 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_119[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_120[6:0];
                         SIO1O<=SAMM_OUT_DATA_119[7];
                         SIO2O<=SAMM_OUT_DATA_120[7];
                        end
                `SAMM_OUT_DATA_120 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_120[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_121[6:0];
                         SIO1O<=SAMM_OUT_DATA_120[7];
                         SIO2O<=SAMM_OUT_DATA_121[7];
                        end
                `SAMM_OUT_DATA_121 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_121[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_122[6:0];
                         SIO1O<=SAMM_OUT_DATA_121[7];
                         SIO2O<=SAMM_OUT_DATA_122[7];
                        end
                `SAMM_OUT_DATA_122 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_122[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_123[6:0];
                         SIO1O<=SAMM_OUT_DATA_122[7];
                         SIO2O<=SAMM_OUT_DATA_123[7];
                        end
                `SAMM_OUT_DATA_123 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_123[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_124[6:0];
                         SIO1O<=SAMM_OUT_DATA_123[7];
                         SIO2O<=SAMM_OUT_DATA_124[7];
                        end
                `SAMM_OUT_DATA_124 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_124[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_125[6:0];
                         SIO1O<=SAMM_OUT_DATA_124[7];
                         SIO2O<=SAMM_OUT_DATA_125[7];
                        end
                `SAMM_OUT_DATA_125 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_125[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_126[6:0];
                         SIO1O<=SAMM_OUT_DATA_125[7];
                         SIO2O<=SAMM_OUT_DATA_126[7];
                        end
                `SAMM_OUT_DATA_126 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_126[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_127[6:0];
                         SIO1O<=SAMM_OUT_DATA_126[7];
                         SIO2O<=SAMM_OUT_DATA_127[7];
                        end
                `SAMM_OUT_DATA_127 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_127[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_128[6:0];
                         SIO1O<=SAMM_OUT_DATA_127[7];
                         SIO2O<=SAMM_OUT_DATA_128[7];
                        end
                `SAMM_OUT_DATA_128 : begin 
                         ywo[6:0]<=SAMM_OUT_DATA_128[6:0];
                         ywo[14:8]<=SAMM_OUT_DATA_1[6:0];
                         SIO1O<=SAMM_OUT_DATA_128[7];
                         SIO2O<=SAMM_OUT_DATA_1[7];
                        end
                  
                `SM4_RESULT_1 : begin 
                         ywo[6:0]<=SM4_RESULT_1[6:0];
                         ywo[14:8]<=SM4_RESULT_2[6:0];
                         SIO1O<=SM4_RESULT_1[7];
                         SIO2O<=SM4_RESULT_2[7];
                        end
                `SM4_RESULT_2 : begin 
                         ywo[6:0]<=SM4_RESULT_2[6:0];
                         ywo[14:8]<=SM4_RESULT_3[6:0];
                         SIO1O<=SM4_RESULT_2[7];
                         SIO2O<=SM4_RESULT_3[7];
                        end
                `SM4_RESULT_3 : begin 
                         ywo[6:0]<=SM4_RESULT_3[6:0];
                         ywo[14:8]<=SM4_RESULT_4[6:0];
                         SIO1O<=SM4_RESULT_3[7];
                         SIO2O<=SM4_RESULT_4[7];
                        end
                `SM4_RESULT_4 : begin 
                         ywo[6:0]<=SM4_RESULT_4[6:0];
                         ywo[14:8]<=SM4_RESULT_5[6:0];
                         SIO1O<=SM4_RESULT_4[7];
                         SIO2O<=SM4_RESULT_5[7];
                        end
                `SM4_RESULT_5 : begin 
                         ywo[6:0]<=SM4_RESULT_5[6:0];
                         ywo[14:8]<=SM4_RESULT_6[6:0];
                         SIO1O<=SM4_RESULT_5[7];
                         SIO2O<=SM4_RESULT_6[7];
                        end
                `SM4_RESULT_6 : begin 
                         ywo[6:0]<=SM4_RESULT_6[6:0];
                         ywo[14:8]<=SM4_RESULT_7[6:0];
                         SIO1O<=SM4_RESULT_6[7];
                         SIO2O<=SM4_RESULT_7[7];
                        end
                `SM4_RESULT_7 : begin 
                         ywo[6:0]<=SM4_RESULT_7[6:0];
                         ywo[14:8]<=SM4_RESULT_8[6:0];
                         SIO1O<=SM4_RESULT_7[7];
                         SIO2O<=SM4_RESULT_8[7];
                        end
                `SM4_RESULT_8 : begin 
                         ywo[6:0]<=SM4_RESULT_8[6:0];
                         ywo[14:8]<=SM4_RESULT_9[6:0];
                         SIO1O<=SM4_RESULT_8[7];
                         SIO2O<=SM4_RESULT_9[7];
                        end
                `SM4_RESULT_9 : begin 
                         ywo[6:0]<=SM4_RESULT_9[6:0];
                         ywo[14:8]<=SM4_RESULT_10[6:0];
                         SIO1O<=SM4_RESULT_9[7];
                         SIO2O<=SM4_RESULT_10[7];
                        end
                `SM4_RESULT_10 : begin 
                         ywo[6:0]<=SM4_RESULT_10[6:0];
                         ywo[14:8]<=SM4_RESULT_11[6:0];
                         SIO1O<=SM4_RESULT_10[7];
                         SIO2O<=SM4_RESULT_11[7];
                        end
                `SM4_RESULT_11 : begin 
                         ywo[6:0]<=SM4_RESULT_11[6:0];
                         ywo[14:8]<=SM4_RESULT_12[6:0];
                         SIO1O<=SM4_RESULT_11[7];
                         SIO2O<=SM4_RESULT_12[7];
                        end
                `SM4_RESULT_12 : begin 
                         ywo[6:0]<=SM4_RESULT_12[6:0];
                         ywo[14:8]<=SM4_RESULT_13[6:0];
                         SIO1O<=SM4_RESULT_12[7];
                         SIO2O<=SM4_RESULT_13[7];
                        end
                `SM4_RESULT_13 : begin 
                         ywo[6:0]<=SM4_RESULT_13[6:0];
                         ywo[14:8]<=SM4_RESULT_14[6:0];
                         SIO1O<=SM4_RESULT_13[7];
                         SIO2O<=SM4_RESULT_14[7];
                        end
                `SM4_RESULT_14 : begin 
                         ywo[6:0]<=SM4_RESULT_14[6:0];
                         ywo[14:8]<=SM4_RESULT_15[6:0];
                         SIO1O<=SM4_RESULT_14[7];
                         SIO2O<=SM4_RESULT_15[7];
                        end
                `SM4_RESULT_15 : begin 
                         ywo[6:0]<=SM4_RESULT_15[6:0];
                         ywo[14:8]<=SM4_RESULT_16[6:0];
                         SIO1O<=SM4_RESULT_15[7];
                         SIO2O<=SM4_RESULT_16[7];
                        end
                `SM4_RESULT_16 : begin 
                         ywo[6:0]<=SM4_RESULT_16[6:0];
                         ywo[14:8]<=SM4_RESULT_1[6:0];
                         SIO1O<=SM4_RESULT_16[7];
                         SIO2O<=SM4_RESULT_1[7];
                        end


              endcase             
          end 
          else if (counter<=12 && 5<counter) begin //串行输出7次
            SIO1O<=ywo[6];
            ywo[6:0]<={ywo[5:0],1'b0};
				SIO2O<=ywo[14];
				ywo[14:8]<={ywo[13:8],1'b0};
          end
			 else begin
			   if (counter==13) begin
				  enable<=1'b0;
			     SIO1O<=crc_outo[2];
				  SIO2O<=crc_outo[3];
				end
				else if(counter==14) begin
				  SIO1O<=crc_outo[2];
				  SIO2O<=crc_outo[3];
				end
				else if(counter==15) begin
				  SIO1O<=crc_outo[0];
				  SIO2O<=crc_outo[1];
				end
        end
		  end
		  if (counter <= 14) begin
		    counter<=counter+1;
		  end
		  else begin
		    counter<=0;
			 en1<=1'b1;
			 en2<=1'b1;	
		  end
      end
    end
  end
 end
 end
endmodule

module crc(
DATA2,
DATA1,
CRC_OUT,
RESET,
ENABLE,
CLK);

input [0:0] DATA1;
input [0:0] DATA2;
input RESET;
input ENABLE;
input CLK;
output [5:0] CRC_OUT;
wire RESET;
wire ENABLE;
wire CLK;
reg [5:0] CRC_OUT;
wire LFSR_N;
reg [5:0] LFSR_S;
assign LFSR_N =CRC_OUT[5]^DATA1; //data1是高位
always @(*) begin
  LFSR_S[0]=CRC_OUT[4]^DATA2;
  LFSR_S[1]=LFSR_N^CRC_OUT[4]^DATA2;
  LFSR_S[2]=CRC_OUT[0]^LFSR_N;
  LFSR_S[3]=CRC_OUT[1];
  LFSR_S[4]=CRC_OUT[2];
  LFSR_S[5]=CRC_OUT[3];
end

always @(posedge CLK or posedge RESET) begin
  if (RESET) begin
    CRC_OUT<=6'b000000;
  end
  else if (ENABLE) begin
    CRC_OUT<=LFSR_S;
  end
end

endmodule
