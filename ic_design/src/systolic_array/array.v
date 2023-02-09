`timescale 1ns/1ps
`define N 8

module PEarray
(
	input rstn,
	input clk,
	
    input [`N-1:0] input_row_0,
    input [`N-1:0] input_row_1,
	input [`N-1:0] input_row_2,
	input [`N-1:0] input_row_3,
	
	input [`N-1:0] input_col_0,
	input [`N-1:0] input_col_1,
	input [`N-1:0] input_col_2,
	input [`N-1:0] input_col_3,
	
	output [`N-1:0] output_row,

	input [1:0] row_out,
    input OutputSign
    
);
	wire [`N-1:0] output_row_0;
	wire [`N-1:0] output_row_1;	
	wire [`N-1:0] output_row_2;
	wire [`N-1:0] output_row_3;
	
	wire sign_0;
	wire sign_1;
	wire sign_2;
	wire sign_3;

	assign sign_0 = OutputSign & (row_out==2'b00);
	assign sign_1 = OutputSign & (row_out==2'b01);
	assign sign_2 = OutputSign & (row_out==2'b10);
	assign sign_3 = OutputSign & (row_out==2'b11);

	mux4 outputmux(output_row_0,output_row_1,output_row_2,output_row_3,row_out,output_row);


	/*线采用如下标号规则：
		1. 先从上到下row依次从左往右计数
		2. 再从左到右col依次从上往下计数
		3. 共24条wire + 12wire_shift
		
	注意是左A上B
	*/

	wire [7:0] connect [23:0];
	wire [7:0] shift_wire [11:0];
	

	//row 0
	PE pe_0_0 
	(
		.rstn(rstn),
		.clk(clk),
		
        .Aij(input_row_0),
        .Bij(input_col_0),
        .Cij(8'b0),
        
        .OutputSign(sign_0),
		
        .Cij_o(shift_wire[0]),
        .Bij_o(connect[12]),
        .Aij_o(connect[0])

	);
	PE pe_0_1 
	(
		.rstn(rstn),
		.clk(clk),
		
        .Aij(connect[0]),
        .Bij(input_col_1),
        .Cij(shift_wire[0]),
        
        .OutputSign(sign_0),
		
        .Cij_o(shift_wire[1]),
        .Bij_o(connect[15]),
        .Aij_o(connect[1])

	);
	PE pe_0_2 
	(
		.rstn(rstn),
		.clk(clk),
		
        .Aij(connect[1]),
        .Bij(input_col_2),
        .Cij(shift_wire[1]),
        
        .OutputSign(sign_0),
		
        .Cij_o(shift_wire[2]),
        .Bij_o(connect[18]),
        .Aij_o(connect[2])

	);
	PE pe_0_3 
	(
		.rstn(rstn),
		.clk(clk),
		
        .Aij(connect[2]),
        .Bij(input_col_3),
        .Cij(shift_wire[2]),
        
        .OutputSign(sign_0),
		
        .Cij_o(output_row_0),
        .Bij_o(connect[21]),
        .Aij_o()

	);

	//row 1
	PE pe_1_0 
	(
		.rstn(rstn),
		.clk(clk),
		
        .Aij(input_row_1),
        .Bij(connect[12]),
        .Cij(8'b0),
        
        .OutputSign(sign_1),
		
        .Cij_o(shift_wire[3]),
        .Bij_o(connect[13]),
        .Aij_o(connect[3])

	);
	PE pe_1_1 
	(
		.rstn(rstn),
		.clk(clk),
		
        .Aij(connect[3]),
        .Bij(connect[15]),
        .Cij(shift_wire[3]),
        
        .OutputSign(sign_1),
		
        .Cij_o(shift_wire[4]),
        .Bij_o(connect[16]),
        .Aij_o(connect[4])

	);
	PE pe_1_2 
	(
		.rstn(rstn),
		.clk(clk),
		
        .Aij(connect[4]),
        .Bij(connect[18]),
        .Cij(shift_wire[4]),
        
        .OutputSign(sign_1),
		
        .Cij_o(shift_wire[5]),
        .Bij_o(connect[19]),
        .Aij_o(connect[5])

	);
	PE pe_1_3 
	(
		.rstn(rstn),
		.clk(clk),
		
        .Aij(connect[5]),
        .Bij(connect[21]),
        .Cij(shift_wire[5]),
        
        .OutputSign(sign_1),
		
        .Cij_o(output_row_1),
        .Bij_o(connect[22]),
        .Aij_o()

	);

	//row 2
	PE pe_2_0 
	(
		.rstn(rstn),
		.clk(clk),
		
        .Aij(input_row_2),
        .Bij(connect[13]),
        .Cij(8'b0),
        
        .OutputSign(sign_2),
		
        .Cij_o(shift_wire[6]),
        .Bij_o(connect[14]),
        .Aij_o(connect[6])

	);
	PE pe_2_1 
	(
		.rstn(rstn),
		.clk(clk),
		
        .Aij(connect[6]),
        .Bij(connect[16]),
        .Cij(shift_wire[6]),
        
        .OutputSign(sign_2),
		
        .Cij_o(shift_wire[7]),
        .Bij_o(connect[17]),
        .Aij_o(connect[7])

	);
	PE pe_2_2 
	(
		.rstn(rstn),
		.clk(clk),
		
        .Aij(connect[7]),
        .Bij(connect[19]),
        .Cij(shift_wire[7]),
        
        .OutputSign(sign_2),
		
        .Cij_o(shift_wire[8]),
        .Bij_o(connect[20]),
        .Aij_o(connect[8])

	);
	PE pe_2_3 
	(
		.rstn(rstn),
		.clk(clk),
		
        .Aij(connect[8]),
        .Bij(connect[22]),
        .Cij(shift_wire[8]),
        
        .OutputSign(sign_2),
		
        .Cij_o(output_row_2),
        .Bij_o(connect[23]),
        .Aij_o()

	);

	//row 3
	PE pe_3_0 
	(
		.rstn(rstn),
		.clk(clk),
		
        .Aij(input_row_3),
        .Bij(connect[14]),
        .Cij(8'b0),
        
        .OutputSign(sign_3),
		
        .Cij_o(shift_wire[9]),
        .Bij_o(),
        .Aij_o(connect[9])

	);
	PE pe_3_1 
	(
		.rstn(rstn),
		.clk(clk),
		
        .Aij(connect[9]),
        .Bij(connect[17]),
        .Cij(shift_wire[9]),
        
        .OutputSign(sign_3),
		
        .Cij_o(shift_wire[10]),
        .Bij_o(),
        .Aij_o(connect[10])

	);
	PE pe_3_2
	(
		.rstn(rstn),
		.clk(clk),
		
        .Aij(connect[10]),
        .Bij(connect[20]),
        .Cij(shift_wire[10]),
        
        .OutputSign(sign_3),
		
        .Cij_o(shift_wire[11]),
        .Bij_o(),
        .Aij_o(connect[11])

	); 
	PE pe_3_3 
	(
		.rstn(rstn),
		.clk(clk),
		
        .Aij(connect[11]),
        .Bij(connect[23]),
        .Cij(shift_wire[11]),
        
        .OutputSign(sign_3),
		
        .Cij_o(output_row_3),
        .Bij_o(),
        .Aij_o()

	);

endmodule
