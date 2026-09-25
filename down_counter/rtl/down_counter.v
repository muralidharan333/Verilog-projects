//4-BIT DOWN_COUNTER
module down_counter(input clk,reset,output reg [3:0]count);
	always@(posedge clk)
		begin
		if(reset)
		count<=4'd15;
		else if(count > 0)
			count<=count-1'b1;
		else
			count<=4'd15;
		end
	endmodule
