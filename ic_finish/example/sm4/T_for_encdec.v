module T_for_encdec
	(
		data,
		result
	);
input [31:0] data;
output [31:0] result;
wire [7:0] byte0;
wire [7:0] byte1;
wire [7:0] byte2;
wire [7:0] byte3;
wire [7:0] byte_sbox0;
wire [7:0] byte_sbox1;
wire [7:0] byte_sbox2;
wire [7:0] byte_sbox3;
wire [31:0] word;
assign {byte0,byte1,byte2,byte3} = data;
assign word={byte_sbox0,byte_sbox1,byte_sbox2,byte_sbox3};
sbox u0
	(
		.data(byte0),
		.result(byte_sbox0)
	);
sbox u1
	(
		.data(byte1),
		.result(byte_sbox1)
	);
sbox u2
	(
		.data(byte2),
		.result(byte_sbox2)
	);
sbox u3
	(
		.data(byte3),
		.result(byte_sbox3)
	);
assign result=((word^{word[29:0],word[31:30]})^({word[21:0],word[31:22]}^{word[13:0],word[31:14]}))^{word[7:0],word[31:8]};
endmodule
