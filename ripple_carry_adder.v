`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2026 09:30:37 AM
// Design Name: 
// Module Name: ripple_carry_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ripple_carry_adder(input [3:0] a_rca, input [3:0] b_rca, input cin, output [3:0] sum_rca, output cout_rca);
    // vector used upar side
    wire w1,w2,w3; 
    full_adder f1(a_rca[0],b_rca[0],cin,sum_rca[0],w1);
    full_adder f2(a_rca[1],b_rca[1],w1,sum_rca[1],w2);
    full_adder f3(a_rca[2],b_rca[2],w2,sum_rca[2],w3);
    full_adder f4(a_rca[3],b_rca[3],w3,sum_rca[3],cout_rca);
    
endmodule
