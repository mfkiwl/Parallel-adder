`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:11:31 11/01/2019
// Design Name:   CPA16
// Module Name:   G:/Verilog Codes/PrefixAdder/KoggeStone/VerilogCodes/CPA/tb_CPA16.v
// Project Name:  CPA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPA16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_CPA16;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;

	// Outputs
	wire [15:0] Sum;

	// Instantiate the Unit Under Test (UUT)
	CPA16 uut (
		.A(A), 
		.B(B), 
		.Sum(Sum)
	);

	initial begin
		// Initialize Inputs
		A = 16'd 65535;
		B = 16'd 0;
end
      
always #10 B = B + 16'd 1;
		
endmodule

