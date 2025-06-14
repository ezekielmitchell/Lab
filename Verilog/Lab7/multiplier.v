module top(
    input wire [9:0] SW, // Input switches
    output wire [6:0] HEX0, // Output to HEX0 display
    output wire [6:0] HEX1, // Output to HEX1 display
    output wire [6:0] HEX4, // Output to HEX4 display
    output wire [6:0] HEX6  // Output to HEX6 display
);

    wire [3:0] A, B; // 4-bit inputs for multiplication
    wire [7:0] P; // 8-bit product
    
    assign A = SW[9:6]; // Assign higher switches to input A
    assign B = SW[3:0]; // Assign lower switches to input B
    
    array_multiplier mult_inst( // Instantiate the array multiplier
        .A(A),
        .B(B),
        .P(P)
    );
    
    hex_decoder hex_A( // Instantiate hex decoder for input A
        .hex_digit(A),
        .segments(HEX6)
    );
    
    hex_decoder hex_B( // Instantiate hex decoder for input B
        .hex_digit(B),
        .segments(HEX4)
    );
    
    hex_decoder hex_P_low( // Instantiate hex decoder for lower 4 bits of product
        .hex_digit(P[3:0]),
        .segments(HEX0)
    );
    
    hex_decoder hex_P_high( // Instantiate hex decoder for higher 4 bits of product
        .hex_digit(P[7:4]),
        .segments(HEX1)
    );

endmodule

module array_multiplier(
    input wire [3:0] A, // Input A
    input wire [3:0] B, // Input B
    output wire [7:0] P  // Product P
);

    wire [3:0] pp0, pp1, pp2, pp3; // Partial products
    wire [2:0] c1, c2, c3; // Carry bits for full adders
    wire [3:0] s1, s2, s3; // Sum bits for full adders
    
    assign pp0 = A & {4{B[0]}}; // Generate partial product 0
    assign pp1 = A & {4{B[1]}}; // Generate partial product 1
    assign pp2 = A & {4{B[2]}}; // Generate partial product 2
    assign pp3 = A & {4{B[3]}}; // Generate partial product 3
    
    assign P[0] = pp0[0]; // First bit of product is directly from partial product 0
    
    // First row of full adders
    full_adder fa1_0(.a(pp0[1]), .b(pp1[0]), .cin(1'b0), .sum(P[1]), .cout(c1[0]));
    full_adder fa1_1(.a(pp0[2]), .b(pp1[1]), .cin(c1[0]), .sum(s1[1]), .cout(c1[1]));
    full_adder fa1_2(.a(pp0[3]), .b(pp1[2]), .cin(c1[1]), .sum(s1[2]), .cout(c1[2]));
    full_adder fa1_3(.a(1'b0), .b(pp1[3]), .cin(c1[2]), .sum(s1[3]), .cout());
    
    // Second row of full adders
    full_adder fa2_0(.a(s1[1]), .b(pp2[0]), .cin(1'b0), .sum(P[2]), .cout(c2[0]));
    full_adder fa2_1(.a(s1[2]), .b(pp2[1]), .cin(c2[0]), .sum(s2[1]), .cout(c2[1]));
    full_adder fa2_2(.a(s1[3]), .b(pp2[2]), .cin(c2[1]), .sum(s2[2]), .cout(c2[2]));
    full_adder fa2_3(.a(1'b0), .b(pp2[3]), .cin(c2[2]), .sum(s2[3]), .cout());
    
    // Third row of full adders
    full_adder fa3_0(.a(s2[1]), .b(pp3[0]), .cin(1'b0), .sum(P[3]), .cout(c3[0]));
    full_adder fa3_1(.a(s2[2]), .b(pp3[1]), .cin(c3[0]), .sum(P[4]), .cout(c3[1]));
    full_adder fa3_2(.a(s2[3]), .b(pp3[2]), .cin(c3[1]), .sum(P[5]), .cout(c3[2]));
    full_adder fa3_3(.a(1'b0), .b(pp3[3]), .cin(c3[2]), .sum(P[6]), .cout(P[7])); // cout becomes P[7]

endmodule

module full_adder(
    input wire a, // Input a
    input wire b, // Input b
    input wire cin, // Carry in
    output wire sum, // Sum
    output wire cout // Carry out
);

    assign sum = a ^ b ^ cin; // Sum calculation
    assign cout = (a & b) | (a & cin) | (b & cin); // Carry out calculation

endmodule

module hex_decoder(
    input wire [3:0] hex_digit, // 4-bit input
    output reg [6:0] segments // 7-segment output
);

endmodule
