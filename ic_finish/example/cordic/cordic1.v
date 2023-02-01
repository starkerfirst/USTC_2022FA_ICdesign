`timescale 1 ns / 100 ps 
module cordic1 #(parameter W = 32 , C = 16 ) 
	(
	input clk,
	input rst_n,
	input en,
	input mode,   //mode ==1 rotation mode ==0 vector
	input wire signed [W-1:0] x,
	input wire signed [W-1:0] y,
	input wire signed [W-1:0] z,
	output  signed [W-1:0] xout,
 	output  signed [W-1:0] yout,
	output  signed [W-1:0] zout,
	output  done,
	output  mode_out
	);
	wire signed [W-1:0] xtemp [C:0] ;
	wire signed [W-1:0] ytemp [C:0] ;
	wire signed [W-1:0] ztemp [C:0] ;
	wire en_t [C:0];
	wire mode_temp [C:0] ;
	wire [1:0] phase_temp [C:0] ;
	reg signed [W-1:0] mem [15:0] ;
	always @(negedge rst_n) begin  
		mem[0] <=32'd1474560;
		mem[1] <= 32'd870484;
		mem[2] <= 32'd459940;
		mem[3] <= 32'd233473;
		mem[4] <= 32'd117189;
		mem[5] <= 32'd58652;
		mem[6] <= 32'd29333;
		mem[7] <= 32'd14667;
		mem[8] <= 32'd7334;
		mem[9] <= 32'd3667;
		mem[10] <= 32'd1833;
		mem[11] <= 32'd917;
		mem[12] <= 32'd458;
		mem[13] <= 32'd229;
		mem[14] <= 32'd115;
		mem[15] <= 32'd57;
	end
	cordic_pre #(.W(W)) cordic_pre_u (
		.x(x),
		.y(y),
		.z(z),
		.en(en),
		.clk(clk),
		.rst_n(rst_n),
		.mode(mode),
		.en_out(en_t[0]),
		.mode_out(mode_temp[0]),
		.phase(phase_temp[0]),
		.xt(xtemp[0]),
		.yt(ytemp[0]),
		.zt(ztemp[0])
	);
	genvar i ; 
	generate 
		for (i = 0; i<C; i= i+1) begin : temp_cell
		cordic_cell #( .count(i), .W(W) ) cordic_cell_u ( 
		.x1(xtemp[i]), 
		.y1(ytemp[i]),
		.z1(ztemp[i]),
		.memi(mem[i]),
		.en(en_t[i]),
		.clk(clk), 
		.rst_n(rst_n),
	 	.mode(mode_temp[i]), 
		.phase(phase_temp[i]),
		.mode_out(mode_temp[i+1]), 
		.en_out(en_t[i+1]),
		.x2(xtemp[i+1]), 
		.y2(ytemp[i+1]), 
		.z2(ztemp[i+1]),
		.phase_out(phase_temp[i+1])
		);
		end 
	endgenerate 
	

	
	cordic_final #(.W(W)) cordic_final_u (
		.x(xtemp[C]),
		.y(ytemp[C]),
		.z(ztemp[C]),
		.en(en_t[C]),
		.clk(clk),
		.rst_n(rst_n),
		.mode(mode_temp[C]),
		.phase(phase_temp[C]),
		.mode_out(mode_out),
		.done(done),
		.xt(xout),
		.yt(yout),
		.zt(zout)
	);


endmodule 

module cordic_cell #(parameter count = 8, W = 32) (  
	input  signed [W-1:0] x1 ,
	input  signed [W-1:0] y1 ,
	input  signed [W-1:0] z1 ,
	input  signed [W-1:0] memi ,
	input en,
	input clk ,
	input rst_n ,
	input mode ,
	input [1:0] phase,
	output reg mode_out,
	output reg signed [W-1:0] x2 ,
	output reg signed [W-1:0] y2 ,
	output reg signed [W-1:0] z2 ,
	output reg en_out,
	output reg [1:0] phase_out );
	always @(posedge clk or negedge rst_n) begin
		if (!rst_n) begin // if reset, all 0 ;
			x2 <= 1'd0;  y2 <= 1'd0; z2 <= 1'd0;
			mode_out <= 0;
			phase_out <= 0;
			en_out <= 0;
		end 
		else begin 
			en_out <= en ;	
			if (en) begin 
				if (mode) begin 
					if ((z1[W-1])==1 ) begin 
						x2 <= x1 + (y1 >>> count) ;
						y2 <= y1 - (x1 >>> count) ;
						z2 <= z1 + memi ;
					end 
					else begin 
						x2 <= x1 - (y1 >>> count) ;
						y2 <= y1 + (x1 >>> count) ;
						z2 <= z1 - memi ;
					end 
				end 
				else begin 
					if (y1[W-1]) begin 
						x2 <= x1 - (y1 >>> count) ;
						y2 <= y1 + (x1 >>> count) ;
						z2 <= z1 - memi ; 
					end 
					else begin 
						x2 <= x1 + (y1 >>> count) ;
						y2 <= y1 - (x1 >>> count) ;
						z2 <= z1 + memi ;
					end 
				end
				mode_out <= mode ;
				phase_out <= phase ; 
			end
			else begin 
				x2 <= 1'd0;  y2 <= 1'd0; z2 <= 1'd0;
				mode_out <= 0;
				phase_out <= 0;
			end
		end 
	end
endmodule 

module cordic_pre # (parameter W = 32 ) (
	input signed [W-1:0] x ,
	input signed [W-1:0] y ,
	input signed [W-1:0] z ,
	input clk ,
	input rst_n ,
	input mode,
	input en,
	output reg [1:0] phase,
	output reg en_out,
	output reg mode_out,
	output reg signed [W-1:0] xt,
	output reg signed [W-1:0] yt,
	output reg signed [W-1:0] zt
	) ;
	wire signed [W-1:0] deg90 ;
	wire signed [W-1:0] deg181 ;
	assign deg90 = 32'd2949120;
	assign deg181 = 32'd5931008;
	
always @(posedge clk or negedge rst_n ) begin 
if (!rst_n) begin 
	xt <= 0;
	yt <= 0 ;
	zt <= 0;
	phase <= 2'b0;
	en_out <= 0;
	mode_out <= 0 ;
end 
else begin 
	en_out <= en;
	if(en) begin 
		mode_out<=mode ;
		if (mode) begin 
			if ((z > (deg90))&& (z < (deg181))) begin 
				xt <= -y ;
				yt <= x ;
				zt <= z -(deg90);
			end 
			else begin 
				if ( (z < (-deg90)) && (z > (-deg181)))begin 
					xt <= y;
					yt <= -x;
					zt <= z+(deg90);
				end 
				else begin 
					xt <= x ;
					yt <= y ;
					zt <= z ;
				end
			end
		end
		else begin 
			case ({x[W-1] , y[W-1] }) 
				2'b00 :begin  xt <= x; phase <= 2'b00 ; end 
				2'b01 :begin  xt <= x; phase <= 2'b11 ; end 
				2'b10 :begin  xt <= -x ; phase <= 2'b01; end 
				2'b11 :begin  xt <= -x ; phase <= 2'b10; end 
				default : ;
			endcase 	
			yt <= y;
			zt <= z;
		end
	end
	else begin 
		xt <= 0;
		yt <= 0 ;
		zt <= 0;
		phase <= 2'b0;
		mode_out <= 0 ;	
	end
end
end //end always 
endmodule 


module cordic_final #(parameter W= 32 ) (
	input signed [W-1:0] x ,
	input signed [W-1:0] y ,
	input signed [W-1:0] z ,
	input clk ,
	input rst_n ,
	input mode,
	input en,
	input [1:0] phase,
	output reg done,
	output reg mode_out,
	output reg signed [W-1:0] xt,
	output reg signed [W-1:0] yt,
	output reg signed [W-1:0] zt
	);
	wire signed [W-1:0] deg180;
	assign deg180 = 32'd5898240;
always @(posedge clk or negedge rst_n) begin 
	if (!rst_n) begin 
		xt <= 0;
		yt <= 0 ;
		zt <= 0;
		mode_out <= 0;
		done <= 0;
	end 
	else begin 
		done <= en;
		if(en) begin 
			mode_out <= mode ;
			if(mode) begin 
				zt <= z;
			end 
			else if (phase == 2'b10) begin 
				zt<= -(deg180)- z;
				end 
			else if (phase == 2'b01) begin 
				zt <= (deg180) -z;
				end 
			else begin 
				zt <= z;
			end 
			xt <= (x>>>1)+(x>>>4)+(x>>>5)+(x>>>7)+(x>>>8)+(x>>>10)+(x>>>11)+(x>>>12)+(x>>>14); //xt <= xt *0.607253
			yt <= (y>>>1)+(y>>>4)+(y>>>5)+(y>>>7)+(y>>>8)+(y>>>10)+(y>>>11)+(y>>>12)+(y>>>14);
		end
		else begin 
			xt <= 0;
			yt <= 0 ;
			zt <= 0;
			mode_out <= 0;
		end
	end 
end 
endmodule 


	



		
