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
	output reg [2:0] id_A, 
	output reg [1:0] row_A,
	
	//load_B的位置
	output reg [2:0] id_B, 
	output reg [1:0] row_B,
	
	//输出行数
	output reg [1:0] row_out
);

//分离式状态机
reg [1:0] state_overall;
reg [2:0] state_load_id; 
reg [1:0] state_load_row; 
reg	[3:0] state_compute_pump;
reg	[1:0] state_compute_out;
reg	[1:0] state_compute_out_counter;

//状态动作
always @(*)
begin  
	if(state_overall == `STATE_IDLE) //处于闲置状态
		begin	
			load = 0;
			OutputSign = 0;
			shift = 0;
			
			row_A = 0;
			id_A = 0;
			
			row_B = 0;
			id_B = 0;
			
			row_out = 0;
		end
		
		else if(state_overall == `STATE_LOAD) //处于load状态
		begin
			//要求一次对每个矩阵同时load一个元素，每行循环装载，则带宽是 2unit/clk，需要装载16clk
			//A矩阵的物理存储排布是关于竖直轴对称，B矩阵的物理存储排布是关于水平轴对称
			//在ram里最好是A列优先，B行优先，这样是连续取址的
			load = 1;
			OutputSign = 0;
			shift = 0;
			
			row_A = state_load_row;
			id_A = state_load_id;
			
			row_B = state_load_row;
			id_B = state_load_id;
			
			row_out = 0;
		end
		
		else if(state_overall == `STATE_COMPUTE_PUMP) //处于compute_pump状态
		begin
			load = 0;
			shift = 1;
			OutputSign = 0;
			
			row_A = 0;
			id_A = 0;
			
			row_B = 0;
			id_B = 0;
			
			row_out=0;
			
		end
		
		else if(state_overall == `STATE_COMPUTE_OUT) //处于compute_out状态
		begin
			load = 0;
			shift = 0;
			OutputSign = 1;
			
			row_A = 0;
			id_A = 0;
			
			row_B = 0;
			id_B = 0;
			row_out = state_compute_out;
			
		end
end


//状态转移  环型状态图
always @(posedge clk) 
begin
	if(rstn == 0)
	begin
		state_overall <= 0;
		state_load_id <= 2'b11;
		state_load_row <= 0;
		state_compute_pump <= 0;
		state_compute_out <= 0;
		state_compute_out_counter <= 0;
		
	end
	else if(state_overall == `STATE_IDLE) //处于闲置状态
		begin
			if(en == 1) state_overall <= `STATE_LOAD;
			
			state_load_id <= 2'b11;
			state_load_row <= 0;
			state_compute_pump <= 0;
			state_compute_out <= 0;
			state_compute_out_counter <= 0;
		end
	
	else if(state_overall == `STATE_LOAD) //处于load状态
		begin
			if(state_load_id == 2'b11 && state_load_row==2'b11) state_overall <= `STATE_COMPUTE_PUMP;
			else if(state_load_id + state_load_row == 3'b110) 
				begin 
					state_load_row <= state_load_row + 1'b1;
					state_load_id <= 2'b10 - state_load_row;
				end
			else state_load_id <= state_load_id + 1'b1;
		end
		
	else if(state_overall == `STATE_COMPUTE_PUMP) //处于compute_pump状态
		begin
			if(state_compute_pump == 4'b1111) state_overall <= `STATE_COMPUTE_OUT;
			state_compute_pump <= state_compute_pump + 1'b1;
		end	
		
	else if(state_overall == `STATE_COMPUTE_OUT) //处于compute_out状态
		begin
			if(state_compute_out == 2'b11 && state_compute_out_counter==2'b11) state_overall<= `STATE_IDLE;
			else if(state_compute_out_counter==2'b11) 
			begin 
				state_compute_out <= state_compute_out + 1'b1;
				state_compute_out_counter <= 0;
			end
			else state_compute_out_counter <= state_compute_out_counter + 1'b1;
		end
		
end

endmodule