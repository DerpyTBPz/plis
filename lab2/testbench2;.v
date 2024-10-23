module testbench2;
    reg clk;
    reg rst;
    wire [7:0] out;
    wire [7:0] temp;

    parameter CLK_PERIOD = 125;

    lab2_delay lab2_delay_inst(.clk(clk), .rst(rst), .out(out), .temp(temp));
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
        $display("Time: %0t | temp: %b", $time, temp);
    end
endmodule