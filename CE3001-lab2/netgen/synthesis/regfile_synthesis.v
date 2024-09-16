////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: regfile_synthesis.v
// /___/   /\     Timestamp: Thu Sep 12 22:07:24 2024
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim regfile.ngc regfile_synthesis.v 
// Device	: xc6slx4-3-csg225
// Input file	: regfile.ngc
// Output file	: D:\FPGA_projects\SC3050-lab2\CE3001-lab2\netgen\synthesis\regfile_synthesis.v
// # of Modules	: 1
// Design Name	: regfile
// Xilinx        : D:\ISE\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module regfile (
  clk, rst, wen, raddr1, raddr2, waddr, wdata, rdata1, rdata2
);
  input clk;
  input rst;
  input wen;
  input [1 : 0] raddr1;
  input [1 : 0] raddr2;
  input [1 : 0] waddr;
  input [3 : 0] wdata;
  output [3 : 0] rdata1;
  output [3 : 0] rdata2;
  wire raddr1_1_IBUF_0;
  wire raddr1_0_IBUF_1;
  wire raddr2_1_IBUF_2;
  wire raddr2_0_IBUF_3;
  wire waddr_1_IBUF_4;
  wire waddr_0_IBUF_5;
  wire wdata_3_IBUF_6;
  wire wdata_2_IBUF_7;
  wire wdata_1_IBUF_8;
  wire wdata_0_IBUF_9;
  wire clk_BUFGP_10;
  wire rst_IBUF_11;
  wire wen_IBUF_12;
  wire rdata1_3_OBUF_13;
  wire rdata1_2_OBUF_14;
  wire rdata1_1_OBUF_15;
  wire rdata1_0_OBUF_16;
  wire rdata2_3_OBUF_17;
  wire rdata2_2_OBUF_18;
  wire rdata2_1_OBUF_19;
  wire rdata2_0_OBUF_20;
  wire \wen_waddr[1]_AND_7_o ;
  wire \wen_waddr[1]_AND_8_o ;
  wire \regdata[3][3]_waddr[1]_mux_5_OUT<3> ;
  wire \regdata[3][3]_waddr[1]_mux_5_OUT<2> ;
  wire \regdata[3][3]_waddr[1]_mux_5_OUT<1> ;
  wire \regdata[3][3]_waddr[1]_mux_5_OUT<0> ;
  wire \regdata[2][3]_waddr[1]_mux_6_OUT<3> ;
  wire \regdata[2][3]_waddr[1]_mux_6_OUT<2> ;
  wire \regdata[2][3]_waddr[1]_mux_6_OUT<1> ;
  wire \regdata[2][3]_waddr[1]_mux_6_OUT<0> ;
  wire \regdata[1][3]_waddr[1]_mux_7_OUT<3> ;
  wire \regdata[1][3]_waddr[1]_mux_7_OUT<2> ;
  wire \regdata[1][3]_waddr[1]_mux_7_OUT<1> ;
  wire \regdata[1][3]_waddr[1]_mux_7_OUT<0> ;
  wire \regdata[0][3]_waddr[1]_mux_8_OUT<3> ;
  wire \regdata[0][3]_waddr[1]_mux_8_OUT<2> ;
  wire \regdata[0][3]_waddr[1]_mux_8_OUT<1> ;
  wire \regdata[0][3]_waddr[1]_mux_8_OUT<0> ;
  wire N01;
  wire N2;
  wire N4;
  wire N6;
  wire N8;
  wire N10;
  wire N12;
  wire N14;
  wire [15 : 0] regdata_3;
  FDR   regdata_3_0 (
    .C(clk_BUFGP_10),
    .D(\regdata[3][3]_waddr[1]_mux_5_OUT<0> ),
    .R(rst_IBUF_11),
    .Q(regdata_3[0])
  );
  FDR   regdata_3_1 (
    .C(clk_BUFGP_10),
    .D(\regdata[3][3]_waddr[1]_mux_5_OUT<1> ),
    .R(rst_IBUF_11),
    .Q(regdata_3[1])
  );
  FDR   regdata_3_2 (
    .C(clk_BUFGP_10),
    .D(\regdata[3][3]_waddr[1]_mux_5_OUT<2> ),
    .R(rst_IBUF_11),
    .Q(regdata_3[2])
  );
  FDR   regdata_3_3 (
    .C(clk_BUFGP_10),
    .D(\regdata[3][3]_waddr[1]_mux_5_OUT<3> ),
    .R(rst_IBUF_11),
    .Q(regdata_3[3])
  );
  FDR   regdata_3_4 (
    .C(clk_BUFGP_10),
    .D(\regdata[2][3]_waddr[1]_mux_6_OUT<0> ),
    .R(rst_IBUF_11),
    .Q(regdata_3[4])
  );
  FDS   regdata_3_5 (
    .C(clk_BUFGP_10),
    .D(\regdata[2][3]_waddr[1]_mux_6_OUT<1> ),
    .S(rst_IBUF_11),
    .Q(regdata_3[5])
  );
  FDR   regdata_3_6 (
    .C(clk_BUFGP_10),
    .D(\regdata[2][3]_waddr[1]_mux_6_OUT<2> ),
    .R(rst_IBUF_11),
    .Q(regdata_3[6])
  );
  FDR   regdata_3_7 (
    .C(clk_BUFGP_10),
    .D(\regdata[2][3]_waddr[1]_mux_6_OUT<3> ),
    .R(rst_IBUF_11),
    .Q(regdata_3[7])
  );
  FDS   regdata_3_8 (
    .C(clk_BUFGP_10),
    .D(\regdata[1][3]_waddr[1]_mux_7_OUT<0> ),
    .S(rst_IBUF_11),
    .Q(regdata_3[8])
  );
  FDS   regdata_3_9 (
    .C(clk_BUFGP_10),
    .D(\regdata[1][3]_waddr[1]_mux_7_OUT<1> ),
    .S(rst_IBUF_11),
    .Q(regdata_3[9])
  );
  FDR   regdata_3_10 (
    .C(clk_BUFGP_10),
    .D(\regdata[1][3]_waddr[1]_mux_7_OUT<2> ),
    .R(rst_IBUF_11),
    .Q(regdata_3[10])
  );
  FDR   regdata_3_11 (
    .C(clk_BUFGP_10),
    .D(\regdata[1][3]_waddr[1]_mux_7_OUT<3> ),
    .R(rst_IBUF_11),
    .Q(regdata_3[11])
  );
  FDR   regdata_3_12 (
    .C(clk_BUFGP_10),
    .D(\regdata[0][3]_waddr[1]_mux_8_OUT<0> ),
    .R(rst_IBUF_11),
    .Q(regdata_3[12])
  );
  FDR   regdata_3_13 (
    .C(clk_BUFGP_10),
    .D(\regdata[0][3]_waddr[1]_mux_8_OUT<1> ),
    .R(rst_IBUF_11),
    .Q(regdata_3[13])
  );
  FDR   regdata_3_14 (
    .C(clk_BUFGP_10),
    .D(\regdata[0][3]_waddr[1]_mux_8_OUT<2> ),
    .R(rst_IBUF_11),
    .Q(regdata_3[14])
  );
  FDR   regdata_3_15 (
    .C(clk_BUFGP_10),
    .D(\regdata[0][3]_waddr[1]_mux_8_OUT<3> ),
    .R(rst_IBUF_11),
    .Q(regdata_3[15])
  );
  LUT5 #(
    .INIT ( 32'h82000082 ))
  \wen_waddr[1]_AND_7_o1  (
    .I0(wen_IBUF_12),
    .I1(raddr1_1_IBUF_0),
    .I2(waddr_1_IBUF_4),
    .I3(raddr1_0_IBUF_1),
    .I4(waddr_0_IBUF_5),
    .O(\wen_waddr[1]_AND_7_o )
  );
  LUT5 #(
    .INIT ( 32'h82000082 ))
  \wen_waddr[1]_AND_8_o1  (
    .I0(wen_IBUF_12),
    .I1(raddr2_1_IBUF_2),
    .I2(waddr_1_IBUF_4),
    .I3(raddr2_0_IBUF_3),
    .I4(waddr_0_IBUF_5),
    .O(\wen_waddr[1]_AND_8_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFB0008 ))
  \Mmux_regdata[0][3]_waddr[1]_mux_8_OUT11  (
    .I0(wdata_0_IBUF_9),
    .I1(wen_IBUF_12),
    .I2(waddr_1_IBUF_4),
    .I3(waddr_0_IBUF_5),
    .I4(regdata_3[12]),
    .O(\regdata[0][3]_waddr[1]_mux_8_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hFFFB0008 ))
  \Mmux_regdata[0][3]_waddr[1]_mux_8_OUT21  (
    .I0(wdata_1_IBUF_8),
    .I1(wen_IBUF_12),
    .I2(waddr_1_IBUF_4),
    .I3(waddr_0_IBUF_5),
    .I4(regdata_3[13]),
    .O(\regdata[0][3]_waddr[1]_mux_8_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hFFFB0008 ))
  \Mmux_regdata[0][3]_waddr[1]_mux_8_OUT31  (
    .I0(wdata_2_IBUF_7),
    .I1(wen_IBUF_12),
    .I2(waddr_1_IBUF_4),
    .I3(waddr_0_IBUF_5),
    .I4(regdata_3[14]),
    .O(\regdata[0][3]_waddr[1]_mux_8_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hFFFB0008 ))
  \Mmux_regdata[0][3]_waddr[1]_mux_8_OUT41  (
    .I0(wdata_3_IBUF_6),
    .I1(wen_IBUF_12),
    .I2(waddr_1_IBUF_4),
    .I3(waddr_0_IBUF_5),
    .I4(regdata_3[15]),
    .O(\regdata[0][3]_waddr[1]_mux_8_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hFFBF0080 ))
  \Mmux_regdata[1][3]_waddr[1]_mux_7_OUT21  (
    .I0(wdata_1_IBUF_8),
    .I1(waddr_0_IBUF_5),
    .I2(wen_IBUF_12),
    .I3(waddr_1_IBUF_4),
    .I4(regdata_3[9]),
    .O(\regdata[1][3]_waddr[1]_mux_7_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hFFBF0080 ))
  \Mmux_regdata[1][3]_waddr[1]_mux_7_OUT11  (
    .I0(wdata_0_IBUF_9),
    .I1(waddr_0_IBUF_5),
    .I2(wen_IBUF_12),
    .I3(waddr_1_IBUF_4),
    .I4(regdata_3[8]),
    .O(\regdata[1][3]_waddr[1]_mux_7_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hFFBF0080 ))
  \Mmux_regdata[1][3]_waddr[1]_mux_7_OUT31  (
    .I0(wdata_2_IBUF_7),
    .I1(waddr_0_IBUF_5),
    .I2(wen_IBUF_12),
    .I3(waddr_1_IBUF_4),
    .I4(regdata_3[10]),
    .O(\regdata[1][3]_waddr[1]_mux_7_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hFFBF0080 ))
  \Mmux_regdata[1][3]_waddr[1]_mux_7_OUT41  (
    .I0(wdata_3_IBUF_6),
    .I1(waddr_0_IBUF_5),
    .I2(wen_IBUF_12),
    .I3(waddr_1_IBUF_4),
    .I4(regdata_3[11]),
    .O(\regdata[1][3]_waddr[1]_mux_7_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hFFBF0080 ))
  \Mmux_regdata[2][3]_waddr[1]_mux_6_OUT11  (
    .I0(wdata_0_IBUF_9),
    .I1(wen_IBUF_12),
    .I2(waddr_1_IBUF_4),
    .I3(waddr_0_IBUF_5),
    .I4(regdata_3[4]),
    .O(\regdata[2][3]_waddr[1]_mux_6_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hFFBF0080 ))
  \Mmux_regdata[2][3]_waddr[1]_mux_6_OUT21  (
    .I0(wdata_1_IBUF_8),
    .I1(wen_IBUF_12),
    .I2(waddr_1_IBUF_4),
    .I3(waddr_0_IBUF_5),
    .I4(regdata_3[5]),
    .O(\regdata[2][3]_waddr[1]_mux_6_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hFFBF0080 ))
  \Mmux_regdata[2][3]_waddr[1]_mux_6_OUT31  (
    .I0(wdata_2_IBUF_7),
    .I1(wen_IBUF_12),
    .I2(waddr_1_IBUF_4),
    .I3(waddr_0_IBUF_5),
    .I4(regdata_3[6]),
    .O(\regdata[2][3]_waddr[1]_mux_6_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hFFBF0080 ))
  \Mmux_regdata[2][3]_waddr[1]_mux_6_OUT41  (
    .I0(wdata_3_IBUF_6),
    .I1(wen_IBUF_12),
    .I2(waddr_1_IBUF_4),
    .I3(waddr_0_IBUF_5),
    .I4(regdata_3[7]),
    .O(\regdata[2][3]_waddr[1]_mux_6_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hBFFF8000 ))
  \Mmux_regdata[3][3]_waddr[1]_mux_5_OUT11  (
    .I0(wdata_0_IBUF_9),
    .I1(wen_IBUF_12),
    .I2(waddr_1_IBUF_4),
    .I3(waddr_0_IBUF_5),
    .I4(regdata_3[0]),
    .O(\regdata[3][3]_waddr[1]_mux_5_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hBFFF8000 ))
  \Mmux_regdata[3][3]_waddr[1]_mux_5_OUT21  (
    .I0(wdata_1_IBUF_8),
    .I1(wen_IBUF_12),
    .I2(waddr_1_IBUF_4),
    .I3(waddr_0_IBUF_5),
    .I4(regdata_3[1]),
    .O(\regdata[3][3]_waddr[1]_mux_5_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hBFFF8000 ))
  \Mmux_regdata[3][3]_waddr[1]_mux_5_OUT31  (
    .I0(wdata_2_IBUF_7),
    .I1(wen_IBUF_12),
    .I2(waddr_1_IBUF_4),
    .I3(waddr_0_IBUF_5),
    .I4(regdata_3[2]),
    .O(\regdata[3][3]_waddr[1]_mux_5_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hBFFF8000 ))
  \Mmux_regdata[3][3]_waddr[1]_mux_5_OUT41  (
    .I0(wdata_3_IBUF_6),
    .I1(wen_IBUF_12),
    .I2(waddr_1_IBUF_4),
    .I3(waddr_0_IBUF_5),
    .I4(regdata_3[3]),
    .O(\regdata[3][3]_waddr[1]_mux_5_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hDFD58F85DAD08A80 ))
  Mmux_rdata21_SW0 (
    .I0(raddr2_1_IBUF_2),
    .I1(regdata_3[0]),
    .I2(raddr2_0_IBUF_3),
    .I3(regdata_3[4]),
    .I4(regdata_3[8]),
    .I5(regdata_3[12]),
    .O(N01)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_rdata21 (
    .I0(\wen_waddr[1]_AND_8_o ),
    .I1(N01),
    .I2(wdata_0_IBUF_9),
    .O(rdata2_0_OBUF_20)
  );
  LUT6 #(
    .INIT ( 64'hDFD58F85DAD08A80 ))
  Mmux_rdata22_SW0 (
    .I0(raddr2_1_IBUF_2),
    .I1(regdata_3[1]),
    .I2(raddr2_0_IBUF_3),
    .I3(regdata_3[5]),
    .I4(regdata_3[9]),
    .I5(regdata_3[13]),
    .O(N2)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_rdata22 (
    .I0(\wen_waddr[1]_AND_8_o ),
    .I1(N2),
    .I2(wdata_1_IBUF_8),
    .O(rdata2_1_OBUF_19)
  );
  LUT6 #(
    .INIT ( 64'hDFD58F85DAD08A80 ))
  Mmux_rdata23_SW0 (
    .I0(raddr2_1_IBUF_2),
    .I1(regdata_3[2]),
    .I2(raddr2_0_IBUF_3),
    .I3(regdata_3[6]),
    .I4(regdata_3[10]),
    .I5(regdata_3[14]),
    .O(N4)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_rdata23 (
    .I0(\wen_waddr[1]_AND_8_o ),
    .I1(N4),
    .I2(wdata_2_IBUF_7),
    .O(rdata2_2_OBUF_18)
  );
  LUT6 #(
    .INIT ( 64'hDFD58F85DAD08A80 ))
  Mmux_rdata24_SW0 (
    .I0(raddr2_1_IBUF_2),
    .I1(regdata_3[3]),
    .I2(raddr2_0_IBUF_3),
    .I3(regdata_3[7]),
    .I4(regdata_3[11]),
    .I5(regdata_3[15]),
    .O(N6)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_rdata24 (
    .I0(\wen_waddr[1]_AND_8_o ),
    .I1(N6),
    .I2(wdata_3_IBUF_6),
    .O(rdata2_3_OBUF_17)
  );
  LUT6 #(
    .INIT ( 64'hDFD58F85DAD08A80 ))
  Mmux_rdata11_SW0 (
    .I0(raddr1_1_IBUF_0),
    .I1(regdata_3[0]),
    .I2(raddr1_0_IBUF_1),
    .I3(regdata_3[4]),
    .I4(regdata_3[8]),
    .I5(regdata_3[12]),
    .O(N8)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_rdata11 (
    .I0(\wen_waddr[1]_AND_7_o ),
    .I1(N8),
    .I2(wdata_0_IBUF_9),
    .O(rdata1_0_OBUF_16)
  );
  LUT6 #(
    .INIT ( 64'hDFD58F85DAD08A80 ))
  Mmux_rdata12_SW0 (
    .I0(raddr1_1_IBUF_0),
    .I1(regdata_3[1]),
    .I2(raddr1_0_IBUF_1),
    .I3(regdata_3[5]),
    .I4(regdata_3[9]),
    .I5(regdata_3[13]),
    .O(N10)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_rdata12 (
    .I0(\wen_waddr[1]_AND_7_o ),
    .I1(N10),
    .I2(wdata_1_IBUF_8),
    .O(rdata1_1_OBUF_15)
  );
  LUT6 #(
    .INIT ( 64'hDFD58F85DAD08A80 ))
  Mmux_rdata13_SW0 (
    .I0(raddr1_1_IBUF_0),
    .I1(regdata_3[2]),
    .I2(raddr1_0_IBUF_1),
    .I3(regdata_3[6]),
    .I4(regdata_3[10]),
    .I5(regdata_3[14]),
    .O(N12)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_rdata13 (
    .I0(\wen_waddr[1]_AND_7_o ),
    .I1(N12),
    .I2(wdata_2_IBUF_7),
    .O(rdata1_2_OBUF_14)
  );
  LUT6 #(
    .INIT ( 64'hDFD58F85DAD08A80 ))
  Mmux_rdata14_SW0 (
    .I0(raddr1_1_IBUF_0),
    .I1(regdata_3[3]),
    .I2(raddr1_0_IBUF_1),
    .I3(regdata_3[7]),
    .I4(regdata_3[11]),
    .I5(regdata_3[15]),
    .O(N14)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_rdata14 (
    .I0(\wen_waddr[1]_AND_7_o ),
    .I1(N14),
    .I2(wdata_3_IBUF_6),
    .O(rdata1_3_OBUF_13)
  );
  IBUF   raddr1_1_IBUF (
    .I(raddr1[1]),
    .O(raddr1_1_IBUF_0)
  );
  IBUF   raddr1_0_IBUF (
    .I(raddr1[0]),
    .O(raddr1_0_IBUF_1)
  );
  IBUF   raddr2_1_IBUF (
    .I(raddr2[1]),
    .O(raddr2_1_IBUF_2)
  );
  IBUF   raddr2_0_IBUF (
    .I(raddr2[0]),
    .O(raddr2_0_IBUF_3)
  );
  IBUF   waddr_1_IBUF (
    .I(waddr[1]),
    .O(waddr_1_IBUF_4)
  );
  IBUF   waddr_0_IBUF (
    .I(waddr[0]),
    .O(waddr_0_IBUF_5)
  );
  IBUF   wdata_3_IBUF (
    .I(wdata[3]),
    .O(wdata_3_IBUF_6)
  );
  IBUF   wdata_2_IBUF (
    .I(wdata[2]),
    .O(wdata_2_IBUF_7)
  );
  IBUF   wdata_1_IBUF (
    .I(wdata[1]),
    .O(wdata_1_IBUF_8)
  );
  IBUF   wdata_0_IBUF (
    .I(wdata[0]),
    .O(wdata_0_IBUF_9)
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_11)
  );
  IBUF   wen_IBUF (
    .I(wen),
    .O(wen_IBUF_12)
  );
  OBUF   rdata1_3_OBUF (
    .I(rdata1_3_OBUF_13),
    .O(rdata1[3])
  );
  OBUF   rdata1_2_OBUF (
    .I(rdata1_2_OBUF_14),
    .O(rdata1[2])
  );
  OBUF   rdata1_1_OBUF (
    .I(rdata1_1_OBUF_15),
    .O(rdata1[1])
  );
  OBUF   rdata1_0_OBUF (
    .I(rdata1_0_OBUF_16),
    .O(rdata1[0])
  );
  OBUF   rdata2_3_OBUF (
    .I(rdata2_3_OBUF_17),
    .O(rdata2[3])
  );
  OBUF   rdata2_2_OBUF (
    .I(rdata2_2_OBUF_18),
    .O(rdata2[2])
  );
  OBUF   rdata2_1_OBUF (
    .I(rdata2_1_OBUF_19),
    .O(rdata2[1])
  );
  OBUF   rdata2_0_OBUF (
    .I(rdata2_0_OBUF_20),
    .O(rdata2[0])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_10)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

