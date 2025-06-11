module top(
    input wire [8:0] SW,
    output wire [9:0] LEDR,
    output wire [6:0] HEX0,
    output wire [6:0] HEX1
);

    wire [3:0] A, B;
    wire cin;
    wire [3:0] S;
    wire cout;
    
    // Input assignments per lab instructions
    assign A = SW[7:4];      // SW7-4 for input A
    assign B = SW[3:0];      // SW3-0 for input B  
    assign cin = SW[8];      // SW8 for carry-in
    
    // Connect SW switches to red LEDs for visual feedback
    assign LEDR[8:0] = SW[8:0];
    
    // Instantiate four full adders to create ripple-carry adder
    wire c0, c1, c2;  // intermediate carry signals
    
    full_adder fa0(
        .a(A[0]),
        .b(B[0]),
        .cin(cin),
        .sum(S[0]),
        .cout(c0)
    );
    
    full_adder fa1(
        .a(A[1]),
        .b(B[1]),
        .cin(c0),
        .sum(S[1]),
        .cout(c1)
    );
    
    full_adder fa2(
        .a(A[2]),
        .b(B[2]),
        .cin(c1),
        .sum(S[2]),
        .cout(c2)
    );
    
    full_adder fa3(
        .a(A[3]),
        .b(B[3]),
        .cin(c2),
        .sum(S[3]),
        .cout(cout)
    );
    
    // DE1-SoC adaptation: Use LEDR[9] for carry-out and 7-segment for sum
    assign LEDR[9] = cout;      // Carry-out on LEDR[9]
    
    // Display 4-bit sum on HEX0 (since DE1-SoC doesn't have green LEDs)
    seven_segment_decoder hex0_decoder(
        .hex_digit(S),
        .segments(HEX0)
    );
    
    // Display carry-out on HEX1 (0 or 1)
    seven_segment_decoder hex1_decoder(
        .hex_digit({3'b000, cout}),
        .segments(HEX1)
    );

endmodule

module full_adder(
    input wire a,
    input wire b,
    input wire cin,
    output wire sum,
    output wire cout
);

    // Full adder logic as shown in Figure 2a of lab document
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

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
            4'hA: segments = 7'b0001000; // A
            4'hB: segments = 7'b0000011; // b
            4'hC: segments = 7'b1000110; // C
            4'hD: segments = 7'b0100001; // d
            4'hE: segments = 7'b0000110; // E
            4'hF: segments = 7'b0001110; // F
            default: segments = 7'b1111111; // blank
        endcase
    end

endmodule
