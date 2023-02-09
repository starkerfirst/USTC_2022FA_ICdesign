`timescale 1ns/100ps
module dct_top #(
    parameter M=32
) (
    input [M*16-1:0] data,
    input [3:0] number,
    input clk,
    input start,
    input rst_n,
    output ready,
    output [M*16-1:0] out
);
reg [M*16-1:0] temp_in;
wire [M*8-1:0] temp_out8;
wire [M*16-1:0] temp_out16;
reg [M*16-1:0] final_out;
reg go8, go16, rdy;
wire rdy8, rdy16;

assign out = final_out;
assign ready =rdy;

always @(posedge clk , negedge rst_n) begin
    if (!rst_n) begin
        go8<=0;
        go16<=0;
        rdy<=0;
    end
    else if(start) begin
	if(!rdy) begin
        if ( (~go8) & (~go16) ) begin
            case (number)
            7:begin
                go8<=1;
                temp_in [M*8-1:0] <= data [M*8-1:0];
            end
            8: begin
                go16<=1;
                temp_in[M*9-1:0] <= data [M*9-1:0];
                temp_in[M*16-1:M*9] <= 0;
            end
            9: begin
                go16<=1;
                temp_in[M*10-1:0] <= data [M*10-1:0];
                temp_in[M*16-1:M*10] <= 0;
            end
            10: begin
                go16<=1;
                temp_in[M*11-1:0] <= data [M*11-1:0];
                temp_in[M*16-1:M*11] <= 0;
            end
            11: begin
                go16<=1;
                temp_in[M*12-1:0] <= data [M*12-1:0];
                temp_in[M*16-1:M*12] <= 0;
            end
            12: begin
                go16<=1;
                temp_in[M*13-1:0] <= data [M*13-1:0];
                temp_in[M*16-1:M*13] <= 0;
            end
            13: begin
                go16<=1;
                temp_in[M*14-1:0] <= data [M*14-1:0];
                temp_in[M*16-1:M*14] <= 0;
            end
            14: begin
                go16<=1;
                temp_in[M*15-1:0] <= data [M*15-1:0];
                temp_in[M*16-1:M*15] <= 0;
            end
            15:begin
                go16<=1;
                temp_in <= data ;
            end
            endcase
        end
        else if(go8) begin
            if (rdy8) begin
                rdy<=1;
                go8<=0;
                final_out <={ M*8'b0, temp_out8};
            end
        end
        else if(go16) begin
            if (rdy16) begin
                rdy<=1;
                go16<=0;
                final_out<=temp_out16;
            end
        end
	end 
    end
    else begin
	rdy<=0;
    end 
end
dct_8 #(.M(M)) u_dct_8(temp_in[M*8-1:0], go8, clk, rst_n, rdy8, temp_out8);
dct_16 #(.M(M)) u_dct_16(temp_in ,go16,clk, rst_n, rdy16 , temp_out16);
endmodule

module dct_8 #(
    parameter M=8
) (
    input [M*8-1:0] data,
    input enable,
    input clk,
    input rst_n,
    output ready,
    output [M*8-1:0] out
);

reg signed [M-1:0] temp [7:0];
reg rdy=1'b0;
reg [1:0] stat=2'b00;
always @(posedge clk, negedge rst_n ) begin
    if (!rst_n) begin
        stat<=2'b00;
        rdy <= 1'b0;
    end
    else begin
        if(enable) begin
        case (stat)
            2'b00: begin	    	
                    rdy <= 0;
                    temp[0] <=  data[M-1:0] + data[M*8-1:M*7];
                    temp[7] <=  data[M-1:0] - data[M*8-1:M*7];
                    temp[1] <=  data[M*2-1:M] + data[M*7-1:M*6];
                    temp[6] <=  data[M*2-1:M] - data[M*7-1:M*6];
                    temp[2] <=  data[M*3-1:M*2] + data[M*6-1:M*5];
                    temp[5] <=  data[M*3-1:M*2] - data[M*6-1:M*5];
                    temp[3] <=  data[M*4-1:M*3] + data[M*5-1:M*4];
                    temp[4] <=  data[M*4-1:M*3] - data[M*5-1:M*4];
                    stat<=stat+1;
            end
            2'b01:begin
                temp[0] <= temp[0] + temp[3];
                temp[3] <= temp[0] - temp[3];
                temp[1] <= temp[1] + temp[2];
                temp[2] <= temp[1] - temp[2];
                temp[4] <= temp[4]*213 + temp[7]*142;
                temp[7] <= temp[7]*213 - temp[4]*142;
                temp[5] <= temp[5]*251 + temp[6]*50;
                temp[6] <= temp[6]*251 - temp[5]*50;
                stat<=stat+1;
            end
            2'b10:begin
                temp[0] <= (temp[0] + temp[1])<<<16;
                temp[1] <= (temp[0] - temp[1])<<<16;
                temp[2] <= (temp[2]*139 + temp[3]*334)<<<8;
                temp[3] <= (temp[3]*139 - temp[2]*334)<<<8;
                temp[4] <= (temp[7] + temp[5] - temp[4] - temp[6])<<<8;
                temp[6] <= (temp[4] - temp[6])*362;
                temp[7] <= (temp[7] + temp[5] + temp[4] + temp[6])<<<8;
                temp[5] <= (temp[7] - temp[5])*362;
                stat<=2'b00;
                rdy<=1;
            end
        endcase
	end
        else begin stat<=2'b00;
	end
    end
end

assign out[M-1:0] = temp[0];
assign out[M*5-1:M*4] = temp[1];
assign out[M*3-1:M*2] = temp[2];
assign out[M*7-1:M*6] = temp[3];
assign out[M*4-1:M*3] = temp[5];
assign out[M*6-1:M*5] = temp[6];
assign out[M*8-1:M*7] = temp[4];
assign out[M*2-1:M] =  temp[7];
assign ready =rdy;
endmodule



module dct_16 #(
    parameter M=8
) (
    input [M*16-1:0] data,
    input enable,
    input clk,
    input rst_n,
    output ready,
    output [M*16-1:0] out
);

reg rdy=0;

reg signed [M-1:0] temp [15:0];
reg [2:0] stat;
always @(posedge clk, negedge rst_n ) begin
    if (!rst_n) begin
        stat<=3'b000;
        rdy <= 0;
    end
    else begin
	if(enable) begin
        case (stat)
            3'b000: begin
                
                    rdy <= 0;
                    temp[0] <= data[M-1:0] + data[M*16-1:M*15];
                    temp[15] <= data[M-1:0] - data[M*16-1:M*15];
                    temp[1] <= data[M*2-1:M] + data[M*15-1:M*14];
                    temp[14] <= data[M*2-1:M] - data[M*15-1:M*14];
                    temp[2] <= data[M*3-1:M*2] + data[M*14-1:M*13];
                    temp[13] <= data[M*3-1:M*2] - data[M*14-1:M*13];
                    temp[3] <= data[M*4-1:M*3] + data[M*13-1:M*12];
                    temp[12] <= data[M*4-1:M*3] - data[M*13-1:M*12];
                    temp[4] <= data[M*5-1:M*4] + data[M*12-1:M*11];
                    temp[11] <= data[M*5-1:M*4] - data[M*12-1:M*11];
                    temp[5] <= data[M*6-1:M*5] + data[M*11-1:M*10];
                    temp[10] <= data[M*6-1:M*5] - data[M*11-1:M*10];
                    temp[6] <= data[M*7-1:M*6] + data[M*10-1:M*9];
                    temp[9] <= data[M*7-1:M*6] - data[M*10-1:M*9];
                    temp[7] <= data[M*8-1:M*7] + data[M*9-1:M*8];
                    temp[8] <= data[M*8-1:M*7] - data[M*9-1:M*8];
                    stat<=stat+1;
               
            end
            3'b001:begin
                temp[0] <= temp[0] + temp[7];
                temp[7] <= temp[0] - temp[7];
                temp[1] <= temp[1] + temp[6];
                temp[6] <= temp[1] - temp[6];
                temp[2] <= temp[2] + temp[5];
                temp[5] <= temp[2] - temp[5];
                temp[3] <= temp[3] + temp[4];
                temp[4] <= temp[3] - temp[4];
                temp[8] <= temp[8]*198 + temp[15]*162;
                temp[15] <= temp[15]*198 - temp[8]*162;
                temp[9] <= temp[9]*121 - temp[14]*225;
                temp[14] <= temp[14]*121 + temp[9]*225;
                temp[10] <= temp[10]*245 + temp[13]*74;
                temp[13] <= temp[13]*245 - temp[10]*74;
                temp[11] <= temp[11]*25 - temp[12]*255;
                temp[12] <= temp[12]*25 + temp[11]*255;
                stat<=stat+1;
            end
            3'b010:begin
                temp[0] <= temp[0] + temp[3];
                temp[3] <= temp[0] - temp[3];
                temp[1] <= temp[1] + temp[2];
                temp[2] <= temp[1] - temp[2];
                temp[4] <= temp[4]*50 + temp[7]*251;
                temp[7] <= temp[7]*50 - temp[4]*251;
                temp[5] <= temp[5]*142 + temp[6]*213;
                temp[6] <= temp[6]*142 - temp[5]*213;
                temp[8] <= temp[8] + temp[11];
                temp[11] <= temp[8] - temp[11];
                temp[9] <= temp[9] + temp[10];
                temp[10] <= temp[9] - temp[10];
                temp[12] <= temp[12] + temp[15];
                temp[15] <= temp[12] - temp[15];
                temp[13] <= temp[13] + temp[14];
                temp[14] <= temp[13] - temp[14];
                stat<=stat+1;
            end
            3'b011:begin
                temp[0] <= temp[0] + temp[1];
                temp[1] <= temp[0] - temp[1];
                temp[2] <= temp[2]*138 + temp[3]*334;
                temp[3] <= temp[3]*138 - temp[2]*334;
                temp[4] <= temp[4] + temp[5];
                temp[5] <= temp[4] - temp[5];
                temp[6] <= temp[7] - temp[6];
                temp[7] <= temp[7] + temp[6];
                temp[8] <= temp[8] + temp[14];
                temp[14] <= temp[8] - temp[14];
                temp[9] <= temp[9] + temp[15];
                temp[15] <= temp[9] - temp[15];
                temp[10] <= temp[10] + temp[11];
                temp[11] <= temp[10] - temp[11];
                temp[12] <= temp[12] + temp[13];
                temp[13] <= temp[12] - temp[13];
                stat<=stat+1;
            end
            3'b100:begin
                temp[0] <= temp[0]<<<16;
                temp[1] <= temp[1]<<<16;
                temp[2] <= temp[2]<<<8;
                temp[3] <= temp[3]<<<8;
                temp[4] <= temp[4]*362 ;
                temp[6] <= temp[6]*362 ;
                temp[5] <= (temp[5] + temp[7])<<<8;
                temp[7] <= (temp[5] - temp[7])<<<8;
                temp[8] <= temp[8]*138 - temp[9]*334;
                temp[9] <= temp[9]*138 + temp[8]*334;
                temp[10] <= temp[10]*362;
                temp[13] <= temp[13]*362;
                temp[11] <= (temp[11] + temp[12])<<<8;
                temp[12] <= ~((temp[11] - temp[12])<<<8);
                temp[14] <= ~(temp[14]*138 - temp[15]*334);
                temp[15] <= temp[15]*138 + temp[14]*334;
                stat<=3'b000;
                rdy<=1;  
            end
        endcase
	end
	else begin stat<=3'b000;
	end
    end
end

assign out = {temp[11],temp[6],temp[9],temp[3],temp[14],temp[7],temp[10],
temp[1],temp[13],temp[5],temp[15],temp[2],temp[8],temp[4],temp[12],temp[0]};
assign ready =rdy;
endmodule
