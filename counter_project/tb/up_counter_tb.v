//tesetbench for 4-bit up_counter
module up_counter_tb;
	reg clk=1'b0,reset=1'b0;
	wire [3:0]count;
	
	up_counter DUT(.clk(clk),.reset(reset),.count(count));
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
		$dumpfile("up_counter.vcd");
		$dumpvars(0,up_counter_tb);
		rst;
		#100;
		$finish;
	end
initial $monitor("time=%t,clk=%b,reset=%b,count=%b",$time,clk,reset,count);
endmodule
