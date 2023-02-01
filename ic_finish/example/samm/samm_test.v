`timescale 1ns / 1ps

module samm_test;

parameter 	N = 8;
parameter 	M = 8;
parameter	CLK_PERIOD = 20;

reg		[2*M*N-1:0] A0;

wire     [7:0] count_test;
wire     [127:0] data_A_test;
wire     [7:0]P_wire_hor_test_1;
wire     [7:0]P_wire_hor_test_2;
wire     [7:0]P_wire_hor_test_3;
wire     [7:0]P_wire_hor_test_4;
//wire     		[2*M*N-1:0] A;
reg				In_Dv;

wire			Out_Dv;
wire	 [N*2*M*M-1:0] P0;

reg		Clk;
reg		Rst_n;
  integer fid;
initial fid = $fopen("./MemData.txt","w");

integer i=0;
initial
Clk=0;
always # (CLK_PERIOD/2) Clk=~Clk;

genvar j;

//assign P0_temp = uut.P_reg[2];
//assign test_count_reg = uut.count_reg;
assign count_test = uut.count;
assign Sclr_test = uut.Sclr;
assign data_A_test = uut.data_A;
assign P_wire_hor_test_1 = uut.Pwire_hor[0];
assign P_wire_hor_test_2 = uut.Pwire_hor[1];
assign P_wire_hor_test_3 = uut.Pwire_hor[2];
assign P_wire_hor_test_4 = uut.Pwire_hor[3];
initial begin
    $vcdpluson(0);
// Rst_n=1'b1;
 //#5
  Rst_n=1'b0;
In_Dv = 0;
A0 = 128'h0;

#35;
Rst_n = 1'b1;
//1
#25;

for(i=0;i<5;i=i+1) begin
In_Dv =1'b1;

//2
A0 = 128'h00000000010101010000000001010101;
//3
#20;
A0 = 128'h00000000010101010000000001010101;
//4
#20;
A0 = 128'h00000000010101010000000001010101;
//5
#20
A0 = 128'h00000000010101010000000001010101;
#20;
A0 = 128'h00000000010101010000000001010101;
//3
#20;
A0 = 128'h00000000010101010000000001010101;
//4
#20;
A0 = 128'h00000000010101010000000001010101;
//5
#20
A0 = 128'h00000000010101010000000001010101;
#20;

In_Dv = 0;
//A0 = 128'h00000000010101010000000001010101
//#20;
A0 = 128'h0;
//Rst_n = 1'b0;
#500;
Rst_n = 1'b0;
#40
Rst_n = 1'b1;
end
$finish;

end

always @(P0)
  begin
       $fwrite(fid,"out_data: %h \n",P0);
  end

  always @ (A0) begin
      #5;
      $display(" input   = %d", A0[0]);
     // $display("input_a  = %d", A_test);
  end

samm #
	(
	.N(N),.M(M)
	)
	uut
	(
	.Clk(Clk),
	.Rst_n(Rst_n),
	.In_Dv(In_Dv),
	.A(A0),	
	.Out_data(P0),
	.Out_Dv(Out_Dv)
    );
endmodule
