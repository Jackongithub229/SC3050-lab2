`timescale 1ns / 1ps
`include "lab2codes/define.v"
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:42:51 09/13/2024
// Design Name:   datapath_mux
// Module Name:   D:/FPGA_projects/SC3050-lab2/CE3001-lab2/datapath_tb.v
// Project Name:  CE3001-lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: datapath_mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module datapath_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [`ISIZE-1:0] inst;

	// Outputs
	wire [`DSIZE-1:0] aluout;

	// Instantiate the Unit Under Test (UUT)
	datapath_mux uut (
		.clk(clk), 
		.rst(rst), 
		.inst(inst), 
		.aluout(aluout)
	);
	
	always #250 clk = ~clk; //clock period of 15*1ns = 15ns clock period. from synthesis, minimium clock period is 212.845ns

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		inst = 0;

		// Wait 250 ns for global reset to finish
		#250 rst = 1;
		#250 rst = 0;
		#250;
		// Add stimulus here
		$display("SIMULATION STARTED");
		//#250 inst=32'h00040023; //ADD X3, X1, X4
		//#250 inst=32'h00220024; //SUB X4, X1, X2
		//#250 inst=32'h00440027; //AND X7, X1, X4
		//#250 inst=32'h006200E8; //XOR X8, X7, X2
		#250 inst=32'h00010043; //ADD X3, X2, X1
		#250 inst=32'h00020064; //ADD X4, X3, X2
		#250 inst=32'h00030085; //ADD X5, X4, X3
		#250 inst=32'h00410046; //AND X6, X2, X1
		#250 inst=32'h004200C6; //AND X6, X6, X2
		#250 inst=32'h00420067; //AND X7, X3, X2
		#250 inst=32'h00040023; //ADD X3, X1, X4
		#250 inst=32'h00220024; //SUB X4, X1, X2
		#250 inst=32'h00440027; //AND X7, X1, X4
		#250 inst=32'h006200E8; //XOR X8, X7, X2
		#250 $finish;
	end
      
endmodule

