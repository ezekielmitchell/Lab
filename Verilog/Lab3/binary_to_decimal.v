module binary_to_decimal(
    input wire [3:0] SW,
    output wire [6:0] HEX0,
    output wire [6:0] HEX1
);

    wire [3:0] V;
    wire z;
    wire [3:0] M;
    wire [3:0] B_out;
    
    assign V = SW[3:0];
    
    // Comparator: check if V > 9
    assign z = (V > 4'd9) ? 1'b1 : 1'b0;
    
    // Circuit A: subtract 10 from V
    wire [3:0] A_out;
    assign A_out = V - 4'd10;
    
    // Multiplexer M: select between V and A_out based on z
    assign M = z ? A_out : V;
    
    // Circuit B: generate tens digit (d1)
    assign B_out = z ? 4'd1 : 4'd0;
    
    // 7-segment decoder for ones digit (HEX0)
    seven_segment_decoder hex0_decoder(
        .hex_digit(M),
        .segments(HEX0)
    );
    
    // 7-segment decoder for tens digit (HEX1)
    seven_segment_decoder hex1_decoder(
        .hex_digit(B_out),
        .segments(HEX1)
    );

endmodule

module seven_segment_decoder(
    input wire [3:0] hex_digit,
    output reg [6:0] segments
);

    always @(*) begin
        case (hex_digit)
            4'h0: segments = 7'b1000000; // 0
            4'h1: segments = 7'b1111001; // 1
            4'h2: segments = 7'b0100100; // 2
            4'h3: segments = 7'b0110000; // 3
            4'h4: segments = 7'b0011001; // 4
            4'h5: segments = 7'b0010010; // 5
            4'h6: segments = 7'b0000010; // 6
            4'h7: segments = 7'b1111000; // 7
            4'h8: segments = 7'b0000000; // 8
            4'h9: segments = 7'b0010000; // 9
            default: segments = 7'b1111111; // blank
        endcase
    end

endmodule