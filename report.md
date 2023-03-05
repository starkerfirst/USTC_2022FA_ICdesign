# 芯设实验报告

### 4\*4脉动阵列设计

PB20000328  杨博涵



## **设计背景**

#### 介绍	

**脉动阵列**（systolic array）是一种由计算单元（PE）构成的阵列结构，其工作方式和过程犹如人体血液循环系统的工作方式和过程。在这种阵列结构中，数据按预先确定的“流水”方式在阵列的处理单元间有节奏地“流动”。在数据流动的过程中，所有的处理单元**同时并行**地对流经它的数据进行处理，因而它可以达到很高的并行处理速度。同时，**预先确定的数据流动模式**使数据从流进处理单元阵列到流出处理单元阵列的过程中完成所有对它应该做的处理，无需再重新输入这些数据 ，且只有阵列的“边界”处理单元与外界进行通信 ，由此实现在不增加阵列输入、输出带宽的条件下，提高阵列整体的处理速度。由于阵列和处理单元的结构简单、规则一致 ，可达到很高的模块化程度，非常适合超大规模集成电路的设计和制造。

由此可见，脉动阵列极其适合于具有固定计算模式、单操作简单重复的任务。本次实验便是利用脉动阵列加速矩阵乘法。

#### 脉动阵列的优势

脉动阵列发明于1982年H. T. Kung的论文"Why systolic architectures?"，其中作者给出了三个理由：

* **Simple and regular design**

脉动阵列简单而规整的布局极大的降低了设计成本，Google公司正是利用这个特点在数月内就基于脉动阵列完成了TPU的设计。

* **Concurrency and communication**

所有PE同时运行的特点提高了吞吐率，并且数据在其中流动完成一个个操作的过程无需从DRAM中额外取数据，极大利用了数据重用性，减少了带宽需求。一边流入数据，成品就从另一边流出来，无需额外缓存。

* **Balancing computation with I/O**

传统的计算系统的模型中，数据存取的带宽往往大大低于数据处理的速度。因此，整个系统的处理能力很大程度受限于访存的能力，这个问题也是多年来计算机体系结构研究的重要课题之一，可以说是推动处理器和存储器设计的一大动力。而脉动架构用了一个很简单的方法：**让数据尽量在处理单元中多流动一会儿**，巧妙的平衡了这个问题。

* **电路设计上的优势**

PE只能向相邻的PE发送数据，避免了全局广播和扇入（fan-in），减少了单管上的负载，获得快速的响应时间。

#### 脉动阵列的工业应用

第44届ISCA会议上，Google提出了用于数据中心服务器端进行神经网络推理加速的张量处理器TPU，其相比于服务器端的CPU与GPU速度快了近15-30倍。其中的MMU作为运算核心则是基于脉动阵列打造的。

<img src="C:\Users\STARKer-first\Desktop\v2-d.png" alt="v2-d" style="zoom: 67%;" />



## **设计方案**

本次实验，我根据脉动阵列的原理，设计了一个4*4的矩阵乘法加速阵列，大概的架构图如下所示。

<img src="C:\Users\STARKer-first\Desktop\3.png" alt="3" style="zoom: 67%;" />

输入的两个矩阵分别为A与B，A从左向右流动，B从上往下流动，乘积保留在cell当中，以供下个继续作为操作数。等到所有的数据全部计算完毕后，再将数据打拍取出。

同时，要实现正确的矩阵运算，数据进入脉动阵列需要调整好形式，并且按照一定的顺序。这就**需要对原始的矩阵进行一些reformat**，我增加了数据缓存区，用于规范输入数据的形状。

每一个cell由MAC和寄存器构成，寄存器包括A寄存器、B寄存器、输出寄存器，每个时钟计算output=A*B+output。

下图是一个示意图，但是采用的方案不是我用的Output Stationary方法，所以仅供参考。

![6](C:\Users\STARKer-first\Desktop\6.png)



#### 参数文档

##### DMA+准备区规格：

1. 准备区有AB两个，大小为7*4的移位寄存器阵列
2. DMA一次顺序访存一行4*2个数，然后交由准备区后进行下一次访存，一切由控制器控制
3. 要求一次对每个矩阵的每一单元同时load一个元素，则带宽是 8unit/clk
4. A矩阵的物理存储排布是关于竖直轴对称，B矩阵的物理存储排布是关于水平轴对称
5. 在ram里最好是A列优先，B行优先，这样是连续取址的

##### PE规格：

1. 采用A、B矩阵流入，输出固定的方法，在最后提取输出到缓存区
2. 8bitMAC
3. 全部采用流水化，短连线的方式

## 实现方法

verilog源代码由array.v、controller.v、pe.v、shift_buffer.v、systolic_array_wrapper.v组成

#### array.v

实现二维阵列的拓扑结构，连接各个例化的PE

#### controller.v

控制器代码为标准三段式FSM，由四个状态组成：

* **STATE_IDLE**

脉动阵列闲置状态

* **STATE_LOAD**

数据装载状态，由en信号从IDLE态转换过来

* **STATE_COMPUTE_PUMP**

数据注入阵列状态，等装载完毕后自动开始

* **STATE_COMPUTE_OUT** 

结果输出状态，节拍输出最终结果。

#### pe.v

乘加器MAC的实现

#### shift_buffer.v

移位寄存器的实现，包括数据排序控制器

#### systolic_array_wrapper.v

top文件

## 约束参数

### 时序约束

Clk_period = 40ns 

在这个周期下，芯片满足setup约束。同时，Hold约束也通过添加buffer成功满足，没有时序违例，全部met。

<img src="C:\Users\STARKer-first\AppData\Roaming\Typora\typora-user-images\image-20230305215042687.png" alt="image-20230305215042687" style="zoom:67%;" />

### floorplan && pns

采用固定宽高比的方式完成布局规划

<img src="C:\Users\STARKer-first\AppData\Roaming\Typora\typora-user-images\image-20230305215148726.png" alt="image-20230305215148726" style="zoom:67%;" />

同时，调整offset直至电源网不被vdd/vss pad阻挡

<img src="C:\Users\STARKer-first\AppData\Roaming\Typora\typora-user-images\image-20230305215212317.png" alt="image-20230305215212317" style="zoom:67%;" />

### 芯片接口

芯片共有20个pin，32个pad

* Clk_p, rstn_p : 常规pin

* En_p : 使能信号

* Ack_p : 工作完成信号

* P_shift_in : 输入数据（8bit）

* P_shift_out : 输出数据（8bit）

<img src="C:\Users\STARKer-first\AppData\Roaming\Typora\typora-user-images\image-20230305215253653.png" alt="image-20230305215253653" style="zoom:67%;" />

## 仿真结果

仿真了若干输入结果，均为正确，下面举例三种

* A =  	1 2 3 4
    			1 2 3 4 
        			1 2 3 4
        			1 2 3 4
    B =  	1 1 1 1
    			2 2 2 2 
    			3 3 3 3
    			4 4 4 4
    C = A*B =

    ​			30 30 30 30
    ​			30 30 30 30 
    ​			30 30 30 30
    ​			30 30 30 30

下图为仿真结果。T=40~120为load阶段，数据在装载进移位寄存器。T=120~440为注入阶段，共注入了(440-120)/20 = 16个时钟周期，从阵列左上角进入直到最后一个数据离开右下角。T=440~500为输出阶段，将4*4的矩阵C输出，结果正确。

<img src="D:\file_from_desktop\芯片设计实践\pic\systolic_array_sim_withctl1.png" alt="systolic_array_sim_withctl1" style="zoom:50%;" />

<img src="D:\file_from_desktop\芯片设计实践\pic\systolic_array_sim_withctl_serial_1.png" alt="systolic_array_sim_withctl_serial_1" style="zoom:50%;" />

* D =  	1 1 1 1
    			1 0 0 1 
        			1 0 0 1
        			1 1 1 1
    E =       12 14 16 18
    			20 22 24 26 
    			28 30 32 34
    			36 38 40 42
    F =   	96 104 112 120
    			48 52 56 60
    			48 52 56 60
    			96 104 112 120

T=1040~1120为输出阶段，将4*4的矩阵F输出，结果正确。

<img src="D:\file_from_desktop\芯片设计实践\pic\systolic_array_sim_withctl2.png" alt="systolic_array_sim_withctl2" style="zoom:50%;" />

<img src="D:\file_from_desktop\芯片设计实践\pic\systolic_array_sim_withctl_serial_2.png" alt="systolic_array_sim_withctl_serial_2" style="zoom:50%;" />

* G =  	0 3 6 9
    			12 15 18 21
        			24 27 30 33
        			36 39 42 45

    H =  	2 0 0 1
    			0 2 1 0
    			0 1 2 0
    			1 0 0 2
    I = 	   9 12 15 18
    		    45 48 51 54
    		    81 84 87 90
    		    117 120 123 126

    T=1660~1720为输出阶段，将4*4的矩阵I输出，结果正确。![systolic_array_sim_withctl3](D:\file_from_desktop\芯片设计实践\pic\systolic_array_sim_withctl3.png)

## 后续步骤

#### 综合

systolic array (4x4) schematic：

<img src="http://starkerfirst.github.io/YangbhPage/images/ICdesign_SA_schematic.png" alt="ICdesign_SA_schematic" style="zoom: 67%;" />

#### 布局布线

目前经过各项脚本参数（IOpad布局，电源网参数）的设置，最新版图已通过时序、drc和lvs检验。

<img src="http://starkerfirst.github.io/YangbhPage/images/ICdesign_layout.png" alt="ICdesign_SA_schematic" style="zoom:67%;" />

生成了相应的面积报告如下

<img src="D:\file_from_desktop\芯片设计实践\pic\apr_report.png" alt="apr_report" style="zoom: 50%;" />

#### release阶段

icc gds生成后，需要在cadence virtuoso上完成bonding pad和guard ring的手工版图添加，并在mentor calibre上进行DRC, ant, LVS验证，已全部通过

<img src="http://starkerfirst.github.io/YangbhPage/images/ICdesign_release.png" alt="ICdesign_release" style="zoom:67%;" />

<img src="http://starkerfirst.github.io/YangbhPage/images/ICdesign_release2.png" alt="ICdesign_release2" style="zoom:67%;" />

pad:

<img src="http://starkerfirst.github.io/YangbhPage/images/ICdesign_pad.png" alt="ICdesign_release2" style="zoom:67%;" />

inside:

<img src="http://starkerfirst.github.io/YangbhPage/images/ICdesign_inside.png" alt="ICdesign_release2" style="zoom:67%;" />

LVS：

<img src="D:\file_from_desktop\芯片设计实践\pic\lvs_correct.png" alt="lvs_correct" style="zoom:80%;" />

实验已完成，layout已提交。