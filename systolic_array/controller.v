`define STATE_SHIFT 1'b0
`define STATE_COMPUTE 1'b1

module controller
(
	input clk,
	input rstn,
	input en,
	
	output OutputSign, //pe计算结果移位输出使能信号
	output load, //load使能信号
	output shift, //shift使能信号
	
	//load_A的位置
	output [3:0] id_A_0, 
	output [3:0] id_A_1, 
	output [3:0] id_A_2, 
	output [3:0] id_A_3, 
	
	//load_B的位置
	output [3:0] id_B_0, 
	output [3:0] id_B_1, 
	output [3:0] id_B_2, 
	output [3:0] id_B_3
)

//分离式状态机
reg state_overall;
reg [3:0] state_shift; 
reg	[3:0] state_compute;

always @(posedge clk or negedge rstn)
{
	//目前只编写pe和shift
	if(rstn == 0)
	{
		state_overall <= 0;
		state_shift <= 0;
		state_compute <= 0;
	}
	else 
	{
		if(state_overall == `STATE_SHIFT) //处于shift状态
		{
			
		}
		if(state_overall == `STATE_COMPUTE) //处于compute状态
		{
			
		}
	}
	
	
}




endmodule