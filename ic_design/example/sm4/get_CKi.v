`timescale 1ns / 1ps
module get_CKi
	(
	        clk,
		count,
		CKi
	);
input clk;
input [4:0] count;
output [31:0] CKi;
reg [31:0] CKi;
always@(posedge clk)
	case(count)
		5'b0_0000:	CKi	<=	32'h00070e15;
		5'b0_0001:	CKi	<=	32'h1c232a31;
		5'b0_0010:	CKi	<=	32'h383f464d;
		5'b0_0011:	CKi	<=	32'h545b6269;
		5'b0_0100:	CKi	<=	32'h70777e85;
		5'b0_0101:	CKi	<=	32'h8c939aa1;
		5'b0_0110:	CKi	<=	32'ha8afb6bd;
		5'b0_0111:	CKi	<=	32'hc4cbd2d9;
		5'b0_1000:	CKi	<=	32'he0e7eef5;
		5'b0_1001:	CKi	<=	32'hfc030a11;
		5'b0_1010:	CKi	<=	32'h181f262d;
		5'b0_1011:	CKi	<=	32'h343b4249;
		5'b0_1100:	CKi	<=	32'h50575e65;
		5'b0_1101:	CKi	<=	32'h6c737a81;
		5'b0_1110:	CKi	<=	32'h888f969d;
		5'b0_1111:	CKi	<=	32'ha4abb2b9;
		5'b1_0000:	CKi	<=	32'hc0c7ced5;
		5'b1_0001:	CKi	<=	32'hdce3eaf1;
		5'b1_0010:	CKi	<=	32'hf8ff060d;
		5'b1_0011:	CKi	<=	32'h141b2229;
		5'b1_0100:	CKi	<=	32'h30373e45;
		5'b1_0101:	CKi	<=	32'h4c535a61;
		5'b1_0110:	CKi	<=	32'h686f767d;
		5'b1_0111:	CKi	<=	32'h848b9299;
		5'b1_1000:	CKi	<=	32'ha0a7aeb5;
		5'b1_1001:	CKi	<=	32'hbcc3cad1;
		5'b1_1010:	CKi	<=	32'hd8dfe6ed;
		5'b1_1011:	CKi	<=	32'hf4fb0209;
		5'b1_1100:	CKi	<=	32'h10171e25;
		5'b1_1101:	CKi	<=	32'h2c333a41;
		5'b1_1110:	CKi	<=	32'h484f565d;
		5'b1_1111:	CKi	<=	32'h646b7279;
		default:	CKi	<=	32'h0;
	endcase 
endmodule		
