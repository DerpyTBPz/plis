module lab2(input clk, input rst, output reg [7:0] out); //x6 + x4 + x3 + x2 + 1
	wire feedback = out[7] ^ out[5] ^ out [4] ^ out[3];	
	reg [7:0] tmp;
	
	always @(posedge clk or posedge rst) begin
		if (rst)
			out <= 8'b1;
		else begin
				out <= {out[6:0], feedback};				
			end
	end	
endmodule

module lab2_delay(input clk, input rst, output reg [7:0] out, output reg [7:0] temp);
	reg [27:0] counter;
	parameter MAX_COUNT = 4000;
	reg tick;
	wire feedback = temp[7] ^ temp[5] ^ temp[4] ^ temp[3];	

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			temp <= 8'b1;
			out <= 8'b1;
			counter = 0;
		end else begin
			temp <= {temp[6:0], feedback};
			if (tick) begin
				out = temp;
				tick = 0;
			end else begin
				counter = counter + 1;
				if (counter == MAX_COUNT) begin
					counter = 0;
					tick = 1;
				end
			end								
		end
	end	
endmodule

module delay(input clk, input rst, output reg tick);
	reg [27:0] counter;
	parameter MAX_COUNT = 8000000;

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			counter <= 0;
			tick <= 0;
		end else begin
			if (counter == MAX_COUNT-1) begin
				counter <= 0;
				tick <= 1;
			end else begin
				counter <= counter + 1;
				tick <= 0;
			end
		end
	end
endmodule		


