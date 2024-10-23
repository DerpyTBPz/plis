module lab2(input clk, input rst, output reg [7:0] out);
    reg [27:0] counter;
    parameter MAX_COUNT = 8000;
    reg tick;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            out = 0;
            counter = 0;
        end else begin
            if (tick) begin
                out = out + 1; 
                tick = 0;
            end else begin
                counter = counter + 1;
                if (counter == MAX_COUNT) begin
                    tick = 1;
                    counter = 0;
                end
            end
        end
    end

endmodule
