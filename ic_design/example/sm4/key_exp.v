`timescale 1ns / 1ps
module key_exp
    (
    clk,
    reset_n,
    sm4_enable_in,
    encdec_sel_in,
    user_key_in,
    user_key_valid_in,
    key_exp_finished_out,
    rk00_out,
    rk01_out,
    rk02_out,
    rk03_out,
    rk04_out,
    rk05_out,
    rk06_out,
    rk07_out,
    rk08_out,
    rk09_out,
    rk10_out,
    rk11_out,
    rk12_out,
    rk13_out,
    rk14_out,
    rk15_out,
    rk16_out,
    rk17_out,
    rk18_out,
    rk19_out,
    rk20_out,
    rk21_out,
    rk22_out,
    rk23_out,
    rk24_out,
    rk25_out,
    rk26_out,
    rk27_out,
    rk28_out,
    rk29_out,
    rk30_out,
    rk31_out
    );
input clk;
input reset_n;
input sm4_enable_in;
input encdec_sel_in;
input user_key_valid_in;
input [127:0] user_key_in;

output key_exp_finished_out;
output reg [31:0] rk00_out;
output reg [31:0] rk01_out;
output reg [31:0] rk02_out;
output reg [31:0] rk03_out;
output reg [31:0] rk04_out;
output reg [31:0] rk05_out;
output reg [31:0] rk06_out;
output reg [31:0] rk07_out;
output reg [31:0] rk08_out;
output reg [31:0] rk09_out;
output reg [31:0] rk10_out;
output reg [31:0] rk11_out;
output reg [31:0] rk12_out;
output reg [31:0] rk13_out;
output reg [31:0] rk14_out;
output reg [31:0] rk15_out;
output reg [31:0] rk16_out;
output reg [31:0] rk17_out;
output reg [31:0] rk18_out;
output reg [31:0] rk19_out;
output reg [31:0] rk20_out;
output reg [31:0] rk21_out;
output reg [31:0] rk22_out;
output reg [31:0] rk23_out;
output reg [31:0] rk24_out;
output reg [31:0] rk25_out;
output reg [31:0] rk26_out;
output reg [31:0] rk27_out;
output reg [31:0] rk28_out;
output reg [31:0] rk29_out;
output reg [31:0] rk30_out;
output reg [31:0] rk31_out;

localparam FK0	=	32'ha3b1bac6;
localparam FK1	=	32'h56aa3350;
localparam FK2	=	32'h677d9197;
localparam FK3	=	32'hb27022dc;

reg [1:0] current;
reg [1:0] next;
reg [4:0] count_round;
reg [4:0] reg_count_round;
wire [4:0] count_for_reg;
reg [127:0] reg_data_after_round;
reg reg_user_key_valid;
reg finished_out;
wire [31:0] cki;
wire [127:0] data_for_round;
wire [127:0] data_after_round;
wire [31:0] k0;
wire [31:0] k1;
wire [31:0] k2;
wire [31:0] k3;
wire [31:0] word0;
wire [31:0] word1;
wire [31:0] word2;
wire [31:0] word3;
wire [127:0] data_for_round_0;

assign {word0,word1,word2,word3}=user_key_in;
assign k0=word0^FK0;
assign k1=word1^FK1;
assign k2=word2^FK2;
assign k3=word3^FK3;
assign data_for_round_0={k0,k1,k2,k3};
assign key_exp_finished_out=finished_out;

always@(posedge clk or negedge reset_n)
if(~reset_n)
    reg_user_key_valid<=1'b0;
else
    reg_user_key_valid<=user_key_valid_in;
 
 `define IDLE 2'b00
 `define KEY_EXPANSION 2'b01
 
always@(posedge clk or negedge reset_n)
if(~reset_n)
    current<=`IDLE;
else if(sm4_enable_in)
    current<=next;
else
    current<=`IDLE;

always@(*)
begin
    next=`IDLE;
    case(current)
        `IDLE:
        if(sm4_enable_in&&reg_user_key_valid&&~finished_out) 
                next=`KEY_EXPANSION;
            else
                next=`IDLE;
        `KEY_EXPANSION: 
            if(reg_count_round==5'd31||finished_out)
                next=`IDLE;
            else
                next=`KEY_EXPANSION;
         default:
            next=`IDLE;
    endcase
end

always@(posedge clk or negedge reset_n)
if(~reset_n)
    count_round<=5'd0;
else if(next==`KEY_EXPANSION)
    count_round<=count_round+1'b1;
else
    count_round<=5'd0;

always@(posedge clk or negedge reset_n)
if(~reset_n)
    reg_count_round<=5'd0;
else
    reg_count_round<=count_round;

always@(posedge clk or negedge reset_n)
if(~reset_n)
    finished_out<=1'b0;
else if(reg_count_round==5'd31)//////////////////////////
    finished_out<=1'b1;

always@(posedge clk or negedge reset_n)
if(~reset_n)
    reg_data_after_round<=128'h0;
else if(current==`KEY_EXPANSION)
    reg_data_after_round<=data_after_round;
    
assign data_for_round=reg_count_round != 5'd0 ? reg_data_after_round : data_for_round_0;

get_CKi u_get_cki
    (
    .clk(clk),
    .count(count_round),
    .CKi(cki)
    );

round_key_expansion u_round_exp
    (
    .data(data_for_round),
    .cki(cki),
    .result(data_after_round)
    );
    
assign count_for_reg = encdec_sel_in == 1'b0 ? reg_count_round : 5'b11111-reg_count_round;

always@(posedge clk or negedge reset_n)
begin
if(~reset_n) begin 
rk00_out <=	   32'd0;
rk01_out <=    32'd0;
rk02_out <=    32'd0;
rk03_out <=    32'd0;
rk04_out <=    32'd0;
rk05_out <=    32'd0;
rk06_out <=    32'd0;
rk07_out <=    32'd0;
rk08_out <=    32'd0;
rk09_out <=    32'd0;
rk10_out <=    32'd0;
rk11_out <=    32'd0;
rk12_out <=    32'd0;
rk13_out <=    32'd0;
rk14_out <=    32'd0;
rk15_out <=    32'd0;
rk16_out <=    32'd0;
rk17_out <=    32'd0;
rk18_out <=    32'd0;
rk19_out <=    32'd0;
rk20_out <=    32'd0;
rk21_out <=    32'd0;
rk22_out <=    32'd0;
rk23_out <=    32'd0;
rk24_out <=    32'd0;
rk25_out <=    32'd0;
rk26_out <=    32'd0;
rk27_out <=    32'd0;
rk28_out <=    32'd0;
rk29_out <=    32'd0;
rk30_out <=    32'd0;
rk31_out <=    32'd0;
end
else
begin
rk00_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b0_0000    ?    data_after_round[31:0]    :    rk00_out;                                        
rk01_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b0_0001    ?    data_after_round[31:0]    :    rk01_out;
rk02_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b0_0010    ?    data_after_round[31:0]    :    rk02_out;
rk03_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b0_0011    ?    data_after_round[31:0]    :    rk03_out;
rk04_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b0_0100    ?    data_after_round[31:0]    :    rk04_out;
rk05_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b0_0101    ?    data_after_round[31:0]    :    rk05_out;
rk06_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b0_0110    ?    data_after_round[31:0]    :    rk06_out;
rk07_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b0_0111    ?    data_after_round[31:0]    :    rk07_out;
rk08_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b0_1000    ?    data_after_round[31:0]    :    rk08_out;
rk09_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b0_1001    ?    data_after_round[31:0]    :    rk09_out;
rk10_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b0_1010    ?    data_after_round[31:0]    :    rk10_out;
rk11_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b0_1011    ?    data_after_round[31:0]    :    rk11_out;
rk12_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b0_1100    ?    data_after_round[31:0]    :    rk12_out;
rk13_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b0_1101    ?    data_after_round[31:0]    :    rk13_out;
rk14_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b0_1110    ?    data_after_round[31:0]    :    rk14_out;
rk15_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b0_1111    ?    data_after_round[31:0]    :    rk15_out;
rk16_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b1_0000    ?    data_after_round[31:0]    :    rk16_out;
rk17_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b1_0001    ?    data_after_round[31:0]    :    rk17_out;
rk18_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b1_0010    ?    data_after_round[31:0]    :    rk18_out;
rk19_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b1_0011    ?    data_after_round[31:0]    :    rk19_out;
rk20_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b1_0100    ?    data_after_round[31:0]    :    rk20_out;
rk21_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b1_0101    ?    data_after_round[31:0]    :    rk21_out;
rk22_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b1_0110    ?    data_after_round[31:0]    :    rk22_out;
rk23_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b1_0111    ?    data_after_round[31:0]    :    rk23_out;
rk24_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b1_1000    ?    data_after_round[31:0]    :    rk24_out;
rk25_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b1_1001    ?    data_after_round[31:0]    :    rk25_out;
rk26_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b1_1010    ?    data_after_round[31:0]    :    rk26_out;
rk27_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b1_1011    ?    data_after_round[31:0]    :    rk27_out;
rk28_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b1_1100    ?    data_after_round[31:0]    :    rk28_out;
rk29_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b1_1101    ?    data_after_round[31:0]    :    rk29_out;
rk30_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b1_1110    ?    data_after_round[31:0]    :    rk30_out;
rk31_out <=    current == `KEY_EXPANSION && count_for_reg == 5'b1_1111    ?    data_after_round[31:0]    :    rk31_out;
end
end
endmodule