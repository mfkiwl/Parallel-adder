`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:53:58 08/22/2019 
// Design Name: 
// Module Name:    fulladder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fulladder(A,B,Cin,Sum,Carry);
	/*Input-output signal declarations - this style is mandatory to 
	synthesize the codes in RTL compiler - otherwise it throws an error*/
	 input A,B,Cin;
    output Sum,Carry;
	 
	/*Logic - sum & carry computation*/
	assign Sum = A^B^Cin;
	assign Carry = A&B|B&Cin|Cin&A;	

endmodule
