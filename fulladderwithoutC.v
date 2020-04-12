`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:36:44 11/01/2019 
// Design Name: 
// Module Name:    fulladderwithoutC 
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
module fulladderwithoutC(A,B,Cin,Sum);

	 input A,B,Cin;
    output Sum;

assign Sum = A^B^Cin;

endmodule
