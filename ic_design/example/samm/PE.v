`timescale 1ns / 1ps

module PE #(parameter	N = 8)
	 (
	input		Clk,
	input		Rst_n,
	input		Sclr,
	input		[N-1:0]A,
	input		[N-1:0]B,
	output	reg	[N-1:0]Next_A,
	output	reg	[N-1:0]Next_B,
	output	    [N*2-1:0]P
    );
    
    reg		[N*2-1:0] P_reg;
    wire	[N*2-1:0] P_net;
    
    always@(posedge Clk or negedge Rst_n)begin
    	if(!Rst_n) begin
    		Next_A <=0;
    		Next_B <=0;
    	end
    	else if(Sclr==0)begin
  		Next_A <=0;
    		Next_B <=0;
    	end
    	else begin
    		Next_A <= A;
    		Next_B <= B;
    	end
    end
    
    multadd #(.N(N)) Mul (
      .A(A),                // input wire [7 : 0] A
      .B(B),                // input wire [7 : 0] B
      .C(P_reg),                // input wire [15 : 0] C
      .P(P_net)                // output wire [15 : 0] P
    );

    always@(posedge Clk or negedge Rst_n)begin
 		if(!Rst_n)
 			P_reg <= 0;
 		else if(Sclr==1'b0)
 			P_reg <= 0;
 		else
 			P_reg <= P_net;	
    end
    
    assign  P = P_net;	
endmodule