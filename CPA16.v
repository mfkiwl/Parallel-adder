`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:53:50 11/01/2019 
// Design Name: 
// Module Name:    CPAgeneric 
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
module CPA16(A,B,Sum);
parameter n = 16;

	 input [n-1:0] A,B;
    output [n-1:0] Sum;
	 
	 wire [n-2:0] cInternal;
 genvar i;
	generate
		for(i=0;i<n;i=i+1)
			begin:CPA16
				if(i==0) halfadder I(A[i],B[i],Sum[i],cInternal[i]);
				else if(i>0 && i<=(n-2))	
					fulladder II(A[i],B[i],cInternal[i-1],Sum[i],cInternal[i]);
				else 
					fulladderwithoutC III(A[i],B[i],cInternal[i-1],Sum[i]);
			end
	endgenerate		
			
endmodule
