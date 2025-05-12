`timescale 1ns / 1ps

module traffic_light_fsm(
    input wire clk,
    input wire rst,
    output reg [2:0] light  // [2]=Red, [1]=Yellow, [0]=Green
);

    parameter RED = 2'b00, GREEN = 2'b01, YELLOW = 2'b10;

    reg [1:0] state, next_state;
    reg [3:0] timer;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= RED;
            timer <= 0;
        end else begin
            if (timer == 4'd9)
                state <= next_state;
            timer <= (timer == 4'd9) ? 0 : timer + 1;
        end
    end

    always @(*) begin
        case (state)
            RED:    next_state = GREEN;
            GREEN:  next_state = YELLOW;
            YELLOW: next_state = RED;
            default: next_state = RED;
        endcase
    end

    always @(*) begin
        case (state)
            RED:    light = 3'b100;
            GREEN:  light = 3'b001;
            YELLOW: light = 3'b010;
            default: light = 3'b000;
        endcase
    end

endmodule

