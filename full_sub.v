`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2026 11:16:37 AM
// Design Name: 
// Module Name: full_sub
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


module full_sub(input a,b,cin, output diff,borrow);
	wire w1,w2,w3,w4,w5;
	xor(w1,a,b);
	xor(diff,w1,cin);
	not(w2,w1);
	not(w3,a);
	and(w4,w2,cin);
	and(w5,w3,b);
	or(borrow,w4,w5);
endmodule
