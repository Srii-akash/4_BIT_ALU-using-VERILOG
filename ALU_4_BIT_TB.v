module ALU_4_BIT_TB;

reg [3:0] a;
reg [3:0] b;
reg [3:0] sel;

wire [3:0] z;

// Instantiate ALU
ALU_4_BIT uut(
    .z(z),
    .a(a),
    .b(b),
    .sel(sel)
);

// Monitor outputs
initial
begin
    $monitor("TIME=%0t | A=%b | B=%b | SEL=%b | Z=%b",
              $time,a,b,sel,z);
end

// Test vectors
initial
begin

    a = 4'b0101;   // 5
    b = 4'b0011;   // 3

    sel = 4'b0000; #10; // ADD
    sel = 4'b0001; #10; // SUB
    sel = 4'b0010; #10; // B-1
    sel = 4'b0011; #10; // MULT

    sel = 4'b0100; #10; // Logical AND
    sel = 4'b0101; #10; // Logical OR
    sel = 4'b0110; #10; // Logical NOT
    sel = 4'b0111; #10; // Bitwise NOT

    sel = 4'b1000; #10; // Bitwise AND
    sel = 4'b1001; #10; // Bitwise OR
    sel = 4'b1010; #10; // XOR
    sel = 4'b1011; #10; // Left Shift

    sel = 4'b1100; #10; // Right Shift
    sel = 4'b1101; #10; // Increment A
    sel = 4'b1110; #10; // Decrement A
    sel = 4'b1111; #10; // Transfer B

    $finish;

end

endmodule