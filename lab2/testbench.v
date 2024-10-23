module testbench;
    reg clk;
    reg rst;
    wire [7:0] out;

    lab2 lab2_inst(.clk(clk), .rst(rst), .out(out));

    always #5 clk = ~clk;
    initial begin 
        clk = 0;
        rst = 1;
        #10 rst = 0;
        #1000 $finish;
    end

    always @(posedge clk) begin
        $display("Time: %0t | out: %b", $time, out);
    end
endmodule

