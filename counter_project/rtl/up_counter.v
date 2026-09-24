//4 bit counter rtl code 
module up_counter(input clk,reset,output reg[3:0] count);
	always@(posedge clk)
		begin
			if(reset || count==4'd15)
				count<=4'd0;
			else
				count<=count+1'b1;
		end
endmodule
