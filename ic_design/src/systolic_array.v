`timescale 1ns/1ps

module systolic_array //top模块
(
	input clk_p,
	input rstn_p,
	input en_p, //协处理器启动信号
	
	input [7:0] p_shift_in,

	output [7:0] p_shift_out,
	output ack_p //示意结束

);


	wire clk;
	// wire clk_in;
	wire rstn;
	wire en;
	wire [7:0] shift_in;
	wire [7:0] shift_out;
	wire ack;
	//reg [4:0] counter;
	
// 数据分时复用逻辑
// always @(posedge clk)
// begin
	// if(rstn == 1'b0) counter <= 0;
	// else
	// begin
		// counter += 1'b1;
	// end

// end

// always @(*)
// begin
	// if(counter[4] == 0) 

// end


systolic_array_wrapper  SA //脉动阵列封装
(
	.clk(clk),
	.rstn(rstn),
	.en(en), //协处理器启动信号
	.shift_in(shift_in),
	.shift_out(shift_out),
	.ack(ack) //示意结束
);



//IO pad
PDDW0208SCDG u_pad_clk         (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(clk        ), .PAD(clk_p         ));
PDUW0208SCDG u_pad_rst_n       (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(rstn       ), .PAD(rstn_p       ));

PDDW0208CDG  u_pad_data_in_0   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(shift_in [ 0]), .PAD(p_shift_in [ 0]));
PDDW0208CDG  u_pad_data_in_1   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(shift_in [ 1]), .PAD(p_shift_in [ 1]));
PDDW0208CDG  u_pad_data_in_2   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(shift_in [ 2]), .PAD(p_shift_in [ 2]));
PDDW0208CDG  u_pad_data_in_3   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(shift_in [ 3]), .PAD(p_shift_in [ 3]));
PDDW0208CDG  u_pad_data_in_4   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(shift_in [ 4]), .PAD(p_shift_in [ 4]));
PDDW0208CDG  u_pad_data_in_5   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(shift_in [ 5]), .PAD(p_shift_in [ 5]));
PDDW0208CDG  u_pad_data_in_6   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(shift_in [ 6]), .PAD(p_shift_in [ 6]));
PDDW0208CDG  u_pad_data_in_7   (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(shift_in [ 7]), .PAD(p_shift_in [ 7]));
PDDW0208CDG  u_pad_data_in_8  (.DS(1'b0), .OEN(1'b1), .PE(1'b1), .IE(1'b1), .I(), .C(en), .PAD(en_p));

PDDW0208CDG  u_pad_data_out_0  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(shift_out[ 0]), .PAD(p_shift_out[ 0]));
PDDW0208CDG  u_pad_data_out_1  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(shift_out[ 1]), .PAD(p_shift_out[ 1]));
PDDW0208CDG  u_pad_data_out_2  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(shift_out[ 2]), .PAD(p_shift_out[ 2]));
PDDW0208CDG  u_pad_data_out_3  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(shift_out[ 3]), .PAD(p_shift_out[ 3]));
PDDW0208CDG  u_pad_data_out_4  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(shift_out[ 4]), .PAD(p_shift_out[ 4]));
PDDW0208CDG  u_pad_data_out_5  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(shift_out[ 5]), .PAD(p_shift_out[ 5]));
PDDW0208CDG  u_pad_data_out_6  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(shift_out[ 6]), .PAD(p_shift_out[ 6]));
PDDW0208CDG  u_pad_data_out_7  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(shift_out[ 7]), .PAD(p_shift_out[ 7]));
PDDW0208CDG  u_pad_data_out_8  (.DS(1'b1), .OEN(1'b0), .PE(1'b0), .IE(1'b0), .C(), .I(ack), .PAD(ack_p));


endmodule