`timescale 1ns/1ps
`define N 8

module shift_buffer
(
	input rstn,
	input clk,
	
	input load, //load使能信号
	input shift, //shift使能信号
	input [2:0] id, //load的位置
	
	input [`N-1:0] shift_in, 
	output [`N-1:0] shift_out
);

integer i;
reg [`N-1:0] shift_reg [6:0];

assign shift_out = shift_reg[6];  //尾部直接输出

always @(posedge clk)
begin
	if(rstn == 0)
		
		for(i=0; i<2*`N-1; i=i+1) shift_reg[i] <= 0;
		
	else
		begin
			if(load == 1) //load部分
				shift_reg[id] <= shift_in;
			else if(shift == 1) //shift部分
				begin
					
				//	for(i=6; i>=1; i=i-1) shift_reg[i] <= shift_reg[i-1];
					shift_reg[6] <= shift_reg[5];
					shift_reg[5] <= shift_reg[4];
					shift_reg[4] <= shift_reg[3];
					shift_reg[3] <= shift_reg[2];
					shift_reg[2] <= shift_reg[1];
					shift_reg[1] <= shift_reg[0];
					

					shift_reg[0] <= 0;
				end
		end
end



endmodule
