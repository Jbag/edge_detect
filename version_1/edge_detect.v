module		edge_detect(
	input					clk,							//输入系统时钟
	input					rst_n,							//复位信号，低电平有效
	input					rx_int,							//需要检测的输入信号
	output					pos_rx_int,						//检测到上升沿信号
	output					neg_rx_int,						//检测到下降沿信号
	output					doub_rx_int						//双边检测信号
);
			
reg		rx_int0,rx_int1,rx_int2;							//在内部新建寄存器，用来暂存数据信号
															//若这里只用到两个寄存器变量，那么边沿检测信号是实时输出的
always	@(posedge	clk	or	negedge	rst_n)
	begin
		if(!rst_n)
			begin
				rx_int0		<=		1'b0;
				rx_int1		<=		1'b0;
				rx_int2		<=		1'b0;
			end             
		else                
			begin           
				rx_int0		<=		rx_int;					//初始值信号赋值给0
				rx_int1		<=	    rx_int0;				//0的前一个周期的信号赋给1
				rx_int2		<=	    rx_int1;				//1的前一个周期的信号赋给2
			end
	end

assign		pos_rx_int	=	rx_int1		&	~rx_int2;		//前一个周期的信号为0，当前周期信号为1，则上升沿检测信号为1（有效），即检测到一个上升沿信号
assign		neg_rx_int	=	~rx_int1	&	rx_int2;		//前一个周期的信号为1，当前周期信号为0，则下降沿检测信号为1（有效），即检测到一个下降沿信号
assign		doub_rx_int	=	rx_int1		^	rx_int2;		//两次变量发生变化时，双边检测信号为1（有效），即检测到上升沿、和下降沿信号

endmodule





