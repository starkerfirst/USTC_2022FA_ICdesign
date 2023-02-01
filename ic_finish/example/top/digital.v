`timescale 1ns/10ps


//----------------------------------------------------------------------------
// Module definition
//----------------------------------------------------------------------------
module digital (
    input  wire         p_clk,
    input  wire         p_rst_n,

    input  wire         p_sclk,
    input  wire         p_reset_n,
    input  wire         p_csb,
    inout  wire         p_sio1,
    inout  wire         p_sio2,

    input  wire [ 31:0] p_data_in,
    output wire [ 31:0] p_data_out,
    input  wire         p_wr,
    input  wire         p_debug_en,
    input  wire [  7:0] p_addr
    );


//----------------------------------------------------------------------------
// Internal signal declarations
//----------------------------------------------------------------------------

           // For top level.
           wire         clk;
           wire         rst_n;

           // For SPI and debug.
           wire         sclk;
           wire         reset_n;
           wire         csb;
           wire         sio1;
           wire         sio2;
           wire         sio1i;
           wire         sio1o;
           wire         sio2i;
           wire         sio2o;
           wire         en1;
           wire         en2;

           wire [ 31:0] data_in;
           wire [ 31:0] data_out;
           wire         wr;
           wire         debug_en;
           wire [  7:0] addr;

           // For AES.
           wire [127:0] AES_Din;
           wire [127:0] AES_Key;
           wire [127:0] AES_Dout;
           wire         AES_Datardy;
           wire         AES_Keyrdy;
           wire         AES_RST;
           wire         AES_EN;
           wire         AES_MODE;
           wire         AES_CLK;
           wire         AES_BSY;
           wire         AES_Dvld;
           wire [  7:0] AES_CTRL;
           wire [  7:0] AES_STATUS;

           // For CORDIC.
           wire         CORDIC_clk;
           wire         CORDIC_rst_n;
           wire         CORDIC_en;
           wire         CORDIC_mode;
           wire [ 31:0] CORDIC_x;
           wire [ 31:0] CORDIC_y;
           wire [ 31:0] CORDIC_z;
           wire [ 31:0] CORDIC_xout;
           wire [ 31:0] CORDIC_yout;
           wire [ 31:0] CORDIC_zout;
           wire         CORDIC_done;
           wire         CORDIC_mode_out;
           wire [  7:0] CORDIC_CTRL;
           wire [  7:0] CORDIC_STATUS;

           // For DCT.
           wire [511:0] DCT_data;
           wire [  3:0] DCT_number;
           wire         DCT_clk;
           wire         DCT_start;
           wire         DCT_rst_n;
           wire         DCT_ready;
           wire [511:0] DCT_out;
           wire [  7:0] DCT_CTRL;
           wire [  7:0] DCT_STATUS;

           // For SAMM.
           wire         SAMM_Clk;
           wire         SAMM_Rst_n;
           wire         SAMM_In_Dv;
           wire [127:0] SAMM_A;
           wire[1023:0] SAMM_Out_data;
           wire         SAMM_Out_Dv;
           wire [  7:0] SAMM_CTRL;
           wire [  7:0] SAMM_STATUS;

           // For SM4.
           wire         SM4_clk;
           wire         SM4_reset_n;
           wire         SM4_sm4_enable_in;
           wire         SM4_encdec_sel_in;
           wire         SM4_valid_in;
           wire [127:0] SM4_data_in;
           wire         SM4_user_key_valid_in;
           wire         SM4_ready_out;
           wire [127:0] SM4_result_out;
           wire         SM4_key_exp_ready_out;
           wire [  7:0] SM4_CTRL;
           wire [  7:0] SM4_STATUS;


//----------------------------------------------------------------------------
// Instantiations
//----------------------------------------------------------------------------

// AES.
AES_CH u_aes (
    .Din            (AES_Din        ),
    .Key            (AES_Key        ),
    .Dout           (AES_Dout       ),
    .Datardy        (AES_Datardy    ),
    .Keyrdy         (AES_Keyrdy     ),
    .RST            (AES_RST        ),
    .EN             (AES_EN         ),
    .MODE           (AES_MODE       ),
    .CLK            (AES_CLK        ),
    .BSY            (AES_BSY        ),
    .Dvld           (AES_Dvld       )
    );

assign AES_CLK      = clk;
assign AES_RST      = rst_n;
assign AES_STATUS   = {6'b0, AES_Dvld, AES_BSY};
assign AES_EN       = AES_CTRL[0];
assign AES_MODE     = AES_CTRL[1];
assign AES_Datardy  = AES_CTRL[2];
assign AES_Keyrdy   = AES_CTRL[3];


// CORDIC.
cordic1 /*#(
    .W              (32             ),
    .C              (16             )
    )*/
u_cordic (
    .clk            (CORDIC_clk     ),
    .rst_n          (CORDIC_rst_n   ),
    .en             (CORDIC_en      ),
    .mode           (CORDIC_mode    ),
    .x              (CORDIC_x       ),
    .y              (CORDIC_y       ),
    .z              (CORDIC_z       ),
    .xout           (CORDIC_xout    ),
    .yout           (CORDIC_yout    ),
    .zout           (CORDIC_zout    ),
    .done           (CORDIC_done    ),
    .mode_out       (CORDIC_mode_out)
    );

assign CORDIC_clk   = clk;
assign CORDIC_rst_n = rst_n;
assign CORDIC_STATUS= {6'b0, CORDIC_mode_out, CORDIC_done};
assign CORDIC_en    = CORDIC_CTRL[0];
assign CORDIC_mode  = CORDIC_CTRL[1];


// DCT.
dct_top/* #(
    .M              (32             )
    )*/
u_dct (
    .data           (DCT_data       ),
    .number         (DCT_number     ),
    .clk            (DCT_clk        ),
    .start          (DCT_start      ),
    .rst_n          (DCT_rst_n      ),
    .ready          (DCT_ready      ),
    .out            (DCT_out        )
    );

assign DCT_clk      = clk;
assign DCT_rst_n    = rst_n;
assign DCT_STATUS   = {7'b0, DCT_ready};
assign DCT_start    = DCT_CTRL[0];
assign DCT_number   = DCT_CTRL[7:4];


// SAMM.
samm /*#(
    .N              (8              ),
    .M              (8              )
    )*/
u_samm (
    .Clk            (SAMM_Clk       ),
    .Rst_n          (SAMM_Rst_n     ),
    .In_Dv          (SAMM_In_Dv     ),
    .A              (SAMM_A         ),
    .Out_data       (SAMM_Out_data  ),
    .Out_Dv         (SAMM_Out_Dv    )
    );

assign SAMM_Clk     = clk;
assign SAMM_Rst_n   = rst_n;
assign SAMM_STATUS  = {7'b0, SAMM_Out_Dv};
assign SAMM_In_Dv   = SAMM_CTRL[0];


// SM4.
sm4_top u_sm4 (
    .clk                (SM4_clk                ),
    .reset_n            (SM4_reset_n            ),
    .sm4_enable_in      (SM4_sm4_enable_in      ),
    .encdec_sel_in      (SM4_encdec_sel_in      ),
    .data_in            (SM4_data_in            ),
    .valid_in           (SM4_valid_in           ),
    .user_key_valid_in  (SM4_user_key_valid_in  ),
    .key_exp_ready_out  (SM4_key_exp_ready_out  ),
    .ready_out          (SM4_ready_out          ),
    .result_out         (SM4_result_out         )
    );

assign SM4_clk      = clk;
assign SM4_reset_n  = rst_n;
assign SM4_STATUS   = {6'b0, SM4_key_exp_ready_out, SM4_ready_out};
assign SM4_sm4_enable_in    = SM4_CTRL[0];
assign SM4_encdec_sel_in    = SM4_CTRL[1];
assign SM4_valid_in         = SM4_CTRL[2];
assign SM4_user_key_valid_in= SM4_CTRL[3];


// SPI.
spi u_spi (
    .clk                (sclk                   ),
    .CSB                (csb                    ),
    .SIO1I              (sio1i                  ),
    .SIO1O              (sio1o                  ),
    .SIO2I              (sio2i                  ),
    .SIO2O              (sio2o                  ),
    .en1                (en1                    ),
    .en2                (en2                    ),
    .reset_n            (reset_n                ),
    .data_in            (data_in                ),
    .data_out           (data_out               ),
    .wr                 (wr                     ),
    .debug_en           (debug_en               ),
    .addr               (addr                   ),

    .AES_CTRL           (AES_CTRL               ),
    .AES_STATUS         (AES_STATUS             ),
    .CORDIC_CTRL        (CORDIC_CTRL            ),
    .CORDIC_STATUS      (CORDIC_STATUS          ),
    .DCT_CTRL           (DCT_CTRL               ),
    .DCT_STATUS         (DCT_STATUS             ),
    .SAMM_CTRL          (SAMM_CTRL              ),
    .SAMM_STATUS        (SAMM_STATUS            ),
    .SM4_CTRL           (SM4_CTRL               ),
    .SM4_STATUS         (SM4_STATUS             ),

    .AES_DIN_1          (AES_Din       [ 0*8+:8]),
    .AES_DIN_2          (AES_Din       [ 1*8+:8]),
    .AES_DIN_3          (AES_Din       [ 2*8+:8]),
    .AES_DIN_4          (AES_Din       [ 3*8+:8]),
    .AES_DIN_5          (AES_Din       [ 4*8+:8]),
    .AES_DIN_6          (AES_Din       [ 5*8+:8]),
    .AES_DIN_7          (AES_Din       [ 6*8+:8]),
    .AES_DIN_8          (AES_Din       [ 7*8+:8]),
    .AES_DIN_9          (AES_Din       [ 8*8+:8]),
    .AES_DIN_10         (AES_Din       [ 9*8+:8]),
    .AES_DIN_11         (AES_Din       [10*8+:8]),
    .AES_DIN_12         (AES_Din       [11*8+:8]),
    .AES_DIN_13         (AES_Din       [12*8+:8]),
    .AES_DIN_14         (AES_Din       [13*8+:8]),
    .AES_DIN_15         (AES_Din       [14*8+:8]),
    .AES_DIN_16         (AES_Din       [15*8+:8]),
    .AES_KEY_1          (AES_Key       [ 0*8+:8]),
    .AES_KEY_2          (AES_Key       [ 1*8+:8]),
    .AES_KEY_3          (AES_Key       [ 2*8+:8]),
    .AES_KEY_4          (AES_Key       [ 3*8+:8]),
    .AES_KEY_5          (AES_Key       [ 4*8+:8]),
    .AES_KEY_6          (AES_Key       [ 5*8+:8]),
    .AES_KEY_7          (AES_Key       [ 6*8+:8]),
    .AES_KEY_8          (AES_Key       [ 7*8+:8]),
    .AES_KEY_9          (AES_Key       [ 8*8+:8]),
    .AES_KEY_10         (AES_Key       [ 9*8+:8]),
    .AES_KEY_11         (AES_Key       [10*8+:8]),
    .AES_KEY_12         (AES_Key       [11*8+:8]),
    .AES_KEY_13         (AES_Key       [12*8+:8]),
    .AES_KEY_14         (AES_Key       [13*8+:8]),
    .AES_KEY_15         (AES_Key       [14*8+:8]),
    .AES_KEY_16         (AES_Key       [15*8+:8]),
    .AES_DOUT_1         (AES_Dout      [ 0*8+:8]),
    .AES_DOUT_2         (AES_Dout      [ 1*8+:8]),
    .AES_DOUT_3         (AES_Dout      [ 2*8+:8]),
    .AES_DOUT_4         (AES_Dout      [ 3*8+:8]),
    .AES_DOUT_5         (AES_Dout      [ 4*8+:8]),
    .AES_DOUT_6         (AES_Dout      [ 5*8+:8]),
    .AES_DOUT_7         (AES_Dout      [ 6*8+:8]),
    .AES_DOUT_8         (AES_Dout      [ 7*8+:8]),
    .AES_DOUT_9         (AES_Dout      [ 8*8+:8]),
    .AES_DOUT_10        (AES_Dout      [ 9*8+:8]),
    .AES_DOUT_11        (AES_Dout      [10*8+:8]),
    .AES_DOUT_12        (AES_Dout      [11*8+:8]),
    .AES_DOUT_13        (AES_Dout      [12*8+:8]),
    .AES_DOUT_14        (AES_Dout      [13*8+:8]),
    .AES_DOUT_15        (AES_Dout      [14*8+:8]),
    .AES_DOUT_16        (AES_Dout      [15*8+:8]),
                                              
    .CORDIC_X_1         (CORDIC_x      [ 0*8+:8]),
    .CORDIC_X_2         (CORDIC_x      [ 1*8+:8]),
    .CORDIC_X_3         (CORDIC_x      [ 2*8+:8]),
    .CORDIC_X_4         (CORDIC_x      [ 3*8+:8]),
    .CORDIC_Y_1         (CORDIC_y      [ 0*8+:8]),
    .CORDIC_Y_2         (CORDIC_y      [ 1*8+:8]),
    .CORDIC_Y_3         (CORDIC_y      [ 2*8+:8]),
    .CORDIC_Y_4         (CORDIC_y      [ 3*8+:8]),
    .CORDIC_Z_1         (CORDIC_z      [ 0*8+:8]),
    .CORDIC_Z_2         (CORDIC_z      [ 1*8+:8]),
    .CORDIC_Z_3         (CORDIC_z      [ 2*8+:8]),
    .CORDIC_Z_4         (CORDIC_z      [ 3*8+:8]),
    .CORDIC_XOUT_1      (CORDIC_xout   [ 0*8+:8]),
    .CORDIC_XOUT_2      (CORDIC_xout   [ 1*8+:8]),
    .CORDIC_XOUT_3      (CORDIC_xout   [ 2*8+:8]),
    .CORDIC_XOUT_4      (CORDIC_xout   [ 3*8+:8]),
    .CORDIC_YOUT_1      (CORDIC_yout   [ 0*8+:8]),
    .CORDIC_YOUT_2      (CORDIC_yout   [ 1*8+:8]),
    .CORDIC_YOUT_3      (CORDIC_yout   [ 2*8+:8]),
    .CORDIC_YOUT_4      (CORDIC_yout   [ 3*8+:8]),
    .CORDIC_ZOUT_1      (CORDIC_zout   [ 0*8+:8]),
    .CORDIC_ZOUT_2      (CORDIC_zout   [ 1*8+:8]),
    .CORDIC_ZOUT_3      (CORDIC_zout   [ 2*8+:8]),
    .CORDIC_ZOUT_4      (CORDIC_zout   [ 3*8+:8]),
                                              
    .DCT_DATA_1         (DCT_data      [ 0*8+:8]),
    .DCT_DATA_2         (DCT_data      [ 1*8+:8]),
    .DCT_DATA_3         (DCT_data      [ 2*8+:8]),
    .DCT_DATA_4         (DCT_data      [ 3*8+:8]),
    .DCT_DATA_5         (DCT_data      [ 4*8+:8]),
    .DCT_DATA_6         (DCT_data      [ 5*8+:8]),
    .DCT_DATA_7         (DCT_data      [ 6*8+:8]),
    .DCT_DATA_8         (DCT_data      [ 7*8+:8]),
    .DCT_DATA_9         (DCT_data      [ 8*8+:8]),
    .DCT_DATA_10        (DCT_data      [ 9*8+:8]),
    .DCT_DATA_11        (DCT_data      [10*8+:8]),
    .DCT_DATA_12        (DCT_data      [11*8+:8]),
    .DCT_DATA_13        (DCT_data      [12*8+:8]),
    .DCT_DATA_14        (DCT_data      [13*8+:8]),
    .DCT_DATA_15        (DCT_data      [14*8+:8]),
    .DCT_DATA_16        (DCT_data      [15*8+:8]),
    .DCT_DATA_17        (DCT_data      [16*8+:8]),
    .DCT_DATA_18        (DCT_data      [17*8+:8]),
    .DCT_DATA_19        (DCT_data      [18*8+:8]),
    .DCT_DATA_20        (DCT_data      [19*8+:8]),
    .DCT_DATA_21        (DCT_data      [20*8+:8]),
    .DCT_DATA_22        (DCT_data      [21*8+:8]),
    .DCT_DATA_23        (DCT_data      [22*8+:8]),
    .DCT_DATA_24        (DCT_data      [23*8+:8]),
    .DCT_DATA_25        (DCT_data      [24*8+:8]),
    .DCT_DATA_26        (DCT_data      [25*8+:8]),
    .DCT_DATA_27        (DCT_data      [26*8+:8]),
    .DCT_DATA_28        (DCT_data      [27*8+:8]),
    .DCT_DATA_29        (DCT_data      [28*8+:8]),
    .DCT_DATA_30        (DCT_data      [29*8+:8]),
    .DCT_DATA_31        (DCT_data      [30*8+:8]),
    .DCT_DATA_32        (DCT_data      [31*8+:8]),
    .DCT_DATA_33        (DCT_data      [32*8+:8]),
    .DCT_DATA_34        (DCT_data      [33*8+:8]),
    .DCT_DATA_35        (DCT_data      [34*8+:8]),
    .DCT_DATA_36        (DCT_data      [35*8+:8]),
    .DCT_DATA_37        (DCT_data      [36*8+:8]),
    .DCT_DATA_38        (DCT_data      [37*8+:8]),
    .DCT_DATA_39        (DCT_data      [38*8+:8]),
    .DCT_DATA_40        (DCT_data      [39*8+:8]),
    .DCT_DATA_41        (DCT_data      [40*8+:8]),
    .DCT_DATA_42        (DCT_data      [41*8+:8]),
    .DCT_DATA_43        (DCT_data      [42*8+:8]),
    .DCT_DATA_44        (DCT_data      [43*8+:8]),
    .DCT_DATA_45        (DCT_data      [44*8+:8]),
    .DCT_DATA_46        (DCT_data      [45*8+:8]),
    .DCT_DATA_47        (DCT_data      [46*8+:8]),
    .DCT_DATA_48        (DCT_data      [47*8+:8]),
    .DCT_DATA_49        (DCT_data      [48*8+:8]),
    .DCT_DATA_50        (DCT_data      [49*8+:8]),
    .DCT_DATA_51        (DCT_data      [50*8+:8]),
    .DCT_DATA_52        (DCT_data      [51*8+:8]),
    .DCT_DATA_53        (DCT_data      [52*8+:8]),
    .DCT_DATA_54        (DCT_data      [53*8+:8]),
    .DCT_DATA_55        (DCT_data      [54*8+:8]),
    .DCT_DATA_56        (DCT_data      [55*8+:8]),
    .DCT_DATA_57        (DCT_data      [56*8+:8]),
    .DCT_DATA_58        (DCT_data      [57*8+:8]),
    .DCT_DATA_59        (DCT_data      [58*8+:8]),
    .DCT_DATA_60        (DCT_data      [59*8+:8]),
    .DCT_DATA_61        (DCT_data      [60*8+:8]),
    .DCT_DATA_62        (DCT_data      [61*8+:8]),
    .DCT_DATA_63        (DCT_data      [62*8+:8]),
    .DCT_DATA_64        (DCT_data      [63*8+:8]),
    .DCT_OUT_1          (DCT_out       [ 0*8+:8]),
    .DCT_OUT_2          (DCT_out       [ 1*8+:8]),
    .DCT_OUT_3          (DCT_out       [ 2*8+:8]),
    .DCT_OUT_4          (DCT_out       [ 3*8+:8]),
    .DCT_OUT_5          (DCT_out       [ 4*8+:8]),
    .DCT_OUT_6          (DCT_out       [ 5*8+:8]),
    .DCT_OUT_7          (DCT_out       [ 6*8+:8]),
    .DCT_OUT_8          (DCT_out       [ 7*8+:8]),
    .DCT_OUT_9          (DCT_out       [ 8*8+:8]),
    .DCT_OUT_10         (DCT_out       [ 9*8+:8]),
    .DCT_OUT_11         (DCT_out       [10*8+:8]),
    .DCT_OUT_12         (DCT_out       [11*8+:8]),
    .DCT_OUT_13         (DCT_out       [12*8+:8]),
    .DCT_OUT_14         (DCT_out       [13*8+:8]),
    .DCT_OUT_15         (DCT_out       [14*8+:8]),
    .DCT_OUT_16         (DCT_out       [15*8+:8]),
    .DCT_OUT_17         (DCT_out       [16*8+:8]),
    .DCT_OUT_18         (DCT_out       [17*8+:8]),
    .DCT_OUT_19         (DCT_out       [18*8+:8]),
    .DCT_OUT_20         (DCT_out       [19*8+:8]),
    .DCT_OUT_21         (DCT_out       [20*8+:8]),
    .DCT_OUT_22         (DCT_out       [21*8+:8]),
    .DCT_OUT_23         (DCT_out       [22*8+:8]),
    .DCT_OUT_24         (DCT_out       [23*8+:8]),
    .DCT_OUT_25         (DCT_out       [24*8+:8]),
    .DCT_OUT_26         (DCT_out       [25*8+:8]),
    .DCT_OUT_27         (DCT_out       [26*8+:8]),
    .DCT_OUT_28         (DCT_out       [27*8+:8]),
    .DCT_OUT_29         (DCT_out       [28*8+:8]),
    .DCT_OUT_30         (DCT_out       [29*8+:8]),
    .DCT_OUT_31         (DCT_out       [30*8+:8]),
    .DCT_OUT_32         (DCT_out       [31*8+:8]),
    .DCT_OUT_33         (DCT_out       [32*8+:8]),
    .DCT_OUT_34         (DCT_out       [33*8+:8]),
    .DCT_OUT_35         (DCT_out       [34*8+:8]),
    .DCT_OUT_36         (DCT_out       [35*8+:8]),
    .DCT_OUT_37         (DCT_out       [36*8+:8]),
    .DCT_OUT_38         (DCT_out       [37*8+:8]),
    .DCT_OUT_39         (DCT_out       [38*8+:8]),
    .DCT_OUT_40         (DCT_out       [39*8+:8]),
    .DCT_OUT_41         (DCT_out       [40*8+:8]),
    .DCT_OUT_42         (DCT_out       [41*8+:8]),
    .DCT_OUT_43         (DCT_out       [42*8+:8]),
    .DCT_OUT_44         (DCT_out       [43*8+:8]),
    .DCT_OUT_45         (DCT_out       [44*8+:8]),
    .DCT_OUT_46         (DCT_out       [45*8+:8]),
    .DCT_OUT_47         (DCT_out       [46*8+:8]),
    .DCT_OUT_48         (DCT_out       [47*8+:8]),
    .DCT_OUT_49         (DCT_out       [48*8+:8]),
    .DCT_OUT_50         (DCT_out       [49*8+:8]),
    .DCT_OUT_51         (DCT_out       [50*8+:8]),
    .DCT_OUT_52         (DCT_out       [51*8+:8]),
    .DCT_OUT_53         (DCT_out       [52*8+:8]),
    .DCT_OUT_54         (DCT_out       [53*8+:8]),
    .DCT_OUT_55         (DCT_out       [54*8+:8]),
    .DCT_OUT_56         (DCT_out       [55*8+:8]),
    .DCT_OUT_57         (DCT_out       [56*8+:8]),
    .DCT_OUT_58         (DCT_out       [57*8+:8]),
    .DCT_OUT_59         (DCT_out       [58*8+:8]),
    .DCT_OUT_60         (DCT_out       [59*8+:8]),
    .DCT_OUT_61         (DCT_out       [60*8+:8]),
    .DCT_OUT_62         (DCT_out       [61*8+:8]),
    .DCT_OUT_63         (DCT_out       [62*8+:8]),
    .DCT_OUT_64         (DCT_out       [63*8+:8]),
                                              
    .SAMM_A_1           (SAMM_A        [ 0*8+:8]),
    .SAMM_A_2           (SAMM_A        [ 1*8+:8]),
    .SAMM_A_3           (SAMM_A        [ 2*8+:8]),
    .SAMM_A_4           (SAMM_A        [ 3*8+:8]),
    .SAMM_A_5           (SAMM_A        [ 4*8+:8]),
    .SAMM_A_6           (SAMM_A        [ 5*8+:8]),
    .SAMM_A_7           (SAMM_A        [ 6*8+:8]),
    .SAMM_A_8           (SAMM_A        [ 7*8+:8]),
    .SAMM_A_9           (SAMM_A        [ 8*8+:8]),
    .SAMM_A_10          (SAMM_A        [ 9*8+:8]),
    .SAMM_A_11          (SAMM_A        [10*8+:8]),
    .SAMM_A_12          (SAMM_A        [11*8+:8]),
    .SAMM_A_13          (SAMM_A        [12*8+:8]),
    .SAMM_A_14          (SAMM_A        [13*8+:8]),
    .SAMM_A_15          (SAMM_A        [14*8+:8]),
    .SAMM_A_16          (SAMM_A        [15*8+:8]),
    .SAMM_OUT_DATA_1    (SAMM_Out_data [ 0*8+:8]),
    .SAMM_OUT_DATA_2    (SAMM_Out_data [ 1*8+:8]),
    .SAMM_OUT_DATA_3    (SAMM_Out_data [ 2*8+:8]),
    .SAMM_OUT_DATA_4    (SAMM_Out_data [ 3*8+:8]),
    .SAMM_OUT_DATA_5    (SAMM_Out_data [ 4*8+:8]),
    .SAMM_OUT_DATA_6    (SAMM_Out_data [ 5*8+:8]),
    .SAMM_OUT_DATA_7    (SAMM_Out_data [ 6*8+:8]),
    .SAMM_OUT_DATA_8    (SAMM_Out_data [ 7*8+:8]),
    .SAMM_OUT_DATA_9    (SAMM_Out_data [ 8*8+:8]),
    .SAMM_OUT_DATA_10   (SAMM_Out_data [ 9*8+:8]),
    .SAMM_OUT_DATA_11   (SAMM_Out_data [10*8+:8]),
    .SAMM_OUT_DATA_12   (SAMM_Out_data [11*8+:8]),
    .SAMM_OUT_DATA_13   (SAMM_Out_data [12*8+:8]),
    .SAMM_OUT_DATA_14   (SAMM_Out_data [13*8+:8]),
    .SAMM_OUT_DATA_15   (SAMM_Out_data [14*8+:8]),
    .SAMM_OUT_DATA_16   (SAMM_Out_data [15*8+:8]),
    .SAMM_OUT_DATA_17   (SAMM_Out_data [16*8+:8]),
    .SAMM_OUT_DATA_18   (SAMM_Out_data [17*8+:8]),
    .SAMM_OUT_DATA_19   (SAMM_Out_data [18*8+:8]),
    .SAMM_OUT_DATA_20   (SAMM_Out_data [19*8+:8]),
    .SAMM_OUT_DATA_21   (SAMM_Out_data [20*8+:8]),
    .SAMM_OUT_DATA_22   (SAMM_Out_data [21*8+:8]),
    .SAMM_OUT_DATA_23   (SAMM_Out_data [22*8+:8]),
    .SAMM_OUT_DATA_24   (SAMM_Out_data [23*8+:8]),
    .SAMM_OUT_DATA_25   (SAMM_Out_data [24*8+:8]),
    .SAMM_OUT_DATA_26   (SAMM_Out_data [25*8+:8]),
    .SAMM_OUT_DATA_27   (SAMM_Out_data [26*8+:8]),
    .SAMM_OUT_DATA_28   (SAMM_Out_data [27*8+:8]),
    .SAMM_OUT_DATA_29   (SAMM_Out_data [28*8+:8]),
    .SAMM_OUT_DATA_30   (SAMM_Out_data [29*8+:8]),
    .SAMM_OUT_DATA_31   (SAMM_Out_data [30*8+:8]),
    .SAMM_OUT_DATA_32   (SAMM_Out_data [31*8+:8]),
    .SAMM_OUT_DATA_33   (SAMM_Out_data [32*8+:8]), 
    .SAMM_OUT_DATA_34   (SAMM_Out_data [33*8+:8]),
    .SAMM_OUT_DATA_35   (SAMM_Out_data [34*8+:8]),  
    .SAMM_OUT_DATA_36   (SAMM_Out_data [35*8+:8]), 
    .SAMM_OUT_DATA_37   (SAMM_Out_data [36*8+:8]), 
    .SAMM_OUT_DATA_38   (SAMM_Out_data [37*8+:8]), 
    .SAMM_OUT_DATA_39   (SAMM_Out_data [38*8+:8]),  
    .SAMM_OUT_DATA_40   (SAMM_Out_data [39*8+:8]),  
    .SAMM_OUT_DATA_41   (SAMM_Out_data [40*8+:8]),  
    .SAMM_OUT_DATA_42   (SAMM_Out_data [41*8+:8]),  
    .SAMM_OUT_DATA_43   (SAMM_Out_data [42*8+:8]),  
    .SAMM_OUT_DATA_44   (SAMM_Out_data [43*8+:8]),  
    .SAMM_OUT_DATA_45   (SAMM_Out_data [44*8+:8]),  
    .SAMM_OUT_DATA_46   (SAMM_Out_data [45*8+:8]),  
    .SAMM_OUT_DATA_47   (SAMM_Out_data [46*8+:8]),  
    .SAMM_OUT_DATA_48   (SAMM_Out_data [47*8+:8]),  
    .SAMM_OUT_DATA_49   (SAMM_Out_data [48*8+:8]),  
    .SAMM_OUT_DATA_50   (SAMM_Out_data [49*8+:8]),  
    .SAMM_OUT_DATA_51   (SAMM_Out_data [50*8+:8]),  
    .SAMM_OUT_DATA_52   (SAMM_Out_data [51*8+:8]),  
    .SAMM_OUT_DATA_53   (SAMM_Out_data [52*8+:8]),  
    .SAMM_OUT_DATA_54   (SAMM_Out_data [53*8+:8]),  
    .SAMM_OUT_DATA_55   (SAMM_Out_data [54*8+:8]),  
    .SAMM_OUT_DATA_56   (SAMM_Out_data [55*8+:8]),  
    .SAMM_OUT_DATA_57   (SAMM_Out_data [56*8+:8]),  
    .SAMM_OUT_DATA_58   (SAMM_Out_data [57*8+:8]),  
    .SAMM_OUT_DATA_59   (SAMM_Out_data [58*8+:8]),  
    .SAMM_OUT_DATA_60   (SAMM_Out_data [59*8+:8]),  
    .SAMM_OUT_DATA_61   (SAMM_Out_data [60*8+:8]),  
    .SAMM_OUT_DATA_62   (SAMM_Out_data [61*8+:8]),  
    .SAMM_OUT_DATA_63   (SAMM_Out_data [62*8+:8]),  
    .SAMM_OUT_DATA_64   (SAMM_Out_data [63*8+:8]),  
    .SAMM_OUT_DATA_65   (SAMM_Out_data [64*8+:8]), 
    .SAMM_OUT_DATA_66   (SAMM_Out_data [65*8+:8]),  
    .SAMM_OUT_DATA_67   (SAMM_Out_data [66*8+:8]),  
    .SAMM_OUT_DATA_68   (SAMM_Out_data [67*8+:8]),  
    .SAMM_OUT_DATA_69   (SAMM_Out_data [68*8+:8]),  
    .SAMM_OUT_DATA_70   (SAMM_Out_data [69*8+:8]),  
    .SAMM_OUT_DATA_71   (SAMM_Out_data [70*8+:8]),  
    .SAMM_OUT_DATA_72   (SAMM_Out_data [71*8+:8]),  
    .SAMM_OUT_DATA_73   (SAMM_Out_data [72*8+:8]),  
    .SAMM_OUT_DATA_74   (SAMM_Out_data [73*8+:8]),  
    .SAMM_OUT_DATA_75   (SAMM_Out_data [74*8+:8]),  
    .SAMM_OUT_DATA_76   (SAMM_Out_data [75*8+:8]),  
    .SAMM_OUT_DATA_77   (SAMM_Out_data [76*8+:8]),  
    .SAMM_OUT_DATA_78   (SAMM_Out_data [77*8+:8]),  
    .SAMM_OUT_DATA_79   (SAMM_Out_data [78*8+:8]),  
    .SAMM_OUT_DATA_80   (SAMM_Out_data [79*8+:8]),  
    .SAMM_OUT_DATA_81   (SAMM_Out_data [80*8+:8]),  
    .SAMM_OUT_DATA_82   (SAMM_Out_data [81*8+:8]),  
    .SAMM_OUT_DATA_83   (SAMM_Out_data [82*8+:8]),  
    .SAMM_OUT_DATA_84   (SAMM_Out_data [83*8+:8]),  
    .SAMM_OUT_DATA_85   (SAMM_Out_data [84*8+:8]),  
    .SAMM_OUT_DATA_86   (SAMM_Out_data [85*8+:8]),  
    .SAMM_OUT_DATA_87   (SAMM_Out_data [86*8+:8]),  
    .SAMM_OUT_DATA_88   (SAMM_Out_data [87*8+:8]),  
    .SAMM_OUT_DATA_89   (SAMM_Out_data [88*8+:8]),  
    .SAMM_OUT_DATA_90   (SAMM_Out_data [89*8+:8]),  
    .SAMM_OUT_DATA_91   (SAMM_Out_data [90*8+:8]),  
    .SAMM_OUT_DATA_92   (SAMM_Out_data [91*8+:8]),  
    .SAMM_OUT_DATA_93   (SAMM_Out_data [92*8+:8]),  
    .SAMM_OUT_DATA_94   (SAMM_Out_data [93*8+:8]),  
    .SAMM_OUT_DATA_95   (SAMM_Out_data [94*8+:8]),  
    .SAMM_OUT_DATA_96   (SAMM_Out_data [95*8+:8]),  
    .SAMM_OUT_DATA_97   (SAMM_Out_data [96*8+:8]),  
    .SAMM_OUT_DATA_98   (SAMM_Out_data [97*8+:8]),  
    .SAMM_OUT_DATA_99   (SAMM_Out_data [98*8+:8]),  
    .SAMM_OUT_DATA_100  (SAMM_Out_data [99*8+:8]),  
    .SAMM_OUT_DATA_101  (SAMM_Out_data[100*8+:8]),  
    .SAMM_OUT_DATA_102  (SAMM_Out_data[101*8+:8]),  
    .SAMM_OUT_DATA_103  (SAMM_Out_data[102*8+:8]), 
    .SAMM_OUT_DATA_104  (SAMM_Out_data[103*8+:8]),
    .SAMM_OUT_DATA_105  (SAMM_Out_data[104*8+:8]),  
    .SAMM_OUT_DATA_106  (SAMM_Out_data[105*8+:8]),  
    .SAMM_OUT_DATA_107  (SAMM_Out_data[106*8+:8]), 
    .SAMM_OUT_DATA_108  (SAMM_Out_data[107*8+:8]), 
    .SAMM_OUT_DATA_109  (SAMM_Out_data[108*8+:8]), 
    .SAMM_OUT_DATA_110  (SAMM_Out_data[109*8+:8]), 
    .SAMM_OUT_DATA_111  (SAMM_Out_data[110*8+:8]), 
    .SAMM_OUT_DATA_112  (SAMM_Out_data[111*8+:8]), 
    .SAMM_OUT_DATA_113  (SAMM_Out_data[112*8+:8]), 
    .SAMM_OUT_DATA_114  (SAMM_Out_data[113*8+:8]), 
    .SAMM_OUT_DATA_115  (SAMM_Out_data[114*8+:8]), 
    .SAMM_OUT_DATA_116  (SAMM_Out_data[115*8+:8]), 
    .SAMM_OUT_DATA_117  (SAMM_Out_data[116*8+:8]), 
    .SAMM_OUT_DATA_118  (SAMM_Out_data[117*8+:8]), 
    .SAMM_OUT_DATA_119  (SAMM_Out_data[118*8+:8]), 
    .SAMM_OUT_DATA_120  (SAMM_Out_data[119*8+:8]), 
    .SAMM_OUT_DATA_121  (SAMM_Out_data[120*8+:8]), 
    .SAMM_OUT_DATA_122  (SAMM_Out_data[121*8+:8]), 
    .SAMM_OUT_DATA_123  (SAMM_Out_data[122*8+:8]), 
    .SAMM_OUT_DATA_124  (SAMM_Out_data[123*8+:8]), 
    .SAMM_OUT_DATA_125  (SAMM_Out_data[124*8+:8]), 
    .SAMM_OUT_DATA_126  (SAMM_Out_data[125*8+:8]), 
    .SAMM_OUT_DATA_127  (SAMM_Out_data[126*8+:8]), 
    .SAMM_OUT_DATA_128  (SAMM_Out_data[127*8+:8]), 
                                              
    .SM4_DATA_1         (SM4_data_in   [ 0*8+:8]),
    .SM4_DATA_2         (SM4_data_in   [ 1*8+:8]),
    .SM4_DATA_3         (SM4_data_in   [ 2*8+:8]),
    .SM4_DATA_4         (SM4_data_in   [ 3*8+:8]),
    .SM4_DATA_5         (SM4_data_in   [ 4*8+:8]),
    .SM4_DATA_6         (SM4_data_in   [ 5*8+:8]),
    .SM4_DATA_7         (SM4_data_in   [ 6*8+:8]),
    .SM4_DATA_8         (SM4_data_in   [ 7*8+:8]),
    .SM4_DATA_9         (SM4_data_in   [ 8*8+:8]),
    .SM4_DATA_10        (SM4_data_in   [ 9*8+:8]),
    .SM4_DATA_11        (SM4_data_in   [10*8+:8]),
    .SM4_DATA_12        (SM4_data_in   [11*8+:8]),
    .SM4_DATA_13        (SM4_data_in   [12*8+:8]),
    .SM4_DATA_14        (SM4_data_in   [13*8+:8]),
    .SM4_DATA_15        (SM4_data_in   [14*8+:8]),
    .SM4_DATA_16        (SM4_data_in   [15*8+:8]),
    .SM4_RESULT_1       (SM4_result_out[ 0*8+:8]),
    .SM4_RESULT_2       (SM4_result_out[ 1*8+:8]),
    .SM4_RESULT_3       (SM4_result_out[ 2*8+:8]),
    .SM4_RESULT_4       (SM4_result_out[ 3*8+:8]),
    .SM4_RESULT_5       (SM4_result_out[ 4*8+:8]),
    .SM4_RESULT_6       (SM4_result_out[ 5*8+:8]),
    .SM4_RESULT_7       (SM4_result_out[ 6*8+:8]),
    .SM4_RESULT_8       (SM4_result_out[ 7*8+:8]),
    .SM4_RESULT_9       (SM4_result_out[ 8*8+:8]),
    .SM4_RESULT_10      (SM4_result_out[ 9*8+:8]),
    .SM4_RESULT_11      (SM4_result_out[10*8+:8]),
    .SM4_RESULT_12      (SM4_result_out[11*8+:8]),
    .SM4_RESULT_13      (SM4_result_out[12*8+:8]),
    .SM4_RESULT_14      (SM4_result_out[13*8+:8]),
    .SM4_RESULT_15      (SM4_result_out[14*8+:8]),
    .SM4_RESULT_16      (SM4_result_out[15*8+:8])
	);


// IO cells.
PDDW0208SCDG u_pad_clk         (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(clk         ), .PAD(p_clk         ));
PDUW0208SCDG u_pad_rst_n       (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(rst_n       ), .PAD(p_rst_n       ));

PDDW0208SCDG u_pad_sclk        (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(sclk        ), .PAD(p_sclk        ));
PDUW0208SCDG u_pad_reset_n     (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(reset_n     ), .PAD(p_reset_n     ));
PDDW0208CDG  u_pad_csb         (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(csb         ), .PAD(p_csb         ));
PDDW0208CDG  u_pad_sio1        (.DS(1'b1), .OEN(en1 ), .PE(1'b1), .IE(en1 ), .I(sio1o), .C(sio1i  ), .PAD(p_sio1        ));
PDDW0208CDG  u_pad_sio2        (.DS(1'b1), .OEN(en2 ), .PE(1'b1), .IE(en2 ), .I(sio2o), .C(sio2i  ), .PAD(p_sio2        ));

PDDW0208CDG  u_pad_debug_en    (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(debug_en    ), .PAD(p_debug_en    ));
PDDW0208CDG  u_pad_wr          (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(wr          ), .PAD(p_wr          ));

PDDW0208CDG  u_pad_addr_0      (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(addr    [ 0]), .PAD(p_addr    [ 0]));
PDDW0208CDG  u_pad_addr_1      (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(addr    [ 1]), .PAD(p_addr    [ 1]));
PDDW0208CDG  u_pad_addr_2      (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(addr    [ 2]), .PAD(p_addr    [ 2]));
PDDW0208CDG  u_pad_addr_3      (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(addr    [ 3]), .PAD(p_addr    [ 3]));
PDDW0208CDG  u_pad_addr_4      (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(addr    [ 4]), .PAD(p_addr    [ 4]));
PDDW0208CDG  u_pad_addr_5      (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(addr    [ 5]), .PAD(p_addr    [ 5]));
PDDW0208CDG  u_pad_addr_6      (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(addr    [ 6]), .PAD(p_addr    [ 6]));
PDDW0208CDG  u_pad_addr_7      (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(addr    [ 7]), .PAD(p_addr    [ 7]));

PDDW0208CDG  u_pad_data_in_0   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [ 0]), .PAD(p_data_in [ 0]));
PDDW0208CDG  u_pad_data_in_1   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [ 1]), .PAD(p_data_in [ 1]));
PDDW0208CDG  u_pad_data_in_2   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [ 2]), .PAD(p_data_in [ 2]));
PDDW0208CDG  u_pad_data_in_3   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [ 3]), .PAD(p_data_in [ 3]));
PDDW0208CDG  u_pad_data_in_4   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [ 4]), .PAD(p_data_in [ 4]));
PDDW0208CDG  u_pad_data_in_5   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [ 5]), .PAD(p_data_in [ 5]));
PDDW0208CDG  u_pad_data_in_6   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [ 6]), .PAD(p_data_in [ 6]));
PDDW0208CDG  u_pad_data_in_7   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [ 7]), .PAD(p_data_in [ 7]));
PDDW0208CDG  u_pad_data_in_8   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [ 8]), .PAD(p_data_in [ 8]));
PDDW0208CDG  u_pad_data_in_9   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [ 9]), .PAD(p_data_in [ 9]));
PDDW0208CDG  u_pad_data_in_10  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [10]), .PAD(p_data_in [10]));
PDDW0208CDG  u_pad_data_in_11  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [11]), .PAD(p_data_in [11]));
PDDW0208CDG  u_pad_data_in_12  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [12]), .PAD(p_data_in [12]));
PDDW0208CDG  u_pad_data_in_13  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [13]), .PAD(p_data_in [13]));
PDDW0208CDG  u_pad_data_in_14  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [14]), .PAD(p_data_in [14]));
PDDW0208CDG  u_pad_data_in_15  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [15]), .PAD(p_data_in [15]));
PDDW0208CDG  u_pad_data_in_16  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [16]), .PAD(p_data_in [16]));
PDDW0208CDG  u_pad_data_in_17  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [17]), .PAD(p_data_in [17]));
PDDW0208CDG  u_pad_data_in_18  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [18]), .PAD(p_data_in [18]));
PDDW0208CDG  u_pad_data_in_19  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [19]), .PAD(p_data_in [19]));
PDDW0208CDG  u_pad_data_in_20  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [20]), .PAD(p_data_in [20]));
PDDW0208CDG  u_pad_data_in_21  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [21]), .PAD(p_data_in [21]));
PDDW0208CDG  u_pad_data_in_22  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [22]), .PAD(p_data_in [22]));
PDDW0208CDG  u_pad_data_in_23  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [23]), .PAD(p_data_in [23]));
PDDW0208CDG  u_pad_data_in_24  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [24]), .PAD(p_data_in [24]));
PDDW0208CDG  u_pad_data_in_25  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [25]), .PAD(p_data_in [25]));
PDDW0208CDG  u_pad_data_in_26  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [26]), .PAD(p_data_in [26]));
PDDW0208CDG  u_pad_data_in_27  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [27]), .PAD(p_data_in [27]));
PDDW0208CDG  u_pad_data_in_28  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [28]), .PAD(p_data_in [28]));
PDDW0208CDG  u_pad_data_in_29  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [29]), .PAD(p_data_in [29]));
PDDW0208CDG  u_pad_data_in_30  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [30]), .PAD(p_data_in [30]));
PDDW0208CDG  u_pad_data_in_31  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(data_in [31]), .PAD(p_data_in [31]));

PDDW0208CDG  u_pad_data_out_0  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[ 0]), .PAD(p_data_out[ 0]));
PDDW0208CDG  u_pad_data_out_1  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[ 1]), .PAD(p_data_out[ 1]));
PDDW0208CDG  u_pad_data_out_2  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[ 2]), .PAD(p_data_out[ 2]));
PDDW0208CDG  u_pad_data_out_3  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[ 3]), .PAD(p_data_out[ 3]));
PDDW0208CDG  u_pad_data_out_4  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[ 4]), .PAD(p_data_out[ 4]));
PDDW0208CDG  u_pad_data_out_5  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[ 5]), .PAD(p_data_out[ 5]));
PDDW0208CDG  u_pad_data_out_6  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[ 6]), .PAD(p_data_out[ 6]));
PDDW0208CDG  u_pad_data_out_7  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[ 7]), .PAD(p_data_out[ 7]));
PDDW0208CDG  u_pad_data_out_8  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[ 8]), .PAD(p_data_out[ 8]));
PDDW0208CDG  u_pad_data_out_9  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[ 9]), .PAD(p_data_out[ 9]));
PDDW0208CDG  u_pad_data_out_10 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[10]), .PAD(p_data_out[10]));
PDDW0208CDG  u_pad_data_out_11 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[11]), .PAD(p_data_out[11]));
PDDW0208CDG  u_pad_data_out_12 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[12]), .PAD(p_data_out[12]));
PDDW0208CDG  u_pad_data_out_13 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[13]), .PAD(p_data_out[13]));
PDDW0208CDG  u_pad_data_out_14 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[14]), .PAD(p_data_out[14]));
PDDW0208CDG  u_pad_data_out_15 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[15]), .PAD(p_data_out[15]));
PDDW0208CDG  u_pad_data_out_16 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[16]), .PAD(p_data_out[16]));
PDDW0208CDG  u_pad_data_out_17 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[17]), .PAD(p_data_out[17]));
PDDW0208CDG  u_pad_data_out_18 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[18]), .PAD(p_data_out[18]));
PDDW0208CDG  u_pad_data_out_19 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[19]), .PAD(p_data_out[19]));
PDDW0208CDG  u_pad_data_out_20 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[20]), .PAD(p_data_out[20]));
PDDW0208CDG  u_pad_data_out_21 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[21]), .PAD(p_data_out[21]));
PDDW0208CDG  u_pad_data_out_22 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[22]), .PAD(p_data_out[22]));
PDDW0208CDG  u_pad_data_out_23 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[23]), .PAD(p_data_out[23]));
PDDW0208CDG  u_pad_data_out_24 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[24]), .PAD(p_data_out[24]));
PDDW0208CDG  u_pad_data_out_25 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[25]), .PAD(p_data_out[25]));
PDDW0208CDG  u_pad_data_out_26 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[26]), .PAD(p_data_out[26]));
PDDW0208CDG  u_pad_data_out_27 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[27]), .PAD(p_data_out[27]));
PDDW0208CDG  u_pad_data_out_28 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[28]), .PAD(p_data_out[28]));
PDDW0208CDG  u_pad_data_out_29 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[29]), .PAD(p_data_out[29]));
PDDW0208CDG  u_pad_data_out_30 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[30]), .PAD(p_data_out[30]));
PDDW0208CDG  u_pad_data_out_31 (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(data_out[31]), .PAD(p_data_out[31]));


//----------------------------------------------------------------------------
// The End
//----------------------------------------------------------------------------
endmodule
