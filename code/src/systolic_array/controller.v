`timescale 1ns/1ps
`define STATE_IDLE 1'b0
`define STATE_LOAD 1'b1
`define STATE_COMPUTE_PUMP 2'b10
`define STATE_COMPUTE_OUT 2'b11

module controller
(
	input clk,
	input rstn,
	input en,
	
	output reg OutputSign, //pe计算结果移位输出使能信号
	output reg load, //load使能信号
	output reg shift, //shift使能信号
	
	//load_A的位置
	output reg [2:0] id_A_0, 
	output reg [2:0] id_A_1, 
	output reg [2:0] id_A_2, 
	output reg [2:0] id_A_3, 
	
	//load_B的位置
	output reg [2:0] id_B_0, 
	output reg [2:0] id_B_1, 
	output reg [2:0] id_B_2, 
	output reg [2:0] id_B_3
);

//分离式状态机
reg [1:0] state_overall;
reg [1:0] state_shift; 
reg	[3:0] state_compute_pump;
reg	[1:0] state_compute_out;

//状态动作
always @(*)
begin  
	if(state_overall == `STATE_IDLE) //处于闲置状态
		begin	
			load = 0;
			OutputSign = 0;
			shift = 0;
			
			id_A_0 = 0;
			id_A_1 = 0;
			id_A_2 = 0;
			id_A_3 = 0;
			
			id_B_0 = 0;
			id_B_1 = 0;
			id_B_2 = 0;
			id_B_3 = 0;	
		end
		
		else if(state_overall == `STATE_LOAD) //处于load状态
		begin
			//要求一次对每个矩阵的每一单元同时load一个元素，则带宽是 8unit/clk
			//A矩阵的物理存储排布是关于竖直轴对称，B矩阵的物理存储排布是关于水平轴对称
			//在ram里最好是A列优先，B行优先，这样是连续取址的
			load = 1;
			OutputSign = 0;
			shift = 0;
			
			id_A_0 = state_shift + 2'b11;
			id_A_1 = state_shift + 2'b10;
			id_A_2 = state_shift + 2'b01;
			id_A_3 = state_shift + 2'b00;
			
			id_B_0 = state_shift + 2'b11;
			id_B_1 = state_shift + 2'b10;
			id_B_2 = state_shift + 2'b01;
			id_B_3 = state_shift + 2'b00;
			
		end
		
		else if(state_overall == `STATE_COMPUTE_PUMP) //处于compute_pump状态
		begin
			load = 0;
			shift = 1;
			OutputSign = 0;
			
			id_A_0 = 0;
			id_A_1 = 0;
			id_A_2 = 0;
			id_A_3 = 0;
			
			id_B_0 = 0;
			id_B_1 = 0;
			id_B_2 = 0;
			id_B_3 = 0;
			
		end
		
		else if(state_overall == `STATE_COMPUTE_OUT) //处于compute_out状态
		begin
			load = 0;
			shift = 0;
			OutputSign = 1;
			
			id_A_0 = 0;
			id_A_1 = 0;
			id_A_2 = 0;
			id_A_3 = 0;
			
			id_B_0 = 0;
			id_B_1 = 0;
			id_B_2 = 0;
			id_B_3 = 0;
			
		end
end


//状态转移  环型状态图
always @(posedge clk) 
begin
	if(rstn == 0)
	begin
		state_overall <= 0;
		state_shift <= 0;
		state_compute_pump <= 0;
		state_compute_out <= 0;
		
	end
	else if(state_overall == `STATE_IDLE) //处于闲置状态
		begin
			if(en == 1) state_overall <= `STATE_LOAD;
			
			state_shift <= 0;
			state_compute_pump <= 0;
			state_compute_out <= 0;
		end
	
	else if(state_overall == `STATE_LOAD) //处于load状态
		begin
			if(state_shift == 2'b11) state_overall <= `STATE_COMPUTE_PUMP;
			
			state_shift <= state_shift + 1'b1;
		end
		
	else if(state_overall == `STATE_COMPUTE_PUMP) //处于compute_pump状态
		begin
			if(state_compute_pump == 4'b1111) state_overall <= `STATE_COMPUTE_OUT;
			state_compute_pump <= state_compute_pump + 1'b1;
		end	
		
	else if(state_overall == `STATE_COMPUTE_OUT) //处于compute_out状态
		begin
			if(state_compute_out == 2'b11) state_overall<= `STATE_IDLE;
			state_compute_out <= state_compute_out + 1'b1;
		end
		
end

endmodule