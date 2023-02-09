module T_for_key
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
sbox sbox0
	(
		.data(byte0),
		.result(byte_sbox0)
	);
sbox sbox1
	(
		.data(byte1),
		.result(byte_sbox1)
	);
sbox sbox2
	(
		.data(byte2),
		.result(byte_sbox2)
	);
sbox sbox3
	(
		.data(byte3),
		.result(byte_sbox3)
	);
assign result=(word^{word[18:0],word[31:19]})^{word[8:0],word[31:9]};
endmodule
