`timescale		1ns/1ps
	
module	edge_detect_tb;
	reg				clk,rst_n,rx_int;
	wire			pos_rx_int,neg_rx_int,doub_rx_int;
	
initial
	begin
		clk	=	0;
		rst_n	=0;
		rx_int	=0;
		#50	rst_n=1;
		
	end
	
always 	#10			clk	=	~clk;					//时钟激励信号
always	#150		rx_int	=	~rx_int;			//将输入信号模拟成不断变化的


edge_detect		edge_detect_inst(
	.clk				(clk),
	.rst_n				(rst_n),
	.rx_int				(rx_int),
	.pos_rx_int			(pos_rx_int),
	.neg_rx_int			(neg_rx_int),
	.doub_rx_int		(doub_rx_int)
);

endmodule