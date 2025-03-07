/*
module lab1(

	input wire reset,
	input wire clk,
	output reg [3:0]cnt
	
);


always @(posedge clk or posedge reset)
	if(reset)
		cnt <= 0;
	else
		cnt <= cnt + 1;


endmodule


module counter(count, clk, rst);
	input clk, rst;
	output reg [7:0] count;
	
	always @(posedge clk or negedge rst)
	if(!rst)
		count <= 8'h00;
	else if (count <= 8'h1F)
		count <= 8'h00;
	else
		count <= count + 1'b1;
endmodule

module counter2(count, clk, rst);
	input clk, rst;
	output reg [7:0] count;
	wire nnn;
	
	assign nnn = (count == 8'h1F);
	
	always @(posedge clk or negedge rst)
	if(!rst)
		count <= 8'h00;
	else if (nnn)
		count <= 8'h00;
	else
		count <= count + 1'b1;
endmodule

module counter3(count, clk, rst);
	input clk, rst;
	output reg [7:0] count;
	wire nnn;
	wire [7:0] _count;
	
	assign nnn = (count == 8'h1F);
	assign _count = (nnn)?8'h00:count + 1'b1;
	
	always @(posedge clk or negedge rst)
	if(!rst)
		count <= 8'h00;	
	else
		count <= _count;
endmodule

/*
module mux81_simple(in0, in1, in2, in3, in4, in5, in6, in7, sel0, sel1, out);
	output out;
	input in0, in1, in2, in3, in4, in5, in6, in7;
	input sel0, sel1;
	assign out = sel1?(sel0?in7:in6):(sel0?in5:in4):(sel0?in3:in2):(sel0?in1:in0);
endmodule


module mux81_ena(out, in0, in1, in2, in3, in4, in5, in6, in7, sel, ena);
	output out;
	input in0, in1, in2, in3, in4, in5, in6, in7;
	input [2:0] sel;
	input ena;
	reg out;
	
	lab1 l1();
	
	always @ (in7 or in6 or in5 or in4 or in3 or in2 or in1 or in0 or sel or ena)
	if (ena) 
		out = 0;
	else begin
		case (sel)
		0: out = in0;
		1: out = in1;
		2: out = in2;
		3: out = in3;
		4: out = in4;
		5: out = in5;
		6: out = in6;
		7: out = in7;
		endcase
	end
endmodule

*/

module mux210(
			input  a,
			input  b,
			input  sel,
			output out
			);
	assign out = sel?b:a;
endmodule

module mux41(
			input [3:0] d,
			input [1:0] sel,
			output out
			);
			
	wire out0, out1;
	
	mux210 M0(.a(d[0]), .b(d[1]), .sel(sel[0]), .out(out0));
	mux210 M1(.a(d[2]), .b(d[3]), .sel(sel[0]), .out(out1));
	mux210 M2(.a(out0), .b(out1), .sel(sel[1]), .out(out));
	
endmodule








