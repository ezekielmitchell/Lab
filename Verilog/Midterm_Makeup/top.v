/**
Ezekiel Mitchell
ECEGR 2220 
Morse Code - De1-SoC
June 13, 2025
**/

module top(
    input wire CLOCK_50,
    input wire [3:0] KEY,
    input wire [9:0] SW,
    output reg [9:0] LEDR
);

    // Timer for 0.5 second ticks
    reg [24:0] timer;
    reg tick;
    
    always @(posedge CLOCK_50 or negedge KEY[0]) begin
        if (~KEY[0]) begin
            timer <= 0;
            tick <= 0;
        end
        else if (timer >= 24_999_999) begin
            timer <= 0;
            tick <= 1;
        end
        else begin
            timer <= timer + 1;
            tick <= 0;
        end
    end

    // State machine
    reg [1:0] state;
    parameter IDLE = 0, TRANSMIT = 1, PAUSE = 2;
    
    // Transmission control
    reg [2:0] symbol_pos;
    reg [1:0] tick_count;
    reg prev_key1;
    
    // Morse patterns: A=.-, B=-..., C=-.-., D=-.., E=., F=..-, G=--., H=....
    reg [3:0] pattern;
    reg [2:0] length;
    
    always @(*) begin
        case(SW[2:0])
            3'd0: begin pattern = 4'b0100; length = 2; end  // A: .-
            3'd1: begin pattern = 4'b1000; length = 4; end  // B: -...
            3'd2: begin pattern = 4'b1010; length = 4; end  // C: -.-.
            3'd3: begin pattern = 4'b1000; length = 3; end  // D: -..
            3'd4: begin pattern = 4'b0000; length = 1; end  // E: .
            3'd5: begin pattern = 4'b0010; length = 4; end  // F: ..-.
            3'd6: begin pattern = 4'b1100; length = 3; end  // G: --.
            3'd7: begin pattern = 4'b0000; length = 4; end  // H: ....
        endcase
    end
    
    wire current_symbol = pattern[3-symbol_pos];  // Get bit from left
    wire [1:0] symbol_duration = current_symbol ? 3 : 1;  // dash=3, dot=1

    always @(posedge CLOCK_50 or negedge KEY[0]) begin
        if (~KEY[0]) begin
            state <= IDLE;
            symbol_pos <= 0;
            tick_count <= 0;
            prev_key1 <= 1;
            LEDR[0] <= 0;
        end
        else begin
            prev_key1 <= KEY[1];
            
            case(state)
                IDLE: begin
                    LEDR[0] <= 0;
                    if (~KEY[1] && prev_key1) begin  // Button pressed
                        state <= TRANSMIT;
                        symbol_pos <= 0;
                        tick_count <= 0;
                    end
                end
                
                TRANSMIT: begin
                    if (tick) begin
                        if (tick_count < symbol_duration) begin
                            LEDR[0] <= 1;
                            tick_count <= tick_count + 1;
                        end
                        else begin
                            LEDR[0] <= 0;
                            tick_count <= 0;
                            symbol_pos <= symbol_pos + 1;
                            if (symbol_pos >= length - 1)
                                state <= IDLE;
                            else
                                state <= PAUSE;
                        end
                    end
                end
                
                PAUSE: begin
                    if (tick) begin
                        LEDR[0] <= 0;
                        state <= TRANSMIT;
                    end
                end
            endcase
        end
    end
    
    // Display selected letter
    always @(*) begin
        LEDR[9:1] = {6'b0, SW[2:0]};
    end

endmodule
