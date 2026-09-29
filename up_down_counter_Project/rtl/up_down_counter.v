//4-BIT UP_DOWN_COUNTER
module up_down_counter(input clk,reset,load,mode,input [3:0]data,output reg [3:0]count);
	always@(posedge clk)
		begin
			if (reset)begin
				count <= 4'd0;
			end
			else if (load)
				count <= data;
			else if(mode)
				count <= count+1'b1;
			else 
				count <= count-1'b1;
		end
endmodule
