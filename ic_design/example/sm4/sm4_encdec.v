`timescale 1ns / 1ps
module sm4_encdec(
    clk,
    reset_n,
    sm4_enable_in,
    key_exp_ready_in,
    valid_in,
    data_in,
    rk_00_in,
    rk_01_in,
    rk_02_in,
    rk_03_in,
    rk_04_in,
    rk_05_in,
    rk_06_in,
    rk_07_in,
    rk_08_in,
    rk_09_in,
    rk_10_in,
    rk_11_in,
    rk_12_in,
    rk_13_in,
    rk_14_in,
    rk_15_in,
    rk_16_in,
    rk_17_in,
    rk_18_in,
    rk_19_in,
    rk_20_in,
    rk_21_in,
    rk_22_in,
    rk_23_in,
    rk_24_in,
    rk_25_in,
    rk_26_in,
    rk_27_in,
    rk_28_in,
    rk_29_in,
    rk_30_in,
    rk_31_in,
    ready_out,
    result_out
    );
input clk;
input reset_n;
input sm4_enable_in;
input key_exp_ready_in;
input valid_in;
input [127:0] data_in;

input [31:0] rk_00_in;
input [31:0] rk_01_in;
input [31:0] rk_02_in;
input [31:0] rk_03_in;
input [31:0] rk_04_in;
input [31:0] rk_05_in;
input [31:0] rk_06_in;
input [31:0] rk_07_in;
input [31:0] rk_08_in;
input [31:0] rk_09_in;
input [31:0] rk_10_in;
input [31:0] rk_11_in;
input [31:0] rk_12_in;
input [31:0] rk_13_in;
input [31:0] rk_14_in;
input [31:0] rk_15_in;
input [31:0] rk_16_in;
input [31:0] rk_17_in;
input [31:0] rk_18_in;
input [31:0] rk_19_in;
input [31:0] rk_20_in;
input [31:0] rk_21_in;
input [31:0] rk_22_in;
input [31:0] rk_23_in;
input [31:0] rk_24_in;
input [31:0] rk_25_in;
input [31:0] rk_26_in;
input [31:0] rk_27_in;
input [31:0] rk_28_in;
input [31:0] rk_29_in;
input [31:0] rk_30_in;
input [31:0] rk_31_in;

output [127:0] result_out;
output ready_out;
wire done;

reg [127:0] result_out;
reg [31:0] reg_tmp;
wire [31:0] word0;
wire [31:0] word1;
wire [31:0] word2;
wire [31:0] word3;
wire [127:0] reserved_result;
reg [1:0] current;
reg [1:0] next;
reg ready_out;

`define IDLE 2'b00
`define WAITING_FOR_KEY 2'b01
`define ENCRYPTION 2'b10

always@(posedge clk or negedge reset_n)
if(~reset_n)
    current<=`IDLE;
else if(sm4_enable_in)
    current<=next;
    
always@(*)
    begin
        next=`IDLE;
        case(current)
            `IDLE:
                if(sm4_enable_in)
                    next=`WAITING_FOR_KEY;
                else 
                    next=`IDLE;
            `WAITING_FOR_KEY:
                if(key_exp_ready_in)
                    next=`ENCRYPTION;
                else
                    next=`WAITING_FOR_KEY;
            `ENCRYPTION:
                if(sm4_enable_in)
                    next=`ENCRYPTION;
                else
                    next=`IDLE;
            default:
                next=`IDLE;
         endcase
    end
always@(posedge clk or negedge reset_n)
if(~reset_n)
    reg_tmp<=32'b0;
else if(current==`ENCRYPTION&&valid_in)
    reg_tmp<={reg_tmp[30:0],1'b1};
else 
    reg_tmp<={reg_tmp[30:0],1'b0};       

reg [127:0] data;
reg [31:0]  rk;
wire [127:0] result;

always@(posedge clk)
    begin
        if(reg_tmp[30])     rk<=rk_31_in;
        else if(reg_tmp[29]) rk<=rk_30_in; 
        else if(reg_tmp[28]) rk<=rk_29_in;
        else if(reg_tmp[27]) rk<=rk_28_in;  
        else if(reg_tmp[26]) rk<=rk_27_in;
        else if(reg_tmp[25]) rk<=rk_26_in; 
        else if(reg_tmp[24]) rk<=rk_25_in;
        else if(reg_tmp[23]) rk<=rk_24_in;  
        else if(reg_tmp[22]) rk<=rk_23_in;
        else if(reg_tmp[21]) rk<=rk_22_in; 
        else if(reg_tmp[20]) rk<=rk_21_in;
        else if(reg_tmp[19]) rk<=rk_20_in;  
        else if(reg_tmp[18]) rk<=rk_19_in;
        else if(reg_tmp[17]) rk<=rk_18_in; 
        else if(reg_tmp[16]) rk<=rk_17_in;  
        else if(reg_tmp[15]) rk<=rk_16_in;
        else if(reg_tmp[14]) rk<=rk_15_in; 
        else if(reg_tmp[13]) rk<=rk_14_in;
        else if(reg_tmp[12]) rk<=rk_13_in;  
        else if(reg_tmp[11]) rk<=rk_12_in;
        else if(reg_tmp[10]) rk<=rk_11_in; 
        else if(reg_tmp[9]) rk<=rk_10_in;
        else if(reg_tmp[8]) rk<=rk_09_in;  
        else if(reg_tmp[7]) rk<=rk_08_in;
        else if(reg_tmp[6]) rk<=rk_07_in; 
        else if(reg_tmp[5]) rk<=rk_06_in;
        else if(reg_tmp[4]) rk<=rk_05_in;  
        else if(reg_tmp[3]) rk<=rk_04_in;
        else if(reg_tmp[2]) rk<=rk_03_in; 
        else if(reg_tmp[1]) rk<= rk_02_in;
        else if(reg_tmp[0]) rk<=rk_01_in; 
        else  rk<=rk_00_in;
    end


    always@(posedge clk)
    if(reg_tmp[0]) 
        data<=result;
    else 
        data<=data_in;

    always@(posedge clk or negedge reset_n) 
    if(~reset_n)
        ready_out<=1'b0;
    else if(reg_tmp[31])
        ready_out<=1'b1;
    else ready_out<=1'b0;

    round_for_encdec u_00 ( .data(data      ), .round_key(rk), .result(result) );
    
    always@(posedge clk or negedge reset_n) 
        if(!reset_n) 
            result_out    <= 128'h0; 
        else if(reg_tmp[31]&~done)
            result_out    <= reserved_result;

    assign done=ready_out;
    assign {word0,word1,word2,word3}=result;
    assign reserved_result={word3,word2,word1,word0}; 
endmodule
