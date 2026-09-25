module down_counter_tb;
	reg clk=1'b0,reset=1'b0;
	wire [3:0]count;
	
	down_counter DUT(clk,reset,count);
	always #5 clk = ~clk;
	
	task rst;
	begin
		@(negedge clk);
		reset=1'b1;
		@(negedge clk);
		reset=1'b0;
	end
	endtask
	
	initial begin
		$dumpfile("down_counter.vcd");
		$dumpvars(0,down_counter_tb);
		rst;
		repeat(20) @(posedge clk);
		$finish;
	end
initial $monitor("time=%t,clk=%b,reset=%b,count=%b",$time,clk,reset,count);
endmodule
