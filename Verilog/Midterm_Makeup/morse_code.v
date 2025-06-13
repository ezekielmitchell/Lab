/**
Ezekiel A. Mitchell
ECEGR 2220 : Microprocessor Design
Midterm Makeup : More Cose
Submitted : 2025-06-13
**/

module top(
    input wire CLOCK_50,
    input wire [3:0] KEY,
    input wire [9:0] SW,
    output reg [9:0] LEDR
);

    // Clock divider for 0.5 second timing
    reg [24:0] clock_counter;
    reg half_second_tick;
    
    always @(posedge CLOCK_50 or negedge KEY[0]) begin
        if (~KEY[0]) begin
            clock_counter <= 25'd0;
            half_second_tick <= 1'b0;
        end
        else if (clock_counter >= 25_000_000 - 1) begin
            clock_counter <= 25'd0;
            half_second_tick <= 1'b1;
        end
        else begin
            clock_counter <= clock_counter + 1;
            half_second_tick <= 1'b0;
        end
    end

    // Morse code patterns and lengths
    reg [7:0] morse_pattern;
    reg [3:0] pattern_length;
    
    always @(*) begin
        case(SW[2:0])
            3'b000: begin // A: .-
                morse_pattern = 8'b01000000;
                pattern_length = 4'd2;
            end
            3'b001: begin // B: -...
                morse_pattern = 8'b10000000;
                pattern_length = 4'd4;
            end
            3'b010: begin // C: -.-.
                morse_pattern = 8'b10100000;
                pattern_length = 4'd4;
            end
            3'b011: begin // D: -..
                morse_pattern = 8'b10000000;
                pattern_length = 4'd3;
            end
            3'b100: begin // E: .
                morse_pattern = 8'b00000000;
                pattern_length = 4'd1;
            end
            3'b101: begin // F: ..-.
                morse_pattern = 8'b00100000;
                pattern_length = 4'd4;
            end
            3'b110: begin // G: --.
                morse_pattern = 8'b11000000;
                pattern_length = 4'd3;
            end
            3'b111: begin // H: ....
                morse_pattern = 8'b00000000;
                pattern_length = 4'd4;
            end
            default: begin
                morse_pattern = 8'b00000000;
                pattern_length = 4'd0;
            end
        endcase
    end

    // State machine and transmission control
    reg [1:0] state;
    reg [7:0] current_pattern;
    reg [3:0] symbols_remaining;
    reg [1:0] pulse_counter;
    reg key1_prev;
    
    parameter IDLE = 2'b00;
    parameter TRANSMIT = 2'b01;
    parameter GAP = 2'b10;
    parameter DONE = 2'b11;

    always @(posedge CLOCK_50 or negedge KEY[0]) begin
        if (~KEY[0]) begin
            state <= IDLE;
            current_pattern <= 8'd0;
            symbols_remaining <= 4'd0;
            pulse_counter <= 2'd0;
            key1_prev <= 1'b1;
            LEDR[0] <= 1'b0;
        end
        else begin
            key1_prev <= KEY[1];
            
            if (half_second_tick) begin
                case(state)
                    IDLE: begin
                        LEDR[0] <= 1'b0;
                        if (~KEY[1] && key1_prev) begin // Button press detected
                            current_pattern <= morse_pattern;
                            symbols_remaining <= pattern_length;
                            pulse_counter <= 2'd0;
                            state <= TRANSMIT;
                        end
                    end
                    
                    TRANSMIT: begin
                        if (symbols_remaining > 0) begin
                            // Determine if current symbol is dot or dash
                            if (current_pattern[7] == 1'b0) begin // Dot
                                if (pulse_counter == 2'd0) begin
                                    LEDR[0] <= 1'b1;
                                    pulse_counter <= pulse_counter + 1;
                                end
                                else begin
                                    LEDR[0] <= 1'b0;
                                    pulse_counter <= 2'd0;
                                    current_pattern <= current_pattern << 1;
                                    symbols_remaining <= symbols_remaining - 1;
                                    if (symbols_remaining > 1)
                                        state <= GAP;
                                    else
                                        state <= DONE;
                                end
                            end
                            else begin // Dash
                                if (pulse_counter < 2'd3) begin
                                    LEDR[0] <= 1'b1;
                                    pulse_counter <= pulse_counter + 1;
                                end
                                else begin
                                    LEDR[0] <= 1'b0;
                                    pulse_counter <= 2'd0;
                                    current_pattern <= current_pattern << 1;
                                    symbols_remaining <= symbols_remaining - 1;
                                    if (symbols_remaining > 1)
                                        state <= GAP;
                                    else
                                        state <= DONE;
                                end
                            end
                        end
                        else begin
                            state <= DONE;
                        end
                    end
                    
                    GAP: begin
                        LEDR[0] <= 1'b0;
                        state <= TRANSMIT;
                    end
                    
                    DONE: begin
                        LEDR[0] <= 1'b0;
                        state <= IDLE;
                    end
                    
                    default: begin
                        state <= IDLE;
                        LEDR[0] <= 1'b0;
                    end
                endcase
            end
        end
    end
    
    // Display selected letter on remaining LEDs
    always @(*) begin
        LEDR[9:1] = 9'd0;
        LEDR[3:1] = SW[2:0];
    end

endmodule
