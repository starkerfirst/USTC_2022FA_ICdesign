`timescale 1ns/1ps
`define N 8
//Mux_2ways
module mux2
(
	input [`N-1:0] in0,
	input [`N-1:0] in1,
	input sel,
	output [`N-1:0] mux
);

assign mux=sel==0 ? in0: in1;

endmodule


//Mux_3ways
module mux3
(
	input [`N-1:0] in0,
	input [`N-1:0] in1,
	input [`N-1:0] in2,
	input [1:0] sel,
	output reg [`N-1:0] mux
);

always@(*)
begin
	case(sel)
		2'b00:mux=in0;
		2'b01:mux=in1;
		default:mux=in2;
	endcase
end
endmodule


