module bin_to_7seg (
    input      [3:0] bin_in,
    output reg [6:0] seven_seg_out
);

    always @(*)
    begin
        case (bin_in)
            4'd0: seven_seg_out = 7'b1000000; // 0
            4'd1: seven_seg_out = 7'b1111001; // 1
            4'd2: seven_seg_out = 7'b0100100; // 2
            4'd3: seven_seg_out = 7'b0110000; // 3
            4'd4: seven_seg_out = 7'b0011001; // 4
            4'd5: seven_seg_out = 7'b0010010; // 5
            4'd6: seven_seg_out = 7'b0000010; // 6
            4'd7: seven_seg_out = 7'b1111000; // 7
            4'd8: seven_seg_out = 7'b0000000; // 8
            4'd9: seven_seg_out = 7'b0010000; // 9
            default: seven_seg_out = 7'b1111111; // Off
        endcase
    end

endmodule