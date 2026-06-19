module ALU_4_BIT(
    output reg [3:0] z,
    input [3:0] a,
    input [3:0] b,
    input [3:0] sel
);

always @(*)
begin
    case(sel)

        4'b0000: z = a + b;      // Addition
        4'b0001: z = a - b;      // Subtraction
        4'b0010: z = b - 1;      // Decrement B
        4'b0011: z = a * b;      // Multiplication

        4'b0100: z = a && b;     // Logical AND
        4'b0101: z = a || b;     // Logical OR
        4'b0110: z = !a;         // Logical NOT
        4'b0111: z = ~a;         // Bitwise NOT

        4'b1000: z = a & b;      // Bitwise AND
        4'b1001: z = a | b;      // Bitwise OR
        4'b1010: z = a ^ b;      // XOR
        4'b1011: z = a << 1;     // Left Shift

        4'b1100: z = a >> 1;     // Right Shift
        4'b1101: z = a + 1;      // Increment A
        4'b1110: z = a - 1;      // Decrement A
        4'b1111: z = b;          // Transfer B

        default: z = 4'b0000;

    endcase
end

endmodule