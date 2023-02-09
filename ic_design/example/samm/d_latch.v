`timescale 1ns / 1ps

module d_latch  #(parameter N = 8,parameter M =8 )(
    input [2*M*N-1:0] data_in,
    input Clk,
	input In_Dv,
	input Rst_n,
    output   [2*M*N-1:0] data_out);

	wire [2*M*N-1:0] data_temp;
	reg  [2*N-1:0 ]data_temp2;
    always @ (posedge Clk) begin
		if(In_Dv == 1'b1) begin
        	data_temp2[N-1:0]  <= data_in[N-1:0];
			data_temp2[2*N-1:N]  <= data_in[(M+1)*N-1 -:N];
		end
		else begin
			data_temp2[N-1:0] <= 'b0;
			data_temp2[2*N-1:N] <= 'b0;
		end
	end 
	generate
		genvar i;
		for(i=1;i<M;i=i+1) begin : delay
			delay_K #(.N(N),.K(i)) delya_1
				(
				.Clk(Clk),
				.Rst_n(Rst_n),
				.data_in(data_in[(i+1)*N-1:i*N]),
				.data_out(data_temp[(i+1)*N-1:i*N])
				);
			delay_K #(.N(N),.K(i)) delya_2
				(
				.Clk(Clk),
				.Rst_n(Rst_n),
				.data_in(data_in[(i+1+M)*N-1:(i+M)*N]),
				.data_out(data_temp[(i+1+M)*N-1:(i+M)*N])
				);
		end
	assign data_out[M*N-1:N] = data_temp[M*N-1:N];
	assign data_out[2*M*N-1:N*(M+1)] = data_temp[2*M*N-1:N*(M+1)];
	assign data_out[N-1:0] = data_temp2[N-1:0];
	assign data_out[(M+1)*N-1 -:N] = data_temp2[2*N-1:N];
	endgenerate

endmodule

module delay_K  #(parameter N = 8,parameter K =3 )(
    input [N-1:0] data_in,
    input Clk,
	input Rst_n,
    output     [N-1:0]data_out);
	reg [(K+1)*N-1:0] temp ;
		always@(posedge Clk or negedge Rst_n )begin
		if (Rst_n == 0)
			temp <= 'b0;
		else
			temp <= {temp[K*N-1:0],data_in};
			//data_out = temp[(K+1)*N-1:K*N];

	end
	assign 	data_out = temp[(K+1)*N-1:K*N];
endmodule

