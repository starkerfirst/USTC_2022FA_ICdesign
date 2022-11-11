`timescale 1ns/1ps
`define M_left A   //左矩阵测试
`define M_right B  //右矩阵测试


module systolic_array_sim_without_control
(
	
);
	

	integer i,j;
	reg clk;
	reg rstn;
	reg OutputSign;
	reg load; //load使能信号
	reg shift; //shift使能信号
	
	//测试使用
	reg [2:0] id_A_0; 
	reg [2:0] id_A_1; 
	reg [2:0] id_A_2; 
	reg [2:0] id_A_3; 
	
	reg [2:0] id_B_0; 
	reg [2:0] id_B_1; 
	reg [2:0] id_B_2; 
	reg [2:0] id_B_3;
	
	reg [7:0] shift_in_A_0;
	reg [7:0] shift_in_A_1;
	reg [7:0] shift_in_A_2;
	reg [7:0] shift_in_A_3;
	
	reg [7:0] shift_in_B_0;
	reg [7:0] shift_in_B_1;
	reg [7:0] shift_in_B_2;
	reg [7:0] shift_in_B_3;
	
	wire [7:0] shift_out_0;
	wire [7:0] shift_out_1;
	wire [7:0] shift_out_2;
    wire [7:0] shift_out_3;

systolic_array_wrapper  test//脉动阵列封装
(
	.clk(clk),
	.rstn(rstn),
	.OutputSign(OutputSign),
	.load(load), //load使能信号
	.shift(shift), //shift使能信号
	
	//测试使用
	.id_A_0(id_A_0), 
	.id_A_1(id_A_1), 
	.id_A_2(id_A_2), 
	.id_A_3(id_A_3), 
	
	.id_B_0(id_B_0), 
	.id_B_1(id_B_1), 
	.id_B_2(id_B_2), 
	.id_B_3(id_B_3),
	
	.shift_in_A_0(shift_in_A_0),
	.shift_in_A_1(shift_in_A_1),
	.shift_in_A_2(shift_in_A_2),
	.shift_in_A_3(shift_in_A_3),
	
	.shift_in_B_0(shift_in_B_0),
	.shift_in_B_1(shift_in_B_1),
	.shift_in_B_2(shift_in_B_2),
	.shift_in_B_3(shift_in_B_3),
	
	.shift_out_0(shift_out_0),
	.shift_out_1(shift_out_1),
	.shift_out_2(shift_out_2),
	.shift_out_3(shift_out_3)
);




/*
样例：
1.  A = {
			1 2 3 4
			1 2 3 4 
			1 2 3 4
			1 2 3 4
		}
	B = {
			1 1 1 1
			2 2 2 2 
			3 3 3 3
			4 4 4 4
		}
	C = {
			30 30 30 30
			30 30 30 30 
			30 30 30 30
			30 30 30 30
		}
	(done)
	
2.  D = {
			1 1 1 1
			1 0 0 1 
			1 0 0 1
			1 1 1 1
		}
	E = {
			12 14 16 18
			20 22 24 26 
			28 30 32 34
			36 38 40 42
		}
	F = {
			96 104 112 120
			48 52 56 60
			48 52 56 60
			96 104 112 120
		}
	(done)
		
3.  G = {
			0 3 6 9
			12 15 18 21
			24 27 30 33
			36 39 42 45
		} 
	
	H = {
			2 0 0 1
			0 2 1 0
			0 1 2 0
			1 0 0 2
		}
		
	I = {
			9 12 15 18
			45 48 51 54
			81 84 87 90
			117 120 123 126
		}
*/

integer A[0:15];
integer B[0:15];
integer D[0:15];
integer E[0:15];
integer H[0:15];
integer I[0:15];
 
//矩阵输入
initial
begin
	for(i=0;i<4;i=i+1)
		for(j=0;j<4;j=j+1)
			begin
				A[i*4+j] = j+1;
				B[i*4+j] = i+1;
				
				if(i==0||i==3||j==0||j==3) D[i*4+j] = 1;
				else D[i*4+j] = 0;
				E[i*4+j] = 2*(i*4+j)+12;
				
				H[i*4+j] = 3*(i*4+j);
				if(i==j) I[i*4+j] = 2;
				else if(i+j==3) I[i*4+j] = 1;
				else I[i*4+j] = 0;
			end
end

	
	
	//integer C[0:15]
	
	/*integer REF1[0:15] = {
	
			30, 30, 30, 30,
			30, 30, 30, 30,
			30, 30, 30, 30,
			30, 30, 30, 30
	};*/
	
	 
	
	//integer F[0:15];
	
	/*integer REF2[0:15] = {
			96, 104, 112, 120,
			48, 52, 56, 60,
			48, 52, 56, 60,
			96, 104, 112, 120
	};*/
	
	
//测试代码
//warning: 本版测试代码假设每个周期都会在每个buffer里填充一个数据，共4个周期（后期取决于sram驱动来修改）
//warning: 本版测试代码不含FSM，由人为自行控制

//时钟生成
parameter clk_period = 20;


initial begin  
    clk = 1;  
    forever #(clk_period/2) clk = ~clk;  
end  



initial 
begin
//初始化系统
	rstn = 0;
$monitor("T=%d, out0=%d, out1= %d, out2=%d, out3=%d", $time, shift_out_0, shift_out_1, shift_out_2, shift_out_3);
$monitoron;
	OutputSign = 0;
	load = 0; //load使能信号
	shift = 0; //shift使能信号
	
	//测试使用
	id_A_0 = 0; 
	id_A_1 = 0; 
	id_A_2 = 0; 
	id_A_3 = 0; 
	
	id_B_0 = 0; 
	id_B_1 = 0; 
	id_B_2 = 0; 
	id_B_3 = 0;
	
	shift_in_A_0 = 0;
	shift_in_A_1 = 0;
	shift_in_A_2 = 0;
	shift_in_A_3 = 0;
	
	shift_in_B_0 = 0;
	shift_in_B_1 = 0;
	shift_in_B_2 = 0;
	shift_in_B_3 = 0;
	
	#40 rstn = 1;


//装载数据
	for(i=0; i<4; i=i+1)
	begin
		id_A_0 = 3+i; 
		id_A_1 = 2+i; 
		id_A_2 = 1+i; 
		id_A_3 = 0+i; 
	
		id_B_0 = 3+i; 
		id_B_1 = 2+i; 
		id_B_2 = 1+i; 
		id_B_3 = 0+i; 

		shift_in_A_0 = A[0*4+3-i];
		shift_in_A_1 = A[1*4+3-i];
		shift_in_A_2 = A[2*4+3-i];
		shift_in_A_3 = A[3*4+3-i];
		
		shift_in_B_0 = B[(3-i)*4+3];
		shift_in_B_1 = B[(3-i)*4+2];
		shift_in_B_2 = B[(3-i)*4+1];
		shift_in_B_3 = B[(3-i)*4+0];
		
		load = 1;
		
	#clk_period	; 
	end
	
//计算	
	load = 0;
	shift = 1;
	for(i=0; i<10; i=i+1) #clk_period ;
	
//输出
	shift = 0;
	OutputSign = 1;

	#(10*clk_period);
	

//第二次实验
//初始化系统
	
	rstn = 0;
	OutputSign = 0;
	load = 0; //load使能信号
	shift = 0; //shift使能信号
	
	//测试使用
	id_A_0 = 0; 
	id_A_1 = 0; 
	id_A_2 = 0; 
	id_A_3 = 0; 
	
	id_B_0 = 0; 
	id_B_1 = 0; 
	id_B_2 = 0; 
	id_B_3 = 0;
	
	shift_in_A_0 = 0;
	shift_in_A_1 = 0;
	shift_in_A_2 = 0;
	shift_in_A_3 = 0;
	
	shift_in_B_0 = 0;
	shift_in_B_1 = 0;
	shift_in_B_2 = 0;
	shift_in_B_3 = 0;
	

	#40 rstn = 1;

//装载数据
	for(i=0; i<4; i=i+1)
	begin
		id_A_0 = 3+i; 
		id_A_1 = 2+i; 
		id_A_2 = 1+i; 
		id_A_3 = 0+i; 
	
		id_B_0 = 3+i; 
		id_B_1 = 2+i; 
		id_B_2 = 1+i; 
		id_B_3 = 0+i; 

		shift_in_A_0 = D[0*4+3-i];
		shift_in_A_1 = D[1*4+3-i];
		shift_in_A_2 = D[2*4+3-i];
		shift_in_A_3 = D[3*4+3-i];
		
		shift_in_B_0 = E[(3-i)*4+0];
		shift_in_B_1 = E[(3-i)*4+1];
		shift_in_B_2 = E[(3-i)*4+2];
		shift_in_B_3 = E[(3-i)*4+3];
		
		load = 1;
		
	#clk_period	; 
	end
	
//计算	
	load = 0;
	shift = 1;
	for(i=0; i<10; i=i+1) #clk_period ;
	
//输出
	shift = 0;
	OutputSign = 1;
	
	#(10*clk_period);
	
//第三次实验
//初始化系统
	
	rstn = 0;
	OutputSign = 0;
	load = 0; //load使能信号
	shift = 0; //shift使能信号
	
	//测试使用
	id_A_0 = 0; 
	id_A_1 = 0; 
	id_A_2 = 0; 
	id_A_3 = 0; 
	
	id_B_0 = 0; 
	id_B_1 = 0; 
	id_B_2 = 0; 
	id_B_3 = 0;
	
	shift_in_A_0 = 0;
	shift_in_A_1 = 0;
	shift_in_A_2 = 0;
	shift_in_A_3 = 0;
	
	shift_in_B_0 = 0;
	shift_in_B_1 = 0;
	shift_in_B_2 = 0;
	shift_in_B_3 = 0;
	

	#40 rstn = 1;

//装载数据
	for(i=0; i<4; i=i+1)
	begin
		id_A_0 = 3+i; 
		id_A_1 = 2+i; 
		id_A_2 = 1+i; 
		id_A_3 = 0+i; 
	
		id_B_0 = 3+i; 
		id_B_1 = 2+i; 
		id_B_2 = 1+i; 
		id_B_3 = 0+i; 

		shift_in_A_0 = H[0*4+3-i];
		shift_in_A_1 = H[1*4+3-i];
		shift_in_A_2 = H[2*4+3-i];
		shift_in_A_3 = H[3*4+3-i];
		
		shift_in_B_0 = I[(3-i)*4+0];
		shift_in_B_1 = I[(3-i)*4+1];
		shift_in_B_2 = I[(3-i)*4+2];
		shift_in_B_3 = I[(3-i)*4+3];
		
		load = 1;
		
	#clk_period	; 
	end
	
//计算	
	load = 0;
	shift = 1;
	for(i=0; i<10; i=i+1) #clk_period ;
	
//输出
	shift = 0;
	OutputSign = 1;
	
	#(10*clk_period);
	$monitoroff;
	$finish;
end


endmodule
