module top(
    input wire [9:0] SW,
    output wire [6:0] HEX0,
    output wire [6:0] HEX1,
    output wire [6:0] HEX4,
    output wire [6:0] HEX6
);

    wire [3:0] A, B;
    wire [7:0] P;
    
    assign A = SW[9:6];  // Using SW[9:6] instead of SW[11:8] for DE1-SoC
    assign B = SW[3:0];
    
    array_multiplier mult_inst(
        .A(A),
        .B(B),
        .P(P)
    );
    
    hex_decoder hex_A(
        .hex_digit(A),
        .segments(HEX6)
    );
    
    hex_decoder hex_B(
        .hex_digit(B),
        .segments(HEX4)
    );
    
    hex_decoder hex_P_low(
        .hex_digit(P[3:0]),
        .segments(HEX0)
    );
    
    hex_decoder hex_P_high(
        .hex_digit(P[7:4]),
        .segments(HEX1)
    );

endmodule

module array_multiplier(
    input wire [3:0] A,
    input wire [3:0] B,
    output wire [7:0] P
);

    wire [3:0] pp0, pp1, pp2, pp3;
    wire [2:0] c1, c2, c3;
    wire [3:0] s1, s2, s3;
    
    assign pp0 = A & {4{B[0]}};
    assign pp1 = A & {4{B[1]}};
    assign pp2 = A & {4{B[2]}};
    assign pp3 = A & {4{B[3]}};
    
    assign P[0] = pp0[0];
    
    full_adder fa1_0(.a(pp0[1]), .b(pp1[0]), .cin(1'b0), .sum(P[1]), .cout(c1[0]));
    full_adder fa1_1(.a(pp0[2]), .b(pp1[1]), .cin(c1[0]), .sum(s1[1]), .cout(c1[1]));
    full_adder fa1_2(.a(pp0[3]), .b(pp1[2]), .cin(c1[1]), .sum(s1[2]), .cout(c1[2]));
    full_adder fa1_3(.a(1'b0), .b(pp1[3]), .cin(c1[2]), .sum(s1[3]), .cout());
    
    full_adder fa2_0(.a(s1[1]), .b(pp2[0]), .cin(1'b0), .sum(P[2]), .cout(c2[0]));
    full_adder fa2_1(.a(s1[2]), .b(pp2[1]), .cin(c2[0]), .sum(s2[1]), .cout(c2[1]));
    full_adder fa2_2(.a(s1[3]), .b(pp2[2]), .cin(c2[1]), .sum(s2[2]), .cout(c2[2]));
    full_adder fa2_3(.a(1'b0), .b(pp2[3]), .cin(c2[2]), .sum(s2[3]), .cout());
    
    full_adder fa3_0(.a(s2[1]), .b(pp3[0]), .cin(1'b0), .sum(P[3]), .cout(c3[0]));
    full_adder fa3_1(.a(s2[2]), .b(pp3[1]), .cin(c3[0]), .sum(P[4]), .cout(c3[1]));
    full_adder fa3_2(.a(s2[3]), .b(pp3[2]), .cin(c3[1]), .sum(P[5]), .cout(c3[2]));
    full_adder fa3_3(.a(1'b0), .b(pp3[3]), .cin(c3[2]), .sum(P[6]), .cout(P[7]));

endmodule

module full_adder(
    input wire a,
    input wire b,
    input wire cin,
    output wire sum,
    output wire cout
);

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule

module hex_decoder(
    input wire [3:0] hex_digit,
    output reg [6:0] segments
);

    always @(*) begin
        case (hex_digit)
            4'h0: segments = 7'b1000000;
            4'h1: segments = 7'b1111001;
            4'h2: segments = 7'b0100100;
            4'h3: segments = 7'b0110000;
            4'h4: segments = 7'b0011001;
            4'h5: segments = 7'b0010010;
            4'h6: segments = 7'b0000010;
            4'h7: segments = 7'b1111000;
            4'h8: segments = 7'b0000000;
            4'h9: segments = 7'b0010000;
            4'hA: segments = 7'b0001000;
            4'hB: segments = 7'b0000011;
            4'hC: segments = 7'b1000110;
            4'hD: segments = 7'b0100001;
            4'hE: segments = 7'b0000110;
            4'hF: segments = 7'b0001110;
            default: segments = 7'b1111111;
        endcase
    end

endmodule
