`timescale 1ns / 1ps

module multadd #(parameter	N = 8)
(
	input		[N-1:0]A,
	input		[N-1:0]B,
	input		[N*2-1:0]C,
	output [N*2-1:0]P
);

wire [2*N-1:0]mux;
wire [2*N-1:0]mul;
assign mux = A*B;
assign mul = mux+C;
assign P=mul;

endmodule