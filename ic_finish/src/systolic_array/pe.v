`timescale 1ns/1ps
`define N 8

module PE
(
	input rstn,
	input [`N-1:0] Aij,
	input [`N-1:0] Bij,
	input [`N-1:0] Cij,
	input clk,
	input OutputSign, 
	output reg [`N-1:0] Cij_o,
	output reg [`N-1:0] Bij_o,
	output reg [`N-1:0] Aij_o
);

	wire [`N-1:0] mux_out;
	wire [`N-1:0] tmp;
	
	assign tmp = Aij * Bij + Cij_o;

	mux2 mux(tmp, Cij, OutputSign, mux_out);
	
	always@(posedge clk)
	begin
		if(rstn == 0)	begin Cij_o <= 0; Aij_o <= 0; Bij_o <= 0; end
		else
			begin
			Cij_o <= mux_out;
			Bij_o <= Bij;
			Aij_o <= Aij;
			end
	end


endmodule

