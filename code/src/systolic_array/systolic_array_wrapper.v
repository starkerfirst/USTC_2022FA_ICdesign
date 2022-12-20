`timescale 1ns/1ps
module systolic_array_wrapper //脉动阵列封装
(
	input clk,
	input rstn,
	input OutputSign,
	input load, //load使能信号
	input shift, //shift使能信号
	
	//测试使用
	input [2:0] id_A_0, 
	input [2:0] id_A_1, 
	input [2:0] id_A_2, 
	input [2:0] id_A_3, 
	
	//load_B的位置
	input [2:0] id_B_0, 
	input [2:0] id_B_1, 
	input [2:0] id_B_2, 
	input [2:0] id_B_3,
	
	input [7:0] shift_in_A_0,
	input [7:0] shift_in_A_1,
	input [7:0] shift_in_A_2,
	input [7:0] shift_in_A_3,
	
	input [7:0] shift_in_B_0,
	input [7:0] shift_in_B_1,
	input [7:0] shift_in_B_2,
	input [7:0] shift_in_B_3,
	
	output [7:0] shift_out_0,
	output [7:0] shift_out_1,
	output [7:0] shift_out_2,
	output [7:0] shift_out_3
);

wire [7:0] row_0;
wire [7:0] row_1;
wire [7:0] row_2;
wire [7:0] row_3;

wire [7:0] col_0;
wire [7:0] col_1;
wire [7:0] col_2;
wire [7:0] col_3;

PEarray core
(
	.rstn(rstn),
    .input_row_0(row_0),
    .input_row_1(row_1),
	.input_row_2(row_2),
	.input_row_3(row_3),
	
	.input_col_0(col_0),
	.input_col_1(col_1),
	.input_col_2(col_2),
	.input_col_3(col_3),
	
	.output_row_0(shift_out_0),
	.output_row_1(shift_out_1),	
	.output_row_2(shift_out_2),
	.output_row_3(shift_out_3),

    .clk(clk),
    .OutputSign(OutputSign)  //pe计算结果移位输出使能信号
);


shift_buffer A_0
(
	.rstn(rstn),
	.clk(clk),
	
	.load(load), //load使能信号
	.shift(shift), //shift使能信号
	.id(id_A_0), //load的位置
	
	.shift_in(shift_in_A_0), 
	.shift_out(row_0)
);

shift_buffer A_1
(
	.rstn(rstn),
	.clk(clk),
	
	.load(load), //load使能信号
	.shift(shift), //shift使能信号
	.id(id_A_1), //load的位置
	
	.shift_in(shift_in_A_1), 
	.shift_out(row_1)
);

shift_buffer A_2
(
	.rstn(rstn),
	.clk(clk),
	
	.load(load), //load使能信号
	.shift(shift), //shift使能信号
	.id(id_A_2), //load的位置
	
	.shift_in(shift_in_A_2), 
	.shift_out(row_2)
);

shift_buffer A_3
(
	.rstn(rstn),
	.clk(clk),
	
	.load(load), //load使能信号
	.shift(shift), //shift使能信号
	.id(id_A_3), //load的位置
	
	.shift_in(shift_in_A_3), 
	.shift_out(row_3)
);


shift_buffer B_0
(
	.rstn(rstn),
	.clk(clk),
	
	.load(load), //load使能信号
	.shift(shift), //shift使能信号
	.id(id_B_0), //load的位置
	
	.shift_in(shift_in_B_0), 
	.shift_out(col_0)
);

shift_buffer B_1
(
	.rstn(rstn),
	.clk(clk),
	
	.load(load), //load使能信号
	.shift(shift), //shift使能信号
	.id(id_B_1), //load的位置
	
	.shift_in(shift_in_B_1), 
	.shift_out(col_1)
);

shift_buffer B_2
(
	.rstn(rstn),
	.clk(clk),
	
	.load(load), //load使能信号
	.shift(shift), //shift使能信号
	.id(id_B_2), //load的位置
	
	.shift_in(shift_in_B_2), 
	.shift_out(col_2)
);

shift_buffer B_3
(
	.rstn(rstn),
	.clk(clk),
	
	.load(load), //load使能信号
	.shift(shift), //shift使能信号
	.id(id_B_3), //load的位置
	
	.shift_in(shift_in_B_3), 
	.shift_out(col_3)
);


endmodule
