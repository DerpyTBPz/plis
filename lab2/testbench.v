module testbench;
    reg clk;
    reg rst;
    wire [7:0] out;

    parameter CLK_PERIOD = 125;

    lab2 lab2_inst(.clk(clk), .rst(rst), .out(out));
    always begin
        clk = 1'b0;
        #(CLK_PERIOD/2);
        clk = 1'b1;
        #(CLK_PERIOD/2);
    end
    initial begin 
        rst = 1'b1;
        #100 rst = 1'b0;
        #10000000 $stop;
    end

    always @(posedge clk) begin
        $display("Time: %0t | out: %b", $time, out);
    end
endmodule

