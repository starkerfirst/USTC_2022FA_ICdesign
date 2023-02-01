
module round_key_expansion
	(
		data,
		cki,
		result
	);
input [127:0] data;
input [31:0] cki;
output [127:0] result;

wire [31:0] data_for_transform;
wire [31:0] data_after_transform;
wire [31:0] word0;
wire [31:0] word1;
wire [31:0] word2;
wire [31:0] word3;
wire [31:0] tmp0;
wire [31:0] tmp1;
wire [31:0] data_for_xor;

assign {word0,word1,word2,word3}=data;
assign data_for_xor=cki;
assign tmp0=word1^word2;
assign tmp1=word3^data_for_xor;
assign data_for_transform=tmp0^tmp1;
assign result={word1,word2,word3,word0^data_after_transform};

T_for_key u_T_key
    (.data(data_for_transform),
     .result(data_after_transform)
     );
endmodule
