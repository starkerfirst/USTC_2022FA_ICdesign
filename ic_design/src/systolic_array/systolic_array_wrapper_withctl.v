`timescale 1ns/1ps
module systolic_array_wrapper //脉动阵列封装
(
	input clk,
	input rstn,
	input en, //协处理器启动信号
	
	input [7:0] shift_in,
	
	output [7:0] shift_out,
	output ack //示意结束
);

wire [7:0] row_0;
wire [7:0] row_1;
wire [7:0] row_2;
wire [7:0] row_3;

wire [7:0] col_0;
wire [7:0] col_1;
wire [7:0] col_2;
wire [7:0] col_3;

//load_A的位置
wire [2:0] id_A; 
wire [1:0] row_A;
//load_B的位置
wire [2:0] id_B; 
wire [1:0] row_B;
//shift_buffer使能信号
wire load_A_0;
wire load_A_1;
wire load_A_2;
wire load_A_3;
wire load_A;
wire load_B;

assign load_A_0 = load_A & (row_A==2'b00);
assign load_A_1 = load_A & (row_A==2'b01);
assign load_A_2 = load_A & (row_A==2'b10);
assign load_A_3 = load_A & (row_A==2'b11);

wire load_B_0;
wire load_B_1;
wire load_B_2;
wire load_B_3;

assign load_B_0 = load_B & (row_B==2'b00);
assign load_B_1 = load_B & (row_B==2'b01);
assign load_B_2 = load_B & (row_B==2'b10);
assign load_B_3 = load_B & (row_B==2'b11);

wire shift;
wire OutputSign;

wire [1:0] row_out;

wire rstn_pe;
assign rstn_pe = ((id_A == 2'b11 && row_A==2'b11) || rstn==0) ? 0 : 1'b1;
assign ack = OutputSign;


controller ctrl
(
	.rstn(rstn),
	.clk(clk),
	.en(en),
	
	.OutputSign(OutputSign), //pe计算结果移位输出使能信号
	//load使能信号
	.load_A(load_A),
	.load_B(load_B),
	.shift(shift), //shift使能信号
	
	.id_A(id_A), 
	.row_A(row_A),
	
	.id_B(id_B), 
	.row_B(row_B),
	
	.row_out(row_out)
);


PEarray core
(
	.rstn(rstn_pe),
    .input_row_0(row_0),
    .input_row_1(row_1),
	.input_row_2(row_2),
	.input_row_3(row_3),
	
	.input_col_0(col_0),
	.input_col_1(col_1),
	.input_col_2(col_2),
	.input_col_3(col_3),
	
	.output_row(shift_out),

	.row_out(row_out),
    .clk(clk),
    .OutputSign(OutputSign)  //pe计算结果移位输出使能信号
);


shift_buffer A_0
(
	.rstn(rstn),
	.clk(clk),
	
	.load(load_A_0), //load使能信号
	.shift(shift), //shift使能信号
	.id(id_A), //load的位置
	
	.shift_in(shift_in), 
	.shift_out(row_0)
);

shift_buffer A_1
(
	.rstn(rstn),
	.clk(clk),
	
	.load(load_A_1), //load使能信号
	.shift(shift), //shift使能信号
	.id(id_A), //load的位置
	
	.shift_in(shift_in), 
	.shift_out(row_1)
);

shift_buffer A_2
(
	.rstn(rstn),
	.clk(clk),
	
	.load(load_A_2), //load使能信号
	.shift(shift), //shift使能信号
	.id(id_A), //load的位置
	
	.shift_in(shift_in), 
	.shift_out(row_2)
);

shift_buffer A_3
(
	.rstn(rstn),
	.clk(clk),
	
	.load(load_A_3), //load使能信号
	.shift(shift), //shift使能信号
	.id(id_A), //load的位置
	
	.shift_in(shift_in), 
	.shift_out(row_3)
);


shift_buffer B_0
(
	.rstn(rstn),
	.clk(clk),
	
	.load(load_B_0), //load使能信号
	.shift(shift), //shift使能信号
	.id(id_B), //load的位置
	
	.shift_in(shift_in), 
	.shift_out(col_0)
);

shift_buffer B_1
(
	.rstn(rstn),
	.clk(clk),
	
	.load(load_B_1), //load使能信号
	.shift(shift), //shift使能信号
	.id(id_B), //load的位置
	
	.shift_in(shift_in), 
	.shift_out(col_1)
);

shift_buffer B_2
(
	.rstn(rstn),
	.clk(clk),
	
	.load(load_B_2), //load使能信号
	.shift(shift), //shift使能信号
	.id(id_B), //load的位置
	
	.shift_in(shift_in), 
	.shift_out(col_2)
);

shift_buffer B_3
(
	.rstn(rstn),
	.clk(clk),
	
	.load(load_B_3), //load使能信号
	.shift(shift), //shift使能信号
	.id(id_B), //load的位置
	
	.shift_in(shift_in), 
	.shift_out(col_3)
);


endmodule
