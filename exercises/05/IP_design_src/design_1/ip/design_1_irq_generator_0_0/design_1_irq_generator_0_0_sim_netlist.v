// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Nov  4 15:21:16 2024
// Host        : HTC219-309-SPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Temp/19/exercises/05/IP_design_src/design_1/ip/design_1_irq_generator_0_0/design_1_irq_generator_0_0_sim_netlist.v
// Design      : design_1_irq_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_irq_generator_0_0,irq_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "irq_generator,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_irq_generator_0_0
   (ACLK,
    ARESETN,
    irqgen_introut,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output [15:0]irqgen_introut;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [15:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [15:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire \<const1> ;
  wire ACLK;
  wire ARESETN;
  wire [15:0]S_AXI_ARADDR;
  wire S_AXI_ARVALID;
  wire [15:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WVALID;
  wire [15:0]irqgen_introut;

  assign S_AXI_ARREADY = \<const1> ;
  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  assign S_AXI_WREADY = S_AXI_AWREADY;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_irq_generator_0_0_irq_generator inst
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_AWREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .\irq_out_reg[0] (irqgen_introut[0]),
        .\irq_out_reg[10] (irqgen_introut[10]),
        .\irq_out_reg[11] (irqgen_introut[11]),
        .\irq_out_reg[12] (irqgen_introut[12]),
        .\irq_out_reg[13] (irqgen_introut[13]),
        .\irq_out_reg[14] (irqgen_introut[14]),
        .\irq_out_reg[15] (irqgen_introut[15]),
        .\irq_out_reg[1] (irqgen_introut[1]),
        .\irq_out_reg[2] (irqgen_introut[2]),
        .\irq_out_reg[3] (irqgen_introut[3]),
        .\irq_out_reg[4] (irqgen_introut[4]),
        .\irq_out_reg[5] (irqgen_introut[5]),
        .\irq_out_reg[6] (irqgen_introut[6]),
        .\irq_out_reg[7] (irqgen_introut[7]),
        .\irq_out_reg[8] (irqgen_introut[8]),
        .\irq_out_reg[9] (irqgen_introut[9]));
endmodule

(* ORIG_REF_NAME = "irq_generator" *) 
module design_1_irq_generator_0_0_irq_generator
   (\irq_out_reg[0] ,
    \irq_out_reg[1] ,
    \irq_out_reg[2] ,
    \irq_out_reg[3] ,
    \irq_out_reg[4] ,
    \irq_out_reg[5] ,
    \irq_out_reg[6] ,
    \irq_out_reg[7] ,
    \irq_out_reg[8] ,
    \irq_out_reg[9] ,
    \irq_out_reg[10] ,
    \irq_out_reg[11] ,
    \irq_out_reg[12] ,
    \irq_out_reg[13] ,
    \irq_out_reg[14] ,
    \irq_out_reg[15] ,
    S_AXI_WREADY,
    S_AXI_RDATA,
    S_AXI_BVALID,
    S_AXI_RVALID,
    ARESETN,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    ACLK,
    S_AXI_BREADY,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_RREADY,
    S_AXI_ARVALID,
    S_AXI_ARADDR);
  output \irq_out_reg[0] ;
  output \irq_out_reg[1] ;
  output \irq_out_reg[2] ;
  output \irq_out_reg[3] ;
  output \irq_out_reg[4] ;
  output \irq_out_reg[5] ;
  output \irq_out_reg[6] ;
  output \irq_out_reg[7] ;
  output \irq_out_reg[8] ;
  output \irq_out_reg[9] ;
  output \irq_out_reg[10] ;
  output \irq_out_reg[11] ;
  output \irq_out_reg[12] ;
  output \irq_out_reg[13] ;
  output \irq_out_reg[14] ;
  output \irq_out_reg[15] ;
  output S_AXI_WREADY;
  output [31:0]S_AXI_RDATA;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  input ARESETN;
  input [15:0]S_AXI_AWADDR;
  input [31:0]S_AXI_WDATA;
  input ACLK;
  input S_AXI_BREADY;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_RREADY;
  input S_AXI_ARVALID;
  input [15:0]S_AXI_ARADDR;

  wire ACLK;
  wire ARESETN;
  wire [15:0]S_AXI_ARADDR;
  wire S_AXI_ARVALID;
  wire [15:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY0;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_BVALID_i_1_n_0;
  wire [31:0]S_AXI_RDATA;
  wire \S_AXI_RDATA[0]_i_1_n_0 ;
  wire \S_AXI_RDATA[10]_i_1_n_0 ;
  wire \S_AXI_RDATA[11]_i_1_n_0 ;
  wire \S_AXI_RDATA[12]_i_1_n_0 ;
  wire \S_AXI_RDATA[13]_i_1_n_0 ;
  wire \S_AXI_RDATA[14]_i_1_n_0 ;
  wire \S_AXI_RDATA[15]_i_1_n_0 ;
  wire \S_AXI_RDATA[16]_i_1_n_0 ;
  wire \S_AXI_RDATA[17]_i_1_n_0 ;
  wire \S_AXI_RDATA[18]_i_1_n_0 ;
  wire \S_AXI_RDATA[19]_i_1_n_0 ;
  wire \S_AXI_RDATA[1]_i_1_n_0 ;
  wire \S_AXI_RDATA[20]_i_1_n_0 ;
  wire \S_AXI_RDATA[21]_i_1_n_0 ;
  wire \S_AXI_RDATA[22]_i_1_n_0 ;
  wire \S_AXI_RDATA[23]_i_1_n_0 ;
  wire \S_AXI_RDATA[24]_i_1_n_0 ;
  wire \S_AXI_RDATA[25]_i_1_n_0 ;
  wire \S_AXI_RDATA[26]_i_1_n_0 ;
  wire \S_AXI_RDATA[27]_i_1_n_0 ;
  wire \S_AXI_RDATA[28]_i_1_n_0 ;
  wire \S_AXI_RDATA[29]_i_1_n_0 ;
  wire \S_AXI_RDATA[2]_i_1_n_0 ;
  wire \S_AXI_RDATA[30]_i_1_n_0 ;
  wire \S_AXI_RDATA[31]_i_1_n_0 ;
  wire \S_AXI_RDATA[31]_i_2_n_0 ;
  wire \S_AXI_RDATA[31]_i_3_n_0 ;
  wire \S_AXI_RDATA[31]_i_4_n_0 ;
  wire \S_AXI_RDATA[31]_i_5_n_0 ;
  wire \S_AXI_RDATA[3]_i_1_n_0 ;
  wire \S_AXI_RDATA[4]_i_1_n_0 ;
  wire \S_AXI_RDATA[5]_i_1_n_0 ;
  wire \S_AXI_RDATA[6]_i_1_n_0 ;
  wire \S_AXI_RDATA[7]_i_1_n_0 ;
  wire \S_AXI_RDATA[8]_i_1_n_0 ;
  wire \S_AXI_RDATA[9]_i_1_n_0 ;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_RVALID_i_1_n_0;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire clear;
  wire [15:0]introut_state_r;
  wire introut_state_r0_carry__0_n_0;
  wire introut_state_r0_carry__0_n_1;
  wire introut_state_r0_carry__0_n_2;
  wire introut_state_r0_carry__0_n_3;
  wire introut_state_r0_carry_n_0;
  wire introut_state_r0_carry_n_1;
  wire introut_state_r0_carry_n_2;
  wire introut_state_r0_carry_n_3;
  wire [11:0]irq_amt;
  wire irq_count_r0_carry__0_n_0;
  wire irq_count_r0_carry__0_n_1;
  wire irq_count_r0_carry__0_n_2;
  wire irq_count_r0_carry__0_n_3;
  wire irq_count_r0_carry_n_0;
  wire irq_count_r0_carry_n_1;
  wire irq_count_r0_carry_n_2;
  wire irq_count_r0_carry_n_3;
  wire \irq_count_r[0]_i_2_n_0 ;
  wire [31:0]irq_count_r_reg;
  wire \irq_count_r_reg[0]_i_1_n_0 ;
  wire \irq_count_r_reg[0]_i_1_n_1 ;
  wire \irq_count_r_reg[0]_i_1_n_2 ;
  wire \irq_count_r_reg[0]_i_1_n_3 ;
  wire \irq_count_r_reg[0]_i_1_n_4 ;
  wire \irq_count_r_reg[0]_i_1_n_5 ;
  wire \irq_count_r_reg[0]_i_1_n_6 ;
  wire \irq_count_r_reg[0]_i_1_n_7 ;
  wire \irq_count_r_reg[12]_i_1_n_0 ;
  wire \irq_count_r_reg[12]_i_1_n_1 ;
  wire \irq_count_r_reg[12]_i_1_n_2 ;
  wire \irq_count_r_reg[12]_i_1_n_3 ;
  wire \irq_count_r_reg[12]_i_1_n_4 ;
  wire \irq_count_r_reg[12]_i_1_n_5 ;
  wire \irq_count_r_reg[12]_i_1_n_6 ;
  wire \irq_count_r_reg[12]_i_1_n_7 ;
  wire \irq_count_r_reg[16]_i_1_n_0 ;
  wire \irq_count_r_reg[16]_i_1_n_1 ;
  wire \irq_count_r_reg[16]_i_1_n_2 ;
  wire \irq_count_r_reg[16]_i_1_n_3 ;
  wire \irq_count_r_reg[16]_i_1_n_4 ;
  wire \irq_count_r_reg[16]_i_1_n_5 ;
  wire \irq_count_r_reg[16]_i_1_n_6 ;
  wire \irq_count_r_reg[16]_i_1_n_7 ;
  wire \irq_count_r_reg[20]_i_1_n_0 ;
  wire \irq_count_r_reg[20]_i_1_n_1 ;
  wire \irq_count_r_reg[20]_i_1_n_2 ;
  wire \irq_count_r_reg[20]_i_1_n_3 ;
  wire \irq_count_r_reg[20]_i_1_n_4 ;
  wire \irq_count_r_reg[20]_i_1_n_5 ;
  wire \irq_count_r_reg[20]_i_1_n_6 ;
  wire \irq_count_r_reg[20]_i_1_n_7 ;
  wire \irq_count_r_reg[24]_i_1_n_0 ;
  wire \irq_count_r_reg[24]_i_1_n_1 ;
  wire \irq_count_r_reg[24]_i_1_n_2 ;
  wire \irq_count_r_reg[24]_i_1_n_3 ;
  wire \irq_count_r_reg[24]_i_1_n_4 ;
  wire \irq_count_r_reg[24]_i_1_n_5 ;
  wire \irq_count_r_reg[24]_i_1_n_6 ;
  wire \irq_count_r_reg[24]_i_1_n_7 ;
  wire \irq_count_r_reg[28]_i_1_n_1 ;
  wire \irq_count_r_reg[28]_i_1_n_2 ;
  wire \irq_count_r_reg[28]_i_1_n_3 ;
  wire \irq_count_r_reg[28]_i_1_n_4 ;
  wire \irq_count_r_reg[28]_i_1_n_5 ;
  wire \irq_count_r_reg[28]_i_1_n_6 ;
  wire \irq_count_r_reg[28]_i_1_n_7 ;
  wire \irq_count_r_reg[4]_i_1_n_0 ;
  wire \irq_count_r_reg[4]_i_1_n_1 ;
  wire \irq_count_r_reg[4]_i_1_n_2 ;
  wire \irq_count_r_reg[4]_i_1_n_3 ;
  wire \irq_count_r_reg[4]_i_1_n_4 ;
  wire \irq_count_r_reg[4]_i_1_n_5 ;
  wire \irq_count_r_reg[4]_i_1_n_6 ;
  wire \irq_count_r_reg[4]_i_1_n_7 ;
  wire \irq_count_r_reg[8]_i_1_n_0 ;
  wire \irq_count_r_reg[8]_i_1_n_1 ;
  wire \irq_count_r_reg[8]_i_1_n_2 ;
  wire \irq_count_r_reg[8]_i_1_n_3 ;
  wire \irq_count_r_reg[8]_i_1_n_4 ;
  wire \irq_count_r_reg[8]_i_1_n_5 ;
  wire \irq_count_r_reg[8]_i_1_n_6 ;
  wire \irq_count_r_reg[8]_i_1_n_7 ;
  wire \irq_gen_ctrl_r[1]_i_1_n_0 ;
  wire \irq_gen_ctrl_r[31]_i_1_n_0 ;
  wire \irq_gen_ctrl_r_reg_n_0_[0] ;
  wire \irq_gen_ctrl_r_reg_n_0_[10] ;
  wire \irq_gen_ctrl_r_reg_n_0_[11] ;
  wire \irq_gen_ctrl_r_reg_n_0_[12] ;
  wire \irq_gen_ctrl_r_reg_n_0_[13] ;
  wire \irq_gen_ctrl_r_reg_n_0_[14] ;
  wire \irq_gen_ctrl_r_reg_n_0_[15] ;
  wire \irq_gen_ctrl_r_reg_n_0_[16] ;
  wire \irq_gen_ctrl_r_reg_n_0_[17] ;
  wire \irq_gen_ctrl_r_reg_n_0_[18] ;
  wire \irq_gen_ctrl_r_reg_n_0_[19] ;
  wire \irq_gen_ctrl_r_reg_n_0_[20] ;
  wire \irq_gen_ctrl_r_reg_n_0_[21] ;
  wire \irq_gen_ctrl_r_reg_n_0_[22] ;
  wire \irq_gen_ctrl_r_reg_n_0_[23] ;
  wire \irq_gen_ctrl_r_reg_n_0_[24] ;
  wire \irq_gen_ctrl_r_reg_n_0_[25] ;
  wire \irq_gen_ctrl_r_reg_n_0_[26] ;
  wire \irq_gen_ctrl_r_reg_n_0_[27] ;
  wire \irq_gen_ctrl_r_reg_n_0_[28] ;
  wire \irq_gen_ctrl_r_reg_n_0_[29] ;
  wire \irq_gen_ctrl_r_reg_n_0_[30] ;
  wire \irq_gen_ctrl_r_reg_n_0_[31] ;
  wire \irq_gen_ctrl_r_reg_n_0_[6] ;
  wire \irq_gen_ctrl_r_reg_n_0_[7] ;
  wire \irq_gen_ctrl_r_reg_n_0_[8] ;
  wire \irq_gen_ctrl_r_reg_n_0_[9] ;
  wire irq_gen_genirq_r;
  wire \irq_gen_genirq_r[31]_i_10_n_0 ;
  wire \irq_gen_genirq_r[31]_i_2_n_0 ;
  wire \irq_gen_genirq_r[31]_i_3_n_0 ;
  wire \irq_gen_genirq_r[31]_i_4_n_0 ;
  wire \irq_gen_genirq_r[31]_i_5_n_0 ;
  wire \irq_gen_genirq_r[31]_i_6_n_0 ;
  wire \irq_gen_genirq_r[31]_i_7_n_0 ;
  wire \irq_gen_genirq_r[31]_i_8_n_0 ;
  wire \irq_gen_genirq_r[31]_i_9_n_0 ;
  wire \irq_gen_genirq_r_reg_n_0_[0] ;
  wire \irq_gen_genirq_r_reg_n_0_[1] ;
  wire \irq_gen_genirq_r_reg_n_0_[2] ;
  wire \irq_gen_genirq_r_reg_n_0_[3] ;
  wire [0:0]irq_line_handled;
  wire \irq_out_reg[0] ;
  wire \irq_out_reg[10] ;
  wire \irq_out_reg[11] ;
  wire \irq_out_reg[12] ;
  wire \irq_out_reg[13] ;
  wire \irq_out_reg[14] ;
  wire \irq_out_reg[15] ;
  wire \irq_out_reg[1] ;
  wire \irq_out_reg[2] ;
  wire \irq_out_reg[3] ;
  wire \irq_out_reg[4] ;
  wire \irq_out_reg[5] ;
  wire \irq_out_reg[6] ;
  wire \irq_out_reg[7] ;
  wire \irq_out_reg[8] ;
  wire \irq_out_reg[9] ;
  wire [13:0]irq_rate;
  wire irqgen_ctrl_inst_n_17;
  wire irqgen_ctrl_inst_n_18;
  wire irqgen_ctrl_inst_n_19;
  wire irqgen_ctrl_inst_n_20;
  wire irqgen_ctrl_inst_n_21;
  wire irqgen_ctrl_inst_n_22;
  wire irqgen_ctrl_inst_n_23;
  wire irqgen_ctrl_inst_n_24;
  wire irqgen_ctrl_inst_n_25;
  wire irqgen_ctrl_inst_n_26;
  wire irqgen_ctrl_inst_n_27;
  wire irqgen_ctrl_inst_n_28;
  wire irqgen_ctrl_inst_n_29;
  wire irqgen_ctrl_inst_n_30;
  wire irqgen_ctrl_inst_n_31;
  wire irqgen_ctrl_inst_n_32;
  wire irqgen_ctrl_inst_n_33;
  wire irqgen_ctrl_inst_n_34;
  wire irqgen_ctrl_inst_n_35;
  wire irqgen_ctrl_inst_n_36;
  wire irqgen_ctrl_inst_n_37;
  wire irqgen_ctrl_inst_n_38;
  wire irqgen_ctrl_inst_n_39;
  wire irqgen_ctrl_inst_n_40;
  wire irqgen_ctrl_inst_n_41;
  wire irqgen_ctrl_inst_n_42;
  wire irqgen_ctrl_inst_n_43;
  wire irqgen_ctrl_inst_n_44;
  wire irqgen_ctrl_inst_n_45;
  wire irqgen_ctrl_inst_n_46;
  wire irqgen_ctrl_inst_n_47;
  wire irqgen_ctrl_inst_n_48;
  wire irqgen_ctrl_inst_n_49;
  wire [3:0]p_0_in;
  wire start_irq_gen_r_i_1_n_0;
  wire start_irq_gen_r_reg_n_0;
  wire [3:0]NLW_introut_state_r0_carry_O_UNCONNECTED;
  wire [3:0]NLW_introut_state_r0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_irq_count_r0_carry_O_UNCONNECTED;
  wire [3:0]NLW_irq_count_r0_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_irq_count_r_reg[28]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    S_AXI_AWREADY_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WREADY),
        .O(S_AXI_AWREADY0));
  FDRE S_AXI_AWREADY_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(S_AXI_AWREADY0),
        .Q(S_AXI_WREADY),
        .R(clear));
  LUT6 #(
    .INIT(64'h5555C00000000000)) 
    S_AXI_BVALID_i_1
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_BVALID),
        .I5(ARESETN),
        .O(S_AXI_BVALID_i_1_n_0));
  FDRE S_AXI_BVALID_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(S_AXI_BVALID_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[0]_i_1 
       (.I0(irq_count_r_reg[0]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[0] ),
        .O(\S_AXI_RDATA[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[10]_i_1 
       (.I0(irq_count_r_reg[10]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[10] ),
        .O(\S_AXI_RDATA[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[11]_i_1 
       (.I0(irq_count_r_reg[11]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[11] ),
        .O(\S_AXI_RDATA[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[12]_i_1 
       (.I0(irq_count_r_reg[12]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[12] ),
        .O(\S_AXI_RDATA[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[13]_i_1 
       (.I0(irq_count_r_reg[13]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[13] ),
        .O(\S_AXI_RDATA[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[14]_i_1 
       (.I0(irq_count_r_reg[14]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[14] ),
        .O(\S_AXI_RDATA[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[15]_i_1 
       (.I0(irq_count_r_reg[15]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[15] ),
        .O(\S_AXI_RDATA[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[16]_i_1 
       (.I0(irq_count_r_reg[16]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[16] ),
        .O(\S_AXI_RDATA[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[17]_i_1 
       (.I0(irq_count_r_reg[17]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[17] ),
        .O(\S_AXI_RDATA[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[18]_i_1 
       (.I0(irq_count_r_reg[18]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[18] ),
        .O(\S_AXI_RDATA[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[19]_i_1 
       (.I0(irq_count_r_reg[19]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[19] ),
        .O(\S_AXI_RDATA[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[1]_i_1 
       (.I0(irq_count_r_reg[1]),
        .I1(S_AXI_ARADDR[3]),
        .I2(irq_line_handled),
        .O(\S_AXI_RDATA[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[20]_i_1 
       (.I0(irq_count_r_reg[20]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[20] ),
        .O(\S_AXI_RDATA[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[21]_i_1 
       (.I0(irq_count_r_reg[21]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[21] ),
        .O(\S_AXI_RDATA[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[22]_i_1 
       (.I0(irq_count_r_reg[22]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[22] ),
        .O(\S_AXI_RDATA[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[23]_i_1 
       (.I0(irq_count_r_reg[23]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[23] ),
        .O(\S_AXI_RDATA[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[24]_i_1 
       (.I0(irq_count_r_reg[24]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[24] ),
        .O(\S_AXI_RDATA[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[25]_i_1 
       (.I0(irq_count_r_reg[25]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[25] ),
        .O(\S_AXI_RDATA[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[26]_i_1 
       (.I0(irq_count_r_reg[26]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[26] ),
        .O(\S_AXI_RDATA[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[27]_i_1 
       (.I0(irq_count_r_reg[27]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[27] ),
        .O(\S_AXI_RDATA[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[28]_i_1 
       (.I0(irq_count_r_reg[28]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[28] ),
        .O(\S_AXI_RDATA[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[29]_i_1 
       (.I0(irq_count_r_reg[29]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[29] ),
        .O(\S_AXI_RDATA[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[2]_i_1 
       (.I0(irq_count_r_reg[2]),
        .I1(S_AXI_ARADDR[3]),
        .I2(p_0_in[0]),
        .O(\S_AXI_RDATA[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[30]_i_1 
       (.I0(irq_count_r_reg[30]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[30] ),
        .O(\S_AXI_RDATA[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \S_AXI_RDATA[31]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I2(S_AXI_ARADDR[6]),
        .I3(S_AXI_ARADDR[1]),
        .I4(ARESETN),
        .I5(S_AXI_ARADDR[4]),
        .O(\S_AXI_RDATA[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[31]_i_2 
       (.I0(irq_count_r_reg[31]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[31] ),
        .O(\S_AXI_RDATA[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \S_AXI_RDATA[31]_i_3 
       (.I0(S_AXI_RVALID),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR[12]),
        .I3(S_AXI_ARADDR[14]),
        .I4(S_AXI_ARADDR[7]),
        .I5(S_AXI_ARADDR[11]),
        .O(\S_AXI_RDATA[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \S_AXI_RDATA[31]_i_4 
       (.I0(S_AXI_ARADDR[10]),
        .I1(S_AXI_ARADDR[15]),
        .I2(S_AXI_ARADDR[0]),
        .I3(S_AXI_ARADDR[13]),
        .I4(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \S_AXI_RDATA[31]_i_5 
       (.I0(S_AXI_ARADDR[9]),
        .I1(S_AXI_ARADDR[2]),
        .I2(S_AXI_ARADDR[8]),
        .I3(S_AXI_ARADDR[5]),
        .O(\S_AXI_RDATA[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[3]_i_1 
       (.I0(irq_count_r_reg[3]),
        .I1(S_AXI_ARADDR[3]),
        .I2(p_0_in[1]),
        .O(\S_AXI_RDATA[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[4]_i_1 
       (.I0(irq_count_r_reg[4]),
        .I1(S_AXI_ARADDR[3]),
        .I2(p_0_in[2]),
        .O(\S_AXI_RDATA[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[5]_i_1 
       (.I0(irq_count_r_reg[5]),
        .I1(S_AXI_ARADDR[3]),
        .I2(p_0_in[3]),
        .O(\S_AXI_RDATA[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[6]_i_1 
       (.I0(irq_count_r_reg[6]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[6] ),
        .O(\S_AXI_RDATA[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[7]_i_1 
       (.I0(irq_count_r_reg[7]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[7] ),
        .O(\S_AXI_RDATA[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[8]_i_1 
       (.I0(irq_count_r_reg[8]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[8] ),
        .O(\S_AXI_RDATA[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RDATA[9]_i_1 
       (.I0(irq_count_r_reg[9]),
        .I1(S_AXI_ARADDR[3]),
        .I2(\irq_gen_ctrl_r_reg_n_0_[9] ),
        .O(\S_AXI_RDATA[9]_i_1_n_0 ));
  FDRE \S_AXI_RDATA_reg[0] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[0]_i_1_n_0 ),
        .Q(S_AXI_RDATA[0]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[10] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[10]_i_1_n_0 ),
        .Q(S_AXI_RDATA[10]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[11] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[11]_i_1_n_0 ),
        .Q(S_AXI_RDATA[11]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[12] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[12]_i_1_n_0 ),
        .Q(S_AXI_RDATA[12]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[13] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[13]_i_1_n_0 ),
        .Q(S_AXI_RDATA[13]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[14] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[14]_i_1_n_0 ),
        .Q(S_AXI_RDATA[14]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[15] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[15]_i_1_n_0 ),
        .Q(S_AXI_RDATA[15]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[16] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[16]_i_1_n_0 ),
        .Q(S_AXI_RDATA[16]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[17] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[17]_i_1_n_0 ),
        .Q(S_AXI_RDATA[17]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[18] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[18]_i_1_n_0 ),
        .Q(S_AXI_RDATA[18]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[19] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[19]_i_1_n_0 ),
        .Q(S_AXI_RDATA[19]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[1] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[1]_i_1_n_0 ),
        .Q(S_AXI_RDATA[1]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[20] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[20]_i_1_n_0 ),
        .Q(S_AXI_RDATA[20]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[21] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[21]_i_1_n_0 ),
        .Q(S_AXI_RDATA[21]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[22] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[22]_i_1_n_0 ),
        .Q(S_AXI_RDATA[22]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[23] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[23]_i_1_n_0 ),
        .Q(S_AXI_RDATA[23]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[24] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[24]_i_1_n_0 ),
        .Q(S_AXI_RDATA[24]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[25] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[25]_i_1_n_0 ),
        .Q(S_AXI_RDATA[25]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[26] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[26]_i_1_n_0 ),
        .Q(S_AXI_RDATA[26]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[27] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[27]_i_1_n_0 ),
        .Q(S_AXI_RDATA[27]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[28] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[28]_i_1_n_0 ),
        .Q(S_AXI_RDATA[28]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[29] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[29]_i_1_n_0 ),
        .Q(S_AXI_RDATA[29]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[2] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[2]_i_1_n_0 ),
        .Q(S_AXI_RDATA[2]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[30] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[30]_i_1_n_0 ),
        .Q(S_AXI_RDATA[30]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[31] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[31]_i_2_n_0 ),
        .Q(S_AXI_RDATA[31]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[3] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[3]_i_1_n_0 ),
        .Q(S_AXI_RDATA[3]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[4] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[4]_i_1_n_0 ),
        .Q(S_AXI_RDATA[4]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[5] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[5]_i_1_n_0 ),
        .Q(S_AXI_RDATA[5]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[6] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[6]_i_1_n_0 ),
        .Q(S_AXI_RDATA[6]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[7] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[7]_i_1_n_0 ),
        .Q(S_AXI_RDATA[7]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[8] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[8]_i_1_n_0 ),
        .Q(S_AXI_RDATA[8]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[9] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[9]_i_1_n_0 ),
        .Q(S_AXI_RDATA[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h5C00)) 
    S_AXI_RVALID_i_1
       (.I0(S_AXI_RREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .I3(ARESETN),
        .O(S_AXI_RVALID_i_1_n_0));
  FDRE S_AXI_RVALID_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(S_AXI_RVALID_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 introut_state_r0_carry
       (.CI(1'b0),
        .CO({introut_state_r0_carry_n_0,introut_state_r0_carry_n_1,introut_state_r0_carry_n_2,introut_state_r0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({irqgen_ctrl_inst_n_22,irqgen_ctrl_inst_n_23,irqgen_ctrl_inst_n_24,irqgen_ctrl_inst_n_25}),
        .O(NLW_introut_state_r0_carry_O_UNCONNECTED[3:0]),
        .S({irqgen_ctrl_inst_n_42,irqgen_ctrl_inst_n_43,irqgen_ctrl_inst_n_44,irqgen_ctrl_inst_n_45}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 introut_state_r0_carry__0
       (.CI(introut_state_r0_carry_n_0),
        .CO({introut_state_r0_carry__0_n_0,introut_state_r0_carry__0_n_1,introut_state_r0_carry__0_n_2,introut_state_r0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({irqgen_ctrl_inst_n_34,irqgen_ctrl_inst_n_35,irqgen_ctrl_inst_n_36,irqgen_ctrl_inst_n_37}),
        .O(NLW_introut_state_r0_carry__0_O_UNCONNECTED[3:0]),
        .S({irqgen_ctrl_inst_n_46,irqgen_ctrl_inst_n_47,irqgen_ctrl_inst_n_48,irqgen_ctrl_inst_n_49}));
  FDRE \introut_state_r_reg[0] 
       (.C(ACLK),
        .CE(irqgen_ctrl_inst_n_17),
        .D(\irq_out_reg[0] ),
        .Q(introut_state_r[0]),
        .R(clear));
  FDRE \introut_state_r_reg[10] 
       (.C(ACLK),
        .CE(irqgen_ctrl_inst_n_17),
        .D(\irq_out_reg[10] ),
        .Q(introut_state_r[10]),
        .R(clear));
  FDRE \introut_state_r_reg[11] 
       (.C(ACLK),
        .CE(irqgen_ctrl_inst_n_17),
        .D(\irq_out_reg[11] ),
        .Q(introut_state_r[11]),
        .R(clear));
  FDRE \introut_state_r_reg[12] 
       (.C(ACLK),
        .CE(irqgen_ctrl_inst_n_17),
        .D(\irq_out_reg[12] ),
        .Q(introut_state_r[12]),
        .R(clear));
  FDRE \introut_state_r_reg[13] 
       (.C(ACLK),
        .CE(irqgen_ctrl_inst_n_17),
        .D(\irq_out_reg[13] ),
        .Q(introut_state_r[13]),
        .R(clear));
  FDRE \introut_state_r_reg[14] 
       (.C(ACLK),
        .CE(irqgen_ctrl_inst_n_17),
        .D(\irq_out_reg[14] ),
        .Q(introut_state_r[14]),
        .R(clear));
  FDRE \introut_state_r_reg[15] 
       (.C(ACLK),
        .CE(irqgen_ctrl_inst_n_17),
        .D(\irq_out_reg[15] ),
        .Q(introut_state_r[15]),
        .R(clear));
  FDRE \introut_state_r_reg[1] 
       (.C(ACLK),
        .CE(irqgen_ctrl_inst_n_17),
        .D(\irq_out_reg[1] ),
        .Q(introut_state_r[1]),
        .R(clear));
  FDRE \introut_state_r_reg[2] 
       (.C(ACLK),
        .CE(irqgen_ctrl_inst_n_17),
        .D(\irq_out_reg[2] ),
        .Q(introut_state_r[2]),
        .R(clear));
  FDRE \introut_state_r_reg[3] 
       (.C(ACLK),
        .CE(irqgen_ctrl_inst_n_17),
        .D(\irq_out_reg[3] ),
        .Q(introut_state_r[3]),
        .R(clear));
  FDRE \introut_state_r_reg[4] 
       (.C(ACLK),
        .CE(irqgen_ctrl_inst_n_17),
        .D(\irq_out_reg[4] ),
        .Q(introut_state_r[4]),
        .R(clear));
  FDRE \introut_state_r_reg[5] 
       (.C(ACLK),
        .CE(irqgen_ctrl_inst_n_17),
        .D(\irq_out_reg[5] ),
        .Q(introut_state_r[5]),
        .R(clear));
  FDRE \introut_state_r_reg[6] 
       (.C(ACLK),
        .CE(irqgen_ctrl_inst_n_17),
        .D(\irq_out_reg[6] ),
        .Q(introut_state_r[6]),
        .R(clear));
  FDRE \introut_state_r_reg[7] 
       (.C(ACLK),
        .CE(irqgen_ctrl_inst_n_17),
        .D(\irq_out_reg[7] ),
        .Q(introut_state_r[7]),
        .R(clear));
  FDRE \introut_state_r_reg[8] 
       (.C(ACLK),
        .CE(irqgen_ctrl_inst_n_17),
        .D(\irq_out_reg[8] ),
        .Q(introut_state_r[8]),
        .R(clear));
  FDRE \introut_state_r_reg[9] 
       (.C(ACLK),
        .CE(irqgen_ctrl_inst_n_17),
        .D(\irq_out_reg[9] ),
        .Q(introut_state_r[9]),
        .R(clear));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 irq_count_r0_carry
       (.CI(1'b0),
        .CO({irq_count_r0_carry_n_0,irq_count_r0_carry_n_1,irq_count_r0_carry_n_2,irq_count_r0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({irqgen_ctrl_inst_n_26,irqgen_ctrl_inst_n_27,irqgen_ctrl_inst_n_28,irqgen_ctrl_inst_n_29}),
        .O(NLW_irq_count_r0_carry_O_UNCONNECTED[3:0]),
        .S({irqgen_ctrl_inst_n_18,irqgen_ctrl_inst_n_19,irqgen_ctrl_inst_n_20,irqgen_ctrl_inst_n_21}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 irq_count_r0_carry__0
       (.CI(irq_count_r0_carry_n_0),
        .CO({irq_count_r0_carry__0_n_0,irq_count_r0_carry__0_n_1,irq_count_r0_carry__0_n_2,irq_count_r0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({irqgen_ctrl_inst_n_38,irqgen_ctrl_inst_n_39,irqgen_ctrl_inst_n_40,irqgen_ctrl_inst_n_41}),
        .O(NLW_irq_count_r0_carry__0_O_UNCONNECTED[3:0]),
        .S({irqgen_ctrl_inst_n_30,irqgen_ctrl_inst_n_31,irqgen_ctrl_inst_n_32,irqgen_ctrl_inst_n_33}));
  LUT1 #(
    .INIT(2'h1)) 
    \irq_count_r[0]_i_2 
       (.I0(irq_count_r_reg[0]),
        .O(\irq_count_r[0]_i_2_n_0 ));
  FDRE \irq_count_r_reg[0] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[0]_i_1_n_7 ),
        .Q(irq_count_r_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \irq_count_r_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\irq_count_r_reg[0]_i_1_n_0 ,\irq_count_r_reg[0]_i_1_n_1 ,\irq_count_r_reg[0]_i_1_n_2 ,\irq_count_r_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\irq_count_r_reg[0]_i_1_n_4 ,\irq_count_r_reg[0]_i_1_n_5 ,\irq_count_r_reg[0]_i_1_n_6 ,\irq_count_r_reg[0]_i_1_n_7 }),
        .S({irq_count_r_reg[3:1],\irq_count_r[0]_i_2_n_0 }));
  FDRE \irq_count_r_reg[10] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[8]_i_1_n_5 ),
        .Q(irq_count_r_reg[10]),
        .R(clear));
  FDRE \irq_count_r_reg[11] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[8]_i_1_n_4 ),
        .Q(irq_count_r_reg[11]),
        .R(clear));
  FDRE \irq_count_r_reg[12] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[12]_i_1_n_7 ),
        .Q(irq_count_r_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \irq_count_r_reg[12]_i_1 
       (.CI(\irq_count_r_reg[8]_i_1_n_0 ),
        .CO({\irq_count_r_reg[12]_i_1_n_0 ,\irq_count_r_reg[12]_i_1_n_1 ,\irq_count_r_reg[12]_i_1_n_2 ,\irq_count_r_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\irq_count_r_reg[12]_i_1_n_4 ,\irq_count_r_reg[12]_i_1_n_5 ,\irq_count_r_reg[12]_i_1_n_6 ,\irq_count_r_reg[12]_i_1_n_7 }),
        .S(irq_count_r_reg[15:12]));
  FDRE \irq_count_r_reg[13] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[12]_i_1_n_6 ),
        .Q(irq_count_r_reg[13]),
        .R(clear));
  FDRE \irq_count_r_reg[14] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[12]_i_1_n_5 ),
        .Q(irq_count_r_reg[14]),
        .R(clear));
  FDRE \irq_count_r_reg[15] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[12]_i_1_n_4 ),
        .Q(irq_count_r_reg[15]),
        .R(clear));
  FDRE \irq_count_r_reg[16] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[16]_i_1_n_7 ),
        .Q(irq_count_r_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \irq_count_r_reg[16]_i_1 
       (.CI(\irq_count_r_reg[12]_i_1_n_0 ),
        .CO({\irq_count_r_reg[16]_i_1_n_0 ,\irq_count_r_reg[16]_i_1_n_1 ,\irq_count_r_reg[16]_i_1_n_2 ,\irq_count_r_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\irq_count_r_reg[16]_i_1_n_4 ,\irq_count_r_reg[16]_i_1_n_5 ,\irq_count_r_reg[16]_i_1_n_6 ,\irq_count_r_reg[16]_i_1_n_7 }),
        .S(irq_count_r_reg[19:16]));
  FDRE \irq_count_r_reg[17] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[16]_i_1_n_6 ),
        .Q(irq_count_r_reg[17]),
        .R(clear));
  FDRE \irq_count_r_reg[18] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[16]_i_1_n_5 ),
        .Q(irq_count_r_reg[18]),
        .R(clear));
  FDRE \irq_count_r_reg[19] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[16]_i_1_n_4 ),
        .Q(irq_count_r_reg[19]),
        .R(clear));
  FDRE \irq_count_r_reg[1] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[0]_i_1_n_6 ),
        .Q(irq_count_r_reg[1]),
        .R(clear));
  FDRE \irq_count_r_reg[20] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[20]_i_1_n_7 ),
        .Q(irq_count_r_reg[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \irq_count_r_reg[20]_i_1 
       (.CI(\irq_count_r_reg[16]_i_1_n_0 ),
        .CO({\irq_count_r_reg[20]_i_1_n_0 ,\irq_count_r_reg[20]_i_1_n_1 ,\irq_count_r_reg[20]_i_1_n_2 ,\irq_count_r_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\irq_count_r_reg[20]_i_1_n_4 ,\irq_count_r_reg[20]_i_1_n_5 ,\irq_count_r_reg[20]_i_1_n_6 ,\irq_count_r_reg[20]_i_1_n_7 }),
        .S(irq_count_r_reg[23:20]));
  FDRE \irq_count_r_reg[21] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[20]_i_1_n_6 ),
        .Q(irq_count_r_reg[21]),
        .R(clear));
  FDRE \irq_count_r_reg[22] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[20]_i_1_n_5 ),
        .Q(irq_count_r_reg[22]),
        .R(clear));
  FDRE \irq_count_r_reg[23] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[20]_i_1_n_4 ),
        .Q(irq_count_r_reg[23]),
        .R(clear));
  FDRE \irq_count_r_reg[24] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[24]_i_1_n_7 ),
        .Q(irq_count_r_reg[24]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \irq_count_r_reg[24]_i_1 
       (.CI(\irq_count_r_reg[20]_i_1_n_0 ),
        .CO({\irq_count_r_reg[24]_i_1_n_0 ,\irq_count_r_reg[24]_i_1_n_1 ,\irq_count_r_reg[24]_i_1_n_2 ,\irq_count_r_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\irq_count_r_reg[24]_i_1_n_4 ,\irq_count_r_reg[24]_i_1_n_5 ,\irq_count_r_reg[24]_i_1_n_6 ,\irq_count_r_reg[24]_i_1_n_7 }),
        .S(irq_count_r_reg[27:24]));
  FDRE \irq_count_r_reg[25] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[24]_i_1_n_6 ),
        .Q(irq_count_r_reg[25]),
        .R(clear));
  FDRE \irq_count_r_reg[26] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[24]_i_1_n_5 ),
        .Q(irq_count_r_reg[26]),
        .R(clear));
  FDRE \irq_count_r_reg[27] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[24]_i_1_n_4 ),
        .Q(irq_count_r_reg[27]),
        .R(clear));
  FDRE \irq_count_r_reg[28] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[28]_i_1_n_7 ),
        .Q(irq_count_r_reg[28]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \irq_count_r_reg[28]_i_1 
       (.CI(\irq_count_r_reg[24]_i_1_n_0 ),
        .CO({\NLW_irq_count_r_reg[28]_i_1_CO_UNCONNECTED [3],\irq_count_r_reg[28]_i_1_n_1 ,\irq_count_r_reg[28]_i_1_n_2 ,\irq_count_r_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\irq_count_r_reg[28]_i_1_n_4 ,\irq_count_r_reg[28]_i_1_n_5 ,\irq_count_r_reg[28]_i_1_n_6 ,\irq_count_r_reg[28]_i_1_n_7 }),
        .S(irq_count_r_reg[31:28]));
  FDRE \irq_count_r_reg[29] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[28]_i_1_n_6 ),
        .Q(irq_count_r_reg[29]),
        .R(clear));
  FDRE \irq_count_r_reg[2] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[0]_i_1_n_5 ),
        .Q(irq_count_r_reg[2]),
        .R(clear));
  FDRE \irq_count_r_reg[30] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[28]_i_1_n_5 ),
        .Q(irq_count_r_reg[30]),
        .R(clear));
  FDRE \irq_count_r_reg[31] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[28]_i_1_n_4 ),
        .Q(irq_count_r_reg[31]),
        .R(clear));
  FDRE \irq_count_r_reg[3] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[0]_i_1_n_4 ),
        .Q(irq_count_r_reg[3]),
        .R(clear));
  FDRE \irq_count_r_reg[4] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[4]_i_1_n_7 ),
        .Q(irq_count_r_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \irq_count_r_reg[4]_i_1 
       (.CI(\irq_count_r_reg[0]_i_1_n_0 ),
        .CO({\irq_count_r_reg[4]_i_1_n_0 ,\irq_count_r_reg[4]_i_1_n_1 ,\irq_count_r_reg[4]_i_1_n_2 ,\irq_count_r_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\irq_count_r_reg[4]_i_1_n_4 ,\irq_count_r_reg[4]_i_1_n_5 ,\irq_count_r_reg[4]_i_1_n_6 ,\irq_count_r_reg[4]_i_1_n_7 }),
        .S(irq_count_r_reg[7:4]));
  FDRE \irq_count_r_reg[5] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[4]_i_1_n_6 ),
        .Q(irq_count_r_reg[5]),
        .R(clear));
  FDRE \irq_count_r_reg[6] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[4]_i_1_n_5 ),
        .Q(irq_count_r_reg[6]),
        .R(clear));
  FDRE \irq_count_r_reg[7] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[4]_i_1_n_4 ),
        .Q(irq_count_r_reg[7]),
        .R(clear));
  FDRE \irq_count_r_reg[8] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[8]_i_1_n_7 ),
        .Q(irq_count_r_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \irq_count_r_reg[8]_i_1 
       (.CI(\irq_count_r_reg[4]_i_1_n_0 ),
        .CO({\irq_count_r_reg[8]_i_1_n_0 ,\irq_count_r_reg[8]_i_1_n_1 ,\irq_count_r_reg[8]_i_1_n_2 ,\irq_count_r_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\irq_count_r_reg[8]_i_1_n_4 ,\irq_count_r_reg[8]_i_1_n_5 ,\irq_count_r_reg[8]_i_1_n_6 ,\irq_count_r_reg[8]_i_1_n_7 }),
        .S(irq_count_r_reg[11:8]));
  FDRE \irq_count_r_reg[9] 
       (.C(ACLK),
        .CE(irq_count_r0_carry__0_n_0),
        .D(\irq_count_r_reg[8]_i_1_n_6 ),
        .Q(irq_count_r_reg[9]),
        .R(clear));
  LUT5 #(
    .INIT(32'h00000100)) 
    \irq_gen_ctrl_r[1]_i_1 
       (.I0(\irq_gen_genirq_r[31]_i_2_n_0 ),
        .I1(S_AXI_AWADDR[2]),
        .I2(\irq_gen_genirq_r[31]_i_3_n_0 ),
        .I3(S_AXI_WDATA[1]),
        .I4(irq_line_handled),
        .O(\irq_gen_ctrl_r[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \irq_gen_ctrl_r[31]_i_1 
       (.I0(\irq_gen_genirq_r[31]_i_2_n_0 ),
        .I1(S_AXI_AWADDR[2]),
        .I2(\irq_gen_genirq_r[31]_i_3_n_0 ),
        .O(\irq_gen_ctrl_r[31]_i_1_n_0 ));
  FDRE \irq_gen_ctrl_r_reg[0] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[0] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[10] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[10] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[11] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[11] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[12] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[12] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[13] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[13] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[14] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[14] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[15] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[15] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[16] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[16] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[17] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[17] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[18] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[18] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[19] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[19] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\irq_gen_ctrl_r[1]_i_1_n_0 ),
        .Q(irq_line_handled),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[20] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[20] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[21] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[21] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[22] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[22] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[23] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[23] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[24] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[24] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[25] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[25] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[26] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[26] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[27] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[27] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[28] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[28] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[29] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[29] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[2] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(p_0_in[0]),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[30] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[30] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[31] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[31] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[3] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(p_0_in[1]),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[4] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(p_0_in[2]),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[5] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(p_0_in[3]),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[6] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[6] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[7] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[7] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[8] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[8] ),
        .R(clear));
  FDRE \irq_gen_ctrl_r_reg[9] 
       (.C(ACLK),
        .CE(\irq_gen_ctrl_r[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(\irq_gen_ctrl_r_reg_n_0_[9] ),
        .R(clear));
  LUT4 #(
    .INIT(16'h0004)) 
    \irq_gen_genirq_r[31]_i_1 
       (.I0(\irq_gen_genirq_r[31]_i_2_n_0 ),
        .I1(S_AXI_AWADDR[2]),
        .I2(\irq_gen_genirq_r[31]_i_3_n_0 ),
        .I3(\irq_gen_genirq_r[31]_i_4_n_0 ),
        .O(irq_gen_genirq_r));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \irq_gen_genirq_r[31]_i_10 
       (.I0(S_AXI_WDATA[29]),
        .I1(S_AXI_WDATA[26]),
        .I2(S_AXI_WDATA[23]),
        .I3(S_AXI_WDATA[17]),
        .O(\irq_gen_genirq_r[31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \irq_gen_genirq_r[31]_i_2 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWADDR[1]),
        .I4(S_AXI_AWADDR[0]),
        .O(\irq_gen_genirq_r[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \irq_gen_genirq_r[31]_i_3 
       (.I0(\irq_gen_genirq_r[31]_i_5_n_0 ),
        .I1(S_AXI_AWADDR[4]),
        .I2(S_AXI_AWADDR[15]),
        .I3(S_AXI_AWADDR[3]),
        .I4(\irq_gen_genirq_r[31]_i_6_n_0 ),
        .O(\irq_gen_genirq_r[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0010FFFF)) 
    \irq_gen_genirq_r[31]_i_4 
       (.I0(\irq_gen_genirq_r[31]_i_7_n_0 ),
        .I1(\irq_gen_genirq_r[31]_i_8_n_0 ),
        .I2(\irq_gen_genirq_r[31]_i_9_n_0 ),
        .I3(\irq_gen_genirq_r[31]_i_10_n_0 ),
        .I4(\irq_gen_ctrl_r_reg_n_0_[0] ),
        .O(\irq_gen_genirq_r[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \irq_gen_genirq_r[31]_i_5 
       (.I0(S_AXI_AWADDR[14]),
        .I1(S_AXI_AWADDR[8]),
        .I2(S_AXI_AWADDR[7]),
        .I3(S_AXI_AWADDR[6]),
        .O(\irq_gen_genirq_r[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \irq_gen_genirq_r[31]_i_6 
       (.I0(S_AXI_AWADDR[10]),
        .I1(S_AXI_AWADDR[9]),
        .I2(S_AXI_AWADDR[5]),
        .I3(S_AXI_AWADDR[11]),
        .I4(S_AXI_AWADDR[12]),
        .I5(S_AXI_AWADDR[13]),
        .O(\irq_gen_genirq_r[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \irq_gen_genirq_r[31]_i_7 
       (.I0(S_AXI_WDATA[27]),
        .I1(S_AXI_WDATA[18]),
        .I2(S_AXI_WDATA[31]),
        .I3(S_AXI_WDATA[20]),
        .O(\irq_gen_genirq_r[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \irq_gen_genirq_r[31]_i_8 
       (.I0(S_AXI_WDATA[30]),
        .I1(S_AXI_WDATA[16]),
        .I2(S_AXI_WDATA[28]),
        .I3(S_AXI_WDATA[19]),
        .O(\irq_gen_genirq_r[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \irq_gen_genirq_r[31]_i_9 
       (.I0(S_AXI_WDATA[22]),
        .I1(S_AXI_WDATA[21]),
        .I2(S_AXI_WDATA[25]),
        .I3(S_AXI_WDATA[24]),
        .O(\irq_gen_genirq_r[31]_i_9_n_0 ));
  FDRE \irq_gen_genirq_r_reg[0] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[0]),
        .Q(\irq_gen_genirq_r_reg_n_0_[0] ),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[10] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[10]),
        .Q(irq_rate[4]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[11] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[11]),
        .Q(irq_rate[5]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[12] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[12]),
        .Q(irq_rate[6]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[13] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[13]),
        .Q(irq_rate[7]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[14] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[14]),
        .Q(irq_rate[8]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[15] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[15]),
        .Q(irq_rate[9]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[16] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[16]),
        .Q(irq_rate[10]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[17] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[17]),
        .Q(irq_rate[11]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[18] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[18]),
        .Q(irq_rate[12]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[19] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[19]),
        .Q(irq_rate[13]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[1] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[1]),
        .Q(\irq_gen_genirq_r_reg_n_0_[1] ),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[20] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[20]),
        .Q(irq_amt[0]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[21] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[21]),
        .Q(irq_amt[1]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[22] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[22]),
        .Q(irq_amt[2]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[23] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[23]),
        .Q(irq_amt[3]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[24] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[24]),
        .Q(irq_amt[4]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[25] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[25]),
        .Q(irq_amt[5]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[26] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[26]),
        .Q(irq_amt[6]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[27] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[27]),
        .Q(irq_amt[7]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[28] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[28]),
        .Q(irq_amt[8]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[29] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[29]),
        .Q(irq_amt[9]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[2] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[2]),
        .Q(\irq_gen_genirq_r_reg_n_0_[2] ),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[30] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[30]),
        .Q(irq_amt[10]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[31] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[31]),
        .Q(irq_amt[11]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[3] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[3]),
        .Q(\irq_gen_genirq_r_reg_n_0_[3] ),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[6] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[6]),
        .Q(irq_rate[0]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[7] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[7]),
        .Q(irq_rate[1]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[8] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[8]),
        .Q(irq_rate[2]),
        .R(clear));
  FDRE \irq_gen_genirq_r_reg[9] 
       (.C(ACLK),
        .CE(irq_gen_genirq_r),
        .D(S_AXI_WDATA[9]),
        .Q(irq_rate[3]),
        .R(clear));
  design_1_irq_generator_0_0_irqgen_controller irqgen_ctrl_inst
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .CO(introut_state_r0_carry__0_n_0),
        .D({\irq_out_reg[15] ,\irq_out_reg[14] ,\irq_out_reg[13] ,\irq_out_reg[12] ,\irq_out_reg[11] ,\irq_out_reg[10] ,\irq_out_reg[9] ,\irq_out_reg[8] ,\irq_out_reg[7] ,\irq_out_reg[6] ,\irq_out_reg[5] ,\irq_out_reg[4] ,\irq_out_reg[3] ,\irq_out_reg[2] ,\irq_out_reg[1] ,\irq_out_reg[0] }),
        .DI({irqgen_ctrl_inst_n_22,irqgen_ctrl_inst_n_23,irqgen_ctrl_inst_n_24,irqgen_ctrl_inst_n_25}),
        .E(irqgen_ctrl_inst_n_17),
        .Q(p_0_in),
        .S({irqgen_ctrl_inst_n_18,irqgen_ctrl_inst_n_19,irqgen_ctrl_inst_n_20,irqgen_ctrl_inst_n_21}),
        .clear(clear),
        .\introut_state_r_reg[0] (irq_count_r0_carry__0_n_0),
        .\introut_state_r_reg[14] ({irqgen_ctrl_inst_n_34,irqgen_ctrl_inst_n_35,irqgen_ctrl_inst_n_36,irqgen_ctrl_inst_n_37}),
        .\irq_amt_r_reg[11]_0 ({irq_amt,irq_rate,\irq_gen_genirq_r_reg_n_0_[3] ,\irq_gen_genirq_r_reg_n_0_[2] ,\irq_gen_genirq_r_reg_n_0_[1] ,\irq_gen_genirq_r_reg_n_0_[0] }),
        .\irq_count_r_reg[0] (introut_state_r),
        .irq_line_handled(irq_line_handled),
        .\irq_out_reg[14]_0 ({irqgen_ctrl_inst_n_30,irqgen_ctrl_inst_n_31,irqgen_ctrl_inst_n_32,irqgen_ctrl_inst_n_33}),
        .\irq_out_reg[14]_1 ({irqgen_ctrl_inst_n_38,irqgen_ctrl_inst_n_39,irqgen_ctrl_inst_n_40,irqgen_ctrl_inst_n_41}),
        .\irq_out_reg[14]_2 ({irqgen_ctrl_inst_n_46,irqgen_ctrl_inst_n_47,irqgen_ctrl_inst_n_48,irqgen_ctrl_inst_n_49}),
        .\irq_out_reg[6]_0 ({irqgen_ctrl_inst_n_26,irqgen_ctrl_inst_n_27,irqgen_ctrl_inst_n_28,irqgen_ctrl_inst_n_29}),
        .\irq_out_reg[6]_1 ({irqgen_ctrl_inst_n_42,irqgen_ctrl_inst_n_43,irqgen_ctrl_inst_n_44,irqgen_ctrl_inst_n_45}),
        .running_reg_0(start_irq_gen_r_reg_n_0));
  LUT5 #(
    .INIT(32'h00000004)) 
    start_irq_gen_r_i_1
       (.I0(\irq_gen_genirq_r[31]_i_2_n_0 ),
        .I1(S_AXI_AWADDR[2]),
        .I2(\irq_gen_genirq_r[31]_i_3_n_0 ),
        .I3(\irq_gen_genirq_r[31]_i_4_n_0 ),
        .I4(start_irq_gen_r_reg_n_0),
        .O(start_irq_gen_r_i_1_n_0));
  FDRE start_irq_gen_r_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(start_irq_gen_r_i_1_n_0),
        .Q(start_irq_gen_r_reg_n_0),
        .R(clear));
endmodule

(* ORIG_REF_NAME = "irqgen_controller" *) 
module design_1_irq_generator_0_0_irqgen_controller
   (clear,
    D,
    E,
    S,
    DI,
    \irq_out_reg[6]_0 ,
    \irq_out_reg[14]_0 ,
    \introut_state_r_reg[14] ,
    \irq_out_reg[14]_1 ,
    \irq_out_reg[6]_1 ,
    \irq_out_reg[14]_2 ,
    ACLK,
    ARESETN,
    irq_line_handled,
    Q,
    running_reg_0,
    CO,
    \introut_state_r_reg[0] ,
    \irq_count_r_reg[0] ,
    \irq_amt_r_reg[11]_0 );
  output clear;
  output [15:0]D;
  output [0:0]E;
  output [3:0]S;
  output [3:0]DI;
  output [3:0]\irq_out_reg[6]_0 ;
  output [3:0]\irq_out_reg[14]_0 ;
  output [3:0]\introut_state_r_reg[14] ;
  output [3:0]\irq_out_reg[14]_1 ;
  output [3:0]\irq_out_reg[6]_1 ;
  output [3:0]\irq_out_reg[14]_2 ;
  input ACLK;
  input ARESETN;
  input [0:0]irq_line_handled;
  input [3:0]Q;
  input running_reg_0;
  input [0:0]CO;
  input [0:0]\introut_state_r_reg[0] ;
  input [15:0]\irq_count_r_reg[0] ;
  input [29:0]\irq_amt_r_reg[11]_0 ;

  wire ACLK;
  wire ARESETN;
  wire [0:0]CO;
  wire [15:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]S;
  wire clear;
  wire \handled_irq_count_r[0]_i_1_n_0 ;
  wire \handled_irq_count_r[0]_i_4_n_0 ;
  wire \handled_irq_count_r[0]_i_5_n_0 ;
  wire [11:0]handled_irq_count_r_reg;
  wire \handled_irq_count_r_reg[0]_i_3_n_0 ;
  wire \handled_irq_count_r_reg[0]_i_3_n_1 ;
  wire \handled_irq_count_r_reg[0]_i_3_n_2 ;
  wire \handled_irq_count_r_reg[0]_i_3_n_3 ;
  wire \handled_irq_count_r_reg[0]_i_3_n_4 ;
  wire \handled_irq_count_r_reg[0]_i_3_n_5 ;
  wire \handled_irq_count_r_reg[0]_i_3_n_6 ;
  wire \handled_irq_count_r_reg[0]_i_3_n_7 ;
  wire \handled_irq_count_r_reg[4]_i_1_n_0 ;
  wire \handled_irq_count_r_reg[4]_i_1_n_1 ;
  wire \handled_irq_count_r_reg[4]_i_1_n_2 ;
  wire \handled_irq_count_r_reg[4]_i_1_n_3 ;
  wire \handled_irq_count_r_reg[4]_i_1_n_4 ;
  wire \handled_irq_count_r_reg[4]_i_1_n_5 ;
  wire \handled_irq_count_r_reg[4]_i_1_n_6 ;
  wire \handled_irq_count_r_reg[4]_i_1_n_7 ;
  wire \handled_irq_count_r_reg[8]_i_1_n_1 ;
  wire \handled_irq_count_r_reg[8]_i_1_n_2 ;
  wire \handled_irq_count_r_reg[8]_i_1_n_3 ;
  wire \handled_irq_count_r_reg[8]_i_1_n_4 ;
  wire \handled_irq_count_r_reg[8]_i_1_n_5 ;
  wire \handled_irq_count_r_reg[8]_i_1_n_6 ;
  wire \handled_irq_count_r_reg[8]_i_1_n_7 ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire [0:0]\introut_state_r_reg[0] ;
  wire [3:0]\introut_state_r_reg[14] ;
  wire [11:0]irq_amt_r;
  wire [29:0]\irq_amt_r_reg[11]_0 ;
  wire [15:0]\irq_count_r_reg[0] ;
  wire [0:0]irq_line_handled;
  wire [3:0]irq_line_r;
  wire irq_out12_out;
  wire \irq_out1_inferred__1/i__carry__0_n_1 ;
  wire \irq_out1_inferred__1/i__carry__0_n_2 ;
  wire \irq_out1_inferred__1/i__carry__0_n_3 ;
  wire \irq_out1_inferred__1/i__carry_n_0 ;
  wire \irq_out1_inferred__1/i__carry_n_1 ;
  wire \irq_out1_inferred__1/i__carry_n_2 ;
  wire \irq_out1_inferred__1/i__carry_n_3 ;
  wire irq_out2;
  wire \irq_out2_inferred__0/i__carry__0_n_3 ;
  wire \irq_out2_inferred__0/i__carry_n_0 ;
  wire \irq_out2_inferred__0/i__carry_n_1 ;
  wire \irq_out2_inferred__0/i__carry_n_2 ;
  wire \irq_out2_inferred__0/i__carry_n_3 ;
  wire \irq_out[0]_i_1_n_0 ;
  wire \irq_out[10]_i_1_n_0 ;
  wire \irq_out[11]_i_1_n_0 ;
  wire \irq_out[11]_i_2_n_0 ;
  wire \irq_out[12]_i_1_n_0 ;
  wire \irq_out[13]_i_1_n_0 ;
  wire \irq_out[14]_i_1_n_0 ;
  wire \irq_out[15]_i_10_n_0 ;
  wire \irq_out[15]_i_2_n_0 ;
  wire \irq_out[15]_i_3_n_0 ;
  wire \irq_out[15]_i_4_n_0 ;
  wire \irq_out[15]_i_5_n_0 ;
  wire \irq_out[15]_i_6_n_0 ;
  wire \irq_out[15]_i_7_n_0 ;
  wire \irq_out[15]_i_8_n_0 ;
  wire \irq_out[15]_i_9_n_0 ;
  wire \irq_out[1]_i_1_n_0 ;
  wire \irq_out[2]_i_1_n_0 ;
  wire \irq_out[3]_i_1_n_0 ;
  wire \irq_out[3]_i_2_n_0 ;
  wire \irq_out[4]_i_1_n_0 ;
  wire \irq_out[5]_i_1_n_0 ;
  wire \irq_out[6]_i_1_n_0 ;
  wire \irq_out[7]_i_1_n_0 ;
  wire \irq_out[7]_i_2_n_0 ;
  wire \irq_out[8]_i_1_n_0 ;
  wire \irq_out[9]_i_1_n_0 ;
  wire [3:0]\irq_out_reg[14]_0 ;
  wire [3:0]\irq_out_reg[14]_1 ;
  wire [3:0]\irq_out_reg[14]_2 ;
  wire [3:0]\irq_out_reg[6]_0 ;
  wire [3:0]\irq_out_reg[6]_1 ;
  wire [13:0]irq_rate_r;
  wire irq_rate_r0;
  wire irq_throttle_r;
  wire \irq_throttle_r[0]_i_1_n_0 ;
  wire \irq_throttle_r[0]_i_4_n_0 ;
  wire \irq_throttle_r[0]_i_5_n_0 ;
  wire [13:0]irq_throttle_r_reg;
  wire \irq_throttle_r_reg[0]_i_3_n_0 ;
  wire \irq_throttle_r_reg[0]_i_3_n_1 ;
  wire \irq_throttle_r_reg[0]_i_3_n_2 ;
  wire \irq_throttle_r_reg[0]_i_3_n_3 ;
  wire \irq_throttle_r_reg[0]_i_3_n_4 ;
  wire \irq_throttle_r_reg[0]_i_3_n_5 ;
  wire \irq_throttle_r_reg[0]_i_3_n_6 ;
  wire \irq_throttle_r_reg[0]_i_3_n_7 ;
  wire \irq_throttle_r_reg[12]_i_1_n_3 ;
  wire \irq_throttle_r_reg[12]_i_1_n_6 ;
  wire \irq_throttle_r_reg[12]_i_1_n_7 ;
  wire \irq_throttle_r_reg[4]_i_1_n_0 ;
  wire \irq_throttle_r_reg[4]_i_1_n_1 ;
  wire \irq_throttle_r_reg[4]_i_1_n_2 ;
  wire \irq_throttle_r_reg[4]_i_1_n_3 ;
  wire \irq_throttle_r_reg[4]_i_1_n_4 ;
  wire \irq_throttle_r_reg[4]_i_1_n_5 ;
  wire \irq_throttle_r_reg[4]_i_1_n_6 ;
  wire \irq_throttle_r_reg[4]_i_1_n_7 ;
  wire \irq_throttle_r_reg[8]_i_1_n_0 ;
  wire \irq_throttle_r_reg[8]_i_1_n_1 ;
  wire \irq_throttle_r_reg[8]_i_1_n_2 ;
  wire \irq_throttle_r_reg[8]_i_1_n_3 ;
  wire \irq_throttle_r_reg[8]_i_1_n_4 ;
  wire \irq_throttle_r_reg[8]_i_1_n_5 ;
  wire \irq_throttle_r_reg[8]_i_1_n_6 ;
  wire \irq_throttle_r_reg[8]_i_1_n_7 ;
  wire running;
  wire running0_carry_i_1_n_0;
  wire running0_carry_i_2_n_0;
  wire running0_carry_i_3_n_0;
  wire running0_carry_i_4_n_0;
  wire running0_carry_n_0;
  wire running0_carry_n_1;
  wire running0_carry_n_2;
  wire running0_carry_n_3;
  wire running_i_1_n_0;
  wire running_reg_0;
  wire [3:3]\NLW_handled_irq_count_r_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_irq_out1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_irq_out1_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_irq_out1_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_irq_out2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_irq_out2_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_irq_out2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_irq_throttle_r_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_irq_throttle_r_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_running0_carry_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h7)) 
    \handled_irq_count_r[0]_i_1 
       (.I0(ARESETN),
        .I1(running),
        .O(\handled_irq_count_r[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2002)) 
    \handled_irq_count_r[0]_i_2 
       (.I0(irq_line_handled),
        .I1(\handled_irq_count_r[0]_i_4_n_0 ),
        .I2(Q[3]),
        .I3(irq_line_r[3]),
        .O(irq_out12_out));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \handled_irq_count_r[0]_i_4 
       (.I0(irq_line_r[0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(irq_line_r[2]),
        .I4(Q[1]),
        .I5(irq_line_r[1]),
        .O(\handled_irq_count_r[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \handled_irq_count_r[0]_i_5 
       (.I0(handled_irq_count_r_reg[0]),
        .O(\handled_irq_count_r[0]_i_5_n_0 ));
  FDRE \handled_irq_count_r_reg[0] 
       (.C(ACLK),
        .CE(irq_out12_out),
        .D(\handled_irq_count_r_reg[0]_i_3_n_7 ),
        .Q(handled_irq_count_r_reg[0]),
        .R(\handled_irq_count_r[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \handled_irq_count_r_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\handled_irq_count_r_reg[0]_i_3_n_0 ,\handled_irq_count_r_reg[0]_i_3_n_1 ,\handled_irq_count_r_reg[0]_i_3_n_2 ,\handled_irq_count_r_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\handled_irq_count_r_reg[0]_i_3_n_4 ,\handled_irq_count_r_reg[0]_i_3_n_5 ,\handled_irq_count_r_reg[0]_i_3_n_6 ,\handled_irq_count_r_reg[0]_i_3_n_7 }),
        .S({handled_irq_count_r_reg[3:1],\handled_irq_count_r[0]_i_5_n_0 }));
  FDRE \handled_irq_count_r_reg[10] 
       (.C(ACLK),
        .CE(irq_out12_out),
        .D(\handled_irq_count_r_reg[8]_i_1_n_5 ),
        .Q(handled_irq_count_r_reg[10]),
        .R(\handled_irq_count_r[0]_i_1_n_0 ));
  FDRE \handled_irq_count_r_reg[11] 
       (.C(ACLK),
        .CE(irq_out12_out),
        .D(\handled_irq_count_r_reg[8]_i_1_n_4 ),
        .Q(handled_irq_count_r_reg[11]),
        .R(\handled_irq_count_r[0]_i_1_n_0 ));
  FDRE \handled_irq_count_r_reg[1] 
       (.C(ACLK),
        .CE(irq_out12_out),
        .D(\handled_irq_count_r_reg[0]_i_3_n_6 ),
        .Q(handled_irq_count_r_reg[1]),
        .R(\handled_irq_count_r[0]_i_1_n_0 ));
  FDRE \handled_irq_count_r_reg[2] 
       (.C(ACLK),
        .CE(irq_out12_out),
        .D(\handled_irq_count_r_reg[0]_i_3_n_5 ),
        .Q(handled_irq_count_r_reg[2]),
        .R(\handled_irq_count_r[0]_i_1_n_0 ));
  FDRE \handled_irq_count_r_reg[3] 
       (.C(ACLK),
        .CE(irq_out12_out),
        .D(\handled_irq_count_r_reg[0]_i_3_n_4 ),
        .Q(handled_irq_count_r_reg[3]),
        .R(\handled_irq_count_r[0]_i_1_n_0 ));
  FDRE \handled_irq_count_r_reg[4] 
       (.C(ACLK),
        .CE(irq_out12_out),
        .D(\handled_irq_count_r_reg[4]_i_1_n_7 ),
        .Q(handled_irq_count_r_reg[4]),
        .R(\handled_irq_count_r[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \handled_irq_count_r_reg[4]_i_1 
       (.CI(\handled_irq_count_r_reg[0]_i_3_n_0 ),
        .CO({\handled_irq_count_r_reg[4]_i_1_n_0 ,\handled_irq_count_r_reg[4]_i_1_n_1 ,\handled_irq_count_r_reg[4]_i_1_n_2 ,\handled_irq_count_r_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\handled_irq_count_r_reg[4]_i_1_n_4 ,\handled_irq_count_r_reg[4]_i_1_n_5 ,\handled_irq_count_r_reg[4]_i_1_n_6 ,\handled_irq_count_r_reg[4]_i_1_n_7 }),
        .S(handled_irq_count_r_reg[7:4]));
  FDRE \handled_irq_count_r_reg[5] 
       (.C(ACLK),
        .CE(irq_out12_out),
        .D(\handled_irq_count_r_reg[4]_i_1_n_6 ),
        .Q(handled_irq_count_r_reg[5]),
        .R(\handled_irq_count_r[0]_i_1_n_0 ));
  FDRE \handled_irq_count_r_reg[6] 
       (.C(ACLK),
        .CE(irq_out12_out),
        .D(\handled_irq_count_r_reg[4]_i_1_n_5 ),
        .Q(handled_irq_count_r_reg[6]),
        .R(\handled_irq_count_r[0]_i_1_n_0 ));
  FDRE \handled_irq_count_r_reg[7] 
       (.C(ACLK),
        .CE(irq_out12_out),
        .D(\handled_irq_count_r_reg[4]_i_1_n_4 ),
        .Q(handled_irq_count_r_reg[7]),
        .R(\handled_irq_count_r[0]_i_1_n_0 ));
  FDRE \handled_irq_count_r_reg[8] 
       (.C(ACLK),
        .CE(irq_out12_out),
        .D(\handled_irq_count_r_reg[8]_i_1_n_7 ),
        .Q(handled_irq_count_r_reg[8]),
        .R(\handled_irq_count_r[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \handled_irq_count_r_reg[8]_i_1 
       (.CI(\handled_irq_count_r_reg[4]_i_1_n_0 ),
        .CO({\NLW_handled_irq_count_r_reg[8]_i_1_CO_UNCONNECTED [3],\handled_irq_count_r_reg[8]_i_1_n_1 ,\handled_irq_count_r_reg[8]_i_1_n_2 ,\handled_irq_count_r_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\handled_irq_count_r_reg[8]_i_1_n_4 ,\handled_irq_count_r_reg[8]_i_1_n_5 ,\handled_irq_count_r_reg[8]_i_1_n_6 ,\handled_irq_count_r_reg[8]_i_1_n_7 }),
        .S(handled_irq_count_r_reg[11:8]));
  FDRE \handled_irq_count_r_reg[9] 
       (.C(ACLK),
        .CE(irq_out12_out),
        .D(\handled_irq_count_r_reg[8]_i_1_n_6 ),
        .Q(handled_irq_count_r_reg[9]),
        .R(\handled_irq_count_r[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_1
       (.I0(handled_irq_count_r_reg[11]),
        .I1(irq_amt_r[11]),
        .I2(irq_amt_r[10]),
        .I3(handled_irq_count_r_reg[10]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1__0
       (.I0(irq_throttle_r_reg[13]),
        .I1(irq_rate_r[13]),
        .I2(irq_throttle_r_reg[12]),
        .I3(irq_rate_r[12]),
        .O(i__carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_2
       (.I0(handled_irq_count_r_reg[9]),
        .I1(irq_amt_r[9]),
        .I2(irq_amt_r[8]),
        .I3(handled_irq_count_r_reg[8]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2__0
       (.I0(irq_throttle_r_reg[11]),
        .I1(irq_rate_r[11]),
        .I2(irq_throttle_r_reg[10]),
        .I3(irq_rate_r[10]),
        .O(i__carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_3
       (.I0(irq_amt_r[11]),
        .I1(handled_irq_count_r_reg[11]),
        .I2(irq_amt_r[10]),
        .I3(handled_irq_count_r_reg[10]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3__0
       (.I0(irq_throttle_r_reg[9]),
        .I1(irq_rate_r[9]),
        .I2(irq_throttle_r_reg[8]),
        .I3(irq_rate_r[8]),
        .O(i__carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_4
       (.I0(irq_amt_r[8]),
        .I1(handled_irq_count_r_reg[8]),
        .I2(irq_amt_r[9]),
        .I3(handled_irq_count_r_reg[9]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_4__0
       (.I0(irq_rate_r[13]),
        .I1(irq_throttle_r_reg[13]),
        .I2(irq_rate_r[12]),
        .I3(irq_throttle_r_reg[12]),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(irq_rate_r[11]),
        .I1(irq_throttle_r_reg[11]),
        .I2(irq_rate_r[10]),
        .I3(irq_throttle_r_reg[10]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(irq_rate_r[9]),
        .I1(irq_throttle_r_reg[9]),
        .I2(irq_rate_r[8]),
        .I3(irq_throttle_r_reg[8]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_1
       (.I0(handled_irq_count_r_reg[7]),
        .I1(irq_amt_r[7]),
        .I2(irq_amt_r[6]),
        .I3(handled_irq_count_r_reg[6]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1__0
       (.I0(irq_throttle_r_reg[7]),
        .I1(irq_rate_r[7]),
        .I2(irq_throttle_r_reg[6]),
        .I3(irq_rate_r[6]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_2
       (.I0(handled_irq_count_r_reg[5]),
        .I1(irq_amt_r[5]),
        .I2(irq_amt_r[4]),
        .I3(handled_irq_count_r_reg[4]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2__0
       (.I0(irq_throttle_r_reg[5]),
        .I1(irq_rate_r[5]),
        .I2(irq_throttle_r_reg[4]),
        .I3(irq_rate_r[4]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_3
       (.I0(handled_irq_count_r_reg[3]),
        .I1(irq_amt_r[3]),
        .I2(irq_amt_r[2]),
        .I3(handled_irq_count_r_reg[2]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__0
       (.I0(irq_throttle_r_reg[3]),
        .I1(irq_rate_r[3]),
        .I2(irq_throttle_r_reg[2]),
        .I3(irq_rate_r[2]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_4
       (.I0(handled_irq_count_r_reg[1]),
        .I1(irq_amt_r[1]),
        .I2(irq_amt_r[0]),
        .I3(handled_irq_count_r_reg[0]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4__0
       (.I0(irq_throttle_r_reg[1]),
        .I1(irq_rate_r[1]),
        .I2(irq_throttle_r_reg[0]),
        .I3(irq_rate_r[0]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(irq_amt_r[7]),
        .I1(handled_irq_count_r_reg[7]),
        .I2(irq_amt_r[6]),
        .I3(handled_irq_count_r_reg[6]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(irq_rate_r[7]),
        .I1(irq_throttle_r_reg[7]),
        .I2(irq_rate_r[6]),
        .I3(irq_throttle_r_reg[6]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(irq_amt_r[5]),
        .I1(handled_irq_count_r_reg[5]),
        .I2(irq_amt_r[4]),
        .I3(handled_irq_count_r_reg[4]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(irq_rate_r[5]),
        .I1(irq_throttle_r_reg[5]),
        .I2(irq_rate_r[4]),
        .I3(irq_throttle_r_reg[4]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(irq_amt_r[2]),
        .I1(handled_irq_count_r_reg[2]),
        .I2(irq_amt_r[3]),
        .I3(handled_irq_count_r_reg[3]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(irq_rate_r[3]),
        .I1(irq_throttle_r_reg[3]),
        .I2(irq_rate_r[2]),
        .I3(irq_throttle_r_reg[2]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(irq_amt_r[1]),
        .I1(handled_irq_count_r_reg[1]),
        .I2(irq_amt_r[0]),
        .I3(handled_irq_count_r_reg[0]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(irq_rate_r[1]),
        .I1(irq_throttle_r_reg[1]),
        .I2(irq_rate_r[0]),
        .I3(irq_throttle_r_reg[0]),
        .O(i__carry_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    introut_state_r0_carry__0_i_1
       (.I0(\irq_count_r_reg[0] [14]),
        .I1(D[14]),
        .I2(D[15]),
        .I3(\irq_count_r_reg[0] [15]),
        .O(\introut_state_r_reg[14] [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    introut_state_r0_carry__0_i_2
       (.I0(\irq_count_r_reg[0] [12]),
        .I1(D[12]),
        .I2(D[13]),
        .I3(\irq_count_r_reg[0] [13]),
        .O(\introut_state_r_reg[14] [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    introut_state_r0_carry__0_i_3
       (.I0(\irq_count_r_reg[0] [10]),
        .I1(D[10]),
        .I2(D[11]),
        .I3(\irq_count_r_reg[0] [11]),
        .O(\introut_state_r_reg[14] [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    introut_state_r0_carry__0_i_4
       (.I0(\irq_count_r_reg[0] [8]),
        .I1(D[8]),
        .I2(D[9]),
        .I3(\irq_count_r_reg[0] [9]),
        .O(\introut_state_r_reg[14] [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    introut_state_r0_carry__0_i_5
       (.I0(D[14]),
        .I1(\irq_count_r_reg[0] [14]),
        .I2(\irq_count_r_reg[0] [15]),
        .I3(D[15]),
        .O(\irq_out_reg[14]_2 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    introut_state_r0_carry__0_i_6
       (.I0(D[12]),
        .I1(\irq_count_r_reg[0] [12]),
        .I2(\irq_count_r_reg[0] [13]),
        .I3(D[13]),
        .O(\irq_out_reg[14]_2 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    introut_state_r0_carry__0_i_7
       (.I0(D[10]),
        .I1(\irq_count_r_reg[0] [10]),
        .I2(\irq_count_r_reg[0] [11]),
        .I3(D[11]),
        .O(\irq_out_reg[14]_2 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    introut_state_r0_carry__0_i_8
       (.I0(D[8]),
        .I1(\irq_count_r_reg[0] [8]),
        .I2(\irq_count_r_reg[0] [9]),
        .I3(D[9]),
        .O(\irq_out_reg[14]_2 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    introut_state_r0_carry_i_1
       (.I0(\irq_count_r_reg[0] [6]),
        .I1(D[6]),
        .I2(D[7]),
        .I3(\irq_count_r_reg[0] [7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    introut_state_r0_carry_i_2
       (.I0(\irq_count_r_reg[0] [4]),
        .I1(D[4]),
        .I2(D[5]),
        .I3(\irq_count_r_reg[0] [5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    introut_state_r0_carry_i_3
       (.I0(\irq_count_r_reg[0] [2]),
        .I1(D[2]),
        .I2(D[3]),
        .I3(\irq_count_r_reg[0] [3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    introut_state_r0_carry_i_4
       (.I0(\irq_count_r_reg[0] [0]),
        .I1(D[0]),
        .I2(D[1]),
        .I3(\irq_count_r_reg[0] [1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    introut_state_r0_carry_i_5
       (.I0(D[6]),
        .I1(\irq_count_r_reg[0] [6]),
        .I2(\irq_count_r_reg[0] [7]),
        .I3(D[7]),
        .O(\irq_out_reg[6]_1 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    introut_state_r0_carry_i_6
       (.I0(D[4]),
        .I1(\irq_count_r_reg[0] [4]),
        .I2(\irq_count_r_reg[0] [5]),
        .I3(D[5]),
        .O(\irq_out_reg[6]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    introut_state_r0_carry_i_7
       (.I0(D[2]),
        .I1(\irq_count_r_reg[0] [2]),
        .I2(\irq_count_r_reg[0] [3]),
        .I3(D[3]),
        .O(\irq_out_reg[6]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    introut_state_r0_carry_i_8
       (.I0(D[0]),
        .I1(\irq_count_r_reg[0] [0]),
        .I2(\irq_count_r_reg[0] [1]),
        .I3(D[1]),
        .O(\irq_out_reg[6]_1 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    \introut_state_r[15]_i_1 
       (.I0(CO),
        .I1(\introut_state_r_reg[0] ),
        .O(E));
  FDRE \irq_amt_r_reg[0] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [18]),
        .Q(irq_amt_r[0]),
        .R(clear));
  FDRE \irq_amt_r_reg[10] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [28]),
        .Q(irq_amt_r[10]),
        .R(clear));
  FDRE \irq_amt_r_reg[11] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [29]),
        .Q(irq_amt_r[11]),
        .R(clear));
  FDRE \irq_amt_r_reg[1] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [19]),
        .Q(irq_amt_r[1]),
        .R(clear));
  FDRE \irq_amt_r_reg[2] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [20]),
        .Q(irq_amt_r[2]),
        .R(clear));
  FDRE \irq_amt_r_reg[3] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [21]),
        .Q(irq_amt_r[3]),
        .R(clear));
  FDRE \irq_amt_r_reg[4] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [22]),
        .Q(irq_amt_r[4]),
        .R(clear));
  FDRE \irq_amt_r_reg[5] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [23]),
        .Q(irq_amt_r[5]),
        .R(clear));
  FDRE \irq_amt_r_reg[6] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [24]),
        .Q(irq_amt_r[6]),
        .R(clear));
  FDRE \irq_amt_r_reg[7] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [25]),
        .Q(irq_amt_r[7]),
        .R(clear));
  FDRE \irq_amt_r_reg[8] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [26]),
        .Q(irq_amt_r[8]),
        .R(clear));
  FDRE \irq_amt_r_reg[9] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [27]),
        .Q(irq_amt_r[9]),
        .R(clear));
  LUT4 #(
    .INIT(16'h2F02)) 
    irq_count_r0_carry__0_i_1
       (.I0(D[14]),
        .I1(\irq_count_r_reg[0] [14]),
        .I2(\irq_count_r_reg[0] [15]),
        .I3(D[15]),
        .O(\irq_out_reg[14]_1 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    irq_count_r0_carry__0_i_2
       (.I0(D[12]),
        .I1(\irq_count_r_reg[0] [12]),
        .I2(\irq_count_r_reg[0] [13]),
        .I3(D[13]),
        .O(\irq_out_reg[14]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    irq_count_r0_carry__0_i_3
       (.I0(D[10]),
        .I1(\irq_count_r_reg[0] [10]),
        .I2(\irq_count_r_reg[0] [11]),
        .I3(D[11]),
        .O(\irq_out_reg[14]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    irq_count_r0_carry__0_i_4
       (.I0(D[8]),
        .I1(\irq_count_r_reg[0] [8]),
        .I2(\irq_count_r_reg[0] [9]),
        .I3(D[9]),
        .O(\irq_out_reg[14]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    irq_count_r0_carry__0_i_5
       (.I0(D[14]),
        .I1(\irq_count_r_reg[0] [14]),
        .I2(\irq_count_r_reg[0] [15]),
        .I3(D[15]),
        .O(\irq_out_reg[14]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    irq_count_r0_carry__0_i_6
       (.I0(D[12]),
        .I1(\irq_count_r_reg[0] [12]),
        .I2(\irq_count_r_reg[0] [13]),
        .I3(D[13]),
        .O(\irq_out_reg[14]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    irq_count_r0_carry__0_i_7
       (.I0(D[10]),
        .I1(\irq_count_r_reg[0] [10]),
        .I2(\irq_count_r_reg[0] [11]),
        .I3(D[11]),
        .O(\irq_out_reg[14]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    irq_count_r0_carry__0_i_8
       (.I0(D[8]),
        .I1(\irq_count_r_reg[0] [8]),
        .I2(\irq_count_r_reg[0] [9]),
        .I3(D[9]),
        .O(\irq_out_reg[14]_0 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    irq_count_r0_carry_i_1
       (.I0(D[6]),
        .I1(\irq_count_r_reg[0] [6]),
        .I2(\irq_count_r_reg[0] [7]),
        .I3(D[7]),
        .O(\irq_out_reg[6]_0 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    irq_count_r0_carry_i_2
       (.I0(D[4]),
        .I1(\irq_count_r_reg[0] [4]),
        .I2(\irq_count_r_reg[0] [5]),
        .I3(D[5]),
        .O(\irq_out_reg[6]_0 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    irq_count_r0_carry_i_3
       (.I0(D[2]),
        .I1(\irq_count_r_reg[0] [2]),
        .I2(\irq_count_r_reg[0] [3]),
        .I3(D[3]),
        .O(\irq_out_reg[6]_0 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    irq_count_r0_carry_i_4
       (.I0(D[0]),
        .I1(\irq_count_r_reg[0] [0]),
        .I2(\irq_count_r_reg[0] [1]),
        .I3(D[1]),
        .O(\irq_out_reg[6]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    irq_count_r0_carry_i_5
       (.I0(D[6]),
        .I1(\irq_count_r_reg[0] [6]),
        .I2(\irq_count_r_reg[0] [7]),
        .I3(D[7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    irq_count_r0_carry_i_6
       (.I0(D[4]),
        .I1(\irq_count_r_reg[0] [4]),
        .I2(\irq_count_r_reg[0] [5]),
        .I3(D[5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    irq_count_r0_carry_i_7
       (.I0(D[2]),
        .I1(\irq_count_r_reg[0] [2]),
        .I2(\irq_count_r_reg[0] [3]),
        .I3(D[3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    irq_count_r0_carry_i_8
       (.I0(D[0]),
        .I1(\irq_count_r_reg[0] [0]),
        .I2(\irq_count_r_reg[0] [1]),
        .I3(D[1]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \irq_line_r[3]_i_1 
       (.I0(running_reg_0),
        .I1(running),
        .O(irq_rate_r0));
  FDRE \irq_line_r_reg[0] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [0]),
        .Q(irq_line_r[0]),
        .R(clear));
  FDRE \irq_line_r_reg[1] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [1]),
        .Q(irq_line_r[1]),
        .R(clear));
  FDRE \irq_line_r_reg[2] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [2]),
        .Q(irq_line_r[2]),
        .R(clear));
  FDRE \irq_line_r_reg[3] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [3]),
        .Q(irq_line_r[3]),
        .R(clear));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \irq_out1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\irq_out1_inferred__1/i__carry_n_0 ,\irq_out1_inferred__1/i__carry_n_1 ,\irq_out1_inferred__1/i__carry_n_2 ,\irq_out1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_irq_out1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \irq_out1_inferred__1/i__carry__0 
       (.CI(\irq_out1_inferred__1/i__carry_n_0 ),
        .CO({\NLW_irq_out1_inferred__1/i__carry__0_CO_UNCONNECTED [3],\irq_out1_inferred__1/i__carry__0_n_1 ,\irq_out1_inferred__1/i__carry__0_n_2 ,\irq_out1_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0}),
        .O(\NLW_irq_out1_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__0_i_4__0_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \irq_out2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\irq_out2_inferred__0/i__carry_n_0 ,\irq_out2_inferred__0/i__carry_n_1 ,\irq_out2_inferred__0/i__carry_n_2 ,\irq_out2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_irq_out2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \irq_out2_inferred__0/i__carry__0 
       (.CI(\irq_out2_inferred__0/i__carry_n_0 ),
        .CO({\NLW_irq_out2_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],irq_out2,\irq_out2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0}),
        .O(\NLW_irq_out2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFF700000004)) 
    \irq_out[0]_i_1 
       (.I0(irq_out12_out),
        .I1(\irq_out[15]_i_3_n_0 ),
        .I2(\irq_out[3]_i_2_n_0 ),
        .I3(irq_line_r[0]),
        .I4(irq_line_r[1]),
        .I5(D[0]),
        .O(\irq_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFF00040000)) 
    \irq_out[10]_i_1 
       (.I0(irq_out12_out),
        .I1(\irq_out[15]_i_3_n_0 ),
        .I2(\irq_out[11]_i_2_n_0 ),
        .I3(irq_line_r[0]),
        .I4(irq_line_r[1]),
        .I5(D[10]),
        .O(\irq_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF04000000)) 
    \irq_out[11]_i_1 
       (.I0(irq_out12_out),
        .I1(\irq_out[15]_i_3_n_0 ),
        .I2(\irq_out[11]_i_2_n_0 ),
        .I3(irq_line_r[0]),
        .I4(irq_line_r[1]),
        .I5(D[11]),
        .O(\irq_out[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \irq_out[11]_i_2 
       (.I0(irq_line_r[3]),
        .I1(irq_line_r[2]),
        .I2(running),
        .O(\irq_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700000004)) 
    \irq_out[12]_i_1 
       (.I0(irq_out12_out),
        .I1(\irq_out[15]_i_3_n_0 ),
        .I2(\irq_out[15]_i_4_n_0 ),
        .I3(irq_line_r[0]),
        .I4(irq_line_r[1]),
        .I5(D[12]),
        .O(\irq_out[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFF00040000)) 
    \irq_out[13]_i_1 
       (.I0(irq_out12_out),
        .I1(\irq_out[15]_i_3_n_0 ),
        .I2(\irq_out[15]_i_4_n_0 ),
        .I3(irq_line_r[1]),
        .I4(irq_line_r[0]),
        .I5(D[13]),
        .O(\irq_out[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFF00040000)) 
    \irq_out[14]_i_1 
       (.I0(irq_out12_out),
        .I1(\irq_out[15]_i_3_n_0 ),
        .I2(\irq_out[15]_i_4_n_0 ),
        .I3(irq_line_r[0]),
        .I4(irq_line_r[1]),
        .I5(D[14]),
        .O(\irq_out[14]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \irq_out[15]_i_1 
       (.I0(ARESETN),
        .O(clear));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \irq_out[15]_i_10 
       (.I0(D[3]),
        .I1(D[2]),
        .I2(irq_line_r[1]),
        .I3(D[1]),
        .I4(irq_line_r[0]),
        .I5(D[0]),
        .O(\irq_out[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF04000000)) 
    \irq_out[15]_i_2 
       (.I0(irq_out12_out),
        .I1(\irq_out[15]_i_3_n_0 ),
        .I2(\irq_out[15]_i_4_n_0 ),
        .I3(irq_line_r[0]),
        .I4(irq_line_r[1]),
        .I5(D[15]),
        .O(\irq_out[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBABAAAAAAAAAAAA)) 
    \irq_out[15]_i_3 
       (.I0(irq_out12_out),
        .I1(\irq_out[15]_i_5_n_0 ),
        .I2(\irq_out[15]_i_6_n_0 ),
        .I3(\irq_out[15]_i_7_n_0 ),
        .I4(irq_out2),
        .I5(\irq_out1_inferred__1/i__carry__0_n_1 ),
        .O(\irq_out[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \irq_out[15]_i_4 
       (.I0(irq_line_r[3]),
        .I1(irq_line_r[2]),
        .I2(running),
        .O(\irq_out[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \irq_out[15]_i_5 
       (.I0(\irq_out[15]_i_8_n_0 ),
        .I1(\irq_out[15]_i_9_n_0 ),
        .I2(irq_line_r[3]),
        .I3(irq_line_r[2]),
        .I4(\irq_out[15]_i_10_n_0 ),
        .O(\irq_out[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \irq_out[15]_i_6 
       (.I0(D[7]),
        .I1(D[6]),
        .I2(irq_line_r[1]),
        .I3(D[5]),
        .I4(irq_line_r[0]),
        .I5(D[4]),
        .O(\irq_out[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \irq_out[15]_i_7 
       (.I0(irq_line_r[3]),
        .I1(irq_line_r[2]),
        .O(\irq_out[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \irq_out[15]_i_8 
       (.I0(D[15]),
        .I1(D[14]),
        .I2(irq_line_r[1]),
        .I3(D[13]),
        .I4(irq_line_r[0]),
        .I5(D[12]),
        .O(\irq_out[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \irq_out[15]_i_9 
       (.I0(D[11]),
        .I1(D[10]),
        .I2(irq_line_r[1]),
        .I3(D[9]),
        .I4(irq_line_r[0]),
        .I5(D[8]),
        .O(\irq_out[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFF00040000)) 
    \irq_out[1]_i_1 
       (.I0(irq_out12_out),
        .I1(\irq_out[15]_i_3_n_0 ),
        .I2(\irq_out[3]_i_2_n_0 ),
        .I3(irq_line_r[1]),
        .I4(irq_line_r[0]),
        .I5(D[1]),
        .O(\irq_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFF00040000)) 
    \irq_out[2]_i_1 
       (.I0(irq_out12_out),
        .I1(\irq_out[15]_i_3_n_0 ),
        .I2(\irq_out[3]_i_2_n_0 ),
        .I3(irq_line_r[0]),
        .I4(irq_line_r[1]),
        .I5(D[2]),
        .O(\irq_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF04000000)) 
    \irq_out[3]_i_1 
       (.I0(irq_out12_out),
        .I1(\irq_out[15]_i_3_n_0 ),
        .I2(\irq_out[3]_i_2_n_0 ),
        .I3(irq_line_r[0]),
        .I4(irq_line_r[1]),
        .I5(D[3]),
        .O(\irq_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \irq_out[3]_i_2 
       (.I0(irq_line_r[3]),
        .I1(irq_line_r[2]),
        .I2(running),
        .O(\irq_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700000004)) 
    \irq_out[4]_i_1 
       (.I0(irq_out12_out),
        .I1(\irq_out[15]_i_3_n_0 ),
        .I2(\irq_out[7]_i_2_n_0 ),
        .I3(irq_line_r[0]),
        .I4(irq_line_r[1]),
        .I5(D[4]),
        .O(\irq_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFF00040000)) 
    \irq_out[5]_i_1 
       (.I0(irq_out12_out),
        .I1(\irq_out[15]_i_3_n_0 ),
        .I2(\irq_out[7]_i_2_n_0 ),
        .I3(irq_line_r[1]),
        .I4(irq_line_r[0]),
        .I5(D[5]),
        .O(\irq_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFF00040000)) 
    \irq_out[6]_i_1 
       (.I0(irq_out12_out),
        .I1(\irq_out[15]_i_3_n_0 ),
        .I2(\irq_out[7]_i_2_n_0 ),
        .I3(irq_line_r[0]),
        .I4(irq_line_r[1]),
        .I5(D[6]),
        .O(\irq_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF04000000)) 
    \irq_out[7]_i_1 
       (.I0(irq_out12_out),
        .I1(\irq_out[15]_i_3_n_0 ),
        .I2(\irq_out[7]_i_2_n_0 ),
        .I3(irq_line_r[0]),
        .I4(irq_line_r[1]),
        .I5(D[7]),
        .O(\irq_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \irq_out[7]_i_2 
       (.I0(irq_line_r[2]),
        .I1(irq_line_r[3]),
        .I2(running),
        .O(\irq_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700000004)) 
    \irq_out[8]_i_1 
       (.I0(irq_out12_out),
        .I1(\irq_out[15]_i_3_n_0 ),
        .I2(\irq_out[11]_i_2_n_0 ),
        .I3(irq_line_r[0]),
        .I4(irq_line_r[1]),
        .I5(D[8]),
        .O(\irq_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFF00040000)) 
    \irq_out[9]_i_1 
       (.I0(irq_out12_out),
        .I1(\irq_out[15]_i_3_n_0 ),
        .I2(\irq_out[11]_i_2_n_0 ),
        .I3(irq_line_r[1]),
        .I4(irq_line_r[0]),
        .I5(D[9]),
        .O(\irq_out[9]_i_1_n_0 ));
  FDRE \irq_out_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\irq_out[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(clear));
  FDRE \irq_out_reg[10] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\irq_out[10]_i_1_n_0 ),
        .Q(D[10]),
        .R(clear));
  FDRE \irq_out_reg[11] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\irq_out[11]_i_1_n_0 ),
        .Q(D[11]),
        .R(clear));
  FDRE \irq_out_reg[12] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\irq_out[12]_i_1_n_0 ),
        .Q(D[12]),
        .R(clear));
  FDRE \irq_out_reg[13] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\irq_out[13]_i_1_n_0 ),
        .Q(D[13]),
        .R(clear));
  FDRE \irq_out_reg[14] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\irq_out[14]_i_1_n_0 ),
        .Q(D[14]),
        .R(clear));
  FDRE \irq_out_reg[15] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\irq_out[15]_i_2_n_0 ),
        .Q(D[15]),
        .R(clear));
  FDRE \irq_out_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\irq_out[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(clear));
  FDRE \irq_out_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\irq_out[2]_i_1_n_0 ),
        .Q(D[2]),
        .R(clear));
  FDRE \irq_out_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\irq_out[3]_i_1_n_0 ),
        .Q(D[3]),
        .R(clear));
  FDRE \irq_out_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\irq_out[4]_i_1_n_0 ),
        .Q(D[4]),
        .R(clear));
  FDRE \irq_out_reg[5] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\irq_out[5]_i_1_n_0 ),
        .Q(D[5]),
        .R(clear));
  FDRE \irq_out_reg[6] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\irq_out[6]_i_1_n_0 ),
        .Q(D[6]),
        .R(clear));
  FDRE \irq_out_reg[7] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\irq_out[7]_i_1_n_0 ),
        .Q(D[7]),
        .R(clear));
  FDRE \irq_out_reg[8] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\irq_out[8]_i_1_n_0 ),
        .Q(D[8]),
        .R(clear));
  FDRE \irq_out_reg[9] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\irq_out[9]_i_1_n_0 ),
        .Q(D[9]),
        .R(clear));
  FDRE \irq_rate_r_reg[0] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [4]),
        .Q(irq_rate_r[0]),
        .R(clear));
  FDRE \irq_rate_r_reg[10] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [14]),
        .Q(irq_rate_r[10]),
        .R(clear));
  FDRE \irq_rate_r_reg[11] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [15]),
        .Q(irq_rate_r[11]),
        .R(clear));
  FDRE \irq_rate_r_reg[12] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [16]),
        .Q(irq_rate_r[12]),
        .R(clear));
  FDRE \irq_rate_r_reg[13] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [17]),
        .Q(irq_rate_r[13]),
        .R(clear));
  FDRE \irq_rate_r_reg[1] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [5]),
        .Q(irq_rate_r[1]),
        .R(clear));
  FDRE \irq_rate_r_reg[2] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [6]),
        .Q(irq_rate_r[2]),
        .R(clear));
  FDRE \irq_rate_r_reg[3] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [7]),
        .Q(irq_rate_r[3]),
        .R(clear));
  FDRE \irq_rate_r_reg[4] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [8]),
        .Q(irq_rate_r[4]),
        .R(clear));
  FDRE \irq_rate_r_reg[5] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [9]),
        .Q(irq_rate_r[5]),
        .R(clear));
  FDRE \irq_rate_r_reg[6] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [10]),
        .Q(irq_rate_r[6]),
        .R(clear));
  FDRE \irq_rate_r_reg[7] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [11]),
        .Q(irq_rate_r[7]),
        .R(clear));
  FDRE \irq_rate_r_reg[8] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [12]),
        .Q(irq_rate_r[8]),
        .R(clear));
  FDRE \irq_rate_r_reg[9] 
       (.C(ACLK),
        .CE(irq_rate_r0),
        .D(\irq_amt_r_reg[11]_0 [13]),
        .Q(irq_rate_r[9]),
        .R(clear));
  LUT5 #(
    .INIT(32'h0400FFFF)) 
    \irq_throttle_r[0]_i_1 
       (.I0(irq_out12_out),
        .I1(running),
        .I2(\irq_throttle_r[0]_i_4_n_0 ),
        .I3(\irq_out1_inferred__1/i__carry__0_n_1 ),
        .I4(ARESETN),
        .O(\irq_throttle_r[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \irq_throttle_r[0]_i_2 
       (.I0(irq_out12_out),
        .I1(running),
        .I2(\irq_throttle_r[0]_i_4_n_0 ),
        .O(irq_throttle_r));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAEAFFFF)) 
    \irq_throttle_r[0]_i_4 
       (.I0(\irq_out[15]_i_5_n_0 ),
        .I1(\irq_out[15]_i_6_n_0 ),
        .I2(irq_line_r[2]),
        .I3(irq_line_r[3]),
        .I4(irq_out2),
        .O(\irq_throttle_r[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \irq_throttle_r[0]_i_5 
       (.I0(irq_throttle_r_reg[0]),
        .O(\irq_throttle_r[0]_i_5_n_0 ));
  FDRE \irq_throttle_r_reg[0] 
       (.C(ACLK),
        .CE(irq_throttle_r),
        .D(\irq_throttle_r_reg[0]_i_3_n_7 ),
        .Q(irq_throttle_r_reg[0]),
        .R(\irq_throttle_r[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \irq_throttle_r_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\irq_throttle_r_reg[0]_i_3_n_0 ,\irq_throttle_r_reg[0]_i_3_n_1 ,\irq_throttle_r_reg[0]_i_3_n_2 ,\irq_throttle_r_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\irq_throttle_r_reg[0]_i_3_n_4 ,\irq_throttle_r_reg[0]_i_3_n_5 ,\irq_throttle_r_reg[0]_i_3_n_6 ,\irq_throttle_r_reg[0]_i_3_n_7 }),
        .S({irq_throttle_r_reg[3:1],\irq_throttle_r[0]_i_5_n_0 }));
  FDRE \irq_throttle_r_reg[10] 
       (.C(ACLK),
        .CE(irq_throttle_r),
        .D(\irq_throttle_r_reg[8]_i_1_n_5 ),
        .Q(irq_throttle_r_reg[10]),
        .R(\irq_throttle_r[0]_i_1_n_0 ));
  FDRE \irq_throttle_r_reg[11] 
       (.C(ACLK),
        .CE(irq_throttle_r),
        .D(\irq_throttle_r_reg[8]_i_1_n_4 ),
        .Q(irq_throttle_r_reg[11]),
        .R(\irq_throttle_r[0]_i_1_n_0 ));
  FDRE \irq_throttle_r_reg[12] 
       (.C(ACLK),
        .CE(irq_throttle_r),
        .D(\irq_throttle_r_reg[12]_i_1_n_7 ),
        .Q(irq_throttle_r_reg[12]),
        .R(\irq_throttle_r[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \irq_throttle_r_reg[12]_i_1 
       (.CI(\irq_throttle_r_reg[8]_i_1_n_0 ),
        .CO({\NLW_irq_throttle_r_reg[12]_i_1_CO_UNCONNECTED [3:1],\irq_throttle_r_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_irq_throttle_r_reg[12]_i_1_O_UNCONNECTED [3:2],\irq_throttle_r_reg[12]_i_1_n_6 ,\irq_throttle_r_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,irq_throttle_r_reg[13:12]}));
  FDRE \irq_throttle_r_reg[13] 
       (.C(ACLK),
        .CE(irq_throttle_r),
        .D(\irq_throttle_r_reg[12]_i_1_n_6 ),
        .Q(irq_throttle_r_reg[13]),
        .R(\irq_throttle_r[0]_i_1_n_0 ));
  FDRE \irq_throttle_r_reg[1] 
       (.C(ACLK),
        .CE(irq_throttle_r),
        .D(\irq_throttle_r_reg[0]_i_3_n_6 ),
        .Q(irq_throttle_r_reg[1]),
        .R(\irq_throttle_r[0]_i_1_n_0 ));
  FDRE \irq_throttle_r_reg[2] 
       (.C(ACLK),
        .CE(irq_throttle_r),
        .D(\irq_throttle_r_reg[0]_i_3_n_5 ),
        .Q(irq_throttle_r_reg[2]),
        .R(\irq_throttle_r[0]_i_1_n_0 ));
  FDRE \irq_throttle_r_reg[3] 
       (.C(ACLK),
        .CE(irq_throttle_r),
        .D(\irq_throttle_r_reg[0]_i_3_n_4 ),
        .Q(irq_throttle_r_reg[3]),
        .R(\irq_throttle_r[0]_i_1_n_0 ));
  FDRE \irq_throttle_r_reg[4] 
       (.C(ACLK),
        .CE(irq_throttle_r),
        .D(\irq_throttle_r_reg[4]_i_1_n_7 ),
        .Q(irq_throttle_r_reg[4]),
        .R(\irq_throttle_r[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \irq_throttle_r_reg[4]_i_1 
       (.CI(\irq_throttle_r_reg[0]_i_3_n_0 ),
        .CO({\irq_throttle_r_reg[4]_i_1_n_0 ,\irq_throttle_r_reg[4]_i_1_n_1 ,\irq_throttle_r_reg[4]_i_1_n_2 ,\irq_throttle_r_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\irq_throttle_r_reg[4]_i_1_n_4 ,\irq_throttle_r_reg[4]_i_1_n_5 ,\irq_throttle_r_reg[4]_i_1_n_6 ,\irq_throttle_r_reg[4]_i_1_n_7 }),
        .S(irq_throttle_r_reg[7:4]));
  FDRE \irq_throttle_r_reg[5] 
       (.C(ACLK),
        .CE(irq_throttle_r),
        .D(\irq_throttle_r_reg[4]_i_1_n_6 ),
        .Q(irq_throttle_r_reg[5]),
        .R(\irq_throttle_r[0]_i_1_n_0 ));
  FDRE \irq_throttle_r_reg[6] 
       (.C(ACLK),
        .CE(irq_throttle_r),
        .D(\irq_throttle_r_reg[4]_i_1_n_5 ),
        .Q(irq_throttle_r_reg[6]),
        .R(\irq_throttle_r[0]_i_1_n_0 ));
  FDRE \irq_throttle_r_reg[7] 
       (.C(ACLK),
        .CE(irq_throttle_r),
        .D(\irq_throttle_r_reg[4]_i_1_n_4 ),
        .Q(irq_throttle_r_reg[7]),
        .R(\irq_throttle_r[0]_i_1_n_0 ));
  FDRE \irq_throttle_r_reg[8] 
       (.C(ACLK),
        .CE(irq_throttle_r),
        .D(\irq_throttle_r_reg[8]_i_1_n_7 ),
        .Q(irq_throttle_r_reg[8]),
        .R(\irq_throttle_r[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \irq_throttle_r_reg[8]_i_1 
       (.CI(\irq_throttle_r_reg[4]_i_1_n_0 ),
        .CO({\irq_throttle_r_reg[8]_i_1_n_0 ,\irq_throttle_r_reg[8]_i_1_n_1 ,\irq_throttle_r_reg[8]_i_1_n_2 ,\irq_throttle_r_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\irq_throttle_r_reg[8]_i_1_n_4 ,\irq_throttle_r_reg[8]_i_1_n_5 ,\irq_throttle_r_reg[8]_i_1_n_6 ,\irq_throttle_r_reg[8]_i_1_n_7 }),
        .S(irq_throttle_r_reg[11:8]));
  FDRE \irq_throttle_r_reg[9] 
       (.C(ACLK),
        .CE(irq_throttle_r),
        .D(\irq_throttle_r_reg[8]_i_1_n_6 ),
        .Q(irq_throttle_r_reg[9]),
        .R(\irq_throttle_r[0]_i_1_n_0 ));
  CARRY4 running0_carry
       (.CI(1'b0),
        .CO({running0_carry_n_0,running0_carry_n_1,running0_carry_n_2,running0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_running0_carry_O_UNCONNECTED[3:0]),
        .S({running0_carry_i_1_n_0,running0_carry_i_2_n_0,running0_carry_i_3_n_0,running0_carry_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    running0_carry_i_1
       (.I0(handled_irq_count_r_reg[10]),
        .I1(irq_amt_r[10]),
        .I2(handled_irq_count_r_reg[11]),
        .I3(irq_amt_r[11]),
        .I4(irq_amt_r[9]),
        .I5(handled_irq_count_r_reg[9]),
        .O(running0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    running0_carry_i_2
       (.I0(handled_irq_count_r_reg[6]),
        .I1(irq_amt_r[6]),
        .I2(handled_irq_count_r_reg[7]),
        .I3(irq_amt_r[7]),
        .I4(irq_amt_r[8]),
        .I5(handled_irq_count_r_reg[8]),
        .O(running0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    running0_carry_i_3
       (.I0(handled_irq_count_r_reg[4]),
        .I1(irq_amt_r[4]),
        .I2(handled_irq_count_r_reg[5]),
        .I3(irq_amt_r[5]),
        .I4(irq_amt_r[3]),
        .I5(handled_irq_count_r_reg[3]),
        .O(running0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    running0_carry_i_4
       (.I0(handled_irq_count_r_reg[0]),
        .I1(irq_amt_r[0]),
        .I2(handled_irq_count_r_reg[1]),
        .I3(irq_amt_r[1]),
        .I4(irq_amt_r[2]),
        .I5(handled_irq_count_r_reg[2]),
        .O(running0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h74)) 
    running_i_1
       (.I0(running0_carry_n_0),
        .I1(running),
        .I2(running_reg_0),
        .O(running_i_1_n_0));
  FDRE running_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(running_i_1_n_0),
        .Q(running),
        .R(clear));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
