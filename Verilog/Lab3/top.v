module top(
    input wire [8:0] SW,
    output wire [9:0] LEDR
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
    
    // Since DE1-SoC only has red LEDs, use LEDR[9] for carry-out
    // Sum outputs would need to be displayed on 7-segment or other method
    assign LEDR[9] = cout;      // Carry-out on LEDR[9]
    
    // Note: Sum S[3:0] could be displayed on 7-segment displays if needed

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