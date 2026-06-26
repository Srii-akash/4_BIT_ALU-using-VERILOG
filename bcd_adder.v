`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2026 10:19:44 AM
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder(input [3:0] a_bcd, [3:0] b_bcd, input cin, output [3:0] sum_bcd, output cout);
    wire [3:0] sum_temp;
    wire cout_temp;
    wire a_1,a_2,o_1;
    wire [3:0] b_rca_2;
    
    ripple_carry_adder1 rca1(a_bcd,b_bcd,cin,sum_temp,cout_temp);
    and a1(a_1,sum_temp[3],sum_temp[2]);
    and a2(a_2,sum_temp[3],sum_temp[1]);
    or o2(k,cout_temp,a_1,a_2);
    assign b_rca_2[0]=0;
    assign b_rca_2[3]=0;
    assign b_rca_2[1]=k;
    assign b_rca_2[2]=k;
    ripple_carry_adder1 rca2(sum_temp,b_rca_2,0,sum_bcd,cout);
    
    
endmodule
