`timescale 1ns / 1ps
//ver 2022_1_8
module samm  #(parameter N=8 ,parameter M =8)
	(
	input		Clk,
	input		Rst_n,
	input		In_Dv,
	input signed 		[2*M*N-1:0] A ,    //输入数据
	output  reg signed  [N*2*M*M-1:0] Out_data ,
	output	reg	Out_Dv     //表示计算完成
    );

    wire 	signed [N-1:0]	Pwire_ver [M*(M+1)-1:0];	    //垂直
	wire 	signed [N-1:0]	Pwire_hor [M*(M+1)-1:0];	
    wire    signed [2*M*N-1:0] data_A ;
	wire    signed [2*M*N-1:0] data_A_temp ;
    wire	signed [N*2-1:0] P_reg  [M*M-1:0];

    reg	[7:0] count;
    //reg	[3:0] count_reg;
    reg		  Out_Dv_reg  ;		
    reg		  Sclr;


    always@(posedge Clk or negedge Rst_n) begin
    	if(!Rst_n) 
    		count <= 8'b00000000;	
    	else if(In_Dv==1'b1  && count ==8'b00000000)
		count <= count+1'b1;
    	else if(count==3*M-2)
    			;//count <= count+1'b1;
		else if(count!=0)
			count <= count+1'b1;
		else 
			;
    end		

    always@(posedge Clk or negedge Rst_n) begin
    	if(!Rst_n)
    		Out_Dv_reg <= 1'b0;
    	else if(count==3*M-2)
    		Out_Dv_reg <=1'b1;
    	else
    		Out_Dv_reg <=1'b0;
    		
    end

always@(posedge Clk or negedge Rst_n)begin
	if(!Rst_n)
		Out_Dv <= 0;
	else
		Out_Dv <= Out_Dv_reg;
end

    always@(posedge Clk or negedge Rst_n)begin
    	if(!Rst_n)
    		Sclr <= 1'b0;
    	else if(count==3*M-2)
    		;//Sclr <= 1'b0;
    	else
    		Sclr <=1'b1;
    end

    integer i;
    always@(posedge Clk or negedge Rst_n)begin
    	if(!Rst_n)begin
            Out_data <= 'b0;
    	end
    	else if(Out_Dv_reg==1'b1) begin
		for(i=M*M;i>0;i=i-1)begin
		//for(i=0;i<M*M;i=i+1)begin
            		//Out_data [2*N*(i+1)-1: 2*N*i] <= P_reg[i];
	        Out_data [ 2*N*i-1 -: 2*N] <= P_reg[i-1];
         end	
    	end
    	else begin
            Out_data <= 'b0;
    	end
    end

    //d_latch #(.N(N),.M(M)) latch2 (.Clk(Clk),.data_in(A),.data_out(data_A),.In_Dv(In_Dv),.Rst_n(Rst_n));
	d_latch #(.N(N),.M(M)) latch1 (.Clk(Clk),.data_in(data_A_temp),.data_out(data_A),.In_Dv(In_Dv),.Rst_n(Rst_n));
	assign data_A_temp = A&{2*M*N{In_Dv}};

	generate
		genvar j,k;
		for(j=0;j<M;j=j+1) begin :pe1
			assign Pwire_hor[j] = data_A[(j+1)*N-1:j*N];
			assign Pwire_ver[j] = data_A[(j+1)*N-1+M*N:j*N+M*N];
			//assign Pwire_hor[j] = A[(j+1)*N-1:j*N];
			//assign Pwire_ver[j] = A[(j+1)*N-1+M*N:j*N+M*N];
		end
	endgenerate

    generate
		genvar a,b;
		for(a=0;a<M;a=a+1) begin : pe_a
			for(b=0;b<M;b=b+1) begin : pe_b
				PE #(.N(N)) pe_own 
					(
					.Clk(Clk),
					.Rst_n(Rst_n),
					.Sclr(Sclr),
					.A(Pwire_hor[a+M*b]),
					.B(Pwire_ver[a*M+b]),
					.Next_A(Pwire_hor[a+M*(b+1)]),
					.Next_B(Pwire_ver[(a+1)*M+b]),
					.P(P_reg[a*M+b])
					);
			end
		end
	endgenerate

endmodule