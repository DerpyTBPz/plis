module FSM (clk, reset, y);
    input clk, reset;
    output y;
    reg [1:0] state, nextstate;
    
    always @ (posedge clk or posedge reset) begin
        if (reset)
            state <= 2'b00;
        else
            state <= nextstate;   
    end 
    always @ (state) begin
        case (state)
            2'b00: nextstate = 2'b01;
            2'b01: nextstate = 2'b10;
            2'b10: nextstate = 2'b00;
            default: nextstate = 2'b00;
        endcase
    end    
    assign y = (state == 2'b00);
endmodule 

module Moore (clk, rst, a, y);
    input clk, rst, a;
    output y;
    reg [2:0] state, nextstate;
    parameter S0 = 3'b000;
    parameter S1 = 3'b001;
    parameter S2 = 3'b010;
    parameter S3 = 3'b011;
    parameter S4 = 3'b100;

    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S0;
        else
            state <= nextstate;
    end

    always @ (state) begin
        case (state)
            S0: if(a) nextstate = S1;
                else nextstate = S0;
            S1: if(a) nextstate = S2;
                else nextstate = S0;
            S2: if(a) nextstate = S2;
                else nextstate = S3;
            S3: if(a) nextstate = S4;
                else nextstate = S0;
            S4: if(a) nextstate = S2;
                else nextstate = S0;
            default: nextstate = S0;
        endcase
    end
    assign y = (state == S4);
endmodule

module Mealy (clk, rst, a, y);
    input clk, rst, a;
    output y;
    reg [1:0] state, nextstate;
    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;
    parameter S3 = 2'b11;

    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S0;
        else
            state <= nextstate;
    end

    always @ (state) begin
        case (state)
            S0: if(a) nextstate = S1;
                else nextstate = S0;
            S1: if(a) nextstate = S2;
                else nextstate = S0;
            S2: if(a) nextstate = S2;
                else nextstate = S3;
            S3: if(a) nextstate = S1;
                else nextstate = S0;
            default: nextstate = S0;
        endcase
    end
    assign y = (a & state == S3);
endmodule 

module SM8 (clk, rst, out);
    input clk, rst;
    output out;
    reg [2:0] state, nextstate;
    
    always @ (posedge clk or posedge rst) begin
        if (rst)
            state <= 3'b000;
        else
            state <= nextstate;   
    end 
    always @ (state) begin
        case (state)
            3'b000: nextstate = 3'b001;
            3'b001: nextstate = 3'b010;
            3'b010: nextstate = 3'b011;
            3'b011: nextstate = 3'b100;
            3'b100: nextstate = 3'b101;
            3'b101: nextstate = 3'b110;
            3'b110: nextstate = 3'b111;
            3'b111: nextstate = 3'b000;            
            default: nextstate = 3'b000;
        endcase
    end    
    assign out = (state == 3'b000);
endmodule
