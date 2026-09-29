// 4-BIT UP_DOWN_COUNTER TESTBENCH
module up_down_con_tb();
reg clk,reset;
reg load,mode;
reg [3:0]data;
wire [3:0]count;
integer i;
up_down_con DUT(.clk(clk),.reset(reset),.load(load),.mode(mode),.data(data),.count(count));
	
	initial 
	   begin
		clk = 1'b0;
		forever
		#10 clk = ~clk;
	end
  
  task initialize;
	begin
		load=1'd0;
		mode=1'd0;
		data=4'd0;
	end
  endtask
  
task rst;
	begin
	@(negedge clk);
	reset = 1'b1;
	@(negedge clk);
	reset = 1'b0;
	end
endtask

task modes(input l,input m);
	begin
	@(negedge clk);
	mode = m;
	load = l;
	end
endtask

task inputs(input [3:0]d);
	begin
	@(negedge clk);
	data = d;
	end
endtask

initial begin
	$dumpfile("up_down_con.vcd");
	$dumpvars(0,up_down_con_tb);
	initialize;
	#5;
	rst();
	modes(1'b1,1'b1);
	#10;
	for(i=0;i<16;i=i+1)begin
	inputs(i);
	#10;
	end
	modes(1'b0,1'b0);
	repeat(15)@(posedge clk);
	modes(1'b0,1'b1);
	#1000;
	$finish();
	end
initial $monitor("time=%t,clk=%b,reset=%b,load=%b,mode=%b,data=%b,count=%b",$time,clk,reset,load,mode,data,count);
endmodule
