module top (
    input  [1:0]  KEY,
    output [7:0]  LEDR
);

    counter #(
        .n(8),
        .k(12) 
    ) mod_k_counter (
        .clock(KEY[1]),
        .reset_n(KEY[0]),
        .Q(LEDR)
    );

endmodule