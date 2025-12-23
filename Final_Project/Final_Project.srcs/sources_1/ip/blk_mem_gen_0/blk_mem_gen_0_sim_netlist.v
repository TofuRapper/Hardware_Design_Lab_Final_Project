// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Dec 23 12:27:09 2025
// Host        : R328-40 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/NTHU-328/Downloads/Hardware_Design_Lab_Final_Project/Final_Project/Final_Project.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [16:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [11:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [16:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [16:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [16:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "17" *) 
  (* C_ADDRB_WIDTH = "17" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "2" *) 
  (* C_COUNT_36K_BRAM = "26" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     8.971294 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "78500" *) 
  (* C_READ_DEPTH_B = "78500" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "78500" *) 
  (* C_WRITE_DEPTH_B = "78500" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[16:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[16:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module blk_mem_gen_0_bindec
   (ena_array,
    addra);
  output [0:0]ena_array;
  input [5:0]addra;

  wire [5:0]addra;
  wire [0:0]ena_array;

  LUT6 #(
    .INIT(64'h0000100000000000)) 
    ENOUT
       (.I0(addra[0]),
        .I1(addra[4]),
        .I2(addra[1]),
        .I3(addra[2]),
        .I4(addra[3]),
        .I5(addra[5]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_0_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [11:0]douta;
  input clka;
  input [16:0]addra;
  input [11:0]dina;
  input [0:0]wea;

  wire [16:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [38:38]ena_array;
  wire ram_douta;
  wire ram_ena__0_n_0;
  wire ram_ena__1;
  wire \ramloop[10].ram.r_n_0 ;
  wire \ramloop[10].ram.r_n_1 ;
  wire \ramloop[10].ram.r_n_2 ;
  wire \ramloop[10].ram.r_n_3 ;
  wire \ramloop[10].ram.r_n_4 ;
  wire \ramloop[10].ram.r_n_5 ;
  wire \ramloop[10].ram.r_n_6 ;
  wire \ramloop[10].ram.r_n_7 ;
  wire \ramloop[10].ram.r_n_8 ;
  wire \ramloop[11].ram.r_n_0 ;
  wire \ramloop[11].ram.r_n_1 ;
  wire \ramloop[11].ram.r_n_2 ;
  wire \ramloop[11].ram.r_n_3 ;
  wire \ramloop[11].ram.r_n_4 ;
  wire \ramloop[11].ram.r_n_5 ;
  wire \ramloop[11].ram.r_n_6 ;
  wire \ramloop[11].ram.r_n_7 ;
  wire \ramloop[11].ram.r_n_8 ;
  wire \ramloop[12].ram.r_n_0 ;
  wire \ramloop[12].ram.r_n_1 ;
  wire \ramloop[12].ram.r_n_2 ;
  wire \ramloop[12].ram.r_n_3 ;
  wire \ramloop[12].ram.r_n_4 ;
  wire \ramloop[12].ram.r_n_5 ;
  wire \ramloop[12].ram.r_n_6 ;
  wire \ramloop[12].ram.r_n_7 ;
  wire \ramloop[12].ram.r_n_8 ;
  wire \ramloop[13].ram.r_n_0 ;
  wire \ramloop[13].ram.r_n_1 ;
  wire \ramloop[13].ram.r_n_2 ;
  wire \ramloop[13].ram.r_n_3 ;
  wire \ramloop[13].ram.r_n_4 ;
  wire \ramloop[13].ram.r_n_5 ;
  wire \ramloop[13].ram.r_n_6 ;
  wire \ramloop[13].ram.r_n_7 ;
  wire \ramloop[13].ram.r_n_8 ;
  wire \ramloop[14].ram.r_n_0 ;
  wire \ramloop[14].ram.r_n_1 ;
  wire \ramloop[14].ram.r_n_2 ;
  wire \ramloop[14].ram.r_n_3 ;
  wire \ramloop[14].ram.r_n_4 ;
  wire \ramloop[14].ram.r_n_5 ;
  wire \ramloop[14].ram.r_n_6 ;
  wire \ramloop[14].ram.r_n_7 ;
  wire \ramloop[14].ram.r_n_8 ;
  wire \ramloop[15].ram.r_n_0 ;
  wire \ramloop[15].ram.r_n_1 ;
  wire \ramloop[15].ram.r_n_2 ;
  wire \ramloop[15].ram.r_n_3 ;
  wire \ramloop[15].ram.r_n_4 ;
  wire \ramloop[15].ram.r_n_5 ;
  wire \ramloop[15].ram.r_n_6 ;
  wire \ramloop[15].ram.r_n_7 ;
  wire \ramloop[15].ram.r_n_8 ;
  wire \ramloop[16].ram.r_n_0 ;
  wire \ramloop[16].ram.r_n_1 ;
  wire \ramloop[16].ram.r_n_2 ;
  wire \ramloop[16].ram.r_n_3 ;
  wire \ramloop[16].ram.r_n_4 ;
  wire \ramloop[16].ram.r_n_5 ;
  wire \ramloop[16].ram.r_n_6 ;
  wire \ramloop[16].ram.r_n_7 ;
  wire \ramloop[16].ram.r_n_8 ;
  wire \ramloop[17].ram.r_n_0 ;
  wire \ramloop[17].ram.r_n_1 ;
  wire \ramloop[17].ram.r_n_2 ;
  wire \ramloop[17].ram.r_n_3 ;
  wire \ramloop[17].ram.r_n_4 ;
  wire \ramloop[17].ram.r_n_5 ;
  wire \ramloop[17].ram.r_n_6 ;
  wire \ramloop[17].ram.r_n_7 ;
  wire \ramloop[17].ram.r_n_8 ;
  wire \ramloop[18].ram.r_n_0 ;
  wire \ramloop[18].ram.r_n_1 ;
  wire \ramloop[18].ram.r_n_2 ;
  wire \ramloop[18].ram.r_n_3 ;
  wire \ramloop[18].ram.r_n_4 ;
  wire \ramloop[18].ram.r_n_5 ;
  wire \ramloop[18].ram.r_n_6 ;
  wire \ramloop[18].ram.r_n_7 ;
  wire \ramloop[18].ram.r_n_8 ;
  wire \ramloop[19].ram.r_n_0 ;
  wire \ramloop[19].ram.r_n_1 ;
  wire \ramloop[19].ram.r_n_2 ;
  wire \ramloop[19].ram.r_n_3 ;
  wire \ramloop[19].ram.r_n_4 ;
  wire \ramloop[19].ram.r_n_5 ;
  wire \ramloop[19].ram.r_n_6 ;
  wire \ramloop[19].ram.r_n_7 ;
  wire \ramloop[19].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[20].ram.r_n_0 ;
  wire \ramloop[20].ram.r_n_1 ;
  wire \ramloop[20].ram.r_n_2 ;
  wire \ramloop[20].ram.r_n_3 ;
  wire \ramloop[20].ram.r_n_4 ;
  wire \ramloop[20].ram.r_n_5 ;
  wire \ramloop[20].ram.r_n_6 ;
  wire \ramloop[20].ram.r_n_7 ;
  wire \ramloop[20].ram.r_n_8 ;
  wire \ramloop[21].ram.r_n_0 ;
  wire \ramloop[21].ram.r_n_1 ;
  wire \ramloop[21].ram.r_n_2 ;
  wire \ramloop[21].ram.r_n_3 ;
  wire \ramloop[21].ram.r_n_4 ;
  wire \ramloop[21].ram.r_n_5 ;
  wire \ramloop[21].ram.r_n_6 ;
  wire \ramloop[21].ram.r_n_7 ;
  wire \ramloop[21].ram.r_n_8 ;
  wire \ramloop[22].ram.r_n_0 ;
  wire \ramloop[23].ram.r_n_0 ;
  wire \ramloop[23].ram.r_n_1 ;
  wire \ramloop[24].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_4 ;
  wire \ramloop[6].ram.r_n_5 ;
  wire \ramloop[6].ram.r_n_6 ;
  wire \ramloop[6].ram.r_n_7 ;
  wire \ramloop[6].ram.r_n_8 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;
  wire \ramloop[7].ram.r_n_6 ;
  wire \ramloop[7].ram.r_n_7 ;
  wire \ramloop[7].ram.r_n_8 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[8].ram.r_n_1 ;
  wire \ramloop[8].ram.r_n_2 ;
  wire \ramloop[8].ram.r_n_3 ;
  wire \ramloop[8].ram.r_n_4 ;
  wire \ramloop[8].ram.r_n_5 ;
  wire \ramloop[8].ram.r_n_6 ;
  wire \ramloop[8].ram.r_n_7 ;
  wire \ramloop[8].ram.r_n_8 ;
  wire \ramloop[9].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_1 ;
  wire \ramloop[9].ram.r_n_2 ;
  wire \ramloop[9].ram.r_n_3 ;
  wire \ramloop[9].ram.r_n_4 ;
  wire \ramloop[9].ram.r_n_5 ;
  wire \ramloop[9].ram.r_n_6 ;
  wire \ramloop[9].ram.r_n_7 ;
  wire \ramloop[9].ram.r_n_8 ;
  wire [0:0]wea;

  blk_mem_gen_0_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[16:11]),
        .ena_array(ena_array));
  blk_mem_gen_0_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .DOPADOP(\ramloop[5].ram.r_n_8 ),
        .DOUTA(ram_douta),
        .addra(addra[16:11]),
        .clka(clka),
        .douta(douta),
        .\douta[0] (\ramloop[1].ram.r_n_0 ),
        .\douta[10] (\ramloop[22].ram.r_n_0 ),
        .\douta[11] ({\ramloop[23].ram.r_n_0 ,\ramloop[23].ram.r_n_1 }),
        .\douta[11]_0 (\ramloop[24].ram.r_n_0 ),
        .\douta[8]_INST_0_i_1_0 ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 }),
        .\douta[8]_INST_0_i_1_1 ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 }),
        .\douta[8]_INST_0_i_1_2 ({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 }),
        .\douta[8]_INST_0_i_1_3 ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 }),
        .\douta[8]_INST_0_i_5_0 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\douta[8]_INST_0_i_5_1 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\douta[8]_INST_0_i_5_2 ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\douta[8]_INST_0_i_5_3 ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\douta[8]_INST_0_i_5_4 ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\douta[8]_INST_0_i_5_5 ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\douta[8]_INST_0_i_5_6 ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\douta[8]_INST_0_i_6_0 ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\douta[8]_INST_0_i_6_1 ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\douta[8]_INST_0_i_6_2 ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\douta[8]_INST_0_i_6_3 ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\douta[8]_INST_0_i_6_4 ({\ramloop[17].ram.r_n_0 ,\ramloop[17].ram.r_n_1 ,\ramloop[17].ram.r_n_2 ,\ramloop[17].ram.r_n_3 ,\ramloop[17].ram.r_n_4 ,\ramloop[17].ram.r_n_5 ,\ramloop[17].ram.r_n_6 ,\ramloop[17].ram.r_n_7 }),
        .\douta[8]_INST_0_i_6_5 ({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 }),
        .\douta[8]_INST_0_i_6_6 ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .\douta[8]_INST_0_i_6_7 ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\douta[9]_INST_0_i_1_0 (\ramloop[19].ram.r_n_8 ),
        .\douta[9]_INST_0_i_1_1 (\ramloop[18].ram.r_n_8 ),
        .\douta[9]_INST_0_i_1_2 (\ramloop[21].ram.r_n_8 ),
        .\douta[9]_INST_0_i_1_3 (\ramloop[20].ram.r_n_8 ),
        .\douta[9]_INST_0_i_5_0 (\ramloop[4].ram.r_n_8 ),
        .\douta[9]_INST_0_i_5_1 (\ramloop[3].ram.r_n_8 ),
        .\douta[9]_INST_0_i_5_2 (\ramloop[2].ram.r_n_8 ),
        .\douta[9]_INST_0_i_5_3 (\ramloop[9].ram.r_n_8 ),
        .\douta[9]_INST_0_i_5_4 (\ramloop[8].ram.r_n_8 ),
        .\douta[9]_INST_0_i_5_5 (\ramloop[7].ram.r_n_8 ),
        .\douta[9]_INST_0_i_5_6 (\ramloop[6].ram.r_n_8 ),
        .\douta[9]_INST_0_i_6_0 (\ramloop[13].ram.r_n_8 ),
        .\douta[9]_INST_0_i_6_1 (\ramloop[12].ram.r_n_8 ),
        .\douta[9]_INST_0_i_6_2 (\ramloop[11].ram.r_n_8 ),
        .\douta[9]_INST_0_i_6_3 (\ramloop[10].ram.r_n_8 ),
        .\douta[9]_INST_0_i_6_4 (\ramloop[17].ram.r_n_8 ),
        .\douta[9]_INST_0_i_6_5 (\ramloop[16].ram.r_n_8 ),
        .\douta[9]_INST_0_i_6_6 (\ramloop[15].ram.r_n_8 ),
        .\douta[9]_INST_0_i_6_7 (\ramloop[14].ram.r_n_8 ));
  LUT1 #(
    .INIT(2'h1)) 
    ram_ena
       (.I0(addra[16]),
        .O(ram_ena__1));
  LUT3 #(
    .INIT(8'h02)) 
    ram_ena__0
       (.I0(addra[16]),
        .I1(addra[15]),
        .I2(addra[14]),
        .O(ram_ena__0_n_0));
  blk_mem_gen_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.DOUTA(ram_douta),
        .ENA(ram_ena__1),
        .addra(addra[15:0]),
        .clka(clka),
        .dina(dina[0]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[10].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[11].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[12].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[13].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[14].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized14 \ramloop[15].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[15].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized15 \ramloop[16].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[16].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized16 \ramloop[17].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[17].ram.r_n_0 ,\ramloop[17].ram.r_n_1 ,\ramloop[17].ram.r_n_2 ,\ramloop[17].ram.r_n_3 ,\ramloop[17].ram.r_n_4 ,\ramloop[17].ram.r_n_5 ,\ramloop[17].ram.r_n_6 ,\ramloop[17].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[17].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized17 \ramloop[18].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[18].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized18 \ramloop[19].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[19].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram (\ramloop[1].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (ram_ena__0_n_0),
        .addra(addra[13:0]),
        .clka(clka),
        .dina(dina[0]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized19 \ramloop[20].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[20].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized20 \ramloop[21].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\ramloop[21].ram.r_n_8 ),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[9:1]),
        .ena_array(ena_array),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized21 \ramloop[22].ram.r 
       (.DOUTA(\ramloop[22].ram.r_n_0 ),
        .ENA(ram_ena__1),
        .addra(addra[15:0]),
        .clka(clka),
        .dina(dina[10]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized22 \ramloop[23].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[23].ram.r_n_0 ,\ramloop[23].ram.r_n_1 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena__0_n_0),
        .addra(addra[13:0]),
        .clka(clka),
        .dina(dina[11:10]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized23 \ramloop[24].ram.r 
       (.DOUTA(\ramloop[24].ram.r_n_0 ),
        .ENA(ram_ena__1),
        .addra(addra[15:0]),
        .clka(clka),
        .dina(dina[11]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[2].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[3].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[4].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.DOADO({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .DOPADOP(\ramloop[5].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[6].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[7].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[8].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[9].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module blk_mem_gen_0_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    DOADO,
    \douta[8]_INST_0_i_5_0 ,
    \douta[8]_INST_0_i_5_1 ,
    \douta[8]_INST_0_i_5_2 ,
    \douta[8]_INST_0_i_5_3 ,
    \douta[8]_INST_0_i_5_4 ,
    \douta[8]_INST_0_i_5_5 ,
    \douta[8]_INST_0_i_5_6 ,
    \douta[8]_INST_0_i_6_0 ,
    \douta[8]_INST_0_i_6_1 ,
    \douta[8]_INST_0_i_6_2 ,
    \douta[8]_INST_0_i_6_3 ,
    \douta[8]_INST_0_i_6_4 ,
    \douta[8]_INST_0_i_6_5 ,
    \douta[8]_INST_0_i_6_6 ,
    \douta[8]_INST_0_i_6_7 ,
    \douta[8]_INST_0_i_1_0 ,
    \douta[8]_INST_0_i_1_1 ,
    \douta[8]_INST_0_i_1_2 ,
    \douta[8]_INST_0_i_1_3 ,
    DOPADOP,
    \douta[9]_INST_0_i_5_0 ,
    \douta[9]_INST_0_i_5_1 ,
    \douta[9]_INST_0_i_5_2 ,
    \douta[9]_INST_0_i_5_3 ,
    \douta[9]_INST_0_i_5_4 ,
    \douta[9]_INST_0_i_5_5 ,
    \douta[9]_INST_0_i_5_6 ,
    \douta[9]_INST_0_i_6_0 ,
    \douta[9]_INST_0_i_6_1 ,
    \douta[9]_INST_0_i_6_2 ,
    \douta[9]_INST_0_i_6_3 ,
    \douta[9]_INST_0_i_6_4 ,
    \douta[9]_INST_0_i_6_5 ,
    \douta[9]_INST_0_i_6_6 ,
    \douta[9]_INST_0_i_6_7 ,
    \douta[9]_INST_0_i_1_0 ,
    \douta[9]_INST_0_i_1_1 ,
    \douta[9]_INST_0_i_1_2 ,
    \douta[9]_INST_0_i_1_3 ,
    \douta[0] ,
    DOUTA,
    \douta[11] ,
    \douta[11]_0 ,
    \douta[10] );
  output [11:0]douta;
  input [5:0]addra;
  input clka;
  input [7:0]DOADO;
  input [7:0]\douta[8]_INST_0_i_5_0 ;
  input [7:0]\douta[8]_INST_0_i_5_1 ;
  input [7:0]\douta[8]_INST_0_i_5_2 ;
  input [7:0]\douta[8]_INST_0_i_5_3 ;
  input [7:0]\douta[8]_INST_0_i_5_4 ;
  input [7:0]\douta[8]_INST_0_i_5_5 ;
  input [7:0]\douta[8]_INST_0_i_5_6 ;
  input [7:0]\douta[8]_INST_0_i_6_0 ;
  input [7:0]\douta[8]_INST_0_i_6_1 ;
  input [7:0]\douta[8]_INST_0_i_6_2 ;
  input [7:0]\douta[8]_INST_0_i_6_3 ;
  input [7:0]\douta[8]_INST_0_i_6_4 ;
  input [7:0]\douta[8]_INST_0_i_6_5 ;
  input [7:0]\douta[8]_INST_0_i_6_6 ;
  input [7:0]\douta[8]_INST_0_i_6_7 ;
  input [7:0]\douta[8]_INST_0_i_1_0 ;
  input [7:0]\douta[8]_INST_0_i_1_1 ;
  input [7:0]\douta[8]_INST_0_i_1_2 ;
  input [7:0]\douta[8]_INST_0_i_1_3 ;
  input [0:0]DOPADOP;
  input [0:0]\douta[9]_INST_0_i_5_0 ;
  input [0:0]\douta[9]_INST_0_i_5_1 ;
  input [0:0]\douta[9]_INST_0_i_5_2 ;
  input [0:0]\douta[9]_INST_0_i_5_3 ;
  input [0:0]\douta[9]_INST_0_i_5_4 ;
  input [0:0]\douta[9]_INST_0_i_5_5 ;
  input [0:0]\douta[9]_INST_0_i_5_6 ;
  input [0:0]\douta[9]_INST_0_i_6_0 ;
  input [0:0]\douta[9]_INST_0_i_6_1 ;
  input [0:0]\douta[9]_INST_0_i_6_2 ;
  input [0:0]\douta[9]_INST_0_i_6_3 ;
  input [0:0]\douta[9]_INST_0_i_6_4 ;
  input [0:0]\douta[9]_INST_0_i_6_5 ;
  input [0:0]\douta[9]_INST_0_i_6_6 ;
  input [0:0]\douta[9]_INST_0_i_6_7 ;
  input [0:0]\douta[9]_INST_0_i_1_0 ;
  input [0:0]\douta[9]_INST_0_i_1_1 ;
  input [0:0]\douta[9]_INST_0_i_1_2 ;
  input [0:0]\douta[9]_INST_0_i_1_3 ;
  input [0:0]\douta[0] ;
  input [0:0]DOUTA;
  input [1:0]\douta[11] ;
  input [0:0]\douta[11]_0 ;
  input [0:0]\douta[10] ;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [0:0]DOUTA;
  wire [5:0]addra;
  wire clka;
  wire [11:0]douta;
  wire [0:0]\douta[0] ;
  wire [0:0]\douta[10] ;
  wire [1:0]\douta[11] ;
  wire [0:0]\douta[11]_0 ;
  wire \douta[1]_INST_0_i_10_n_0 ;
  wire \douta[1]_INST_0_i_1_n_0 ;
  wire \douta[1]_INST_0_i_2_n_0 ;
  wire \douta[1]_INST_0_i_3_n_0 ;
  wire \douta[1]_INST_0_i_4_n_0 ;
  wire \douta[1]_INST_0_i_5_n_0 ;
  wire \douta[1]_INST_0_i_6_n_0 ;
  wire \douta[1]_INST_0_i_7_n_0 ;
  wire \douta[1]_INST_0_i_8_n_0 ;
  wire \douta[1]_INST_0_i_9_n_0 ;
  wire \douta[2]_INST_0_i_10_n_0 ;
  wire \douta[2]_INST_0_i_1_n_0 ;
  wire \douta[2]_INST_0_i_2_n_0 ;
  wire \douta[2]_INST_0_i_3_n_0 ;
  wire \douta[2]_INST_0_i_4_n_0 ;
  wire \douta[2]_INST_0_i_5_n_0 ;
  wire \douta[2]_INST_0_i_6_n_0 ;
  wire \douta[2]_INST_0_i_7_n_0 ;
  wire \douta[2]_INST_0_i_8_n_0 ;
  wire \douta[2]_INST_0_i_9_n_0 ;
  wire \douta[3]_INST_0_i_10_n_0 ;
  wire \douta[3]_INST_0_i_1_n_0 ;
  wire \douta[3]_INST_0_i_2_n_0 ;
  wire \douta[3]_INST_0_i_3_n_0 ;
  wire \douta[3]_INST_0_i_4_n_0 ;
  wire \douta[3]_INST_0_i_5_n_0 ;
  wire \douta[3]_INST_0_i_6_n_0 ;
  wire \douta[3]_INST_0_i_7_n_0 ;
  wire \douta[3]_INST_0_i_8_n_0 ;
  wire \douta[3]_INST_0_i_9_n_0 ;
  wire \douta[4]_INST_0_i_10_n_0 ;
  wire \douta[4]_INST_0_i_1_n_0 ;
  wire \douta[4]_INST_0_i_2_n_0 ;
  wire \douta[4]_INST_0_i_3_n_0 ;
  wire \douta[4]_INST_0_i_4_n_0 ;
  wire \douta[4]_INST_0_i_5_n_0 ;
  wire \douta[4]_INST_0_i_6_n_0 ;
  wire \douta[4]_INST_0_i_7_n_0 ;
  wire \douta[4]_INST_0_i_8_n_0 ;
  wire \douta[4]_INST_0_i_9_n_0 ;
  wire \douta[5]_INST_0_i_10_n_0 ;
  wire \douta[5]_INST_0_i_1_n_0 ;
  wire \douta[5]_INST_0_i_2_n_0 ;
  wire \douta[5]_INST_0_i_3_n_0 ;
  wire \douta[5]_INST_0_i_4_n_0 ;
  wire \douta[5]_INST_0_i_5_n_0 ;
  wire \douta[5]_INST_0_i_6_n_0 ;
  wire \douta[5]_INST_0_i_7_n_0 ;
  wire \douta[5]_INST_0_i_8_n_0 ;
  wire \douta[5]_INST_0_i_9_n_0 ;
  wire \douta[6]_INST_0_i_10_n_0 ;
  wire \douta[6]_INST_0_i_1_n_0 ;
  wire \douta[6]_INST_0_i_2_n_0 ;
  wire \douta[6]_INST_0_i_3_n_0 ;
  wire \douta[6]_INST_0_i_4_n_0 ;
  wire \douta[6]_INST_0_i_5_n_0 ;
  wire \douta[6]_INST_0_i_6_n_0 ;
  wire \douta[6]_INST_0_i_7_n_0 ;
  wire \douta[6]_INST_0_i_8_n_0 ;
  wire \douta[6]_INST_0_i_9_n_0 ;
  wire \douta[7]_INST_0_i_10_n_0 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire \douta[7]_INST_0_i_3_n_0 ;
  wire \douta[7]_INST_0_i_4_n_0 ;
  wire \douta[7]_INST_0_i_5_n_0 ;
  wire \douta[7]_INST_0_i_6_n_0 ;
  wire \douta[7]_INST_0_i_7_n_0 ;
  wire \douta[7]_INST_0_i_8_n_0 ;
  wire \douta[7]_INST_0_i_9_n_0 ;
  wire \douta[8]_INST_0_i_10_n_0 ;
  wire [7:0]\douta[8]_INST_0_i_1_0 ;
  wire [7:0]\douta[8]_INST_0_i_1_1 ;
  wire [7:0]\douta[8]_INST_0_i_1_2 ;
  wire [7:0]\douta[8]_INST_0_i_1_3 ;
  wire \douta[8]_INST_0_i_1_n_0 ;
  wire \douta[8]_INST_0_i_2_n_0 ;
  wire \douta[8]_INST_0_i_3_n_0 ;
  wire \douta[8]_INST_0_i_4_n_0 ;
  wire [7:0]\douta[8]_INST_0_i_5_0 ;
  wire [7:0]\douta[8]_INST_0_i_5_1 ;
  wire [7:0]\douta[8]_INST_0_i_5_2 ;
  wire [7:0]\douta[8]_INST_0_i_5_3 ;
  wire [7:0]\douta[8]_INST_0_i_5_4 ;
  wire [7:0]\douta[8]_INST_0_i_5_5 ;
  wire [7:0]\douta[8]_INST_0_i_5_6 ;
  wire \douta[8]_INST_0_i_5_n_0 ;
  wire [7:0]\douta[8]_INST_0_i_6_0 ;
  wire [7:0]\douta[8]_INST_0_i_6_1 ;
  wire [7:0]\douta[8]_INST_0_i_6_2 ;
  wire [7:0]\douta[8]_INST_0_i_6_3 ;
  wire [7:0]\douta[8]_INST_0_i_6_4 ;
  wire [7:0]\douta[8]_INST_0_i_6_5 ;
  wire [7:0]\douta[8]_INST_0_i_6_6 ;
  wire [7:0]\douta[8]_INST_0_i_6_7 ;
  wire \douta[8]_INST_0_i_6_n_0 ;
  wire \douta[8]_INST_0_i_7_n_0 ;
  wire \douta[8]_INST_0_i_8_n_0 ;
  wire \douta[8]_INST_0_i_9_n_0 ;
  wire \douta[9]_INST_0_i_10_n_0 ;
  wire [0:0]\douta[9]_INST_0_i_1_0 ;
  wire [0:0]\douta[9]_INST_0_i_1_1 ;
  wire [0:0]\douta[9]_INST_0_i_1_2 ;
  wire [0:0]\douta[9]_INST_0_i_1_3 ;
  wire \douta[9]_INST_0_i_1_n_0 ;
  wire \douta[9]_INST_0_i_2_n_0 ;
  wire \douta[9]_INST_0_i_3_n_0 ;
  wire \douta[9]_INST_0_i_4_n_0 ;
  wire [0:0]\douta[9]_INST_0_i_5_0 ;
  wire [0:0]\douta[9]_INST_0_i_5_1 ;
  wire [0:0]\douta[9]_INST_0_i_5_2 ;
  wire [0:0]\douta[9]_INST_0_i_5_3 ;
  wire [0:0]\douta[9]_INST_0_i_5_4 ;
  wire [0:0]\douta[9]_INST_0_i_5_5 ;
  wire [0:0]\douta[9]_INST_0_i_5_6 ;
  wire \douta[9]_INST_0_i_5_n_0 ;
  wire [0:0]\douta[9]_INST_0_i_6_0 ;
  wire [0:0]\douta[9]_INST_0_i_6_1 ;
  wire [0:0]\douta[9]_INST_0_i_6_2 ;
  wire [0:0]\douta[9]_INST_0_i_6_3 ;
  wire [0:0]\douta[9]_INST_0_i_6_4 ;
  wire [0:0]\douta[9]_INST_0_i_6_5 ;
  wire [0:0]\douta[9]_INST_0_i_6_6 ;
  wire [0:0]\douta[9]_INST_0_i_6_7 ;
  wire \douta[9]_INST_0_i_6_n_0 ;
  wire \douta[9]_INST_0_i_7_n_0 ;
  wire \douta[9]_INST_0_i_8_n_0 ;
  wire \douta[9]_INST_0_i_9_n_0 ;
  wire [5:0]sel_pipe;
  wire [5:0]sel_pipe_d1;

  LUT5 #(
    .INIT(32'h10FF1000)) 
    \douta[0]_INST_0 
       (.I0(sel_pipe_d1[4]),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[0] ),
        .I3(sel_pipe_d1[5]),
        .I4(DOUTA),
        .O(douta[0]));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \douta[10]_INST_0 
       (.I0(sel_pipe_d1[4]),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[11] [0]),
        .I3(sel_pipe_d1[5]),
        .I4(\douta[10] ),
        .O(douta[10]));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \douta[11]_INST_0 
       (.I0(sel_pipe_d1[4]),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[11] [1]),
        .I3(sel_pipe_d1[5]),
        .I4(\douta[11]_0 ),
        .O(douta[11]));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe_d1[4]),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[1]_INST_0_i_1_n_0 ),
        .I3(sel_pipe_d1[5]),
        .I4(\douta[1]_INST_0_i_2_n_0 ),
        .O(douta[1]));
  MUXF7 \douta[1]_INST_0_i_1 
       (.I0(\douta[1]_INST_0_i_3_n_0 ),
        .I1(\douta[1]_INST_0_i_4_n_0 ),
        .O(\douta[1]_INST_0_i_1_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[1]_INST_0_i_10 
       (.I0(\douta[8]_INST_0_i_6_4 [0]),
        .I1(\douta[8]_INST_0_i_6_5 [0]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_6_6 [0]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_6_7 [0]),
        .O(\douta[1]_INST_0_i_10_n_0 ));
  MUXF8 \douta[1]_INST_0_i_2 
       (.I0(\douta[1]_INST_0_i_5_n_0 ),
        .I1(\douta[1]_INST_0_i_6_n_0 ),
        .O(\douta[1]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[1]_INST_0_i_3 
       (.I0(\douta[8]_INST_0_i_1_0 [0]),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[8]_INST_0_i_1_1 [0]),
        .O(\douta[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[1]_INST_0_i_4 
       (.I0(\douta[8]_INST_0_i_1_2 [0]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[8]_INST_0_i_1_3 [0]),
        .O(\douta[1]_INST_0_i_4_n_0 ));
  MUXF7 \douta[1]_INST_0_i_5 
       (.I0(\douta[1]_INST_0_i_7_n_0 ),
        .I1(\douta[1]_INST_0_i_8_n_0 ),
        .O(\douta[1]_INST_0_i_5_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \douta[1]_INST_0_i_6 
       (.I0(\douta[1]_INST_0_i_9_n_0 ),
        .I1(\douta[1]_INST_0_i_10_n_0 ),
        .O(\douta[1]_INST_0_i_6_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[1]_INST_0_i_7 
       (.I0(DOADO[0]),
        .I1(\douta[8]_INST_0_i_5_0 [0]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_5_1 [0]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_5_2 [0]),
        .O(\douta[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[1]_INST_0_i_8 
       (.I0(\douta[8]_INST_0_i_5_3 [0]),
        .I1(\douta[8]_INST_0_i_5_4 [0]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_5_5 [0]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_5_6 [0]),
        .O(\douta[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[1]_INST_0_i_9 
       (.I0(\douta[8]_INST_0_i_6_0 [0]),
        .I1(\douta[8]_INST_0_i_6_1 [0]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_6_2 [0]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_6_3 [0]),
        .O(\douta[1]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe_d1[4]),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[2]_INST_0_i_1_n_0 ),
        .I3(sel_pipe_d1[5]),
        .I4(\douta[2]_INST_0_i_2_n_0 ),
        .O(douta[2]));
  MUXF7 \douta[2]_INST_0_i_1 
       (.I0(\douta[2]_INST_0_i_3_n_0 ),
        .I1(\douta[2]_INST_0_i_4_n_0 ),
        .O(\douta[2]_INST_0_i_1_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[2]_INST_0_i_10 
       (.I0(\douta[8]_INST_0_i_6_4 [1]),
        .I1(\douta[8]_INST_0_i_6_5 [1]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_6_6 [1]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_6_7 [1]),
        .O(\douta[2]_INST_0_i_10_n_0 ));
  MUXF8 \douta[2]_INST_0_i_2 
       (.I0(\douta[2]_INST_0_i_5_n_0 ),
        .I1(\douta[2]_INST_0_i_6_n_0 ),
        .O(\douta[2]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[2]_INST_0_i_3 
       (.I0(\douta[8]_INST_0_i_1_0 [1]),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[8]_INST_0_i_1_1 [1]),
        .O(\douta[2]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[2]_INST_0_i_4 
       (.I0(\douta[8]_INST_0_i_1_2 [1]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[8]_INST_0_i_1_3 [1]),
        .O(\douta[2]_INST_0_i_4_n_0 ));
  MUXF7 \douta[2]_INST_0_i_5 
       (.I0(\douta[2]_INST_0_i_7_n_0 ),
        .I1(\douta[2]_INST_0_i_8_n_0 ),
        .O(\douta[2]_INST_0_i_5_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \douta[2]_INST_0_i_6 
       (.I0(\douta[2]_INST_0_i_9_n_0 ),
        .I1(\douta[2]_INST_0_i_10_n_0 ),
        .O(\douta[2]_INST_0_i_6_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[2]_INST_0_i_7 
       (.I0(DOADO[1]),
        .I1(\douta[8]_INST_0_i_5_0 [1]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_5_1 [1]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_5_2 [1]),
        .O(\douta[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[2]_INST_0_i_8 
       (.I0(\douta[8]_INST_0_i_5_3 [1]),
        .I1(\douta[8]_INST_0_i_5_4 [1]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_5_5 [1]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_5_6 [1]),
        .O(\douta[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[2]_INST_0_i_9 
       (.I0(\douta[8]_INST_0_i_6_0 [1]),
        .I1(\douta[8]_INST_0_i_6_1 [1]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_6_2 [1]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_6_3 [1]),
        .O(\douta[2]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \douta[3]_INST_0 
       (.I0(sel_pipe_d1[4]),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[3]_INST_0_i_1_n_0 ),
        .I3(sel_pipe_d1[5]),
        .I4(\douta[3]_INST_0_i_2_n_0 ),
        .O(douta[3]));
  MUXF7 \douta[3]_INST_0_i_1 
       (.I0(\douta[3]_INST_0_i_3_n_0 ),
        .I1(\douta[3]_INST_0_i_4_n_0 ),
        .O(\douta[3]_INST_0_i_1_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_10 
       (.I0(\douta[8]_INST_0_i_6_4 [2]),
        .I1(\douta[8]_INST_0_i_6_5 [2]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_6_6 [2]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_6_7 [2]),
        .O(\douta[3]_INST_0_i_10_n_0 ));
  MUXF8 \douta[3]_INST_0_i_2 
       (.I0(\douta[3]_INST_0_i_5_n_0 ),
        .I1(\douta[3]_INST_0_i_6_n_0 ),
        .O(\douta[3]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[3]_INST_0_i_3 
       (.I0(\douta[8]_INST_0_i_1_0 [2]),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[8]_INST_0_i_1_1 [2]),
        .O(\douta[3]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[3]_INST_0_i_4 
       (.I0(\douta[8]_INST_0_i_1_2 [2]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[8]_INST_0_i_1_3 [2]),
        .O(\douta[3]_INST_0_i_4_n_0 ));
  MUXF7 \douta[3]_INST_0_i_5 
       (.I0(\douta[3]_INST_0_i_7_n_0 ),
        .I1(\douta[3]_INST_0_i_8_n_0 ),
        .O(\douta[3]_INST_0_i_5_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \douta[3]_INST_0_i_6 
       (.I0(\douta[3]_INST_0_i_9_n_0 ),
        .I1(\douta[3]_INST_0_i_10_n_0 ),
        .O(\douta[3]_INST_0_i_6_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_7 
       (.I0(DOADO[2]),
        .I1(\douta[8]_INST_0_i_5_0 [2]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_5_1 [2]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_5_2 [2]),
        .O(\douta[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_8 
       (.I0(\douta[8]_INST_0_i_5_3 [2]),
        .I1(\douta[8]_INST_0_i_5_4 [2]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_5_5 [2]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_5_6 [2]),
        .O(\douta[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_9 
       (.I0(\douta[8]_INST_0_i_6_0 [2]),
        .I1(\douta[8]_INST_0_i_6_1 [2]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_6_2 [2]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_6_3 [2]),
        .O(\douta[3]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \douta[4]_INST_0 
       (.I0(sel_pipe_d1[4]),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[4]_INST_0_i_1_n_0 ),
        .I3(sel_pipe_d1[5]),
        .I4(\douta[4]_INST_0_i_2_n_0 ),
        .O(douta[4]));
  MUXF7 \douta[4]_INST_0_i_1 
       (.I0(\douta[4]_INST_0_i_3_n_0 ),
        .I1(\douta[4]_INST_0_i_4_n_0 ),
        .O(\douta[4]_INST_0_i_1_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_10 
       (.I0(\douta[8]_INST_0_i_6_4 [3]),
        .I1(\douta[8]_INST_0_i_6_5 [3]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_6_6 [3]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_6_7 [3]),
        .O(\douta[4]_INST_0_i_10_n_0 ));
  MUXF8 \douta[4]_INST_0_i_2 
       (.I0(\douta[4]_INST_0_i_5_n_0 ),
        .I1(\douta[4]_INST_0_i_6_n_0 ),
        .O(\douta[4]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[4]_INST_0_i_3 
       (.I0(\douta[8]_INST_0_i_1_0 [3]),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[8]_INST_0_i_1_1 [3]),
        .O(\douta[4]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[4]_INST_0_i_4 
       (.I0(\douta[8]_INST_0_i_1_2 [3]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[8]_INST_0_i_1_3 [3]),
        .O(\douta[4]_INST_0_i_4_n_0 ));
  MUXF7 \douta[4]_INST_0_i_5 
       (.I0(\douta[4]_INST_0_i_7_n_0 ),
        .I1(\douta[4]_INST_0_i_8_n_0 ),
        .O(\douta[4]_INST_0_i_5_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \douta[4]_INST_0_i_6 
       (.I0(\douta[4]_INST_0_i_9_n_0 ),
        .I1(\douta[4]_INST_0_i_10_n_0 ),
        .O(\douta[4]_INST_0_i_6_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_7 
       (.I0(DOADO[3]),
        .I1(\douta[8]_INST_0_i_5_0 [3]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_5_1 [3]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_5_2 [3]),
        .O(\douta[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_8 
       (.I0(\douta[8]_INST_0_i_5_3 [3]),
        .I1(\douta[8]_INST_0_i_5_4 [3]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_5_5 [3]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_5_6 [3]),
        .O(\douta[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_9 
       (.I0(\douta[8]_INST_0_i_6_0 [3]),
        .I1(\douta[8]_INST_0_i_6_1 [3]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_6_2 [3]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_6_3 [3]),
        .O(\douta[4]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \douta[5]_INST_0 
       (.I0(sel_pipe_d1[4]),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[5]_INST_0_i_1_n_0 ),
        .I3(sel_pipe_d1[5]),
        .I4(\douta[5]_INST_0_i_2_n_0 ),
        .O(douta[5]));
  MUXF7 \douta[5]_INST_0_i_1 
       (.I0(\douta[5]_INST_0_i_3_n_0 ),
        .I1(\douta[5]_INST_0_i_4_n_0 ),
        .O(\douta[5]_INST_0_i_1_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_10 
       (.I0(\douta[8]_INST_0_i_6_4 [4]),
        .I1(\douta[8]_INST_0_i_6_5 [4]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_6_6 [4]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_6_7 [4]),
        .O(\douta[5]_INST_0_i_10_n_0 ));
  MUXF8 \douta[5]_INST_0_i_2 
       (.I0(\douta[5]_INST_0_i_5_n_0 ),
        .I1(\douta[5]_INST_0_i_6_n_0 ),
        .O(\douta[5]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[5]_INST_0_i_3 
       (.I0(\douta[8]_INST_0_i_1_0 [4]),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[8]_INST_0_i_1_1 [4]),
        .O(\douta[5]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[5]_INST_0_i_4 
       (.I0(\douta[8]_INST_0_i_1_2 [4]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[8]_INST_0_i_1_3 [4]),
        .O(\douta[5]_INST_0_i_4_n_0 ));
  MUXF7 \douta[5]_INST_0_i_5 
       (.I0(\douta[5]_INST_0_i_7_n_0 ),
        .I1(\douta[5]_INST_0_i_8_n_0 ),
        .O(\douta[5]_INST_0_i_5_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \douta[5]_INST_0_i_6 
       (.I0(\douta[5]_INST_0_i_9_n_0 ),
        .I1(\douta[5]_INST_0_i_10_n_0 ),
        .O(\douta[5]_INST_0_i_6_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_7 
       (.I0(DOADO[4]),
        .I1(\douta[8]_INST_0_i_5_0 [4]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_5_1 [4]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_5_2 [4]),
        .O(\douta[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_8 
       (.I0(\douta[8]_INST_0_i_5_3 [4]),
        .I1(\douta[8]_INST_0_i_5_4 [4]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_5_5 [4]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_5_6 [4]),
        .O(\douta[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_9 
       (.I0(\douta[8]_INST_0_i_6_0 [4]),
        .I1(\douta[8]_INST_0_i_6_1 [4]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_6_2 [4]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_6_3 [4]),
        .O(\douta[5]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \douta[6]_INST_0 
       (.I0(sel_pipe_d1[4]),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[6]_INST_0_i_1_n_0 ),
        .I3(sel_pipe_d1[5]),
        .I4(\douta[6]_INST_0_i_2_n_0 ),
        .O(douta[6]));
  MUXF7 \douta[6]_INST_0_i_1 
       (.I0(\douta[6]_INST_0_i_3_n_0 ),
        .I1(\douta[6]_INST_0_i_4_n_0 ),
        .O(\douta[6]_INST_0_i_1_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_10 
       (.I0(\douta[8]_INST_0_i_6_4 [5]),
        .I1(\douta[8]_INST_0_i_6_5 [5]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_6_6 [5]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_6_7 [5]),
        .O(\douta[6]_INST_0_i_10_n_0 ));
  MUXF8 \douta[6]_INST_0_i_2 
       (.I0(\douta[6]_INST_0_i_5_n_0 ),
        .I1(\douta[6]_INST_0_i_6_n_0 ),
        .O(\douta[6]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[6]_INST_0_i_3 
       (.I0(\douta[8]_INST_0_i_1_0 [5]),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[8]_INST_0_i_1_1 [5]),
        .O(\douta[6]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[6]_INST_0_i_4 
       (.I0(\douta[8]_INST_0_i_1_2 [5]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[8]_INST_0_i_1_3 [5]),
        .O(\douta[6]_INST_0_i_4_n_0 ));
  MUXF7 \douta[6]_INST_0_i_5 
       (.I0(\douta[6]_INST_0_i_7_n_0 ),
        .I1(\douta[6]_INST_0_i_8_n_0 ),
        .O(\douta[6]_INST_0_i_5_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \douta[6]_INST_0_i_6 
       (.I0(\douta[6]_INST_0_i_9_n_0 ),
        .I1(\douta[6]_INST_0_i_10_n_0 ),
        .O(\douta[6]_INST_0_i_6_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_7 
       (.I0(DOADO[5]),
        .I1(\douta[8]_INST_0_i_5_0 [5]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_5_1 [5]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_5_2 [5]),
        .O(\douta[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_8 
       (.I0(\douta[8]_INST_0_i_5_3 [5]),
        .I1(\douta[8]_INST_0_i_5_4 [5]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_5_5 [5]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_5_6 [5]),
        .O(\douta[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_9 
       (.I0(\douta[8]_INST_0_i_6_0 [5]),
        .I1(\douta[8]_INST_0_i_6_1 [5]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_6_2 [5]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_6_3 [5]),
        .O(\douta[6]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \douta[7]_INST_0 
       (.I0(sel_pipe_d1[4]),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[7]_INST_0_i_1_n_0 ),
        .I3(sel_pipe_d1[5]),
        .I4(\douta[7]_INST_0_i_2_n_0 ),
        .O(douta[7]));
  MUXF7 \douta[7]_INST_0_i_1 
       (.I0(\douta[7]_INST_0_i_3_n_0 ),
        .I1(\douta[7]_INST_0_i_4_n_0 ),
        .O(\douta[7]_INST_0_i_1_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_10 
       (.I0(\douta[8]_INST_0_i_6_4 [6]),
        .I1(\douta[8]_INST_0_i_6_5 [6]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_6_6 [6]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_6_7 [6]),
        .O(\douta[7]_INST_0_i_10_n_0 ));
  MUXF8 \douta[7]_INST_0_i_2 
       (.I0(\douta[7]_INST_0_i_5_n_0 ),
        .I1(\douta[7]_INST_0_i_6_n_0 ),
        .O(\douta[7]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[7]_INST_0_i_3 
       (.I0(\douta[8]_INST_0_i_1_0 [6]),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[8]_INST_0_i_1_1 [6]),
        .O(\douta[7]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[7]_INST_0_i_4 
       (.I0(\douta[8]_INST_0_i_1_2 [6]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[8]_INST_0_i_1_3 [6]),
        .O(\douta[7]_INST_0_i_4_n_0 ));
  MUXF7 \douta[7]_INST_0_i_5 
       (.I0(\douta[7]_INST_0_i_7_n_0 ),
        .I1(\douta[7]_INST_0_i_8_n_0 ),
        .O(\douta[7]_INST_0_i_5_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \douta[7]_INST_0_i_6 
       (.I0(\douta[7]_INST_0_i_9_n_0 ),
        .I1(\douta[7]_INST_0_i_10_n_0 ),
        .O(\douta[7]_INST_0_i_6_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_7 
       (.I0(DOADO[6]),
        .I1(\douta[8]_INST_0_i_5_0 [6]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_5_1 [6]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_5_2 [6]),
        .O(\douta[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_8 
       (.I0(\douta[8]_INST_0_i_5_3 [6]),
        .I1(\douta[8]_INST_0_i_5_4 [6]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_5_5 [6]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_5_6 [6]),
        .O(\douta[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_9 
       (.I0(\douta[8]_INST_0_i_6_0 [6]),
        .I1(\douta[8]_INST_0_i_6_1 [6]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_6_2 [6]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_6_3 [6]),
        .O(\douta[7]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \douta[8]_INST_0 
       (.I0(sel_pipe_d1[4]),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[8]_INST_0_i_1_n_0 ),
        .I3(sel_pipe_d1[5]),
        .I4(\douta[8]_INST_0_i_2_n_0 ),
        .O(douta[8]));
  MUXF7 \douta[8]_INST_0_i_1 
       (.I0(\douta[8]_INST_0_i_3_n_0 ),
        .I1(\douta[8]_INST_0_i_4_n_0 ),
        .O(\douta[8]_INST_0_i_1_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_10 
       (.I0(\douta[8]_INST_0_i_6_4 [7]),
        .I1(\douta[8]_INST_0_i_6_5 [7]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_6_6 [7]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_6_7 [7]),
        .O(\douta[8]_INST_0_i_10_n_0 ));
  MUXF8 \douta[8]_INST_0_i_2 
       (.I0(\douta[8]_INST_0_i_5_n_0 ),
        .I1(\douta[8]_INST_0_i_6_n_0 ),
        .O(\douta[8]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[8]_INST_0_i_3 
       (.I0(\douta[8]_INST_0_i_1_0 [7]),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[8]_INST_0_i_1_1 [7]),
        .O(\douta[8]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[8]_INST_0_i_4 
       (.I0(\douta[8]_INST_0_i_1_2 [7]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[8]_INST_0_i_1_3 [7]),
        .O(\douta[8]_INST_0_i_4_n_0 ));
  MUXF7 \douta[8]_INST_0_i_5 
       (.I0(\douta[8]_INST_0_i_7_n_0 ),
        .I1(\douta[8]_INST_0_i_8_n_0 ),
        .O(\douta[8]_INST_0_i_5_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \douta[8]_INST_0_i_6 
       (.I0(\douta[8]_INST_0_i_9_n_0 ),
        .I1(\douta[8]_INST_0_i_10_n_0 ),
        .O(\douta[8]_INST_0_i_6_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_7 
       (.I0(DOADO[7]),
        .I1(\douta[8]_INST_0_i_5_0 [7]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_5_1 [7]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_5_2 [7]),
        .O(\douta[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_8 
       (.I0(\douta[8]_INST_0_i_5_3 [7]),
        .I1(\douta[8]_INST_0_i_5_4 [7]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_5_5 [7]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_5_6 [7]),
        .O(\douta[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_9 
       (.I0(\douta[8]_INST_0_i_6_0 [7]),
        .I1(\douta[8]_INST_0_i_6_1 [7]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_INST_0_i_6_2 [7]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8]_INST_0_i_6_3 [7]),
        .O(\douta[8]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \douta[9]_INST_0 
       (.I0(sel_pipe_d1[4]),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[9]_INST_0_i_1_n_0 ),
        .I3(sel_pipe_d1[5]),
        .I4(\douta[9]_INST_0_i_2_n_0 ),
        .O(douta[9]));
  MUXF7 \douta[9]_INST_0_i_1 
       (.I0(\douta[9]_INST_0_i_3_n_0 ),
        .I1(\douta[9]_INST_0_i_4_n_0 ),
        .O(\douta[9]_INST_0_i_1_n_0 ),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_10 
       (.I0(\douta[9]_INST_0_i_6_4 ),
        .I1(\douta[9]_INST_0_i_6_5 ),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[9]_INST_0_i_6_6 ),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[9]_INST_0_i_6_7 ),
        .O(\douta[9]_INST_0_i_10_n_0 ));
  MUXF8 \douta[9]_INST_0_i_2 
       (.I0(\douta[9]_INST_0_i_5_n_0 ),
        .I1(\douta[9]_INST_0_i_6_n_0 ),
        .O(\douta[9]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[9]_INST_0_i_3 
       (.I0(\douta[9]_INST_0_i_1_0 ),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[9]_INST_0_i_1_1 ),
        .O(\douta[9]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[9]_INST_0_i_4 
       (.I0(\douta[9]_INST_0_i_1_2 ),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[9]_INST_0_i_1_3 ),
        .O(\douta[9]_INST_0_i_4_n_0 ));
  MUXF7 \douta[9]_INST_0_i_5 
       (.I0(\douta[9]_INST_0_i_7_n_0 ),
        .I1(\douta[9]_INST_0_i_8_n_0 ),
        .O(\douta[9]_INST_0_i_5_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \douta[9]_INST_0_i_6 
       (.I0(\douta[9]_INST_0_i_9_n_0 ),
        .I1(\douta[9]_INST_0_i_10_n_0 ),
        .O(\douta[9]_INST_0_i_6_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_7 
       (.I0(DOPADOP),
        .I1(\douta[9]_INST_0_i_5_0 ),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[9]_INST_0_i_5_1 ),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[9]_INST_0_i_5_2 ),
        .O(\douta[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_8 
       (.I0(\douta[9]_INST_0_i_5_3 ),
        .I1(\douta[9]_INST_0_i_5_4 ),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[9]_INST_0_i_5_5 ),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[9]_INST_0_i_5_6 ),
        .O(\douta[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_9 
       (.I0(\douta[9]_INST_0_i_6_0 ),
        .I1(\douta[9]_INST_0_i_6_1 ),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[9]_INST_0_i_6_2 ),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[9]_INST_0_i_6_3 ),
        .O(\douta[9]_INST_0_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[3]),
        .Q(sel_pipe_d1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[4] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[4]),
        .Q(sel_pipe_d1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[5] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[5]),
        .Q(sel_pipe_d1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[3]),
        .Q(sel_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[4] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[4]),
        .Q(sel_pipe[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[5] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[5]),
        .Q(sel_pipe[5]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.DOUTA(DOUTA),
        .ENA(ENA),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    addra,
    dina,
    wea);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input [13:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [13:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized12
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized13
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized14
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized14 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized15
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized15 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized16
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized16 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized17
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized17 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized18
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized18 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized19
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized19 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized20
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [10:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized20 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized21
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized21 \prim_init.ram 
       (.DOUTA(DOUTA),
        .ENA(ENA),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized22
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra,
    dina,
    wea);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [13:0]addra;
  input [1:0]dina;
  input [0:0]wea;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire clka;
  wire [1:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized22 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized23
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized23 \prim_init.ram 
       (.DOUTA(DOUTA),
        .ENA(ENA),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4
   (DOADO,
    DOPADOP,
    clka,
    addra,
    dina,
    wea);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00003EBB121B31A28400006008040000E1040A102800300000001E1000001668),
    .INIT_01(256'h0000000000000000000000000000000000000005F003DE00DE806FC01EE00000),
    .INIT_02(256'h72172A589144000600400001F0400842BFB00000000000000000000000000000),
    .INIT_03(256'h000000FC0009C036D00CC40F22017380000000012C56179B5D38E805428120A8),
    .INIT_04(256'h887DB20000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'hF800000000364E97F36C1601E080880ACE83E79ADA8F68E800EC00030461812E),
    .INIT_06(256'h00000000000000000000000000000000000000000A30190804E105414069A025),
    .INIT_07(256'h02EAB0186F900989F54013A01051323697B125A5A00000000000000000000000),
    .INIT_08(256'h0000000000005F003DA07A702B34805022BC80000002022C31E6513D50BD290E),
    .INIT_09(256'h0001588007E40000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h39882D2800400008745B83B0388BBFF1E3C93E2B9B25C78E8634FA022908014C),
    .INIT_0B(256'h00000000000000000000000000000000000000000000000CC009100745015E80),
    .INIT_0C(256'h153C09E84F5CB04DF8764E964046F000560DF9D77801C6D00000000000000000),
    .INIT_0D(256'h0000000040000000018301F4817BC015E004BE037800083D0D00404E42C0E564),
    .INIT_0E(256'h00A7900003B5C3132200000000004008000000000A0000000000100000000000),
    .INIT_0F(256'h86D141F3F0FCAC3C83E0186C00784C182F99C0BDAA65CFB6688CDBDBB8340A08),
    .INIT_10(256'hFA2024000400CCE0E0C7212F000000000000000008480000100006C10BF24751),
    .INIT_11(256'h8130B6F9100B3EE9D3E8BD01B7E8DDDFBF5FFFBE000048B62FEDF0602B8228F4),
    .INIT_12(256'h000000000000DF800FFF000E5B037BB1959C35D725D38EFBE23C260F82C00D05),
    .INIT_13(256'h5BF47FDFE1F00000FDF396D901FF87FFAF6FADFE8000FFFD72BF17B97FD00000),
    .INIT_14(256'h8DF8633B2E774D6F22DDAFC0E0F85400F80C0E0EB836E19AEC9EB6EBFBA9B908),
    .INIT_15(256'hC239783D366E000007CF83DFED492E60000000000000000B3FFF5FEAFEA37651),
    .INIT_16(256'h400A024170FEF9FBE88EDA89EFDAC855D0256F5F0453E10000047FFCBF807F79),
    .INIT_17(256'hE400000000000000017EA7EAE47F662DD209FE4040D39C34AE3E157A1C220002),
    .INIT_18(256'h439BB879A8200EEC000000301FEFCD174F980797AF86CBE000007EFEF8FFF401),
    .INIT_19(256'hA02DC94B2C21CD3E970D77A6F9E8002040000008000000496F9538E1C7B76943),
    .INIT_1A(256'h8071B8017D7BBA7F3D00000FAFCFC9FA5453D800000000000000167FE731D41F),
    .INIT_1B(256'h200080000000000003AF2B70AA179BCC5E5C6861C70F3C0151000000015D5FF7),
    .INIT_1C(256'h733B86FF0000000000000004FF2FD0367FD60E771F9680EDB09FD4CDAA7AC400),
    .INIT_1D(256'hB52562078D047239800264000000409CD58D7F17D00FD7BBC7F3D00000FAFFF9),
    .INIT_1E(256'hCEDD49C01BE02B9C2DCC0CB504B700F8800000000000000000003090BB99A63B),
    .INIT_1F(256'h1812FB607339607D7B3CFF3D00041BBFFFD773EF07B0000000000000001B9AD9),
    .INIT_20(256'h0FFA00000000000009060001A90BCE87A0A2C31A2C51F0C78400000EC0000000),
    .INIT_21(256'hFBFFFD777CFEB90000000000000009F7B929EAFF58038D047501D0A062F033D4),
    .INIT_22(256'h38A6038120E1D7061C28000000280000000D7A00803FFF95FFDF8B87D390007F),
    .INIT_23(256'h09ED131B9A9F00078023F01BC8078E033A80EFC00000000000000000000920B8),
    .INIT_24(256'h00000075C000016CF93FF85AF26B3D000377AF3F97FFCF03D000000000000000),
    .INIT_25(256'hC01A9003240000000000000000000098760B82A0B82A000000000000000001C0),
    .INIT_26(256'hC000007AF27D7CFFF72600000000000000007781F0DD1A500100031E00BD806E),
    .INIT_27(256'h0986A0B8260DA0A00000000000000000080000029ABE000001FF900795CE67F3),
    .INIT_28(256'h000000001DB60015CF00270002C001F003C400FA004A00000000000000000000),
    .INIT_29(256'h0000800000141EE00000DE3980797FBFF5BF000003EFBF9FC7EF7E7000000000),
    .INIT_2A(256'h5D004D4007E0028800000000000000000000B9610AC2E0183600000000000000),
    .INIT_2B(256'hF8CBDB7000BFFAFBFD703EF8D4000000000000000000F10000FFE00370001400),
    .INIT_2C(256'h0000001BC6FCDC3D1DC0B000000000000000000000000085D900000FFB99F3B2),
    .INIT_2D(256'h0000000000200804120010D00057002A400D0400740139007990000000000000),
    .INIT_2E(256'h000000000080000000569000017D3D7FFA0A30BFFC000FFFCFA7F743EFFD6000),
    .INIT_2F(256'h035800E00407C01BE003B400000000000000000000C4277FC141385000000000),
    .INIT_30(256'hB41BA06405BE00000479F2F978BFFFFC00000000000000000000C0000A000000),
    .INIT_31(256'h0000000000000D4100C0600C12400000000000000000000000000000000003DF),
    .INIT_32(256'h000000000000000A810000080000000088000040000100000100004000000000),
    .INIT_33(256'h00000000000000004000000000100000070D0000000080080000007040300030),
    .INIT_34(256'h000000040000000000410A000204000000000000000000002080000000000110),
    .INIT_35(256'h00000000000000024000000000004800000200000000000000CC360080000010),
    .INIT_36(256'hCF000048CF000000006D29AB613D07CA6C000000006D000000ED00008DA7DE0B),
    .INIT_37(256'h00000000009BCF0000001A5A1F678500CEA900F500ADB7C5D93EA1DB4D00BF59),
    .INIT_38(256'h0C00000000000120000005000000000C00000002000000000000000000000000),
    .INIT_39(256'h00020E000000000000C000037F000000000E0000003E00000000000000000000),
    .INIT_3A(256'h10000008000000000000000000000000000000000000003E0000000000020000),
    .INIT_3B(256'h005410020010000450048080040200100702000102020E124840188000820230),
    .INIT_3C(256'h00000000000000000024500480B2040200000C02000002060E1212400D000182),
    .INIT_3D(256'h960040200C201000A00004002000002023430040081000000000000000000000),
    .INIT_3E(256'h0011800000200C201060E000040190001820634000000423C220002010100010),
    .INIT_3F(256'h8BEA2064BA004D00000000000000000000000000000000000002422000201000),
    .INIT_40(256'hA0792AF876B69A008C5B346B347C27576CCDD3A84A005AECF6BAFC717F8890FF),
    .INIT_41(256'hF00000F8043F7F0000E3FE18B46B347645244C5D49187E005A6C946AF00F7E52),
    .INIT_42(256'hCE1002292434900C4811191964090601B006941484A6000C8FFFE7FFFFF907FF),
    .INIT_43(256'h1A278410062B4070900C6006313923080C17FE8014CC12837008042434911A25),
    .INIT_44(256'h98471F9653929209000C700000000DE07FE000000000000010000FF005345499),
    .INIT_45(256'h82022CC4029661188AA9001442C0084638098C104C69D4C3007DB3C624020002),
    .INIT_46(256'h7FFFFFC0FFFFF81FFF7FFFFFFFFF7EEA084E0A2A0430CC3160C9FF1530881C80),
    .INIT_47(256'h470E0B05B0032CC154200C436918DCC3042E21B0059522409710099FC006C00F),
    .INIT_48(256'h1111470E8A2200032440F520084002084CC7040A179B84132713A47008218111),
    .INIT_49(256'h610200A0828084B2A484CE00440000000070700F800000000000001000007008),
    .INIT_4A(256'h942140C0009CE08006660C02A9FF0C0028839D4001A500CC36E4760037060670),
    .INIT_4B(256'h3CFF1F1FC7FF00FFFFF8E7F07FFFFF1EC724FE838928490400EEB4C012FF3702),
    .INIT_4C(256'h90040546490421A001124052500801955DA1E20004A22E004AD6A31180070F81),
    .INIT_4D(256'h00001994A5474A34202402A4626A500D0000004000080752220011950074300A),
    .INIT_4E(256'h000000010000E00000000300000000010C37FFF0F0F06FF00000000030001000),
    .INIT_4F(256'h000000000000000000000000C00010000000000000C00000C000000000000000),
    .INIT_50(256'h0010B7FF356AAE90FC0000000300000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000FF00008000000000000000000000010000C0000000030000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000080000),
    .INIT_53(256'h800000000000010000000000000000000000010F9F8E5B3ED26FC00000003000),
    .INIT_54(256'h00000000000000000000000000C000000000FF0000000000FF00008000000000),
    .INIT_55(256'h000000001056FF5B7E8D5CFC0000000000000000000000000000000000000000),
    .INIT_56(256'h0000000FF00000000000000008000000000800000000000010000000000C0000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000C00),
    .INIT_58(256'h000000C0000000000001000000000000000000000001FF800A1A23027FC00000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000008000),
    .INIT_5A(256'h000000000000001FB1FFFEDB7FE2FC0000000000000000000000000000000000),
    .INIT_5B(256'h00000000000000000000000000000008000000000C0000000000001000000000),
    .INIT_5C(256'hC000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h008000000000C0000000000001000000000000000000000001F66866CC96DD1F),
    .INIT_5E(256'h000000000000C0030000C0000000000000000000000100000000000000000000),
    .INIT_5F(256'h000000001000000810001FED000690000DFC0000000000000000000000000000),
    .INIT_60(256'h0000000000000030000000000000000000000FC00000000C1000000000001000),
    .INIT_61(256'h37425FC0000000000000000000000000000000000000000C0030000C00000000),
    .INIT_62(256'h008300000000380007C4000000000000000000000E8101C000000000FA9FC92D),
    .INIT_63(256'h0300000000000000C00000000000000000000300000000000000000000000000),
    .INIT_64(256'h000000000000E0000C000000000FE958D2D0E3A5FE00000000FF000000000000),
    .INIT_65(256'h0000000030000000000000601000000C000008300001000180000C0000000000),
    .INIT_66(256'h9E5D0D067A5FE00000000000000000000000300000000000000C000000000000),
    .INIT_67(256'h00000000070000380018000000000000000000000000800F00000000030000F6),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000007C30000),
    .INIT_69(256'h000000000000000000700000000030000F6997D2D167A5FF0000000000000000),
    .INIT_6A(256'h000000000000000000000000000070000000000F800030000000008000000000),
    .INIT_6B(256'h0000FE95FD2D167A5FF000000000000000000000000000000000000000000000),
    .INIT_6C(256'h000000000000000000000000000000000000000000000000C000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000001),
    .INIT_6E(256'h0000000000000000000C0000000000000000000FE97FD2D177A5FE0000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000007000),
    .INIT_70(256'h00000000000E93FD2D077A5FC000000000000000000000000000000000000000),
    .INIT_71(256'h0003000000000000000000000000000700000000000000000000808000000003),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h00700008000000000000000C0800000000300000000000E91FD2D077A5FC0000),
    .INIT_74(256'h0000000000000000000008000000000000000030100000000000000000000000),
    .INIT_75(256'h00000000001181000699FD2D277A5F8000000000000000000000000000000000),
    .INIT_76(256'h000000000000000000000000000000000000000000D000000001070000000000),
    .INIT_77(256'hFF000000000000000000000000000000000000000000000000000000C0000000),
    .INIT_78(256'h0000000008000C00000000101000000000000000000000181000A9E7D29377A5),
    .INIT_79(256'h000000000000000000000000000C000000000000000000003001800000000000),
    .INIT_7A(256'h0000001880000000000000069F092D067A5FE000000000000000000000000000),
    .INIT_7B(256'h00000000000000000000003C0000000000000000000000000000000001000000),
    .INIT_7C(256'hD3B501FC00000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000003000000000000000000000100000000000000C00000000400000694D92),
    .INIT_7E(256'h0000000000000000000000000000000000000000000008000000000003C00000),
    .INIT_7F(256'h00000000000000C00000000000000ADFEF0C1DFEDFC000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000008000000000003C00000000001F0000000000010000000001),
    .INIT_01(256'h6A0002D80005FC00000000000000000000000000000000000000000000000000),
    .INIT_02(256'h00000000000FF000000000003C00000000100000000000000808100000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000070000000),
    .INIT_04(256'h0000010000000000004200810000000000F8404CC44101BFC000000000000000),
    .INIT_05(256'h000000000000000000000000000F00000000000000000080002000000107C000),
    .INIT_06(256'h00000FE022296A9083FC00000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000007000000007C00000000100000000C00066008100000),
    .INIT_08(256'h00000000000000000000000000000000000000000000000000000000001000F0),
    .INIT_09(256'hC30000C000258100AA366853B5DB4BE550008000F180003F00007FC000000000),
    .INIT_0A(256'h000000000000000000000000000101000000109004110F46100066D199C00000),
    .INIT_0B(256'h40050000000FC3FFFC0FFFF01C00000000000000000000000000000000000700),
    .INIT_0C(256'h0000000009E19743E021F02C36018C00000810000C00034401032696B0C920A2),
    .INIT_0D(256'h0000000000000000000000000000000030000000000000000000000000000010),
    .INIT_0E(256'h0000000000000000D3CC04C6598AE17BA1D59250000000F03FF3800C770FF000),
    .INIT_0F(256'h0000000000000000000000000000000001000000000032C48481B28000181847),
    .INIT_10(256'hECC2791FE40000000F18FF000000001C00000000000000000000000000000000),
    .INIT_11(256'h000010000000080863E1CFE121FC3E6B90100000000000000181833D239D0A30),
    .INIT_12(256'h0180000000000008000000000000000000000000000000000000000000000000),
    .INIT_13(256'h006618C000000000000018F1DA1CBF6FD8D9375312DE60000000F08000000000),
    .INIT_14(256'h0000000000000000000000000000000000000001000000008790A01166933841),
    .INIT_15(256'h0C00B00A00413D760000000F00000007F001FE00000000000080000000000000),
    .INIT_16(256'h000000000010000000300BBE99D9D0CE37D99DFC3E0000000000000000000C10),
    .INIT_17(256'hCFFFFFF1E0000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0D0001000000000000810000000052EF5C7FAFE1FD4FF78297400000810FF00F),
    .INIT_19(256'h000000000300000000000000000000000000000000000100000007600009D000),
    .INIT_1A(256'h9EF58FFBFF5FF5FF38F37400001810FF00FE7FFFFF1C00000000000000C00000),
    .INIT_1B(256'h000FF0000000000010000800F049417B800280202029981000000C380FF00033),
    .INIT_1C(256'h0FF667F1FFFFF1F00000000000000C0000000000000030000000000000000000),
    .INIT_1D(256'hC7E3CBE678FF7E7EFE6BC00000C003000F03FF79E00073DF8C7BCF5740000080),
    .INIT_1E(256'h00000000000000000000000000000000000000C0000000000000000000C35727),
    .INIT_1F(256'h30100FFCF78D0C8F3EFBEF78F1740000000FFFFFFFFFD800C100000000000000),
    .INIT_20(256'h000000000C0000000000000000000C327F3B1AFCD72A5AC62BCCE6A800000000),
    .INIT_21(256'h000000FFFFFFFFFFC40C00000000000000000000000000000000000000000000),
    .INIT_22(256'h81A0B67B9E6C67674CCB07EE6200000000000300A9EF79F02771C7187B9F1E40),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000030011FF79FE6FF1CF3E7BCB1740000000FFFFFFFFFFC886400000000),
    .INIT_25(256'h00000000000000000000000000000000000815E7CB1DEC0E634B02E46EE6A000),
    .INIT_26(256'hD7C740000000FFFFFFFFFFE45200000000000000000000000000000000000000),
    .INIT_27(256'h00000000C4E739DE46E64CDD3A46EE6A00000000000100C3EF39DF9C01EF9C77),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'hE000000000100000069EEDDF79F53D71E73D3FF40000000FFFFFFFFFFE063200),
    .INIT_2A(256'h00000000000000000000000000000000000000000003DA3F75C67FCBE7F3EE47),
    .INIT_2B(256'hFE187BD1FF40030000FFFFFFFFFFD36DA0000000000000000000000000000000),
    .INIT_2C(256'h00000000000000024020322C8540024A8956000000000100000099FFF5FF4BF0),
    .INIT_2D(256'h2E03000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h081F08E0000000000008000A93C08AA221905185ED58A40030000FFFFFFFFFFE),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000C9080841003A808),
    .INIT_30(256'h01680B03A3887B0100010001FFFFFFFFFFE8F0D0000000000000000000000000),
    .INIT_31(256'h000000010000000000007675EB9EEFD26B7A5EDFA00000000081000000E6792F),
    .INIT_32(256'hFFFFFF4E030000000000000000000000030000008000000000000300000000C0),
    .INIT_33(256'hDF832D7D52C76680000000000010078000400900300400D080000000001FFFFF),
    .INIT_34(256'h003C3000000F000000000000300FF00188000000001000000000000816245373),
    .INIT_35(256'hDC78193B4FE493C8361DFEF0000001FFFFFFFFFFD1E040000000000C000F8000),
    .INIT_36(256'h000080000000010000000000007F3FF6CBDA71DBF79BF13D1A00000000006110),
    .INIT_37(256'h1FFFFFFFFFFC9C08000000000000000000000000000000000000000000000000),
    .INIT_38(256'h008101E100409C02A813800000000003100C3004B81A93D368FE2E300F080000),
    .INIT_39(256'h000000000000000000000000000000000000000C000000001000000000062814),
    .INIT_3A(256'h00000010C85A523F899FD921008307C00000FFFFFFFFFFC789000000000FF000),
    .INIT_3B(256'h0FFF00E00700000000010000000000635E39D3C7CA3091C6A3C838F500000000),
    .INIT_3C(256'h7C00000FFFFFFFFFFC30E00000000000C000F800000001FF0000000000000000),
    .INIT_3D(256'h00464FFEAE7E6FF37E3FF84FD7D000000000000002000100040008030FD7E000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000001000000000),
    .INIT_3F(256'h0300000300000079C9A977620CB02EC01900800000FFFFFFFFFFC10400000000),
    .INIT_40(256'h00000000000000002000000001000000000044EAFFE54EE19A73B5F761C77000),
    .INIT_41(256'hE8818C0000000FFFFFFFFFFC1000000000001F00000000000000000000000000),
    .INIT_42(256'h0000000C0FFFFCFADF55A33EDE795CE7B0003000003000100001BFF3FFCBF001),
    .INIT_43(256'h0FF0000FFF800FFFE3CFF83FFFFF0FF00FFFFFFE003FFFFFF1FFFFF000001000),
    .INIT_44(256'hE7730000000000000100000FDF7B9F6A0B3EF00000800001FFFFFFFFFFC0D020),
    .INIT_45(256'h0056400000000000000000000000020000000000000706FFDEF465137B108E05),
    .INIT_46(256'hEF75F2EF80000800001FFFFFFFFFFC0500000000248000000000000000000000),
    .INIT_47(256'hC0000000000000F65FFC4EE5021733BA2645E7A0000000000000000005F1FE73),
    .INIT_48(256'hC0200000000B33FFFFFFFFFFFFFFFFFFFFFFE790BFFFFFFFFFFFFFFFFFFFFFD0),
    .INIT_49(256'h9480221AE70000000000010000001FFFE7FEFF9F1ED80000000000FFFFFFFFFF),
    .INIT_4A(256'hFFFFFFFF03BFFFFFFFFFFFFFFFFFFFFFFF990000000000001F02D6AE2ECC172B),
    .INIT_4B(256'h89DE73EF51EEE800000000001FFFFFFFFFFFFFFC000000143FFFFFFFFFFFFFFF),
    .INIT_4C(256'h00003720000000000000F4110282DB2980019381982080000000000010000001),
    .INIT_4D(256'hFFFFFFFFFFC00000004B00000000000000000000006187800000000000000000),
    .INIT_4E(256'hE922116F36874B49000000000000000000249FE7FEE3FE3C800000000003FFFF),
    .INIT_4F(256'hFFFFFFFFFFFFDF86FFFFFFFFFFFFFFFFFFFFFFA9CC0000000000000112A71C3B),
    .INIT_50(256'h000000413E77FF31E60800000000003FFFFFFFFFFFFFFD000000B8E7FFFFFFFF),
    .INIT_51(256'h00000000007CA000000000000004C818BB406E49602C8886D960000000000000),
    .INIT_52(256'h00FFFFFFFFFFFFFFF000000ADE100000000000000000000569AD800000000000),
    .INIT_53(256'h04B0A81213650452524BED00000000000000000007F9F3DCFF9FF58000000400),
    .INIT_54(256'hFFC1FF000000000000B796CD07FFC0000FFFE00000001B690000000000000072),
    .INIT_55(256'h000000000000C2B90A3008005990000060000FFFFFFFFFFFFFFC00000064BAFF),
    .INIT_56(256'h00FF00000000000A44E000000000000035C012577F0A6B9909509A8160000000),
    .INIT_57(256'h000F0000FFFFFFFFFFFFFFC00000054D5000000000000000000FC4C92CCC0000),
    .INIT_58(256'h0700C0000099008118000000E000C00000000000000000C00000000000000080),
    .INIT_59(256'h84D95281C05E64024000029E4C9ACC9B04281543154908105D1E68C000000000),
    .INIT_5A(256'h000000000000000001FFFFF7CFF77FC000000010000FFFFFFFFFFFFFFC000000),
    .INIT_5B(256'h1644007A42E90B70000C0C268C00000000003008000008100001800000080008),
    .INIT_5C(256'hF0000000000000FFFFFFFFFFFFFFC00000004C4896E1381680D00210401909AC),
    .INIT_5D(256'h0000000300000000018000000000000000000000000000000000E0F8871C0007),
    .INIT_5E(256'h00000004D3275050461E1001003064749ACCE5A25041A642D40909012E680000),
    .INIT_5F(256'h001F0000000000000000000C0000080FF8000000100000000FFFFFFFFFFFFFFC),
    .INIT_60(256'hFC892C81BDCE39E59D52BBB565E5468000000000000000000000180000000000),
    .INIT_61(256'h3800DBE7000100000000FFFFFFFFFFFFFFC00000004D6DCEEE19DADD12C5D493),
    .INIT_62(256'h68000000000000008000000100180000000103F0000000000000000000010000),
    .INIT_63(256'hFFFFFC00000004CD0218F79DC804020000433492C38000D7A00040A020A04B82),
    .INIT_64(256'h0810001830000000000000000000000000010000100000000000000FFFFFFFFF),
    .INIT_65(256'hAA5BF019092C4C306C7C025B964B74282946C00000000000000C000000200060),
    .INIT_66(256'h0F0000E3006037000000000000FFFFFFFFFFFFFFC00000004DA2428F7FCC08AC),
    .INIT_67(256'h9F3DCC6C00000000000000000000020003009800C38000010000000000000000),
    .INIT_68(256'hFFFFFFFFFFFC00000000D6786FF799E3EDF1DF5E5BD59ACDBE7CE7DF9F3F3F3E),
    .INIT_69(256'h00301009800C38000030000000000000700C0000000000020000000000000FFF),
    .INIT_6A(256'h9E4277E267BAB949AC85457F77E2FB73F3797CC8A6C000000000000000000000),
    .INIT_6B(256'hC0000000000000000000000000000000FFFFFFFFFFFFFFC00000000D18447EF9),
    .INIT_6C(256'hFBF1F9B9DDC268000000000010060000000000010000000F0100000100000000),
    .INIT_6D(256'h000FFFFFFFFFFFFFFC00000004D9D6F667B9EEB77A62773B949AC8CC6EF3971A),
    .INIT_6E(256'h0000000000000000003000000000000000000000000000000000000000000000),
    .INIT_6F(256'h47DE73DC9AF7ABA77855D9ACCECEEE71BB25BF1FB19C18A68000000000010660),
    .INIT_70(256'h00000000000000000000000000000000000000FFFFFFFFFFFFFFC00000004DDF),
    .INIT_71(256'hFF139733BF7337BF986800000000000064FF0000000000000000000000000000),
    .INIT_72(256'h000000000FFFFFFFFFFFFFFC00000004CC677E5F39EB277A6333DE349ACDEC56),
    .INIT_73(256'h0000000E00000000000000000000000000000000000000000000000001000000),
    .INIT_74(256'h004D2FBF677B983FDFAEBFE3FC49ACCEC7C759FD7BF5F5FEFDE3268000000000),
    .INIT_75(256'h00000000000000000000000000000000000000000000FFFFFFFFFFFFFFC00000),
    .INIT_76(256'h4DCF763F36A1CD379C0AAB546800000000000000000000000000000000000000),
    .INIT_77(256'h000800000000000FFFFFFFFFFFFFFC00000004D31141BA445C82F1DFB728999A),
    .INIT_78(256'h0000000000600000000000000000000000000000000000000000000000000000),
    .INIT_79(256'hC00000004DE02C601C0501830008180649ACA000100406880C12020016A68000),
    .INIT_7A(256'h00000000000000000000000000000000000100C00000000000FFFFFFFFFFFFFF),
    .INIT_7B(256'hED259AC926B2BA9F973D8C95DBADCC6800000000000060000000000000000000),
    .INIT_7C(256'h000000381C00000000000FFFFFFFFFFFFFFC00000004C365B2B975BB217BFE56),
    .INIT_7D(256'h6680000008000006000000000000000008000000000000000000000000000000),
    .INIT_7E(256'hFFFFFFC00000004CA3AD8C6924CD8021132B62C9ACC8944A3292D92204A48A62),
    .INIT_7F(256'h00000000000018C18300000000000000000000000000000000000000FFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:1],DOUTA}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ,
    addra,
    dina,
    wea);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  input [13:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  wire [13:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h331C0007159ACBFC003CC3308C83FC03008C4C000000C0000010000000000018),
    .INIT_01(256'h000000000000000000000000000FFFFFFFFFFFFFFC0000000CC500010000C300),
    .INIT_02(256'h82300A06E000000C000000000000000000000000000000000C08300000000000),
    .INIT_03(256'hFFFFFFFFFFFFC000000A4D30033E1000000737F0000F486C9000000FFF8DE033),
    .INIT_04(256'h00000000000000000000008300000000000000000000800000000000000000FF),
    .INIT_05(256'h0FFFFF307CFFFF0A9CFEFF00C000C08E017F71FF174900000080000000000300),
    .INIT_06(256'h000000000000000000000000000000001FFFFFFFFFFFFFFC00000034E8FF8FC0),
    .INIT_07(256'h0000000000007C60000008000000000000000000000000000000800008100000),
    .INIT_08(256'h0000FFFFFFFFFFFFFFC0000006DE000000000000000000000039AD1000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h000000000000C00000004F86FD0000C000000083C0878009EA00000000000000),
    .INIT_0B(256'h000000000000000000000000000000000000000FFFFFFFFFFFFFFC0000004CA5),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFF7A50000000000000000000000001000000000000000000),
    .INIT_0D(256'h0000000000FFFFFFFFFFFFFFC000000A435FFFFFFFFFFFFFFFFFFFFF7103FFFF),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000C00000000000010000),
    .INIT_0F(256'h00303FFFFFFFFFFFFFFFFFFFFFFE21BFFFFFFFFFFFFFFFFFFFFFFF9500000000),
    .INIT_10(256'h000000000000000000000000000000100FFFF00000000FFFFFFFFFFFFFFC00C0),
    .INIT_11(256'h8BFFFFFFFFFFFFFFFFFFFFFFFEA00FF000000000000000000000000000000000),
    .INIT_12(256'h8000000000000101FFFFFFFFFFFFFFC00C0006A5FFFFFFFFFFFFFFFFFFFFFFE4),
    .INIT_13(256'h000000001C800000000000000000000000000000000000000080000007008000),
    .INIT_14(256'hFC00000000000000000000000000000000E00000000000000000000000000000),
    .INIT_15(256'h000000000000000000000800000000080008000000000000101FFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFC0E7FF07FFFFFFFFFFFFFFFFFF000000000000008000000000000000000),
    .INIT_17(256'h0080008000000000002000FFFFFFFFFFFFFFC00000000CF07FFFFFFFFFFFFFFF),
    .INIT_18(256'h7E00000000C00000C00000000000000000000000000000000004008080000000),
    .INIT_19(256'hFFFFFFFC000000000707FFC3FFFFFFFFFFFFF8E40007FF00FC0FFFFF3FFF0000),
    .INIT_1A(256'h000000000000000000000000000800000000080008000000000C00000FFFFFFF),
    .INIT_1B(256'h000000000000000000000000000000000000000000000C00000C000000000000),
    .INIT_1C(256'h0000000080008000000000000000FFFFFFFFFFFFFFC000000006000000000000),
    .INIT_1D(256'h0000FFFF00000000000000800001000000000000000080000000000000000080),
    .INIT_1E(256'hFFFFFFFFFFFFFC0000000079000000000000000000FFC0001F001800000000FF),
    .INIT_1F(256'h000000000000000000700000000000000000000000080008000000000000000F),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000080008000000000000000FFFFFFFFFFFFFFC000000000000000),
    .INIT_22(256'h00FF0000FF0000000000000000000000000000000000000000000700C0000000),
    .INIT_23(256'h00000FFFFFFFFFFFFFFC00000000F007FFFFE000FF00FFFF00C00080000FC000),
    .INIT_24(256'h000000003F80000000000000301C000000600000000000000800080000000000),
    .INIT_25(256'h7000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000018000000000000000000000FFFFFFFFFFFFFFC000000000),
    .INIT_27(256'h00000000000000030000000000C00100008300000081E0000000000000800000),
    .INIT_28(256'h00000000000FFFFFFFFFFFFFFC000000000100000000000000C0000000000000),
    .INIT_29(256'h000008101000000E000000021000000000000000000000000000080000000000),
    .INIT_2A(256'h000000100000000000000C000000000000000000000000000030000000000C00),
    .INIT_2B(256'h0000000000000000000000000000008100000000000000FFFFFFFFFFFFFFC000),
    .INIT_2C(256'h00000000000000000000000000000000000000008001000000C0000000310000),
    .INIT_2D(256'h08000000000000000FFFFFFFFFFFFFFC00000000010000000000000000000000),
    .INIT_2E(256'h000000000000000000000C000000020000000000001000000000700000000000),
    .INIT_2F(256'hFFC0000000001000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF),
    .INIT_31(256'h0000000000000000000000000000000000000000C00000000000000080000000),
    .INIT_32(256'h00000000000000000000000FFFFFFFFFFFFFFC00000000010000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__15_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000040000010040000200802000060440810080030000000200000001668),
    .INITP_01(256'h0000000000000000000000000000000000000007FC03FE00FF807FC01FF00000),
    .INITP_02(256'h161332681104800500000000000FF80100300000000000000000000000000000),
    .INITP_03(256'h00000000005B403FF00DEC01BE01758000000000000900400004D807098360D8),
    .INITP_04(256'h8010000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'hC8000000000020000000000CE0E0C8324C8327130CBB14C8004C000301804100),
    .INITP_06(256'h000000000000000000000000000000000000000000500C640415010C40506030),
    .INITP_07(256'h8330C82253355E1D30C01BA00058200910080004100000000000000000000000),
    .INITP_08(256'h0000000000012C00C24060B01824042603058000000000000402880004CC2C09),
    .INITP_09(256'h000102806DF80000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h406030180000000008000001042034D2C3D9234C93641650136B0A02750004C0),
    .INITP_0B(256'h000000000000000000000000000000000000000000000000000CA406210100C0),
    .INITP_0C(256'hCC2A6CF7B0EF6AD1B300BF00E05A0000E6D204980804EA100000000000000000),
    .INITP_0D(256'h000000000000000000100080404210180C050203158024000001000000000004),
    .INITP_0E(256'hC108200001D8C344500000000000000000000000000000000000000000000000),
    .INITP_0F(256'h87AC43F030DB1C70420000000000200C004CE0ECCD3358D3313D000065220C32),
    .INIT_00(256'h00000000000000000000000000000000000066DD66DDDD6666DDDD66DD666600),
    .INIT_01(256'h00000000000000000000000000000000000077EEEEEEEE000000008800000000),
    .INIT_02(256'h0000EE66FF00000000000000000000000000FFFF000000000000000000000000),
    .INIT_03(256'hEEDDFF00000000EE6677000000FF666600000000FF66EE00000000FF66660000),
    .INIT_04(256'h00000066DD6600000000000000EE556600000000000000666666000000000000),
    .INIT_05(256'hAA00000000DD66660000000000000000000000000000000000EEDD6600000000),
    .INIT_06(256'h223322AA2222AA22220022AAAA22AAAA0022AAAA220022AAAA00AA330000AA22),
    .INIT_07(256'h000000000000000000000000000000000022AAAAAAAAAA00AA22AAAAAA00AAAA),
    .INIT_08(256'h000000FFFFFFFF77FFFFFF770000000000000000000000000000000000000000),
    .INIT_09(256'hFFFF77FFFFFFFF77FF0000000000000000FFFF77FFFFFFFFFFFF000000000000),
    .INIT_0A(256'hFFFFFFFF77770000000000000000FFFFFFFF77FFFFFFFF000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000FF77FF),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'hAA22AAAAAAAAAAAAAA22BBDD0000000000000000000000000000000000000000),
    .INIT_14(256'hEEEEEEEE00000000008800007755555555555577FF000000008800000066AA33),
    .INIT_15(256'h00000000000000000088000000000000000000000000000000000000000066EE),
    .INIT_16(256'hEE2244FF000000DD22CC000000FF442255000000000000000000000000FFCC77),
    .INIT_17(256'h0088EEBB2233FF00000000FF44AADDFF0000FF33AA66FF0000FF33AAFF000000),
    .INIT_18(256'h008800007744AA33FF000000000077BB2233FF0000000000FF33AA33FF000000),
    .INIT_19(256'h00AA22AAAAAA22AA2222AAAAAA330000FFBBAA33FF0000000000000000DD55FF),
    .INIT_1A(256'h0022AA00AAAA220022AA22AA33AAAA33222200AA22AAAAAAAA3322AAAA00AAAA),
    .INIT_1B(256'h00000000000000000000000000000000000000000000000000000000000022AA),
    .INIT_1C(256'h3344BB333377FF0000000000000000FF44BBBBBB4433CCFFFF00000000000000),
    .INIT_1D(256'hBBBB77FF0000000000000000FFBB4433BBBB336677FF00000000000088EEEEBB),
    .INIT_1E(256'h000000000000000000774433BB4433BBEEFF0000000000000000FFDD33BBBB33),
    .INIT_1F(256'h000000000000000000000000000000000000000000000000AAAAAAAAAAAA2200),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'hFF0000008800000000CCAA99AAAA22AAAA22AAAA2222AA660000000000000000),
    .INIT_28(256'h000000000088667777EEEE00000000EEEE770000000000FF4422AA22AAAAAA44),
    .INIT_29(256'h0000000000000000EEDDAA66FFFF00000000000000000000000000000000FFFF),
    .INIT_2A(256'hAAEE44EEDD77AA22FF007755DDAABBDD66EECC55AA550000DDDDCC22DD000000),
    .INIT_2B(256'hEEFF0000FFBBAA22FF0000000000FFBBAAAAFF0000FFDDDDCC2266BBEE00FF33),
    .INIT_2C(256'hFFFFFF0000000000FF33336600000000FF332222FF00000000007733AA22FF66),
    .INIT_2D(256'hAAAAAAAA2222AAAA22AAAA22AAAA2222220022AA00AAAA0022220000773322AA),
    .INIT_2E(256'h00000000000000000000AAAA00AAAA2222AA3322AAAAAA22AA2222AA22AAAAAA),
    .INIT_2F(256'h99DDAACCFF000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h66FF00000000000000FFAA33AA2222AAAA33FF00000000000000FF5522AA22AA),
    .INIT_31(256'h0000000000FF6622AAAAAA33443344FF00000000008800FF44AA2222333344AA),
    .INIT_32(256'h00000022AA22AA224455AA990000000000000088FF3322AA22335544AA770000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'hAA22AA5500000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'hEE0000FF22AAAAAAAA22AAAA770000880000880000CC22AAAA22AA2244DD22AA),
    .INIT_3C(256'h000000880000000000FF66DD770000880066FFEE0000EE00000088EE77EEEE77),
    .INIT_3D(256'hAACCFFFF44CC44AA55FF000000000000000000FF5522BBFFDD66FF0000000000),
    .INIT_3E(256'h00FFCC55CCAADDBBCC6677BB2277227722772233FF7755AAEE224433BB5544DD),
    .INIT_3F(256'h770000000000FF33AAAAFF33AA668800FF33AAAA77000000000077AAAA227700),
    .INIT_40(256'h00AA22AA22330000FF33AAAAFFBB44EE0000FF66FF3322EE00000000FFAAAA33),
    .INIT_41(256'h0022AAAA223300AAAAAAAA0022AA990033AA22AA332222882222AAAAAAAA22AA),
    .INIT_42(256'h00000000000000000000000000008800000000000000AA220022AA00AAAA2222),
    .INIT_43(256'h000088000000FF55AA22AAAAAABB2255FF000000000000000000000000000000),
    .INIT_44(256'h00008877BB22AAAA2222BBAA66FF0000880000000077222222AA33AA22337700),
    .INIT_45(256'h7733AAAAAAAA55CCAA7788000000000000FFDDAAAA22AA2233AABBFF00000000),
    .INIT_46(256'h0000000000000000000000000000003322AA33AADDDDAAAA0000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0055332233FFCCBBFFFFFF7733AA226600000000000000000000000000000000),
    .INIT_4F(256'h000000000000000000000000660000FF22AA22AAAA223322FF00000000000000),
    .INIT_50(256'h2233DD77AA3366FF000000008800000000000000007744AA55FF0000EEEE0000),
    .INIT_51(256'hEE44663366AABB334455BBCC33CC5555CCCCCCAADD44DD00000000000000FF44),
    .INIT_52(256'hFF0000FFEE66FFBB2233FF0000FF44CCCCAA663366BBDDAAAA772277AAEEAA22),
    .INIT_53(256'hFFBBAA660000FFFFFFBB2233FF0000FF6666FFAAAAAAFF332277EE66FF33AAAA),
    .INIT_54(256'h0000AAAAAA332222AA223322AA00AAAAAA00FFFFEEBBAAAAFFBBAADD000055AA),
    .INIT_55(256'h00AAAAAA33AA220022AA22AAAA00AAAAAA0000222200AAAAAA00AAAA22002233),
    .INIT_56(256'h0000000000000000008800000000000000000000000000000000000088000000),
    .INIT_57(256'h0077AAAAAA2222AAAA337700880000000000FF55AAAA22AA2222AA55FF000000),
    .INIT_58(256'h22AA332222AA44FF00000000000000FF44AA22AAAAAAAA22DD77000000000000),
    .INIT_59(256'hAAAA22220000000000000000FF3322AA332233AA227700000000000000FFDDAA),
    .INIT_5A(256'h00000000000000000000000000000000000000000000000000000022AAAA2222),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h22AAAAAAFF00000000000000005522AADDDD332255EEBB66CCAA22DD00000000),
    .INIT_63(256'h77DD33AA22DDFF0077776677EEEE77EEEEEEEEEEEE7766EEFFEE66FF33AAAAAA),
    .INIT_64(256'h55BB55000000000000FF443333AADD44AAAAAAEE000000000000000000000000),
    .INIT_65(256'hDDAADDBBAA66337722EEAAAA66AAEE2277AA3333BBDDBB55AA4444CC44CCCC22),
    .INIT_66(256'h33AA7733AAEECCAA77BB33AAFFDD5577AA33FFAA3322776655FF4455CCAA66BB),
    .INIT_67(256'h773322AA77BB22EE0000DDAAFFAA336600555544FF3322AAFFDDDD77AA337733),
    .INIT_68(256'h228800000022AA00AAAA000000000000AAAAAA000088008844AAAA2200FF4444),
    .INIT_69(256'h00000000AAAA00AA220000000000223322AA00000000000000880000AAAAAA22),
    .INIT_6A(256'h44CCCCBBAA332255770000000000000000223322AA3300000000AAAAAAAA2288),
    .INIT_6B(256'hAAAAAA22777700000000000000FF4455CC44AAAAAAAAFF00000000000000FFDD),
    .INIT_6C(256'hAA7700000000008800FFEECCCC44BBAAAAAA447700000000000000FF55CC44CC),
    .INIT_6D(256'h00000000000000AAAA2222332222AAAA0000000000000088FFAAAAAA22AA2222),
    .INIT_6E(256'h0088000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000080000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000080000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000800000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h2233AA774422AA66000000000000000000000000000000000000000000000000),
    .INIT_76(256'h00000000000088FFFF77EEDD33AA22AAFFFF00000000FFFF005522AA6655AAAA),
    .INIT_77(256'h7777000000000077EE66EE6677CCAAAAAA2255EE000000000000000000000000),
    .INIT_78(256'hCC55BBCCAA5544554444BBAA66AA550000000000FF55AA2222225533AA223322),
    .INIT_79(256'h22AAFF33AA664455CC225533DDBB6633AAEE22EEAA66AAAAEEAA66AAEE22AAAA),
    .INIT_7A(256'hFF33AA22FF33AA7722AAFF3322AA77BBAADD4433FFAAAAAAFF33AAFF22AAFF33),
    .INIT_7B(256'h00008800AAAAAAAAAA7722AAFF3322AAFFBB336600006622FF3399EEFFFF44AA),
    .INIT_7C(256'h000000000000000022AAAAAAAA00000000AA3322AAAA0000000000AA99332200),
    .INIT_7D(256'hAA330000000099AAAAAAAA0000000000222200AAAA00000000AAAA22AAAA0000),
    .INIT_7E(256'hAAAAFFFF00000000FFFFEEFFFFCC5533AA22AA55FFFF00000077FFFFAAAA2222),
    .INIT_7F(256'hFF00000000FFFF77FFEE55CC333322AA66FF0000000077FFFFFFFFDD4444AAAA),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__15_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000001)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__15 
       (.I0(addra[13]),
        .I1(addra[14]),
        .I2(addra[12]),
        .I3(addra[15]),
        .I4(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__15_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__16_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h00007C0FF0000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000004808E00000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h00000000000078E0000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000003800000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h00000000000000000000000000006101048000100010805ACE00000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000018000),
    .INITP_0A(256'h9DE387F9FF0FE1FFFDE0E0000000000000000000000000000000000000000000),
    .INITP_0B(256'h00000000000000000000000000363E1C7E7C0FCFC7C667E00000000000000003),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'hF7CFC7C0FEF83C7E3E00000000000000007DCE19FFAFF3E78FF79E0E00000000),
    .INITP_0E(256'h00000000000000000000000000000000000000000000000000000000000003B7),
    .INITP_0F(256'h0000007FE18E0103BEF98FBDE0E000000000000000000154C400000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h8888888888880000888888888888888888888888888888888888888888880000),
    .INIT_05(256'h0000000088888888008888888888888888888888888888888888888888888888),
    .INIT_06(256'hFFFFFF5500880000008800000000000000000000000000000000000000000000),
    .INIT_07(256'h888888008888000088880000000088000099FFFFFF550088000000CCFFFFFFFF),
    .INIT_08(256'h0000880000008888880000888888008800000000880088000000888800000000),
    .INIT_09(256'h0000000000000088880000000000008888000000000088880000888888880088),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h8800008800000000000000880000000000000000000000000000000000000000),
    .INIT_0C(256'h0000880000000088888888888888000000008888888888000088880088008888),
    .INIT_0D(256'h0088880000008888888888000000008888880000888888888888880000000088),
    .INIT_0E(256'h0000000000000000000000000000000000000000880000000000000088000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000088000000),
    .INIT_17(256'h8888888888888888880000000000000000000000000000000000000000000000),
    .INIT_18(256'h8888888888888888888888888888888888888888888888888888888800888888),
    .INIT_19(256'h0000000000000000000000000000000088888888008888888888888888888888),
    .INIT_1A(256'h774400880022CC66FFEE66EEFFFFFF4400888800008800000000000000008888),
    .INIT_1B(256'h888800888800000088880088880000880000888800888888008800880011EEEE),
    .INIT_1C(256'h8888008888008800000000888888000088008888888888880088880088888888),
    .INIT_1D(256'h0000000000000000000000000000000000000088880000008888888800000088),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000008888000088880000000088880000008888000000000000),
    .INIT_20(256'h0088880000888800880000880000888800008888880000000088000000000088),
    .INIT_21(256'h8800000000888888880000880000000088008800000000000000008800000088),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000088),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000880000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h8888888888888888888888888888888888888888888888000000000000000000),
    .INIT_2C(256'h8888888888888888888888888888888888888888888888000000888888888888),
    .INIT_2D(256'h0088000000000000000000000000000000000000000000000000000088888888),
    .INIT_2E(256'h000000000000000000880000000000880033FFFFFFAA008877FFFFCC00888800),
    .INIT_2F(256'h0000000088880000000000000000000088008888000000000000000088008800),
    .INIT_30(256'h0000000000000000000000000000000000000000888800000000008800000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000888888888800000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000888800888888888800888800008888000088888800888888888888880000),
    .INIT_34(256'h880011BBBB220088888800888800008888880088000000008888000088888800),
    .INIT_35(256'h0000000000000000000088880000000000000000880088888800888888888800),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000808080000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h8888880000000000000000000000000000000008080000000000000000000000),
    .INIT_3F(256'h8888000088888888888888888888888888888888888888888888888888888888),
    .INIT_40(256'h8800000000000088888888888888888888888888888888888888888888888888),
    .INIT_41(256'hBB11008877FFFFCC008800000088000000000000000000000000000000000000),
    .INIT_42(256'hCCCCCCCCCCCC448800880011CCCCCCCCBBCCCCCC2288CCCCCC3300115566FF66),
    .INIT_43(256'h008844CCCCBB000011CCCCCCCCCCCCCC88008844CCCCCCCCCCCCCC1100000088),
    .INIT_44(256'h0000000000000000000000000000000000BB55CC4400AA55CCCC8822CCCCCC99),
    .INIT_45(256'h0000000000000000880000000000008800000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000088880088000000000000000000000000000000880000000000000000),
    .INIT_48(256'h000000000000000000000000880022FFFFCC0088000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000008888880088880000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000808080808000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0808000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h8888888888888888008888888888000000000000000000000000000000000808),
    .INIT_53(256'h8888888888888888888888888888880000888888888888888888888888888888),
    .INIT_54(256'h0000000000000000000000888800000000000088888888888888888888888888),
    .INIT_55(256'h3311FFFFFF550011FFFFFFCC0000888877FFFFCC008800000088000000000000),
    .INIT_56(256'hFFFFFFFFFFFFFF9900880088FFFFFFFFFFFFFF8800880099FFFFFFFFFFFFFFFF),
    .INIT_57(256'hFF0044FFFFFF8833FFFFFFAA008877FFFF66000088FFFFFFFFFFFFFF990088FF),
    .INIT_58(256'h000000000000000000000088000000000000000000000000000088880066FFFF),
    .INIT_59(256'h0000000000000000000000000000000000000000888800000000888888000000),
    .INIT_5A(256'h1111880000111111111188008811118888111188881111111111118800000000),
    .INIT_5B(256'h8811111111111100001111111111880088000000111111111111880011111111),
    .INIT_5C(256'h8888888800000000008811118811118800881111111111880088AAFFFF558888),
    .INIT_5D(256'h0000000000000000000000000000000000000000880000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000008080808080000008888000000008888000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000088000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000808080808080000000000000000000000000000000000),
    .INIT_66(256'h8888888888888888888888888888888888888888888888888888888800000000),
    .INIT_67(256'h8888888888888888888888888888888888888888008888888888888800000088),
    .INIT_68(256'h0088000000000000880000000000008800000000000000008800000000000000),
    .INIT_69(256'hBB004466FFFF777777FFFFFFAA11FFFFFFCC0011FFFFFFCC0088008877FFFFCC),
    .INIT_6A(256'hDDFFFF7777777777110011667777777777FFFFDD4400BBDDFFFF77EEEEFFFFDD),
    .INIT_6B(256'h0000000088888888005577777755EEFFFFFF88AAFFFFFFAA0088EEFFFF6600BB),
    .INIT_6C(256'h0000000000000000888800000000000000000000000000000000000000000000),
    .INIT_6D(256'h88EEFFFFFFFFFF22008888008800888888880000000000000000000000000000),
    .INIT_6E(256'h55FFFFFFFF771100DDFFFFFFFFEE888800CCFFFFFFFFCC0022FFFF99DDFFDD00),
    .INIT_6F(256'hFFFF771100DDFFFFFFFFEE001177FFFFFFFF66008877FFFFFFFFAA0000888800),
    .INIT_70(256'h000000000000000088880000000088880088008800AAFFFF1166FF550099FFFF),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h8080000080000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h8888888888888888888888888888888808888088880000008080008080000080),
    .INIT_7B(256'h0000000000000000000000008888888888888888888888888888888888888888),
    .INIT_7C(256'hFFFFFFCC0000008877FFFFCC0088000000000000000000000000000000000000),
    .INIT_7D(256'h7700DDFFFFFF990099FFFFFFDD00EEFFFFEE8800BBFFFFFF3388FFFFFF550011),
    .INIT_7E(256'hFFFFFFAA0088EEFFFF660066FFFF778800000000888800118800000088EEFFFF),
    .INIT_7F(256'h000000000000000000000088000000000000000088888888EEFFFFFFFFFF1133),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__16_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000020)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__16 
       (.I0(addra[15]),
        .I1(addra[14]),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__16_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__10_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h000000000000000000000000000000007E6639756703F3FDF3D5E00000000000),
    .INITP_01(256'h000000FFFFFFFFFFD8D0C0000000000000000000000000000000000000000000),
    .INITP_02(256'h000167739E7CE00545662FEE000000000000000007DE19FD03EBEF98F7DE0600),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000001CE19FEDFF3EF98F797CE00000000FFFFFFFFFFC8E4F00000000),
    .INITP_05(256'h00000000000000000000000000000000000000028719ED060E4E4A607EE00000),
    .INITP_06(256'h878E00000000FFFFFFFFFFC7E7C0000000000000000000000000000000000000),
    .INITP_07(256'h000000000033B39E4760ECFC7A07D6000000000000000001DE19F39FE3C718FB),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'hE000000000000000001DFF9FB9FFBD798FF80CE00000000FFFFFFFFFFFF8F800),
    .INITP_0A(256'h00000000000000000000000000000000000000000000077E31C4FE03E3F3F0C7),
    .INITP_0B(256'hFE18F780FE00000000FFFFFFFFFFCFDFB0000000000000000000000000000000),
    .INITP_0C(256'h000000000000000027C38E43603F7D36042E000000000000000001CFF1FEDFF8),
    .INITP_0D(256'hFFFA000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h000000E000000000000000001CFF1FF03F8FE18F380FE00000000FFFFFFFFFFE),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h3377FF558844DDFFFFFF6611EEFF6633DDFFFF22008888008800880088000000),
    .INIT_02(256'hEEFF55AA44FFFFBB00008800AA44BB3355FF7799AA44BB33DDFF771155FFEE33),
    .INIT_03(256'h0099BBDDFFFFFFCC2277FFCCAA55FFEE222255FFFF66AA11EEFFDDBBEEFF6611),
    .INIT_04(256'h0000000000000000000000000000000000000000888800000000888800008800),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'hFFFF008000008008000000000000808880800000000000000000000000000000),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'h000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF),
    .INIT_10(256'h33FFFFFFAA11FFFFFF550099FFFFFFCC00000088EEFFFF440088000000000000),
    .INIT_11(256'h0000880000CCDDDD55FFFFEE550055FFFFFF110011FFFFFF550066FFFF660000),
    .INIT_12(256'h88008800AA3355FFFFFF8833FFFFFFAA0088EEFFFF6600DDFFFFFFDD55556633),
    .INIT_13(256'h0000000000000000000000000000000000000000000088880000000000000000),
    .INIT_14(256'h0088880000008800000000000000000000000000000000000000000000000000),
    .INIT_15(256'h00994444EEFF6611EEFF7744CC77FFEE0000114477FFDD99FFFFBB00BBFFFF22),
    .INIT_16(256'hFF440099FFFFBB0066FFDD11FFFF664455FFFF44008888880088CC4466FFEE99),
    .INIT_17(256'h88000000000000888800880000000011CC77FFCC22FFFF5544DDFFFFAA0099FF),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080080909090000008081992A2281000000),
    .INIT_22(256'h00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'h77FFFFCC00880000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h99FFFFFF5500EEFFFFEE880033FFFFFFAA11FFFFFFCC0011EE77FFDD33110088),
    .INIT_25(256'hFF6600DDFFFFFFFFFFFFFF6633998833BBFFFFFFFFFFFF99000055FFFFFF1100),
    .INIT_26(256'h00008888000000000000000000000088000044FFFFFF88AAFFFFFFAA0088EEFF),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h66FFDD11FFFFBB00BBFFFF220088880088008800000000000000000000000000),
    .INIT_29(256'h008888003377FFEE66DD0000BB77FFEE665500005566DD66EEFFFF6600880000),
    .INIT_2A(256'h99EE6666EE77FFFF220022FFFFCC0099FFFFBB00DDFF661166666666EEFFFF44),
    .INIT_2B(256'h0000000000000000000000008800000000000088008800888888880000EEFFCC),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h010000808122C3BB120180800000000000000000000000000000000000000000),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF880989919191),
    .INIT_36(256'h00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hFFCC008800BBFFFFFFAA000077FFFFCC00880000000000000000000000000000),
    .INIT_38(256'h11111100000055FFFFFF880088FFFFFFCC0066FFFFEE000033FFFFFF3388FFFF),
    .INIT_39(256'hFFFF8833FFFFFFAA0000EEFFFF6600DDFFFF779988AAFFFFFF4400FFFFFF7711),
    .INIT_3A(256'h000000000000000000000000000000880000000000000000888800000000CCFF),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h001199999966FF660088000066FFDD11FFFFCC11CCFFFF220088880088008800),
    .INIT_3D(256'h66FF660000999911AAFFFF440088880055FF772299992200DDFF779999992288),
    .INIT_3E(256'h888800000088000088EEFF55008899991144FFFFAA0033FFFFCC0099FFFFBB00),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'hFFFFFFFFFFFF809111918989890888090919AABBBB1A80800000000000000000),
    .INIT_49(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4A(256'h00000000000000000000000000000000000000000000000000000000FFFFFFFF),
    .INIT_4B(256'hFFEE880033FFFFFF3311FFFFFFCC00880022CCEEFFDDCCCCFFFFFFCC00880000),
    .INIT_4C(256'h33CCFFFFFF4400FFFFFFFFBB33BB33BB3300DDFFFFFF44BB44FFFFFF550066FF),
    .INIT_4D(256'h0000000000888800880044FFFFFF8833FFFFFF55BBBB77FFFFEE00DDFFFFFFBB),
    .INIT_4E(256'h0000000000000000000000880000000000000000000000000000000000000000),
    .INIT_4F(256'hFFFFFF2200888800880088000000000000000000000000000000000000000000),
    .INIT_50(256'hFFFFFF2200CCFFFFFFFFFF990066FFFFFFFFDD118888880077FF660022FFFFFF),
    .INIT_51(256'h00CCFFFF44880099FFFF440066FFEE0011FFFFFFFFFFBB88888800008844FFFF),
    .INIT_52(256'h00000000000000000000000000008888888800888877FF550033FFFFFFFFFFAA),
    .INIT_53(256'h0000000000000000000000000000000000000000080000000000000000000000),
    .INIT_54(256'h0000000008000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'hDC22800000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF89918989888889080809108899CB),
    .INIT_5D(256'h0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5E(256'hFFFFFFFFFFFFFFCC008800000000000000000000000088880000000000000000),
    .INIT_5F(256'hFFFFFFFFFFFFFF44220066FFFF66000033FFFFFFAA11FFFFFFCC0088000000CC),
    .INIT_60(256'hFFFFFFFF44AA00DDFFFFFFFFFFFFFFEE33990033BB77FFFFFFFFFFFF77002244),
    .INIT_61(256'h0000000000000000000000000000000088000088880044FFFFFF88AAFFFFFFFF),
    .INIT_62(256'h8800000000000088000000000000000000000000000000880000000000000000),
    .INIT_63(256'h88000000AA33228800AA33AA55FFFF2200888800880000000000000000000088),
    .INIT_64(256'hAA331100008800880088333333333311001133333333AA1100AA3333AA339900),
    .INIT_65(256'h00AA3322001133333333AA000022333311008888333399002233AA0088AA3333),
    .INIT_66(256'h0808000000000000000000000000000000000000000000000000000000008800),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000008080000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h8989888988888889898991BBCC1A808000000000000000000000000000000000),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0089),
    .INIT_71(256'h0000888800000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hAA88FF77FFCC0088008800CCFF777777FF77FF44008800000000000000000000),
    .INIT_73(256'h0066FF77777777FFDD0000887777777777FF7788000066FFFF66000033FF77FF),
    .INIT_74(256'h880044FF777788AAFFFF77777777777788000055FF77FF77FF77FF5500008800),
    .INIT_75(256'h0000000000000000000000008800000000000000000000000000000088008800),
    .INIT_76(256'h8800000000000000000088888888000000008888000000000000000000000000),
    .INIT_77(256'h000000008800000000000088888888880000000088000000BBFFFF2200888800),
    .INIT_78(256'h0000008800000000000000000000888888008800880000000000000088000000),
    .INIT_79(256'h0000000088880000880000880000000088000000000000008800000000880000),
    .INIT_7A(256'h0000000000000000000000000808080000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000008080800),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__10_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000020)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__10 
       (.I0(addra[15]),
        .I1(addra[14]),
        .I2(addra[13]),
        .I3(addra[12]),
        .I4(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__10_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized12
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__6_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFE07F0FC1C7380FE00000000FFFFFFFFFFFFFF80000000000000000000000000),
    .INITP_01(256'h00000000000000000000000000000000000000000E00000000000000000187F0),
    .INITP_02(256'hFFFFFEFFFF000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h00000000000000000000000000000000000000000000000000000000000FFFFF),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h000000000000000000000000000000FFFFFFFFFFC7FF90000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000001800018000003800000000000000),
    .INITP_07(256'h0FFFFFFFFFFEBFEB000000000000000000000000000000000000000000000000),
    .INITP_08(256'h00000003000008000003800000000000000000000000000000FE000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h000000000000000000001FF4000000000000FFFFFFFFFFD1FDC0000000000000),
    .INITP_0B(256'h000000000000000000000000000000002020042800798235DC40007400000000),
    .INITP_0C(256'h0000000FFFFFFFFFFC6FB8000000000000000000000000000000000000000000),
    .INITP_0D(256'h0003C7FF7E7E0FBB1F3FFE1FCFC00000000000000000000000000000F7800000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h000000000000000005A017604C0038000000000000FFFFFFFFFFC7FF00000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFF080988898989888888888989919AA219898000000000),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'h0000000000000000000000000000008800000000000000000000000000000088),
    .INIT_06(256'h8800881111118888881111118800111111888888880088881111111111111188),
    .INIT_07(256'h1111111111111188008888008811111111111111880088881111111111118888),
    .INIT_08(256'h0000000000000000008888000088881111888888881111101111101188888888),
    .INIT_09(256'h0000000000000000880000000000008800000088880000000000000000000000),
    .INIT_0A(256'h8800880033777722000000000088008800000000000000008888888800000000),
    .INIT_0B(256'h0088880088008888008888888800880000880088888888008888008888888888),
    .INIT_0C(256'h8888880088008888880000888888880088888800888888888888008800008800),
    .INIT_0D(256'h0000000000000000000000000088880000888888008888000088888800880088),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000080808),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000008888000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h8800000000000000000000000000000000008888888888880000000000008888),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h8989891111918800000000000000000000000000000000000000000000000000),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF08090991898990888889),
    .INIT_18(256'h000000000000000000000088FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'h8800000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000888800000000000000000088000000000000000000008888008800000000),
    .INIT_1B(256'h0000000000880000008800000000000000000000880000880000000000000000),
    .INIT_1C(256'h0000000000000000000000880000000000000000008888888800000000000000),
    .INIT_1D(256'h0000000088000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0088008800008800888800000088888800888800008888888800880000000000),
    .INIT_1F(256'h8888008888888888880000000000888800008800888800880088888888880088),
    .INIT_20(256'h0000008800888800000088000088000000880088000088880088888800008888),
    .INIT_21(256'h0000000000000000000008080000000000000000000000000088000088000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h8800000088000000000000000000000000000000888888888888888800000000),
    .INIT_24(256'h0000000000000000000000008888888888888888888888888800000088888888),
    .INIT_25(256'h0000000000000000000000008888888888888888000000888888888800000000),
    .INIT_26(256'h8888888800000000000000008888888800000000000000000000000000000000),
    .INIT_27(256'h8888888800000000000088888888000000008888000000000000000000000000),
    .INIT_28(256'h0000888800000000000000008888888888888888888800000000000088888888),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000088880000),
    .INIT_2A(256'hFFFF000089918988908888898989898909800080000000000000000000000000),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'h000000000000000000000000000000000000000000000088FFFFFFFFFFFFFFFF),
    .INIT_2D(256'h4444CCAA00888800000000888888008888888888888888008888888800000000),
    .INIT_2E(256'h00880000888888888888880000880000880000880000888888880022CC444444),
    .INIT_2F(256'h8888008888880000008888888800008800888888880000880000888888008888),
    .INIT_30(256'h0000000000000000000000000000000000888800000000880000008800000000),
    .INIT_31(256'h0022FFFFBB008888888888000000000000000000000000000000000000000000),
    .INIT_32(256'h88888888008888DDFF6600888800888888888888000000880000888888880088),
    .INIT_33(256'h888800008800888888880088880088000088EEFF550000888888008888008888),
    .INIT_34(256'h0088000000000000008888888888888800008888888888888888888800888800),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000088000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000898988888889898989898908800000),
    .INIT_3F(256'h00000088FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_40(256'h0000000088888888000000008800000000000000000000000000000000000000),
    .INIT_41(256'h0088880088000044FFFFFFFFFFFFFF4400008800888888000000888800000000),
    .INIT_42(256'h8800888888000000000000888800880088000088000088888888008800008888),
    .INIT_43(256'h0000008800000000000000008888000000888888000000000000008888880000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000008888),
    .INIT_45(256'h8800880088000000000000880022FFFFBB000000888888880000000000000000),
    .INIT_46(256'h66000000000000000088000000000000880000EEFFEE00000000000000008800),
    .INIT_47(256'h00000000000000008800000000000088000000000000008888888800000077FF),
    .INIT_48(256'h0000000000000000000000000088880000008800880000000000008800880000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000088880000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000008888888888888888000000000000000000000000),
    .INIT_51(256'h8889918988898908000000000000000000000000000000000000000000000000),
    .INIT_52(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000080888810),
    .INIT_53(256'h00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_54(256'h0000000000000000880000000000888800000000008888888888000000000000),
    .INIT_55(256'h88000000880000888800008888888888888800BBFF7777FF7777FF5522110088),
    .INIT_56(256'h8888000088880088888800888800880000880088000088000000888888888888),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000008800000000),
    .INIT_58(256'h8888888800000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'hFF77CC113355CCCCCCBB0000880000000044CCCCCC440000AADDFFFF66BB0088),
    .INIT_5A(256'hCCCC2200880088002255FFFF77442255BB0044CC220011CCCCCC55330099CC77),
    .INIT_5B(256'h00AA55CCCCCCAA000000BBCCCC2244CCCCCC44880033CCCCCCCC110033CCCCCC),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000088880000008888),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000888888000000000000000088888888888888880000000000000000),
    .INIT_5F(256'h8888888888888888888888888888888800000000000000008888880000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000888888),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000008888000000000000000000000088000000000000888888888888888888),
    .INIT_63(256'h8888000000008888000000000000000088888888888888888800000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'hFFFFFFFFFFFF0000800088908989898988888880800000000000000000000000),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'h00888888888800000000000000000000000000000000000000000000FFFFFFFF),
    .INIT_68(256'h1111111188DDFFFFFF8800880088888888888800000000000000000000000000),
    .INIT_69(256'h0000000000880000000000000000000000000000880000000000000000008888),
    .INIT_6A(256'h0000000000008888000000000000000000000000000088880000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'hFFFF448855FFFFFFFFDD00888888880000000000000000000000000000000000),
    .INIT_6D(256'h4488CCFFFFFFFF550022FFFFFFFFFF99DDFFFFFFFF77330000880011BBFFFFFF),
    .INIT_6E(256'hAA77FF77FFFF990066FFFFFFFFFFDD2200888800BBFFFFFFFFEEBBFF7744FFFF),
    .INIT_6F(256'h00000000000000000088000022EEFF7777FF662288BBFFFFFFFFFFFFFFFFFF11),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h8000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000008080880989898989888080),
    .INIT_7A(256'h0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'h0000008888000088000000000000000088000000000000000000000000000000),
    .INIT_7C(256'h00336666DDDD6666CC008888000000000022BB77FFEECC008888000000000000),
    .INIT_7D(256'h88880000885566DDDD66DD66CC00008800AAEEDD66DD99DD66DDDD666666AA00),
    .INIT_7E(256'h0000000000000000000000000000000000000000000088880088888888888888),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__6_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000080)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__6 
       (.I0(addra[13]),
        .I1(addra[15]),
        .I2(addra[12]),
        .I3(addra[14]),
        .I4(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__6_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized13
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__5_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h000000000000000000000000000000000000007AF75ECD20787F6082F1C63000),
    .INITP_01(256'hE000000000000FFFFFFFFFFC3710000000000000000000000000000000000000),
    .INITP_02(256'h0000000007FF777EE30383FE08BC1CE3800000000000000000007F83FFE3F800),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'hEE300000000000000000000F1CE7DCE51F8E000000000000FFFFFFFFFFC02000),
    .INITP_05(256'h0000000000000000000000000000000000000000000002F7677E20307FB0C441),
    .INITP_06(256'hDE01F9E000000000000FFFFFFFFFFC1040000000000000000000000000000000),
    .INITP_07(256'h0000000000000007FF77F7E70307F7F87F1F7A00000000000000000000F3CF79),
    .INITP_08(256'hC028000000000400000000000000000000001003400000000000000000000028),
    .INITP_09(256'h7707D020400000000000000000000FFCF79DFF9F8E000000000000FFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFF001FFFFFFFFFFFFFFFFFFFFFFF80000000000000007EA1F98F207054),
    .INITP_0B(256'hFDEF79DEF9F7E000000000000FFFFFFFFFFFFFFC000000003FFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFC0000000000000000000000E40000000000000000000000000000000001),
    .INITP_0D(256'hFFFFFFFFFFC00000001FFFFFFFFFFFFFFFFFFFFFFFEC0FFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hE000000000000000000000000000000000003CF79DE3DF7E000000000000FFFF),
    .INITP_0F(256'h00000000000027C0780000000000000000000057E00000000000000000000007),
    .INIT_00(256'h55FFFF1100000099FFFF440044FFFFAA00AAFFFF440000000000000000000000),
    .INIT_01(256'h881177FFDD00880044FFFFFF3333FFFFAA119988008800EEFFEE888800889988),
    .INIT_02(256'h99FFFFBBAAFFFF99CCFFEE1177FF558811990000DDFFEE1188EEFF6600000088),
    .INIT_03(256'h000000000000000000000000000000000088000000880000EEFFDD119966FF66),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000888888888888000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h8888888888888888000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000088888888880000000000000000),
    .INIT_0C(256'h0080808009098911090800000000000000000000000000000000000000000000),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000),
    .INIT_0E(256'h0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFDD0088000000880000000000008888000000888800000000000000000000),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFF33008844FFFFFFFFFFFF7700000000000000000000EE),
    .INIT_11(256'h880000000000000000880000000088888877FFFFFFFFFFFFDD8888880044FFFF),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000008800008888),
    .INIT_13(256'hBB00888800000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h888800EEFFEE880011CCFFFFFF77228800880099FFFF4400BBFFFF2200AAFFFF),
    .INIT_15(256'hDDFF778888EEFFDD00880088008877FFDD0088000022FFFF3333FFFFFFFFFF44),
    .INIT_16(256'h00000000EEFFFFFFFFFFFFDD99FFFFBBAAFFFF99CCFF7711EEFFFFFFFF779900),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000088880000),
    .INIT_18(256'h8888888800000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_1A(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_1B(256'h0000000000000088888888888888888888888888888888888888888888888888),
    .INIT_1C(256'h8888888888888888888888888888888888888888888888888888888800000000),
    .INIT_1D(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_1E(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000088888888),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFF00000000000000088910800080000000000000000000),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'h0000000000000000880000000000000000000000000000000000000000000088),
    .INIT_23(256'h4400001199119999110088EEFFFFDD0088888888000000000000000000000000),
    .INIT_24(256'hCCCC66FFFFFFAA8877FFFFEECC77FFFFFF5566FFFFFFAA8877FFFF66CC55CC55),
    .INIT_25(256'h88000000000000880000000000000000000000000088000088000044FFFFFFDD),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'hFFFFBB0033FFFFAA00AAFFFF4400888800000000000000000000000000000000),
    .INIT_28(256'h0099FFFFBB33FFFF332277FF66000066FF770000EEFFEE222211000000880099),
    .INIT_29(256'hCCFF7788EEFFDD11CCFFFF9955FF770000EEFF6600880088000077FF66008888),
    .INIT_2A(256'h000000000000000000000000008888882222222222EEFF6699FFFFBBAAFFFF99),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000088000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000008800880088880000880000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000880000880000880000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000800988),
    .INIT_35(256'h000000000000000000000088FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'h8800000000000000000000000000000000000000880000000000000000000000),
    .INIT_37(256'hFFFFAA11FFFFFFCC00888888008800BBFFFFFFFF33008877FFFFDD0088888888),
    .INIT_38(256'h00000000008800CCFFFFFF99000033FFFFFFAA88FFFFFF5500DDFFFF7700AAFF),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h4477FF5555DDDD110088001155FF77DDEEFFDD1133EEFFEEAA00880000000000),
    .INIT_3C(256'h000000002266FF77440000880099FFFF3333FFFF6655FFFFBB11DDFFFF448800),
    .INIT_3D(256'h55FF77BB99FFFFBBAAFFFF99CCFF771177FF7755EEFFDD11DDFFFF6666FF77BB),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000008888888800BBDD55),
    .INIT_3F(256'h8888000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA33AA11000000),
    .INIT_41(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_42(256'hAA33AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_43(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA11008888888800008800001133),
    .INIT_44(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_45(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_46(256'h00000000000000000000000088008888000088880011AAAAAAAAAAAAAAAAAAAA),
    .INIT_47(256'hFFFF000000000000808080880080000000000000000000000000000000000000),
    .INIT_48(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'h000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF),
    .INIT_4A(256'h330000EEFFFFDD00888800888800000000000000000000000000000000000000),
    .INIT_4B(256'hFFFFFF5500DDFFFFFF88AAFFFFFFAA11FFFFFFFFFFFFFFFF990000BBFFFFFFFF),
    .INIT_4C(256'h00000000000000000000000000000000888800CCFFFFFFFFFFFFFFFFFFFFAA88),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000880000000000000000),
    .INIT_4E(256'hCCFFEE2200888888000000000000000000000000000000000000000000000000),
    .INIT_4F(256'hEE7777BB00997777CC000000003377777777EE1100008800006677EEEE668800),
    .INIT_50(256'h77668800DDFFFF77EEEE330088880000227777BB008888880011EE77AA33EEEE),
    .INIT_51(256'h0000008888888888005577777777BB0099EE77AA22EEEE11BB77DD11DDEEEE77),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'hFFFFFFFFFFFFFFFF990000888800008800000000000000000000000000000000),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_56(256'h00000000000088888800AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBB),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_59(256'h0022FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000008800880000),
    .INIT_5B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0008),
    .INIT_5C(256'h00000088FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h55DD77FF776600BBFFFFFF338899BB77FFFFDD00880000000000000000000000),
    .INIT_5F(256'hDD555555DD5566FFFFFF3388FFFFFF5500DDFFFF7700AAFFFFFFAA11FFFFFFEE),
    .INIT_60(256'h00000088000000000000000000000000000000000000000000000000008800BB),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h8800008888000000000088000000000088000000000000000000000000000000),
    .INIT_63(256'h8800000000000000000000000000008888000088000088888800000000000088),
    .INIT_64(256'h00000000000088008800000000008800DDFF7788881188880000880088000088),
    .INIT_65(256'h0000000000000000000000000000000088888888008800000000008800000088),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h777777777777777777777777777777777777FFFF339988880000880000000000),
    .INIT_68(256'h7777777777777777777777777777777777777777777777777777777777777777),
    .INIT_69(256'h7777777777777777777777777777777777777777777777777777777777777777),
    .INIT_6A(256'h777777777777777777FFFF4411110088880000001199BBFFFF77777777777777),
    .INIT_6B(256'h7777777777777777777777777777777777777777777777777777777777777777),
    .INIT_6C(256'h7777777777777777777777777777777777777777777777777777777777777777),
    .INIT_6D(256'h0000000000000000008800119933FFFF77777777777777777777777777777777),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFF88880000000000000000000000000000000000000000),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'h00000000000000000000000000008888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'h8800000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'hFF88AAFFFFFFAA11FFFFFF440000DDFFFFFF88BBFFFFFF110055FFFFFFFF5500),
    .INIT_73(256'h00000000000000000088880000880000880033FFFFFFAA88FFFFFF5500DDFFFF),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000880000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000888800888800880000000088888800880000880088880088000088000088),
    .INIT_77(256'hFFFFDD0088000088000088000000880000000088000000880088880088888888),
    .INIT_78(256'h000000880000880088008800008888880000008888880000000088888855FFFF),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000088),
    .INIT_7A(256'hFFFF330088880000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h88888888888888888888888888888888888888888888888888118811881177FF),
    .INIT_7C(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_7D(256'hCCFFFFFFDD888888888888888888888888888888888888888888888888888888),
    .INIT_7E(256'h888888888888888888888888888888888888118888DDFFFFFF55000000888800),
    .INIT_7F(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__5_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000020)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__5 
       (.I0(addra[15]),
        .I1(addra[12]),
        .I2(addra[14]),
        .I3(addra[13]),
        .I4(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__5_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized14
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h000000BFCF79CFF9FF4000000000000FFFFFFFFFFFFFFC00000001F800000000),
    .INITP_01(256'h00000000001E0000000000000000000000420000000000000000000000000000),
    .INITP_02(256'h00FFFFFFFFFFFFFFC00000001E00000000000000000000003C07000000000000),
    .INITP_03(256'h00000000000000000000000000000000000000000FF9F3BFFF1FE00000000000),
    .INITP_04(256'h00000000000000000000C0600000000000000000000000400000000000000000),
    .INITP_05(256'h00000000000042084A2008000000000000000FFFFFFFFFFFFFFC000000018000),
    .INITP_06(256'h0000000000000000060000000000000000000000000000000000000000000000),
    .INITP_07(256'h00000000FFFFFFFFFFFFFFC00000001C00000000000000000000000C06000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h01C00000000000000000000000C0600000000000000000000000400000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000FFFFFFFFFFFFFFC000000),
    .INITP_0B(256'h0000000000000000000000040000000000000000000000000000000000000000),
    .INITP_0C(256'h00000000000000FFFFFFFFFFFFFFC00000001C00000000000000000000000C06),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h00000001C00000802000000000004200C0600000800000000000000000400000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFC),
    .INIT_00(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_01(256'h000000000000000000000000000000008800888888000033FFFFFF7711888888),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00080000000000000000),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'h00000000000000000000000000000000000000000000000000008888FFFFFFFF),
    .INIT_05(256'hFFFFFF7777FFFF77661100008800000000000000000000000000000000000000),
    .INIT_06(256'h7777AA88FFFFFF5500DDFFFF7788AAFFFFFFAA88FFFFFFFF7777FFFF776600BB),
    .INIT_07(256'h00000000000000000000000000000000000000000000880011EE7777777777FF),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h8888008888000088008888000000000000000000880000000000000000000000),
    .INIT_0A(256'h0088880000008888000088008888000088000000880000008800000000888800),
    .INIT_0B(256'h8800888888008888009944444444330000888800888888000088000088000088),
    .INIT_0C(256'h0000000000000000000000000088000088880000880088888888008888000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h00000000000000000088EEFFFFFF330088008800000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h00CCFF77FF55008888008800CCFF77FFCC000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000880088),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h888800BBFFFFFF66000000880000000000000000000000000000000000000000),
    .INIT_15(256'hFFFF880800000000000000000800000000000000000000000000000088008800),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'h0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'h0000000000000000000000000000000000000000008800000000000000000000),
    .INIT_19(256'hFFFFFFFFFFFFFFFFAA0000BBFFFFFFFFFFFFFFCC008800888800000000000000),
    .INIT_1A(256'h0088000011FFFFFFFFFFFFFFDD000099FFFFFFDD0066FFFFFF8833FFFFFF3311),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h8800000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0088008800008800008800008800888888888800888800880000000000000000),
    .INIT_1E(256'h0000008800008888008888000088008800008800888800880088008800008800),
    .INIT_1F(256'h0088880000880000880088880000000088008800880000000000008800008800),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000088888800008800),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h88888888880000000000000000000000000000888800888866FFAA0088000088),
    .INIT_23(256'h0000000088888888888888888888888888888800000000008888888888888888),
    .INIT_24(256'h0000000000888888888888888888888888880000000000000000000000000000),
    .INIT_25(256'h000000000000000088008888008888CCFF55008800888800CCFF550088880088),
    .INIT_26(256'h8888888888888888000000000000000000000088888888008888888888888888),
    .INIT_27(256'h8888888888888888888800000000008888888888888888880000000000000000),
    .INIT_28(256'h00000000000000000088880000880033FF668888880088008888888888888888),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000808000000000000),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'h0088880000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'h0088008888000088880000880000000000000000000000000000000000000000),
    .INIT_2D(256'h00334444BB009944444499884444444444444444990000224444444444444422),
    .INIT_2E(256'h0000000000000000000000880000880088BB44444444BB44AA008888BB4444AA),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0088880000000000000000008800000000000000000000000000000000000000),
    .INIT_31(256'h0000000088000088008800880000000088000088880088008800000000000088),
    .INIT_32(256'h0088888888888888000000008800880000888800880088888800008888008888),
    .INIT_33(256'h0000888800880088888800008888008888880088000088000088008800888888),
    .INIT_34(256'h0000000000000000000000008800000000000000000000000000000000000000),
    .INIT_35(256'h0088000066FF3300888888000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000008800000000888800000000000000000000000088008800),
    .INIT_37(256'h0000000000000000888888888888888800000000000000000000000000000000),
    .INIT_38(256'h00008800CCFF5500888800008888000000000000000000000000000000000000),
    .INIT_39(256'h88888888000000000000000088888888888800000088000088880044FF550088),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000008888),
    .INIT_3B(256'h0088008800000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h00000000080808000000000000000000000000000088008800880033FFDD0088),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF888000000000),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'h0000000000000000000000008888888800000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000008800000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000008888000000000000),
    .INIT_43(256'h0000000000000000000000000000008800000000000000000000000000000000),
    .INIT_44(256'h8888880000000000000000000000000088880000000000000000000000000000),
    .INIT_45(256'h0000008888000000000000888800000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000880000888800008800000000000000008800000000000088),
    .INIT_47(256'h0000000000888888000000000000000088880000000000000000000000008888),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0088008888880088000000888888880066FFAA00880000000000000000000000),
    .INIT_4A(256'h0000008800880088008800008800008800888800880088000000008800880000),
    .INIT_4B(256'h0000000000880000000088008800000000000088008800880088000000008888),
    .INIT_4C(256'h0088000088880044FF55008888008800CCFF5500888800008800008888008888),
    .INIT_4D(256'h0088000088000088880000000000880088000088000088008800008888888800),
    .INIT_4E(256'h8888000000000000008800888888880000888800008800000000888800008800),
    .INIT_4F(256'h8800000000880033FFDD00888800008800880088000088008800000000000088),
    .INIT_50(256'hFFFFFFFFFFFF0000000000000000000088000000000000000000000000000000),
    .INIT_51(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'h000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000008800000000),
    .INIT_54(256'h8888000088888888888888880088888800888888888888888888000000000000),
    .INIT_55(256'h0000000000000088888888888888888888888888888888888888880000888888),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000008800000000000000000000000000000088000000),
    .INIT_59(256'h0000000000000000000000000000008888000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000880000000000000000880000000000008800000000),
    .INIT_5B(256'h0000000000000000000000000000000000008888000000000000000088000000),
    .INIT_5C(256'h8800000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0088000088000000880000888888000000000000888800000000880066FFAA00),
    .INIT_5E(256'h0088000000008800888888008800008800000000880088880088888800880000),
    .INIT_5F(256'h0000008800888800008800000088000000000000000000000088888888008800),
    .INIT_60(256'h0088008800000000000000888800008800000044FF55008888008800CCFF5500),
    .INIT_61(256'h8800000000880000888800880000888800888800000088008888008800880000),
    .INIT_62(256'h8800008800888800888888000000008800008888880000000000008800888800),
    .INIT_63(256'h0000000000000000000000000000000000880033FFDD00000088000088000000),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000),
    .INIT_65(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_66(256'h000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF),
    .INIT_67(256'h8888888800000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h8888000000888888000000888888000000000000000000000000000000888888),
    .INIT_69(256'h0000000000000000000000000000000088888800000000008888888888000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000088880000000000000000000000000000000000008888000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000008888),
    .INIT_70(256'h000088008888880066FFAA008800000000000000000000000000000000000000),
    .INIT_71(256'h8888008800880000000088008888008800008800880000880000222222222288),
    .INIT_72(256'h11AA228800000000008800000000008888008800008888000088000000008800),
    .INIT_73(256'hFF55008888008800CCFF55008888000088888800008800888800880000008800),
    .INIT_74(256'h000000000000000000008888880000000099AA2222AA11000088888800880044),
    .INIT_75(256'h0088112222888800000000888888880000000088000088888800000000000088),
    .INIT_76(256'hFFDD0088000088880000880000888888008800880000000011AA228800000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000880033),
    .INIT_78(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000),
    .INIT_79(256'h00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7A(256'h0000008800000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h8888888888000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000880000000000000088888888),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000088880000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000888888888800000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000080)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(addra[14]),
        .I1(addra[15]),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized15
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hC00C0600000608000000000003F0040000000000000000000000000000000000),
    .INITP_01(256'h00000000000000000000FFFFFFFFFFFFFFC00000001C00000F29940000000003),
    .INITP_02(256'h4000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'hFFFFFC00000001C0000087A1C0000000003F00C0600000878000000000001700),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000FFFFFFFFF),
    .INITP_05(256'h0C53E0300C06042447B90A93804971201A040000000000000000000000000000),
    .INITP_06(256'h00000000000000000000000000FFFFFFFFFFFFFFC00000001C0A4216B9BF4A2C),
    .INITP_07(256'h1F00E04000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'hFFFFFFFFFFFC00000001C079E67FBBF3E1F3DE1E03C0C0607F7E7F8F3F9F3F3E),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000FFF),
    .INITP_0A(256'hBF6ABBB32BB0380C060DF5EFB36BFBBBD375781E040000000000000000000000),
    .INITP_0B(256'h00000000000000000000000000000000FFFFFFFFFFFFFFC00000001C0D5E67BB),
    .INITP_0C(256'hFBB1B3D9C0E04000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h000FFFFFFFFFFFFFFC00000001C1DFDF77B9EEEE7F72E38380C060E7EFF79F0B),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'hFFD7739CFF67F62E30140C060E76FF71F43BBB1B1F9C2A040000000000000000),
    .INIT_00(256'h0000000000000088880000000000000000000088000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000088880000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h00888800008877FFFFFFFF33008800880088000066FFAA008800000000000000),
    .INIT_05(256'h8800008888880088008800880000880088008888880088888800888800880088),
    .INIT_06(256'h880088888888008888880000CCFFFF220022CCCC990000888888880000880088),
    .INIT_07(256'hFFFFCC888888000088000044FF55008800008800CCFF55008800000000000088),
    .INIT_08(256'h000000880000880088880000008800888888008800880000880000880066FFFF),
    .INIT_09(256'h88888800DDFFFF11002255CC990044FFFFAA0099CC55AA008888008888880088),
    .INIT_0A(256'h000000000000000000880033FFDD008800888800888800888888000088888800),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'h00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'h0000000000000000000000000000008800000000000000000000000000000000),
    .INIT_0F(256'h0000888888000000000000000000000088880088880088888888880000888888),
    .INIT_10(256'h0000000000000000000000000000008800000000000088880000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000008800000000000088888888888800000000),
    .INIT_14(256'h0000000000000000000000888800000000000000000000008800000000000088),
    .INIT_15(256'h8800000000000000000000000000000000000000000000000000000000000088),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h66FFAA0088000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000880000000000880088000000000000882233AA33FFFFCC00000000008800),
    .INIT_19(256'h9900880000000000000000000000000000880000000000008800880000000000),
    .INIT_1A(256'hCCFF5500000088888800000000000000000000000000000099AA228800BBFFFF),
    .INIT_1B(256'h000000000000000000AA33333377FFDD0000888800880044FF55008800008800),
    .INIT_1C(256'hFFFF440088000000000000000088000000000000000088000000000000000000),
    .INIT_1D(256'h0000000000008800000000888800000099AAAA8800BBFFFF990011AAAA880099),
    .INIT_1E(256'h000000000000000000000000000000000000008800880033FFDD000088880088),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'h00000000000000000000000000000000000000000000000000000000FFFFFFFF),
    .INIT_22(256'h0000008800000000000000000000000000080808080808000000000000000000),
    .INIT_23(256'h0000000088000000000000000000008800000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000888800000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000088000000000000880000000000000000000000000000008888000000),
    .INIT_28(256'h0000000000000000000088000000000000000000000000000088880000000000),
    .INIT_29(256'h0000000000000000000000008888000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000CC77FF6611880088000066FFAA0088880000000000000000000000000000),
    .INIT_2C(256'h9922228800888822229922229900889922999999008800112222992288000000),
    .INIT_2D(256'h229988008899111111CCFFFFBB88001122222222110099221188229988009999),
    .INIT_2E(256'h00000044FF55008800008800CCFF550000880000889922222222998800112222),
    .INIT_2F(256'h880088229911882222992299880099999999998800000000004477FFEE220088),
    .INIT_30(256'h11CCFFFFBB88889999881133FFFF551100112222992211008800992299992222),
    .INIT_31(256'h00880033FFDD0088880088001122992222990000222299008822221188999988),
    .INIT_32(256'hFFFF000000000000000000000000000000000000000000000000000000000088),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'h0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_35(256'h0808080000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000008888000000000000008888008888880000000000080808),
    .INIT_37(256'h0000000088888888000000000000008888888800000000008888880000008888),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h8888000000008888880000000000000000000000000000000000000000000088),
    .INIT_3B(256'h0000000000008888000000000000000088000088880000000000000000000000),
    .INIT_3C(256'h8800000000000000000000000000000000000000000088000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h880000DDFFFFFFFF22008888888800CCFFFF11008888000066FFAA0088880000),
    .INIT_40(256'hCC0077FFBBBBFFFF1100EEFFFFFFFFBB000099FFFFFFFFFF660099FFFFFFFF66),
    .INIT_41(256'h8877FFFFFFFFFF1100DDFFFFFFFF3300CCFFFF1177FFFFFFFFCC00CCFFFFFFFF),
    .INIT_42(256'h008800888800BBFFFF990088008800CCFF55008888008800CCFF550088880088),
    .INIT_43(256'hFFFFDD00888866FFFFFFFFFF220033FFFFFF66FFFFFFFFEE008866FFFFFFFF22),
    .INIT_44(256'h77FFDD00AAFFFFAACCFFFF9977FFFFFFFF4433FFFF2255FFFFFFFF770044FFFF),
    .INIT_45(256'h00000000000000000000008800880033FFDD00880088880044FFFFFFFF660011),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'h0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'h0000000000000000080808088808080800000000000000000000000000000000),
    .INIT_4A(256'h8800000000000000000000000000000000000000000000000000000000008800),
    .INIT_4B(256'h0088888800000000000000008888000000000000000000000000000000000088),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000088880000000000000000000000000000000000000000),
    .INIT_4E(256'h8800000000000000000000008888000000008888880000000000000000000000),
    .INIT_4F(256'h0000000000000000000088880000000000000088000000000000000088000088),
    .INIT_50(256'h0000000000000000000088888888000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h8800880066FFAA00888800000000000000000000000000000000000000000000),
    .INIT_53(256'hBB99EEFF6622FFFF4499DDFFEE1166FF6699BBFFFFAA000088880055FF771100),
    .INIT_54(256'h11CCFFFF4488DDFFEE99992211009933FFFFFFFF9966FFDD11AAFFFF3322FFFF),
    .INIT_55(256'h88008800CCFF55008800002277FF449955FF771166FF669933FFFFAABBFFFF99),
    .INIT_56(256'h22EEFF6611EEFFDD9944FFFFAA0088008800BBFFFF22008800880044FF550088),
    .INIT_57(256'hFF2211BBFFFFDD1144FF77221166FF6611EEFFDD11CCFFFF99CCFF772266FF77),
    .INIT_58(256'h000000CCFF77221166FF661177FF550022FFFFAACCFFFF1199CCFFFFBB0033FF),
    .INIT_59(256'h00000000000000000000000000000000000000000000008800880033FFDD0088),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000),
    .INIT_5B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000880000000000008888),
    .INIT_5D(256'h0000000000000000000000000000000000000000888800000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h8888000000000088000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000880000000000),
    .INIT_61(256'h0000000000000088000000000000000000000000000000000000000000000088),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000088888888),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000088),
    .INIT_64(256'h0000008800000000000000000088880000000000000000008800000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'hFFBB0088888800CCFFFF11000000880066FFAA00880000000000000000000000),
    .INIT_67(256'h99FFFFFFDD66FFFFBBAAFFFF220066FFDDAAFFFFAA0055FFFF11EEFFDD0022FF),
    .INIT_68(256'h77FFDD0099FFFF33BBFFFF990033FFFF990066FF77DDDDDD22000088BB66FF77),
    .INIT_69(256'hFF22008800880044FF55008888008800CCFF550088000022FFFF3300CCFF7711),
    .INIT_6A(256'h00BBFFFF9955FF7700DDFF770066FF6611FFFFCC00AAFFFF330088888800BBFF),
    .INIT_6B(256'h44FFFF1100BBFFFF9900BBFFFF220099FFFFBB00DDFFFF66DD77FFEE11FFFFCC),
    .INIT_6C(256'h0000000000880033FFDD0088880000DDFFFF66DD77FFFF11FFFFEEBB55FFFF33),
    .INIT_6D(256'hFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'h000000880000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'h8800000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000088880000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000088880000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000088888888000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000008800000000008888000088880000000000),
    .INIT_79(256'h8800000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'hAA00CCFF771177FFDD0022FFFFBB0000000033EEFF6611008800880066FFAA00),
    .INIT_7B(256'hFF55DDFFEE3388880044FF7711CC55DDDD66FFFFBBAAFFFF220066FFDDAAFFFF),
    .INIT_7C(256'h88880022FFFFBB00CCFF7711EEFFDD0099FFFF33BBFFFF1100BBFFFF220066FF),
    .INIT_7D(256'h00AAFFFFAA00000000AA66FF66990088888800CCFF55008888008800CCFF5500),
    .INIT_7E(256'hBB5555DDDD77FF7788FFFFCC00BBFFFF9955FF778855FFEE8866FF6611FFFFCC),
    .INIT_7F(256'h77FF771155FFFFFFFFFF6699CCFFFF1100BBFFFF2200BBFFFFAA0099FFFF4400),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000080)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2 
       (.I0(addra[13]),
        .I1(addra[15]),
        .I2(addra[14]),
        .I3(addra[12]),
        .I4(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized16
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h00000000000000000000000000000000000000FFFFFFFFFFFFFFC00000001C1B),
    .INITP_01(256'hFB17C3BBBD37D7E3004000000000000000000000000000000000000000000000),
    .INITP_02(256'h000000000FFFFFFFFFFFFFFC00000001C0F478FB3BE7ABBF72FB6600C060E75F),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h001C07810FF3BC3E1FF721E3E00C060E77E7F1F837F1F1E0F3F0040000000000),
    .INITP_05(256'h00000000000000000000000000000000000000000000FFFFFFFFFFFFFFC00000),
    .INITP_06(256'h60EE74AE36050C151D1A2A004000000000000000000000000000000000000000),
    .INITP_07(256'h000000000000000FFFFFFFFFFFFFFC00000001C09428AA2204A2B557366A00C0),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'hC00000001C00000000000003000000000C060000000000000018000000040000),
    .INITP_0A(256'h00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF),
    .INITP_0B(256'h0000C06000000000000000000000004000000000000000000000000000000000),
    .INITP_0C(256'h000000000000000000000FFFFFFFFFFFFFFC00000001C0000000000000380000),
    .INITP_0D(256'h0400000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'hFFFFFFC00000001C00000000000000000000000C060000000000000000000000),
    .INITP_0F(256'h00000000000000000000000000000000000000000000000000000000FFFFFFFF),
    .INIT_00(256'h0000000000000000000000000000000088880033FFDD0088888800BBDDCCDDDD),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'h000000000000000000008800000000000000000000000000FFFFFFFFFFFFFFFF),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h8888000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000088),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0088880000880000888888888888888888888888000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'hCC0000888800000066FFAA008800000000000000000000000000000000000000),
    .INIT_0E(256'hBB22FFFFBB99EEFF66AAFFFF4411DDFF7711EEFF6699BBFFFF3399AAAAAAFFFF),
    .INIT_0F(256'hBBFFFF9999CCFFFF220066FF661199FFFF55008800CCFFFF110099991122FFFF),
    .INIT_10(256'hFF55008888008800CCFF5500888800AAFFFFBB00CCFF771166FF669933FFFF33),
    .INIT_11(256'h00DDFF770066FFEE1177FFDD1144FFFFAA9933AAAAFFFF660000888800880044),
    .INIT_12(256'h2200BBFFFF2211BBFFFFBB00881199991166FF6611EEFFDD11CCFFFF9955FF77),
    .INIT_13(256'hFFDD0000888800001199991166FFEE8800DDFFFFFFEE880055FF779999CCFFFF),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000088000088880033),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000),
    .INIT_16(256'h00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'h0000000000000000000000000000000000000000000088000000000088888888),
    .INIT_18(256'h0000000000000088000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000008800000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000088888800),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'hFFFFFFFFAA8877FFFFFFFF33000088880000880066FFAA008800000000000000),
    .INIT_22(256'h00CCFFFF8811FFFFFFFFFFBB008822FFFFFFFFFF668822FFFFFFFFEE88888866),
    .INIT_23(256'hCCFF771100DDFFFFFFFF330044FFFF9977FF7799880066FFFFFFFFFFBB880088),
    .INIT_24(256'hFFFFBB888888000000880044FF55008888008800CCFF550088880022FFFFBB00),
    .INIT_25(256'h888866FFFFFFFFFF9955FF7788DDFF778866FFEE8888EEFFFFFFFF220066FFFF),
    .INIT_26(256'h6688880055FFFF9977FFFF998800BBFFFF2255FFFF3300000066FFFFFFFFDD88),
    .INIT_27(256'h000000000088000088880033FFDD008800008800EEFFFFFFFF6688888888EEFF),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'h00000000000000008888880000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000880000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000088000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h66FFAA0088000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'hEE00009999992211000000119922992288009922992299880088008800880000),
    .INIT_36(256'h000099992299992288008800001122998888222299992288000088992299EEFF),
    .INIT_37(256'h44FF550088880088999911009999998800999999229988001122998899999988),
    .INIT_38(256'h8800999922999988001199229922110088000088880000CCFF55008888008800),
    .INIT_39(256'h2288008888992222992211000000992299CCFFFF221122998899229988999999),
    .INIT_3A(256'h1122229922110088008811221100008899229988992299000088112222881122),
    .INIT_3B(256'h000000000000000000000000000000000088000088880033FFDD008800008888),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'h00000000000000000000000000000000000000000000000000000000FFFFFFFF),
    .INIT_3F(256'h0000000000000000000000008800000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000880000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000088000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000008888000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h00000088008888008800880066FFAA0088000000000000000000000000000000),
    .INIT_49(256'h0000000088880000000066FF7700880000000000000088000000000000000000),
    .INIT_4A(256'h0000008800000000000000000088000000000000008888008800000088000000),
    .INIT_4B(256'h00880044FF55008888008800CCFF550088008800000000000000000000880000),
    .INIT_4C(256'h2200000000000000000000008800000000000088880000000000000000888800),
    .INIT_4D(256'h000000888888000000000000008800880000000000000088880000000044FFFF),
    .INIT_4E(256'h88880033FFDD0088888888000000000000008800888800000088880000000000),
    .INIT_4F(256'hFFFF000000000000000000000000000000000000000000000000000000880000),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_51(256'h0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000008800000000000000008888000000000000),
    .INIT_54(256'h8800000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000880000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000088880000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000888800000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h88880088880088888800880088880088888800008888000066FFAA0088000000),
    .INIT_5D(256'h880000880088888800008888888800888800000088884466CC00008800880088),
    .INIT_5E(256'h0000880000888800880088888800880088008888880088008800008888888888),
    .INIT_5F(256'h888888008888008800008800008800CCFF55008888008800CCFF550088000088),
    .INIT_60(256'h000088000000008800AADDDD9900888888888888888888000088008800888800),
    .INIT_61(256'h8800888800008800880088888800008800888888008800888800888888008888),
    .INIT_62(256'h00000000000000000088000000880033FFDD0000000088880088880000880088),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'h0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_66(256'h0000008888880000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000888888000000),
    .INIT_68(256'h0000000000000000000000008800000000000088000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000088880000),
    .INIT_6B(256'h0000000088000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000088000000000000000000000000008888000000000000000000888800),
    .INIT_6F(256'h0088880066FFAA00880000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000880000880088000088000088000000880088000088880000008800),
    .INIT_71(256'h0000888800008800880000880000880088880088880000880000880000008800),
    .INIT_72(256'h88008800CCFF5500888800008800000088000088008800008888008888008800),
    .INIT_73(256'h00000088000088880000880088008888008888000000880088880044FF550088),
    .INIT_74(256'h0000880000880000888800008888008888000000000000000000880000000088),
    .INIT_75(256'h8800880000008888880088008888008888000000888800000088880088000088),
    .INIT_76(256'h00000000000000000000000000000000000000000088000000880033FFDD0000),
    .INIT_77(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000),
    .INIT_78(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000808080000000000),
    .INIT_7D(256'h8800000000008888000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000088880000000000000000000088),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00800000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[13]),
        .I1(addra[14]),
        .I2(addra[12]),
        .I3(addra[16]),
        .I4(addra[15]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized17
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__12_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000C06000000000000000000000006000000000000000000000000000),
    .INITP_01(256'h000000000000000000000000000FFFFFFFFFFFFFFC00000001C0000000000000),
    .INITP_02(256'h0000000400000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'hFFFFFFFFFFFFC00000001C00000000000000000000000C060000000000000000),
    .INITP_04(256'h00000000000000000000000000000000000000000000000000000000000000FF),
    .INITP_05(256'h0000000000000005C06000000000000000000000006000000000000000000000),
    .INITP_06(256'h000000000000000000000000000000000FFFFFFFFFFFFFFC00000001D0000000),
    .INITP_07(256'h0000000000001E00000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000FFFFFFFFFFFFFFC00000001E00000000000000000000007C078000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFB7C07AFFFF3FFFFFFF7C3F787FF7C000000000000000),
    .INITP_0B(256'h000000000000000000000000000000000000000FFFFFFFFFFFFFFC00000001FA),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFF400000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000FFFFFFFFFFFFFFC00000001FFFFFFFFFFFFFFFFFFFFFFFFC0FFFFF),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h00003FFFFFFFFFFFFFFFFFFFFFFF001FFFFFFFFFFFFFFFFFFFFFFF8000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000008888000000),
    .INIT_01(256'h0000000000000000000000880000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000088880000000000000000000000000000),
    .INIT_03(256'h0000000000000000880000008888000066FF3300888800000000000000080808),
    .INIT_04(256'h8800000088880000880000000000888888888888888800000000000000008888),
    .INIT_05(256'h0000000000000000000088888888000088880000000088880000888800000000),
    .INIT_06(256'h00000088008800CCFF55008888008800CCFF5500880088888888888888880000),
    .INIT_07(256'h0000888800000000000000888888000000000000000000000000000000888888),
    .INIT_08(256'h0000000000000000000000000000000088880000000088880000000000000000),
    .INIT_09(256'h0000000088880033FFDD00000088008800000000000000000000000000000088),
    .INIT_0A(256'hFFFFFFFFFFFF0000000000000008080800000000000000000000000000000000),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'h000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000008080000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000008800000000008888000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000088000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h8888880000000000000008080000000000000000000000000000000088880000),
    .INIT_17(256'h8800000000008800000088880000000000000000880088000000000066FFAA00),
    .INIT_18(256'h8888888888888888880000008888008888888800000000000000888800008888),
    .INIT_19(256'h8800008800000000000000000000000000000000000000000000000088888888),
    .INIT_1A(256'h0000000000000000000000008888888800880044FF55000000888800CCFF5500),
    .INIT_1B(256'h0000000000000000000000000088888800000088008888888888888800000000),
    .INIT_1C(256'h0000000000008888000088888888880000000088000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000008800880000880033FFDD00880000888800000000),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000080800000000),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'h000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000088000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000008000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000008800000000008888),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000088000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000088880000000000000000),
    .INIT_29(256'h0000000000000000880000000000000000000000000000000000000000000000),
    .INIT_2A(256'h000000880088888866FF33008800008800000000000000080000000000000000),
    .INIT_2B(256'h0000000000000088008888888888888800888888000000888888888888888888),
    .INIT_2C(256'h8888000000000000000000000000000088880000000000008800000088888800),
    .INIT_2D(256'hFF55008888880000CCFFDD888888880088888888888888880088888888000000),
    .INIT_2E(256'h0088888888880000888888888888888888888888888888880000000088118855),
    .INIT_2F(256'h0000000088888888888888888888888888888888888888880088888800000000),
    .INIT_30(256'hFFDD881188000000888888888888888888000000888888888888000000000000),
    .INIT_31(256'h0000000000000008000000000000000000000000000000000000888800880033),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000),
    .INIT_33(256'h00000088FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000088000000),
    .INIT_37(256'h0000000088000088880000880000000000000000000000000000000000000000),
    .INIT_38(256'h0000000088000000000000880000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000088000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000880000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000880000000000000000000000),
    .INIT_3E(256'h000000000000000000000000000000000088EEFFFFFF33000088880000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h00000000000000000055FFFFFF55008888008800CCFF77FF5500008800000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000888800888800BBFFFFFF6600000000000000000000000000000000),
    .INIT_45(256'hFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'h00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000088000088880000880000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000880000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'hFFFFAA0088008800000000000000000000000000000000000000000000000000),
    .INIT_52(256'h88881111111111118811111111888888881111111111111111111111881177FF),
    .INIT_53(256'h1111111111111111111111111111111111111111111111118811111111118888),
    .INIT_54(256'hCCFFFFFFDD881188111111111111111111111111111111118888111111111111),
    .INIT_55(256'h111111111111111111111111111111111188111188DDFFFFFF55000000888800),
    .INIT_56(256'h1111111111111111111111111111111110101111111111111111111111111111),
    .INIT_57(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_58(256'h000000000000000000000000000000000088000088880033FF77FF7711881188),
    .INIT_59(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'h00000000000000000000000000000000000000000000000000000000FFFFFFFF),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000088880000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'hFFFFFFFFFFFFFFFF77FFFFFFAA11880000880088000000000000000000000000),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'h77FFFFBB11110088000000001111BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'h008800111133FFFF77FF77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFF000000000000000000000000000000000000000000000000000088008800),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'h0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h8800000000000000000000000000008800000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000880000888800008800000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000880000000000000000000000000000000000000000008888000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9900008800880088),
    .INIT_7A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3300008800000000888800AAFFFFFFFFFF),
    .INIT_7D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7F(256'h000000000000000000008888000000000022FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__12_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000010)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__12 
       (.I0(addra[13]),
        .I1(addra[14]),
        .I2(addra[16]),
        .I3(addra[15]),
        .I4(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__12_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized18
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__11_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h000000000000000000000000000000000000000000000FFFFFFFFFFFFFFC0000),
    .INITP_01(256'h01FFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000FFFFFFFFFFFFFFC000000001FFFFFFFFFFFFFFFFFFFFFFF0),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'hFC00000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h000000000000000000000000000000000000000000000000000FFFFFFFFFFFFF),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000FFFFFFFFFFFFFFC000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'hFFFFFFFC00000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h000000000000000000000000000000000000000000000000000000000FFFFFFF),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000FFFFFFFFFFFFFFC000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'hFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h000000000000000000000000000000000000000000000000000000000000000F),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'h0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000008888000000000000000000000000008800000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000880000888800008800000000),
    .INIT_07(256'h0000000000000000000000000000000000000088000000000000000000000000),
    .INIT_08(256'h0000000088888800000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000008888),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h9999999988888800880088000000000000000000000000000000000000000000),
    .INIT_0D(256'h9999999999999999999999999999999999999999999999999999999999999999),
    .INIT_0E(256'h9999999999999999999999999999999999999999999999999999999999999999),
    .INIT_0F(256'h8800000088008899999999999999999999999999999999999999999999999999),
    .INIT_10(256'h9999999999999999999999999999999999999999999999999999991100880000),
    .INIT_11(256'h9999999999999999999999999999999999999999999999999999999999999999),
    .INIT_12(256'h9999999999999999999999999999999999999999999999999999999999999999),
    .INIT_13(256'h0000000000000000000000000000000000000000008888008800880000882299),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'h0000000000000000000000000000000000000000000000880000000000000088),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000888888000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000880000000000000000000000000000000000000000000000),
    .INIT_1A(256'h8800000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000880000000000008800000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000008888880000880000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000888888000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'hFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'h000000880000000000000088FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000880000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000880000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h8888888888888888888888888888888888888888888888888888888800000000),
    .INIT_35(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_36(256'h0088888888888888888888888888888888888888888888888888888888888888),
    .INIT_37(256'h8888888888888888888888888888888888888888888800000000000088888800),
    .INIT_38(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_39(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_3A(256'h0000000000000000000000000000000000000000888800008888888888888888),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'h000000000000000000008800000000000000000000000000FFFFFFFFFFFFFFFF),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h8800000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000088000000000000000000008800000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h8888000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000888800000000000000000000000000000000000000000000),
    .INIT_47(256'h0088888888888800000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000888888888888888888888888888800000000000000000000000000000000),
    .INIT_49(256'h8888888888888888000000008888888888888888888888888888888888888888),
    .INIT_4A(256'h0000000000000000000000000088888888888888888888880800000000000000),
    .INIT_4B(256'h8888888888888888888888888888888888888888880000008888880000888888),
    .INIT_4C(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_4D(256'h0000000000888888888888888888888888888888888888888888000000008888),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000),
    .INIT_50(256'h00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_51(256'h0000000000000000000000008888000000000000008888000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000008800000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000008888000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000888800000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000088880000000000000000000000000000000000),
    .INIT_62(256'hFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_64(256'h88000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000088000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000008800000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000008800000000000000),
    .INIT_6A(256'h0000000000000000000000000000000088000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000880000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000008800000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000008800000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000088888888888888888888888888888888),
    .INIT_70(256'h0000000000000000000000000000000000000000000000008888888888888888),
    .INIT_71(256'h0000008888888888000000000000000088888888880000000000000000000000),
    .INIT_72(256'h0000000000000000888888888888888888880000000000000000000000008888),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000088888888000088),
    .INIT_76(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000),
    .INIT_77(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'h00000000000000000000000000000000000000000000000000000000FFFFFFFF),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000800000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000088000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000008888880000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__11_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000020)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__11 
       (.I0(addra[16]),
        .I1(addra[14]),
        .I2(addra[12]),
        .I3(addra[15]),
        .I4(addra[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__11_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized19
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__7_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000FFFFFFFFFFFFFFC000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h00000FFFFFFFFFFFFFFC00000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000FFFFFFFFFFFFFFC000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h00000000000FFFFFFFFFFFFFFC00000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFC000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h00000000000000000FFFFFFFFFFFFFFC00000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'hFFC0000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000088880000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'hFFFF000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'h0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000080800000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000088000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000008888880000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h8888888888888888000000000000000000000000000000000000000000000000),
    .INIT_17(256'h8888888888888888888888888888888800000000000000008888888888888888),
    .INIT_18(256'h8888888888888888000000008888888888888888888888888888888888888888),
    .INIT_19(256'h0000000000000000888888880088888800000000000000008888888888000000),
    .INIT_1A(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_1B(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_1C(256'h0000000000000000000000000000000088888888000000008888888888888888),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'h0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0088000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000008888000000000000000000000000000008080800000000),
    .INIT_24(256'h0000888888000000000000888800000000000000000000888800000088000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000888888888888888888880000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000880000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0008080800000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0088888800000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'h0000000000000000000000000000000000000000000000008800000000880000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000088880000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000008800000000000000),
    .INIT_37(256'h0000000000000088000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000880000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000880000000000008888888800000000000000000000000000),
    .INIT_3B(256'h0000000000000000880000000000888800000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000880000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000088880000000088),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000808080000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'hFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000),
    .INIT_45(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_46(256'h000000000000000000880000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000880000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000088000000000000000000000000),
    .INIT_4C(256'h0000008800000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000008800),
    .INIT_4E(256'h0000008800000000000000000000000000000000000000000000000088888800),
    .INIT_4F(256'h0000000000000000000000000000000000000000880000000000008800000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000888800000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000008080000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000),
    .INIT_59(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'h000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000008800000000000088),
    .INIT_5D(256'h0000000088888888000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000088),
    .INIT_60(256'h0000000000000000000088880000008800000000000000000000000000000000),
    .INIT_61(256'h0000000000000000888800000000000000000000000000000000000000000000),
    .INIT_62(256'h8800000000000000000000000000008800000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000008800000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000008000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000),
    .INIT_6D(256'h00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000088000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000888888000000000000000000000000),
    .INIT_72(256'h0000000000000000000000880000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000088000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000888800000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'hFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__7_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000020)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__7 
       (.I0(addra[16]),
        .I1(addra[14]),
        .I2(addra[13]),
        .I3(addra[15]),
        .I4(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__7_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__14_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h7C3F70000FFFC782C0FC07FC000000000000000000000000000000000C061F81),
    .INITP_01(256'h0080008C2E5CC330CC3719D4002A08FF0007F0210000098628C0103EFCFFFCF8),
    .INITP_02(256'h000000000000FF800FFF000E00006031583C540F37258A886500000000000000),
    .INITP_03(256'h4F000FC001F00000F033CBFB01FF97FF970B87FE00007FF8743E07C0FFC00000),
    .INITP_04(256'h20EC4879303C4A17E683F80000000000002004000E4694CD310CC3313F0CE937),
    .INITP_05(256'h7FB974B836FC000BF38777A3CC8BFD8000000000000000184C07101C0F600001),
    .INITP_06(256'h80000400200782BC0DD70CDC3312914D914432210600A000000282CA7E00B7FB),
    .INITP_07(256'hE000000000000000010340F106C06600011806470312C0C4E0E2582980300000),
    .INITP_08(256'h048B044170E0280C00000022408203170B800B974F878BC00000787CFA5DE800),
    .INITP_09(256'h61000140A4523120204C016481380000000000000000006CD9C0CD31DCC33122),
    .INITP_0A(256'h01F6BA00B9749C783E00000587CFA90BE00FE0000000000000001020002C6800),
    .INITP_0B(256'h000000000000000006DC0C8CCDB6C82352704810068E44018040000003000800),
    .INITP_0C(256'hFC7E003A000000000000000180000700000E00001841C70013C004C002702380),
    .INITP_0D(256'h580D03048B10483F8007AC0000000E31DFBF1B4BA00B974F8783E00000583FFA),
    .INITP_0E(256'hDF0003C00000404428060E038400C180100000000000000000002A81C6C3A214),
    .INITP_0F(256'hC523FFE178BA37F974B878BA0001BB83FFABC7E721B000000000000000170400),
    .INIT_00(256'h00000000FF33CCAAAAAAAAAA2277FF000088007777FFFFFF55CC44AA222244FF),
    .INIT_01(256'h000000880000000000000000000000000000002222AAAA22AAAA222200000088),
    .INIT_02(256'h0000000088000000008800008800000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h1191800000000089111911111191808000000000911111111111111191998000),
    .INIT_06(256'h0000000011191111111111111111111111918900911911119180800000911191),
    .INIT_07(256'h0819111199098000008999111111111191119909000000000000000000000000),
    .INIT_08(256'h1111191191090080191111111111111111119111990900891911119109800000),
    .INIT_09(256'h0000FF66FFCCAAAADDDDAA22AAAA22EECCAAAADD000000000008191111111191),
    .INIT_0A(256'h0000000000000000000000000000000000880000FF664455BB22AAAA66FFFF00),
    .INIT_0B(256'hEE44AAAAAAAAAAAA44CC44CCCCFFFFFFFFFFFFDDAAAAAAAAAA22BBCCCCCCCC77),
    .INIT_0C(256'hCC22AAAA66AAEEAACCAABB66FF663322AACC44CCDDAA22AADDBB55FFFFFFFFFF),
    .INIT_0D(256'hFFBB22AA7733AAEEAAAAFF33AA337733AA66CCBBBBAA22BB77336633227722EE),
    .INIT_0E(256'h000055AA5533336644554433FF33AAAA7733AAEEAAAAFF33AAAAFF33AA6644AA),
    .INIT_0F(256'hAA220000000000AA3300AAAA00000000AA22AAAA22EEAA22FFAAAAAAFF3322EE),
    .INIT_10(256'hAA0000000022AA00AAAA00000000000000000000AAAA22AA2200000000AA22AA),
    .INIT_11(256'hEEFFFF000077EE556622AAAAAAAA00000000882222AAAA0000000000AAAAAAAA),
    .INIT_12(256'h0000FF5566FF77FFEEEE55AA2233CCFFFF000000FFCCFF00FFEEEEEEBB22AAAA),
    .INIT_13(256'hCC7700FF77EE66CCAA2233DDFFFF00000077CCFF00FF66EEEEAA22AA33FFFFFF),
    .INIT_14(256'h00AA22AAAA22AAAA220000000000AAAA00FFFFEEEE66AAAAAA44FFFF000000FF),
    .INIT_15(256'h00000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFF00),
    .INIT_16(256'h00000000000000000000000000000000FFFF77FFFFFFFFFFFF00000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h5DFFFFFFFFFFFFFFFFF7AB800000000000000000000000000000000000000000),
    .INIT_19(256'hD57FFFFF5E09800000D57FFFFFD5910000000022F7FFFFFFFF679A8080000088),
    .INIT_1A(256'h800000000000000000000000000000004C7FFFFFFFFFFFFFFFFFFFFFFFE61A00),
    .INIT_1B(256'hFF3C809A767FFFF73C800000A26E7FFFF73C8000003B77FFFFFFFFFFFFFFFF3C),
    .INIT_1C(256'h0000000000B3EFFFFFFFFFFFFFFFFFFFF73C899AF77FFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFEEAA22AAAACCFFFF0000FFBBFF5522AA55EEDD55DDDD55FFBB2233DD),
    .INIT_1E(256'hAAAAAA22224466FFFFFFFFFF0000000000000000000000000000000000000000),
    .INIT_1F(256'h00FF44AABB33DDFFCCCCCCCC44AA222222AAAACCFFFFFFFFFFFF66CCCCCCCCAA),
    .INIT_20(256'hAAAADDFFFF33DDBBAA66AA66FF7722AABB33FFCCBB2244FF00007755AA333355),
    .INIT_21(256'hAAAAFF33AAAA6633AA6644AAFFBBAA22FF33AAEE22AAFF33AAAAFF33AA66EEBB),
    .INIT_22(256'hAA66AAAAFF3333226633AAEE66DDFF44BBAAAA77225544AAFF3322AAFF33AA77),
    .INIT_23(256'hAAAAAAAAAA00000000223322AAAA000000000022AA99AA2200000000AAAAAA22),
    .INIT_24(256'hAAAAAA0000000000AAAAAAAAAA00000000AA228822AA00000000000000000000),
    .INIT_25(256'h7733FF000077FF66BBAA22AAAACC77FFFF77DD55FFAAAAAAAAAA000000000022),
    .INIT_26(256'h0000FF77EEAAAA2222AADDFF77FFEECC66FF0000FFEE55AA22AAAA33EEFFFFFF),
    .INIT_27(256'hEE663322AAAA22EEFFFFFFEEBB77000000FFEE443322AAAA4477FFFFFF66CCFF),
    .INIT_28(256'hEEEEEEEEFFFFFF77EE33FF000000AAAA22AAAAAA22AAAA0000AA22AA000000FF),
    .INIT_29(256'h4455CCEEFFFFEEEEEEEEEEEEEEFFFFFF66CC66FFEECCCCCCCCCCCC77FF77EE66),
    .INIT_2A(256'h00000000000000000000000000000000000000000000000000000077FF44CCCC),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h7FFF66EFFF6F3C9A018000003BD5555555555DE6FF77C4230900000000000000),
    .INIT_2D(256'h55555555D56E7FFFF7E61201D57FFFFFE6B49A9AB3667FFFF7DE8A000008AAC4),
    .INIT_2E(256'h2BD577FF5ED555D5E67FFF4DAB91800000000000000000000000000033D55555),
    .INIT_2F(256'hCC55555555555D5566F7FFFFF73C819A6F7FFFF7BC01000022777F7FF7BC8191),
    .INIT_30(256'hAA55DDDDDDDDDDCCAA22226600000011224C7FFF66D5555D5E7FFFFFF7340911),
    .INIT_31(256'h0000000000000000000000000088774433AAAAAAAAAABBEEFFFFCCAAFFCC3322),
    .INIT_32(256'h0000000000FF776666AA22AA2222AAAABBEEFF00000000880000000000000000),
    .INIT_33(256'hDDAA44FF000000552233CC6600FF44AA44CCFF77EEEEBBAA22AA33AAAAAACCFF),
    .INIT_34(256'hAAAAFF33AAAAFFBBAAEE00FFCC22DD00FFAA4433AA22667700FF22AA55DD00FF),
    .INIT_35(256'hAACCCC22FF332233FF332277AA99FF33AAAA22AABB77CC22FF332233FF3322EE),
    .INIT_36(256'h228899AA00000000AAAAAAAAAAFF9933FFAAAAAAAA2233EEDDAAFFFFFF33AAEE),
    .INIT_37(256'h33AA00000000000000000000AA22AA22220000000033AA0022AA0000000000AA),
    .INIT_38(256'h772222AAAAAA0000000099332222AA000000000000222222000000000022AA22),
    .INIT_39(256'hFF33BB22AAAAAA223355FFEEAAAAFF00007766BB33AA22AA22AABBEEFF66AA55),
    .INIT_3A(256'h22AA222222227777EEAA44FF0000FFCCBB3322AAAAAA22447777CCAA66FF0000),
    .INIT_3B(256'hAAAA22AA0022AA3300000077BB4422AAAAAAAAAACCFFFF4422FF000000773333),
    .INIT_3C(256'hAAAAAA2222BB334455BBAAAAAAAAAAAA44DDDD4422BBFF000000AA22AAAA22AA),
    .INIT_3D(256'h00000000000000FF44AAAAAAAAAABB33CC55AA2222AAAAAABBDDDD55AA22EE77),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h77FFFFE71A800000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h7FFFFFFFF7568A8100196EFF7FFFC45577F7FFDE92800000000000000000004C),
    .INIT_41(256'h0000000000000800000000000000000000C47FFFF7E61201D57FFFFFFFFFCCCD),
    .INIT_42(256'hBC010008A2EE7FFFF73481AB777FFF6F2B800000AAF7FFFFF7AB800000000000),
    .INIT_43(256'h3C800000196E7FFFF73481000000000000000000226E7FFFFF3C899A6F7FFFF7),
    .INIT_44(256'h223322AAEECCAAAAFFCCAA22AAAA99AAAAAA2222AAAA33DD00000021777FFFFF),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000FFCC66223322),
    .INIT_46(256'hEE33BB33AA2222223355FF000000000000007744BBAAAA22AAAAAA22BBFF0000),
    .INIT_47(256'h22EE00000077AAAAFF000088DD22BBFF880088CCAA55000000FFCCAACC0000FF),
    .INIT_48(256'hFFFF443377BBAAAAFF33AAEE22AAFFBB22AAFF33AA6600FF44AA55000066BBAA),
    .INIT_49(256'h33BBEE55DDAAEEDDFF3322EE22CC44AA7733AAAAFF332277AAAAFF33222244BB),
    .INIT_4A(256'h00000000000000000000000000000000000000000000000000FF3322FF3322AA),
    .INIT_4B(256'h0088000000000000000000000000000000000000000000000000000088000000),
    .INIT_4C(256'hBBAAAAAAAA2222BBCCAA9955FF00000000000000000000000000880000000000),
    .INIT_4D(256'hAA2233AA44CCAAAA66770000FFDD66AA22AAAAAA22AACCBBAA33FF0000FFEE66),
    .INIT_4E(256'h3344BB22AAFF00000077EE55222233AAAAAA3355AAAA44FF0000FFEEEEAAAA22),
    .INIT_4F(256'hAA55FF00000022332222AA22AAAA22AAAAAA2222880000FF66FF2222AA22AAAA),
    .INIT_50(256'hAAAAAA2222AAAAAA2244FFEE333322AAAABB33AA33AA2222222222AAAAAAAAAA),
    .INIT_51(256'h00000000000000000000000000000000000000FF44AAAA2222AABBAAAAAAAAAA),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h4D2B09000008000000800022BCE6FF77CDB30980800000000000000000000000),
    .INIT_54(256'hF7E71201D57FFFFFFFFF66667F7FFFFFF7568A813355F7FFE63C2222C46FFF6F),
    .INIT_55(256'h2B777FFFEFAB0180000000000000000000000000000000000000000008CCF7FF),
    .INIT_56(256'hAA767FFFF73C01A2777FFFF7BC0100002277FF7FF7B48923777FFFF7AB800000),
    .INIT_57(256'hAA22226600000822F77F7FF73C010900AA6F7FFFF73401810000000000000008),
    .INIT_58(256'h00000000000077FF66AA22AAAAAA22AA22AA22AAFFCCAAAAAAAAAAAA22AAAAAA),
    .INIT_59(256'h77EE44CC444422AA447700000000000000000000000000000000000000000000),
    .INIT_5A(256'hAACC000000FFBBAA55000000FFFFFFCC4455CCCCCCFF000000000000000000FF),
    .INIT_5B(256'h22DD00FFCCAADD0000FF77BBAAEE000000FFAA22FF00000066AACC77000000CC),
    .INIT_5C(256'hDD33AA66BB33AA33332277FF00FFDDAABB3322AABB22AAEECCAA3322AAAA3333),
    .INIT_5D(256'h000000000077BBAADD33AA33FFFFCCAA6622EE22FF33AAEE33CCCCAA55332222),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000880000000000000000000000000088000000000000000000000000000000),
    .INIT_60(256'hAA22AA22AA22FF0000DDFFFFCC22AA22AAAA332222AA33557700000000000000),
    .INIT_61(256'hAA22CCFF00007777FF3322AAAAAAAAAAAAAA22AA66FF0000FFFF6622AAAA22AA),
    .INIT_62(256'h000000FFFFEEAAAAAA3322AA22AAAA339977000000777755AAAAAA22AAAA22AA),
    .INIT_63(256'h22AAAAAAAAAAAAAAAAAA22AA55FFFF0000000000AAAAAA2222AAAAAA22AAAAAA),
    .INIT_64(256'hBBAAAAAAAAAAAAAA2222AA22AAAAAAAAAAAA22AA447777772222AAAA22AAAA22),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000880077),
    .INIT_66(256'h8000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h5E7F7FFF4D090000095E7FFFF7D60900000000000000000000D57F7FF7DE8980),
    .INIT_68(256'h000000000000000008CCFFFFF7DF1201D5FF7FFFFFFFFFFFFFFFFFFFF7569289),
    .INIT_69(256'hF73C812B777FFFEFAB80000033777FFFEFAB0180000000000000000000000000),
    .INIT_6A(256'hF7BC0180000000000000000021767FFFF73C011A777FFFF7BC01000022F77FFF),
    .INIT_6B(256'hFFFF44BB33BB33BBBB443333BBBB55FF00000819EEFFFFF73C010000A26E7FFF),
    .INIT_6C(256'h000000000000000000000000000000000088000077333322AA223399AAAA2255),
    .INIT_6D(256'hFF00000000000000000000000077FF7777EEBB2233FF00000000000000000000),
    .INIT_6E(256'hFF000000DDAA33FF0000005522CC000000FFCCAA550088000000FFFFFF7777FF),
    .INIT_6F(256'hAA33CCFF77CC44AA2222AA2255FF00FF44AACC000000FF332266000000FFAAAA),
    .INIT_70(256'hFF33AACCAA55FFCCBB3322AAAA2255FFFF44BB2222AAFF00000088DDCC33AAAA),
    .INIT_71(256'h000000000000000000000000000000000000FFCC33223322FF0066AA66226633),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'hAA22447700000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h7700000000FF6644AA22AAAA22AAAAAA3377000000000077DDAAAAAAAA222222),
    .INIT_75(256'h0000FF66BBAA22AAAAAA2222AABB770000000000FFDD3322AA22AAAA22AA33DD),
    .INIT_76(256'h222222AAAA22AAAAAAAAAA00000000000077CC22AA22AAAAAA3322AAEEFF0000),
    .INIT_77(256'hFFFF0077BBBBBB33AAAA22AAAAAA22AA22AA2222AA2233DDFFFF000000000000),
    .INIT_78(256'h0000000000000000000000FFCC33BBBBAA2222AAAA33AA22AAAA22AAAA2222CC),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h5E5EBC8909DDF77FF75689000000000000000000000000000000000000000000),
    .INIT_7B(256'hFFFFFFFFFFFFFFFFF75692895EFFFFFFD691000011667F7FF7CD098144DDDDDD),
    .INIT_7C(256'h000000000000000000000000000844E6E666E6E55D777FFFF7DF1201D5FF7FFF),
    .INIT_7D(256'h777F7FF7BC010000226F7FFFF73C012B777FFFEFAB800008B3777FFFF72B0180),
    .INIT_7E(256'h777FFFF7675EA20022777FFFF734018000225DE666DEE6E6E6FFFFFFF73C01A2),
    .INIT_7F(256'h775522AAAA332233222255EE0000FF77FFFFFFFFFF77FFFF77FFFF0000000022),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__14_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000010)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__14 
       (.I0(addra[13]),
        .I1(addra[14]),
        .I2(addra[12]),
        .I3(addra[15]),
        .I4(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__14_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized20
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [10:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  wire [10:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h00000000000000000000000FFFFFFFFFFFFFFC00000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'h00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h8800000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h8888000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'h00000000000000000000000000000000000000000000000000000000FFFFFFFF),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized21
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00007EFBFFBF7BB383000050140501C0A1C70E1C3800300000003E0000002996),
    .INIT_01(256'h0000000000000000000000000000000000000007FC03FE00FF807FC01FF00000),
    .INIT_02(256'h3E153E78D085000500000003F0081807FFE00000000000000000000000000000),
    .INIT_03(256'h000000FE005BC02FF00DFC07BE017580000000036EFFDFFB7FFCF8010B83E0F8),
    .INIT_04(256'h802FFF0000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h280000000037FFFFFFFFB6CFE0F0F83FCF83E47BD7A6C81000BC000303E1C17E),
    .INIT_06(256'h00000000000000000000000000000000000000001F200FCC07F5017DC07FE02F),
    .INIT_07(256'h83FCF83E457FFDD8B14017600068721F9FF803F3E00000000000000000000000),
    .INIT_08(256'h000000000001F300FCC05FF01FFC07FE02FE80000000036F7DECFEFF7CFD3F0F),
    .INIT_09(256'h0009FF803DFF0000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h7FE02FE8000000007EFB9BBB3FFBBFE1F3F9FFFF9FE47DFFBF281002DF00054C),
    .INIT_0B(256'h00000000000000000000000000000000000000000000001FF00FFC05FD017F40),
    .INIT_0C(256'hFF1F0F9FFDF9FF475FFFFA81405CF000BAFFFFFFF80337600000000000000000),
    .INIT_0D(256'h000000000000000001FF00FFC063D010FC043E021E807C3E0D83C00F86C0E074),
    .INIT_0E(256'hC1FBD00001EFC33BF70000000000000000000000000000000000000000000000),
    .INIT_0F(256'h87CFC3E3F0F9EC7FC1E0D87C00F87C160FFFF3DDFFFF9FFFFC57FFFF283C0BDF),
    .INIT_10(256'h00000000000000000000000000000000000000000000000000001FF00DFE1F1D),
    .INIT_11(256'hC1B0FFFF171FFFFDFFFFDFFF7F7F875FBF07EFE100000CFE3B3F600000000000),
    .INIT_12(256'h000000000000FF800FFF000E7F837FB15EEC57FF2FDD8AFFE6FC1E0F86C00F87),
    .INIT_13(256'h5D07EFE1FBF00000FFB3B41E07FF8FFF8F0787FE00007FFE78381FE07FE00000),
    .INIT_14(256'hFFFC6F7D3FDECDFFE7FBCFC1E0F86C00F87C1B0FFFFAF9FFFFDFFFFFDDFFED2E),
    .INIT_15(256'h0078F078B868000807E7CBC1FD080D0000000000000000181FFFB81FFFE3FE71),
    .INIT_16(256'hC00F86C190FDFF7F9FFBFDFFFFD4DF7150D53FFD07FFE0000002FFDB80F03878),
    .INIT_17(256'hF800000000000000017F3F8FFE7F0E3FF71BF6C7FFD2FEDCFFBE7FFEFC1E0707),
    .INIT_18(256'hC7870851FFA02FFC0000002FFBBDFE0F0780078F039F87C000007E7CFC3CF000),
    .INIT_19(256'hA3FFF1FFBC6FED3FF3CBFDE7FF480000000000000000007FE6F9FFFDDFFFFD47),
    .INIT_1A(256'hF070780078F07DF8FC000007E7FFCBBF401B400000000000000017FFFFBFFFFF),
    .INIT_1B(256'h0000000000000000077DFF977FF5FF7F947C78D0870E0401C340000003FFFBFF),
    .INIT_1C(256'h7038003C0000000000000001FFFFF7FFFFF60FFF1FFF46FFD3FFFCFFFE37FE80),
    .INIT_1D(256'hD9F543C78708503F8007FC0000000FEEDFBD070780078F039F8FC000007E7FFC),
    .INIT_1E(256'hDFFFFEC0FFE05FFC3FFE0BFE86FFC17FD00000000000000000002FBFEAFDBE07),
    .INIT_1F(256'hBFD3FFE0FE784878F079F878000047E7FFC70380E3C00000000000000017FFFE),
    .INIT_20(256'h0BFA00000000000000000001F9FFDF27E0FE7E943C78708500000007C0000000),
    .INIT_21(256'hFE7FFC70387C3E0000000000000001CF7FD9CEFFD807FC06FE817FC07FD02FFC),
    .INIT_22(256'hF83E0F83E0E1C70E1C380000002C0000000DFA000007E787FF8707DF87C0001F),
    .INIT_23(256'h0C1FFB1C37FB007FC07FD01BEC07FA03FF80DF400000000000000000000F94F8),
    .INIT_24(256'h0000007F4000001FF800787EE8F87C000003E73387FF87C3E000000000000000),
    .INIT_25(256'h401EF0076C00000000000000000000F95F0F83E0F83E00000000000000000140),
    .INIT_26(256'hC000007E75BC7FF8783800000000000000007F9EF0FFB73003F8035E00ED80D3),
    .INIT_27(256'h0F86F0F83E0F83E0000000000000000008000001FB7B800000FF800781DE0F8F),
    .INIT_28(256'h000000001BD7001BBB00370016C0057007FC00F6006E80000000000000000000),
    .INIT_29(256'h0000000000003FE000007FF800781FC1F87C000007E7C38703879F8000000000),
    .INIT_2A(256'h9E0006C01F6004C800000000000000000000F8EF0F83E0F83E00000000000000),
    .INIT_2B(256'h700B7740007FBE783C78387AC8000000000000000000F1E001FFE0077003FC00),
    .INIT_2C(256'h0000001FC6E5FC7F0FC7F000000000000000000000000085D9800007EF8FFF81),
    .INIT_2D(256'h00000000000000001E0000D000770037400B00006C01FA005F80000000000000),
    .INIT_2E(256'h0000000000000000007F980000FE79FFF803807FE00007FFC783C78387FE0000),
    .INIT_2F(256'h03FC00F00007C01FE007F80000000000000000000188B97847B1C47B00000000),
    .INIT_30(256'h8FFFC07003FF00007FFCF87CF87CFFC000000000000000000001E0000F000000),
    .INIT_31(256'h0000000000000C0100C0300C0300000000000000000000000000000000000FC7),
    .INIT_32(256'h000000000000000781C0000000000000000000000000000001E0000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h000000000000000000003F000000000000000000000000000000000000000000),
    .INIT_35(256'hFF0000000000000000000000000000000000000000000000007C3F0000000000),
    .INIT_36(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'h0000000001FFFFFFFFFFFC7E3FFFFFFFFFFFFFFFFFFFFFFFFFFFE1FF1FFFFFFF),
    .INIT_38(256'h0E000000000000C0000007000000000C00000000000000000000000000000000),
    .INIT_39(256'h00000E000000000001C00007FE00000000080000001800000000000000000000),
    .INIT_3A(256'h3003001C00000000000000000000000000000000000000080000000000000000),
    .INIT_3B(256'h06743003001C00261400C1B0040180300700000301060E0C30001A8000800034),
    .INIT_3C(256'h000000000000000000261400C1B0040180300300000301060E0C30001E800080),
    .INIT_3D(256'h9800000008000060E000000188000800030303B0043000000000000000000000),
    .INIT_3E(256'h40019C00000008000060E000000108000800070303B000718200000000004001),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000001820000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000020000048010000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000E000408001C0),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h00000000000000000000000C000008000C000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h8070400000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000800840),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h000000000000000000000000000008008408F304000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h8078408F70400000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000080F8408F704000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h00000081F8408F70400000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h000000000000000000000000000000000000000008FF8408E704000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000008FF8408E70400000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000081F8408E704000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h00000000000000000081F8408E70400000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h000000000000000000000000000000000000000000000000000008038408E704),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000008038408F70400000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h08E7000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000080004),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h000000000000000000000000000000C000408000C00000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0C000000000C0000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000006000618001800000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h00000003FFF807FFF00000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000002C1EF00000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000380FE0000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h000000000000000000000000000000000000000385FE00000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000007CE0000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000001C00000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000421004000000000088478E00000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000038000),
    .INIT_1A(256'h9DF3C7F1FE0FE0FFB8E0E0000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000003800000000000000000000000000000007),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'hE3E7E7E07C7C3CE47F00000000000000003BDF3D7F1FE2FE9FFB8E0E00000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000763),
    .INIT_1F(256'h000000FDF3DE00079C73CFB8E0E0000000000000000000D84800000000000000),
    .INIT_20(256'h000000000000000000000000000000002EEBDEDED70B6B67E1EF700000000000),
    .INIT_21(256'h000000FFFFFFFFFFC88880000000000000000000000000000000000000000000),
    .INIT_22(256'h00006E398ECE600E0EE70CEF00000000000000000DDF3CE30071C73CFB8E0E00),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000001DF3CFF9FE1C73CFB8E8E00000000FFFFFFFFFFD753400000000),
    .INIT_25(256'h00000000000000000000000000000000000000067FB8E6FE0F8F85F0CEF00000),
    .INIT_26(256'h87CE00000000FFFFFFFFFFEFAFB0000000000000000000000000000000000000),
    .INIT_27(256'h0000000000603B8EE0E07262070CC7000000000000000001DF3CE79E01C73CFB),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'hF000000000000000001DEFCFB9FF9D73CFB858E00000000FFFFFFFFFFEFDFC00),
    .INIT_2A(256'h00000000000000000000000000000000000000000000067F30CE7E03F3E7C0EF),
    .INIT_2B(256'hFEBCFB80FE00000000FFFFFFFFFFDFFFC0000000000000000000000000000000),
    .INIT_2C(256'h000000000000000073E70CE7C03E3E7C0E77000000000000000001DFF4FF9FFA),
    .INIT_2D(256'hFFFC000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h000000F000000000000000001DFF0FE07F0FE3CFB80FE00000000FFFFFFFFFFD),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h000000000000000000000000FFFFFFFFFFDFFFC0000000000000000000000000),
    .INIT_31(256'h00000000000000000000000000000000000000000F0000000000000000000000),
    .INIT_32(256'hFFFFFFFFFB000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h00000000000000000000000000000000000000000000000000000000000FFFFF),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h000000000000001010000000000000FFFFFFFFFFEFFFA0000000000000000000),
    .INIT_36(256'h000000000000000000000000000000000000300000C000007800000000000000),
    .INIT_37(256'h0FFFFFFFFFFD7FF4000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000380001C000007800000000000000000000000000000FE000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h000000000000000000001FE8000000000000FFFFFFFFFFCBFE80000000000000),
    .INIT_3B(256'h000000000000000000000000000000004224040820BA8811C84000BC00000000),
    .INIT_3C(256'h0000000FFFFFFFFFFC5FD0000000000000000000000000000000000000000000),
    .INIT_3D(256'h000FF7FEFCFD0FFB1E7E7E0FC780000000000000000000000000000003800000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h00000000000000000250689E73007C000000000000FFFFFFFFFFC2FA00000000),
    .INIT_40(256'h00000000000000000000000000000000000000C77E6C0670307F81C060C77000),
    .INIT_41(256'hC000000000000FFFFFFFFFFC1FA0000000000000000000000000000000000000),
    .INIT_42(256'h000000000FE7E6FC660307FE1C3E0CF7800000000000000000007F03FFE3F801),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'hEF700000000000000000000E3EF7BEF0001C000000000000FFFFFFFFFFC17400),
    .INIT_45(256'h00000000000000000000000000000000000000000000FF7E6C6670383FF9CF80),
    .INIT_46(256'hEE01F9C000000000000FFFFFFFFFFC0A80000000000000000000000000000000),
    .INIT_47(256'h000000000000000477E6EC7F0F03FB986006CF80000000000000000000E3EE3B),
    .INIT_48(256'hC0700000000003FFFFFFFFFFFFFFFFFFFFFFE001FFFFFFFFFFFFFFFFFFFFFFF0),
    .INIT_49(256'hF307E07C700000000000000000000FFEE3BEFF1F9C000000000000FFFFFFFFFF),
    .INIT_4A(256'hFFFFFFFF003FFFFFFFFFFFFFFFFFFFFFFF00000000000000003E7EC7C7E0F03F),
    .INIT_4B(256'h03EE3BEF3DF3C000000000000FFFFFFFFFFFFFFC000000007FFFFFFFFFFFFFFF),
    .INIT_4C(256'hFFFFF80000000000000000000000600000000000000000000000000000000001),
    .INIT_4D(256'hFFFFFFFFFFC000000007FFFFFFFFFFFFFFFFFFFFFFE003FFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'hC000000000000000000000000000000000003EE3BEE1DE3C000000000000FFFF),
    .INIT_4F(256'h0000000000000380700000000000000000000003E00000000000000000000003),
    .INIT_50(256'h0000007FEE3BEFFDFF8000000000000FFFFFFFFFFFFFFC00000001F000000000),
    .INIT_51(256'h00000000003E0000000000000000000000020000000000000000000000000000),
    .INIT_52(256'h00FFFFFFFFFFFFFFC00000001F00000000000000000000003807000000000000),
    .INIT_53(256'h000000000000000000000000000000000000000007F0E7BEFF9FE00000000000),
    .INIT_54(256'h0000000000000000000080400000000000000000000000E00000000000000000),
    .INIT_55(256'h0000000000004289480001010000000000000FFFFFFFFFFFFFFC00000001C000),
    .INIT_56(256'h00000000000000000E0000000000000000000000000000000000000000000000),
    .INIT_57(256'h00000000FFFFFFFFFFFFFFC00000001800000000000000000000000804000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0180000000000000000000000080400000000000000000000000E00000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000FFFFFFFFFFFFFFC000000),
    .INIT_5B(256'h00000000000000000000000E0000000000000000000000000000000000000000),
    .INIT_5C(256'h00000000000000FFFFFFFFFFFFFFC00000001800000000000000000000000804),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h00000001800000601800000000003C0080400000600000000000003E00E00000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFC),
    .INIT_60(256'hC0080400000740000000000003F00E0000000000000000000000000000000000),
    .INIT_61(256'h00000000000000000000FFFFFFFFFFFFFFC00000001800000641C20000000007),
    .INIT_62(256'hE000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'hFFFFFC000000018000006718C0000000007E0080400000670000000000003F00),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000FFFFFFFFF),
    .INIT_65(256'h11A0003C080403C38038F12061B080D01C0E0000000000000000000000000000),
    .INIT_66(256'h00000000000000000000000000FFFFFFFFFFFFFFC000000018058C60381C3413),
    .INIT_67(256'h0F80C0E000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'hFFFFFFFFFFFC00000001807CCF6FBDF3C3FBFF3F038080407E3E6F8F3F3F1F9F),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000FFF),
    .INIT_6A(256'hDC77633FF6383C08041C6EFE3191F67FBF1BBC0C0E0000000000000000000000),
    .INIT_6B(256'h00000000000000000000000000000000FFFFFFFFFFFFFFC0000000180EECF63B),
    .INIT_6C(256'h77FB79B3C0C0E000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h000FFFFFFFFFFFFFFC0000000180EEF7673CE77673376783C08041E6C7E7388F),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'hE7E67BCC87673376787808041E6C7E7B9C307FB79B3C3C0E0000000000000000),
    .INIT_70(256'h00000000000000000000000000000000000000FFFFFFFFFFFFFFC00000001810),
    .INIT_71(256'hE3B98307FBF1BBDF00E000000000000000000000000000000000000000000000),
    .INIT_72(256'h000000000FFFFFFFFFFFFFFC00000001800E3C63BDE076333763BF008041E6EF),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h00180FC386E3DC7C3F3373F7E008041E63E6E3F833F3FBF1FBF00E0000000000),
    .INIT_75(256'h00000000000000000000000000000000000000000000FFFFFFFFFFFFFFC00000),
    .INIT_76(256'h400008400902320B82051400E000000000000000000000000000000000000000),
    .INIT_77(256'h000000000000000FFFFFFFFFFFFFFC00000001806810441983413A2008140080),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'hC0000000180000000000000380000000080400000000000000380000000E0000),
    .INIT_7A(256'h00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF),
    .INIT_7B(256'h000080400000000000000100000000E000000000000000000000000000000000),
    .INIT_7C(256'h000000000000000000000FFFFFFFFFFFFFFC0000000180000000000000400000),
    .INIT_7D(256'h0E00000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'hFFFFFFC000000018000000000000000000000008040000000000000000000000),
    .INIT_7F(256'h00000000000000000000000000000000000000000000000000000000FFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:1],DOUTA}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized22
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra,
    dina,
    wea);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [13:0]addra;
  input [1:0]dina;
  input [0:0]wea;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [13:0]addra;
  wire clka;
  wire [1:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000F4000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h00000000000000000002E000B800000000000000000000000000000000000000),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFF00000000000000001E000000000000000000000000000),
    .INIT_03(256'h000000000000000000000000000000000000000000000000000000FFFFFFFFFF),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h00000000000000F4000000000000000000000000000000000000000000000000),
    .INIT_06(256'h00000000000000000000000002E000B800000000000000000000000000000000),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000001E000000000000000000000),
    .INIT_08(256'h000000000000000000000000000000000000000000000000000000000000FFFF),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h00000000000000000000F4000000000000000000000000000000000000000000),
    .INIT_0B(256'h00000000000000000000000000000002E000B800000000000000000000000000),
    .INIT_0C(256'h00FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000001E000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000FF4000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000002FE000BF80000000000000000000),
    .INIT_11(256'h00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000001FF00000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000FF4000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000002FE000BF80000000000000),
    .INIT_16(256'h00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000001FF00),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40000000000000000000000000),
    .INIT_1A(256'h001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD000007FFFFFFFF),
    .INIT_1B(256'h00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000),
    .INIT_1F(256'h000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD000007FF),
    .INIT_20(256'h00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000004000000000000000000000000000000000000000000000000),
    .INIT_25(256'h00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'hFFF0000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'hFFFFFFFFF0000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'hFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000),
    .INIT_34(256'h00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000),
    .INIT_39(256'h00000000000000000000000000000000000000000000000000000000FFFFFFFF),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000),
    .INIT_3E(256'h00000000000000000000000000000000000000000000000000000000000000FF),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'hFFFFF00000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'hFFFFFFFFFFF00000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized23
   (DOUTA,
    clka,
    ENA,
    addra,
    dina,
    wea);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000070000701C0701C0E1C70E1C3800300000003E0000003FFE),
    .INIT_01(256'h0000000000000000000000000000000000000007FC03FE00FF807FC01FF00000),
    .INIT_02(256'h221B2648B146800700000003F00FF80400100000000000000000000000000000),
    .INIT_03(256'h000000000064C030300A1C0646018B800000000000000000000088070C822088),
    .INIT_04(256'h8040010000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h580000000000000000000008E0908823C88227AA7CB9F4E800DC000303E1C181),
    .INIT_06(256'h000000000000000000000000000000000000000000C00834060B0182C0402030),
    .INIT_07(256'h822488227AE54EA77EC019E00078721F9008040C100000000000000000000000),
    .INIT_08(256'h0000000000000C0083406010100C0402030180000000000000000000008B3908),
    .INIT_09(256'h0009008046F10000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h402030180000000000000000000038929389E2789E27AA54E8D7EE03330006CC),
    .INIT_0B(256'h00000000000000000000000000000000000000000000000000080406030180C0),
    .INIT_0C(256'h892978F2268F23FAA54A857EA0631000C6FFFFF00804CD900000000000000000),
    .INIT_0D(256'h000000000000000000000080407C301F0C07C203E18000000000000000000087),
    .INIT_0E(256'hC1FC300001F0C34C190000000000000000000000000000000000000000000000),
    .INIT_0F(256'h87F0C3FC30FE1C7000000000000000000048929E8922689227AA54A8D7CA0C20),
    .INIT_10(256'h000000000000000000000000000000000000000000000000000000000A061FE3),
    .INIT_11(256'h0000048929E89226892260A58A9C78BFC0FFF01F00000F0E3CC1900000000000),
    .INIT_12(256'h000000000000FF800FFF000E00007C71DF1C77873FE38EF0E780000000000000),
    .INIT_13(256'h63F81FFE07F00000F872CFF103FFCFFFCF87C3FF0000FFFCF87C0FC0FFC00000),
    .INIT_14(256'hC1F470FF383FCE0FA707F8000000000000000000489F1689226892263A5C3331),
    .INIT_15(256'hFFFCF87C7FF00007FFCF87C0FE07FE00000000000000001FFFFFFFFFFFA00001),
    .INIT_16(256'h00000000000481B968920689225AA34DB136FC0307806000000301EC7F107FFC),
    .INIT_17(256'hF0000000000000000180C0730180F20000140F4403B301EC8072601D80000000),
    .INIT_18(256'h4489146980603004000000380CC0010F87C007CF87CF078000003CFFFC3FF001),
    .INIT_19(256'h600001C0447013380CCE02270098000000000000000000483B968922E89225A4),
    .INIT_1A(256'h10F87C007CF878F078000003CFFFC7C780078000000000000000180000700000),
    .INIT_1B(256'h0000000000000000048EA968903601805A6448B1448FFC01FCC0000003800C00),
    .INIT_1C(256'hF87C007C000000000000000100000F00000E00001C00470033800CE002780180),
    .INIT_1D(256'h3E0DA2448914683F8007C40000000801E0430F87C007CF87CF078000003CFFFC),
    .INIT_1E(256'hD00001C00000600C30020C01870041803000000000000000000030AA9703C218),
    .INIT_1F(256'hC033FFE0FC7C3FFCF87CF07C0003FFCFFFCF87CFC7C000000000000000180001),
    .INIT_20(256'h0C06000000000000000000018AA858E6208E639A244891468000000640000000),
    .INIT_21(256'hFCFFFCF87CFE7C0000000000000001F08039F10038000007018180404030300C),
    .INIT_22(256'h8822088220E1C70E1C38000000340000000E0600000FC7C3FFCF878F0780003F),
    .INIT_23(256'h0FF8071FF80700000070301C1C0606038180E0C000000000000000000008AB98),
    .INIT_24(256'h00000060C000000FFC007C3DF0F078000007CFFFCFFFCF87C000000000000000),
    .INIT_25(256'hC01930069C0000000000000000000089B90882208822000000000000000001C0),
    .INIT_26(256'h8000003CFB7CFFFCF87C00000000000000007FF330FFF9F0000003A600DB80EC),
    .INIT_27(256'h088A90882208822000000000000000000800000006CC000001FFC007C3FF0F07),
    .INIT_28(256'h000000001FDB001FD70000001F4007B007EC00BA007D80000000000000000000),
    .INIT_29(256'h0000000000002E8000003F7C007C0FC0F078000003CF87CF87CF8F0000000000),
    .INIT_2A(256'hFE0007C01BA007F80000000000000000000088A9088220882200000000000000),
    .INIT_2B(256'hFC078F8000007CF87CF87CFDF0000000000000000000F1A001FDE00000037400),
    .INIT_2C(256'h00000018CA958C6318C63000000000000000000000000006E8000003F7C007C0),
    .INIT_2D(256'h00000000000000001E0000F00000003FC00F00007C01FE007F80000000000000),
    .INIT_2E(256'h0000000000000000007F800000FC7CFFFC07003FF0000FFFCF87CF87CFFC0000),
    .INIT_2F(256'h03FC00F00007C01FE007F800000000000000000001FCFF7FC7F1FC7F00000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000001E0000F000000),
    .INIT_31(256'h0000000000000C0100C0300C0300000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h000000000000000007FFFC0FFFF8000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000400061800080),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000002100000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0E38800000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000400421),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h00000000000000000000000000000401C210E788000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h403C210E38800000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000040FC210E388000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h00000043FC210E38800000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000047FC210E388000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h00000000000047FC210E38800000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000043FC210E388000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h00000000000000000040FC210E38800000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h00000000000000000000000000000000000000000000000000000407C210E388),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h000000000000000000000000401C210E38800000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h10E38C0000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h00000000000000000000000000000000000000000000000000000000000400C2),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000210000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0400061800080000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000007FFFC0FFFF800000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h000000000000000000000000000000000380FE00000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h00003C1FF0000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000003C3FF00000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h00000000000038F0000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h000000000000000000000000000039CE387F1FE0FE0F738F0F00000000000000),
    .INIT_19(256'h000000000000000000000000000000000000000000000000000000000001C000),
    .INIT_1A(256'hBCE3C7F1FE0FE0FF3CF0F0000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000001C00000000000000000000000000000007),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'hE7E7E7C0FCFC7E6E7E00000000000000007FCE3CFF1FF9FF3FF3CF0F00000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000373),
    .INIT_1F(256'h000000FCE3DE0007BC7BC73CF0F0000000000000000000203000000000000000),
    .INIT_20(256'h000000000000000000000000000000001F773CEEEE04E4EE77EEE00000000000),
    .INIT_21(256'h000000FFFFFFFFFFC70700000000000000000000000000000000000000000000),
    .INIT_22(256'h0000F7F1CCEFF03E3EFF1EC6000000000000000003CE3DFE07FBC7BC73CF0F00),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000003CE3DFF07E3C7BC73CF0F00000000FFFFFFFFFFCF8F800000000),
    .INIT_25(256'h00000000000000000000000000000000000000077F1CCEFF07C7CFF0EC600000),
    .INIT_26(256'hC38F00000000FFFFFFFFFFDFDFC0000000000000000000000000000000000000),
    .INIT_27(256'h00000000007071CCE070E0E0070EEE000000000000000003CE3DE3DE03C7BC73),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'hE000000000000000003CF3DE7DE03EFBC73C3FF00000000FFFFFFFFFFDFFFF00),
    .INIT_2A(256'h00000000000000000000000000000000000000000000073E78EE7C07E7E7E0E7),
    .INIT_2B(256'hFF3C73C1FF00000000FFFFFFFFFFFFFFF0000000000000000000000000000000),
    .INIT_2C(256'h00000000000000000000000000000000000E000000000000000003CFF9FF07F9),
    .INIT_2D(256'hFFFF000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000006000000000000000003CFF1FF07F8FE3C73C1FF00000000FFFFFFFFFFF),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h000000000000000000000000FFFFFFFFFFFFFFF0000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000060000000000000000000000),
    .INIT_32(256'hFFFFFDFFFC000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h00000000000000000000000000000000000000000000000000000000000FFFFF),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h000000000000000FE0000000000000FFFFFFFFFFDFFFC0000000000000000000),
    .INIT_36(256'h000000000000000000000000000000000000380001C000003000000000000000),
    .INIT_37(256'h0FFFFFFFFFFCFFF8000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000380001C000003000000000000000000000000000001FF000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h000000000000000000000FF0000000000000FFFFFFFFFFC7FF00000000000000),
    .INIT_3B(256'h000000000000000000000000000000003C1BE3C7C07D31E3E7807C7800000000),
    .INIT_3C(256'h0000000FFFFFFFFFFC3FE0000000000000000000000000000000000000000000),
    .INIT_3D(256'h0007E3FE7CFE07DFBF3EFC07EFC0000000000000000000000000000007800000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h000000000000000007F83DFC3F801E000000000000FFFFFFFFFFC1FC00000000),
    .INIT_40(256'h00000000000000000000000000000000000000E766EE0E7038F301C0E0EE3800),
    .INIT_41(256'hE000000000000FFFFFFFFFFC0FC0000000000000000000000000000000000000),
    .INIT_42(256'h000000000FF66EFCE703833F1C7C0E63000000000000000000007F87FFC7F801),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'hC6380000000000000000001FFCFFFCFF801E000000000000FFFFFFFFFFC0F800),
    .INIT_45(256'h000000000000000000000000000000000000000000000766EEEE70383339CE00),
    .INIT_46(256'hCF00F1E000000000000FFFFFFFFFFC0700000000000000000000000000000000),
    .INIT_47(256'h0000000000000003E66EFEFE07833F3CFE0FE700000000000000000001E1CF79),
    .INIT_48(256'hC000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'hE383E07CE00000000000000000001FFCF79CFF0F1E000000000000FFFFFFFFFF),
    .INIT_4A(256'hFFFFFFFE001FFFFFFFFFFFFFFFFFFFFFFF00000000000000007C666FCFC06033),
    .INIT_4B(256'hFFCF79CFFCE1E000000000000FFFFFFFFFFFFFFC000000003FFFFFFFFFFFFFFF),
    .INIT_4C(256'hFFFFF00000000000000000000000E00000000000000000000000000000000000),
    .INIT_4D(256'hFFFFFFFFFFC000000003FFFFFFFFFFFFFFFFFFFFFFF001FFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'hE000000000000000000000000000000000001CF79CF3CE7E000000000000FFFF),
    .INIT_4F(256'h00000000000007C0F80000000000000000000003C00000000000000000000007),
    .INIT_50(256'h0000007FCF79CFFCFF8000000000000FFFFFFFFFFFFFFC00000000F000000000),
    .INIT_51(256'h00000000003C00000000000000000000003C0000000000000000000000000000),
    .INIT_52(256'h00FFFFFFFFFFFFFFC00000000F00000000000000000000007C0F800000000000),
    .INIT_53(256'h000000000000000000000000000000000000000007F8F79CFF0FF00000000000),
    .INIT_54(256'h00000000000000000001C0E00000000000000000000000C00000000000000000),
    .INIT_55(256'h0000000000003D0631CFF0FE0000000000000FFFFFFFFFFFFFFC00000000C000),
    .INIT_56(256'h00000000000000000C0000000000000000000000000000000000000000000000),
    .INIT_57(256'h00000000FFFFFFFFFFFFFFC00000000C00000000000000000000001C0E000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h00C00000000000000000000001C0E00000000000000000000000C00000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000FFFFFFFFFFFFFFC000000),
    .INIT_5B(256'h00000000000000000000000C0000000000000000000000000000000000000000),
    .INIT_5C(256'h00000000000000FFFFFFFFFFFFFFC00000000C00000000000000000000001C0E),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h00000000C00000000000000000000001C0E00000000000000000000000C00000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFC),
    .INIT_60(256'hE01C0E00000E30000000000003E00C0000000000000000000000000000000000),
    .INIT_61(256'h00000000000000000000FFFFFFFFFFFFFFC00000000C00000E338C0000000007),
    .INIT_62(256'hC000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'hFFFFFC00000000C000000300E0000000000701C0E00000030000000000000380),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000FFFFFFFFF),
    .INIT_65(256'h000000781C0E000000700000000000003C0C0000000000000000000000000000),
    .INIT_66(256'h00000000000000000000000000FFFFFFFFFFFFFFC00000000C000000700E0000),
    .INIT_67(256'h1F01C0C000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'hFFFFFFFFFFFC00000000C0FCE6EFDBF7E3F1FF3E0181C0E07E7CEFDFB33E1F9F),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000FFF),
    .INIT_6A(256'h8EE777777770181C0E0EEE667B80F7333BBB981C0C0000000000000000000000),
    .INIT_6B(256'h00000000000000000000000000000000FFFFFFFFFFFFFFC00000000C1CEE6E71),
    .INIT_6C(256'h7F33B3B981C0C000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h000FFFFFFFFFFFFFFC00000000C1FEEEE318CFF73777730181C0E0CEE6633F07),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'hEFEE318E7F73777730381C0E0CEE6633F877F33B3B981C0C0000000000000000),
    .INIT_70(256'h00000000000000000000000000000000000000FFFFFFFFFFFFFFC00000000C0F),
    .INIT_71(256'h6739C70333BBB98380C000000000000000000000000000000000000000000000),
    .INIT_72(256'h000000000FFFFFFFFFFFFFFC00000000C00E7CE718C0777777770701C0E0CEE6),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h000C0FC38EE1B87E3F7773E7C01C0E0CE7CEE3F073E1F9F1F3E00C0000000000),
    .INIT_75(256'h00000000000000000000000000000000000000000000FFFFFFFFFFFFFFC00000),
    .INIT_76(256'hE00000000000000380000000C000000000000000000000000000000000000000),
    .INIT_77(256'h000000000000000FFFFFFFFFFFFFFC00000000C00000000000007000000001C0),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'hC00000000C00000000000007000000001C0E00000000000000380000000C0000),
    .INIT_7A(256'h00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF),
    .INIT_7B(256'h0001C0E00000000000000380000000C000000000000000000000000000000000),
    .INIT_7C(256'h000000000000000000000FFFFFFFFFFFFFFC00000000C0000000000000300000),
    .INIT_7D(256'h0C00000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'hFFFFFFC00000000C00000000000000000000001C0E0000000000000000000000),
    .INIT_7F(256'h00000000000000000000000000000000000000000000000000000000FFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:1],DOUTA}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__8_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h080200000000000000000001DA4C996720C275923068B10400000001C0000000),
    .INITP_01(256'hF83FFABC7E7E790000000000000001F90059B08038000004038145C030103814),
    .INITP_02(256'hC8320C83A0E1C70E1C380000002C0000000E0600001FEBA5FF9F4BC38BE0003F),
    .INITP_03(256'h0FCFA11BDF0700204068301C040546034280C0400000000000000000000CB0C8),
    .INITP_04(256'h0000007CC000001FFA00B85B7578BE00000383B7EFFFE7218000000000000000),
    .INITP_05(256'hC01E7004CC00000000000000000000C88C0C8320C83200000000000000000140),
    .INITP_06(256'hE00000787EBAFA7E74FE00000000000000007FDC70FF98F00000036200C080DC),
    .INITP_07(256'h0C8AC0C8320C832000000000000000000800000003AC000000F7A00BA6CC9783),
    .INITP_08(256'h000000001DD7001FBF0000001740057007D400F6005F80000000000000000000),
    .INITP_09(256'h0000000000003D0000001EBA00BA1FA038BC0000078703E7C7E35F0000000000),
    .INITP_0A(256'hDE00044013E005D800000000000000000000C82C0D8320C83200000000000000),
    .INITP_0B(256'h3A1F0280008078743AF47E70E0000000000000000000F16000F9E0000002EC00),
    .INITP_0C(256'h0000000CCAD48C201A030000000000000000000000000007B800000DC3800BA0),
    .INITP_0D(256'h0000000000000000120000B00000002EC00D00005C0136006C80000000000000),
    .INITP_0E(256'h0000000000000000007F8000017CBA7FFA03007FE00007FFAF47AF47E7FE0000),
    .INITP_0F(256'h03FC00F00007C01DE007F80000000000000000000124683284413C4400000000),
    .INIT_00(256'hBBFF000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'hCC00000000880000000000000000000000000000000000000000000088EEEE33),
    .INIT_02(256'h0000FF33AAEE000000FF33AA77000088DDAABBFF00000055AACC000000FFCCAA),
    .INIT_03(256'hAA22FF0000000000FF33AA226666FF0088FF77332233EEDD770000FFCC22DD00),
    .INIT_04(256'hFF33AA33FF0055AA66336622FF33AAAABBEE0077FFAAAA33CC55770000FFFFBB),
    .INIT_05(256'h00000000880000880000000000888800000000000000000000000000000000FF),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h00000000FFCCAAAAAAAAAAAAAA44FF0000000000000000000000000000000000),
    .INIT_08(256'h00EEBB332222AA22AAAACCFF000000000000FFDD3322AAAAAAAA22BB66FF0000),
    .INIT_09(256'h22AAAAAA22AA33DD77000000000000FFCCBB22AA22332233BB77880000000000),
    .INIT_0A(256'h22AA55FFFF000000000000000022AAAAAA222222AAAA00880000000000FF6644),
    .INIT_0B(256'hCC22AAAAAA2222AA2233CC77FF0000FFFFEEDD55AA22AA44BBAAAAAAAAAAAAAA),
    .INIT_0C(256'h0000000000000000000000000000000000000000880000FFFFFFDDDD33AAAABB),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h915D7FFFF7CD8A01D5FFFFFFF7F74D09085E7FFFF7560A008000000000000000),
    .INIT_0F(256'h7F7F7FFFF7E71201D5FF7FFFFFF7F7FF777FFFFFF756928966FFFFF74D098000),
    .INIT_10(256'hAB800000B3777FFFEFA3018000000000000000000000000000885D7FFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFF7FFFFFF73C819AEE7F7FFF3C018901AA6F7FF7F7BC012B77FFFFEF),
    .INIT_12(256'h880000000000000000000821EE7F7F7FFFF73300A26EFFFFF73409000033F7FF),
    .INIT_13(256'h000000000000000000000000FFFF55AA22AAAAAAAA55FF000000000000000000),
    .INIT_14(256'h00000000000000000000FF44BB77000000000000000000000000000000000000),
    .INIT_15(256'h000000FFFFFF00000000FF77FF00000000000000000000000000000000000000),
    .INIT_16(256'h3322FF0000000000FFFFFF00000000FFFFFF008800FFFFFF0000000077FFFF00),
    .INIT_17(256'h7733AAAAFF0000008800FF3322AAFF00000000007733AAAAFF000000000077BB),
    .INIT_18(256'h000000000000000000000000FF3322AA7700DD3344224444FF33AAEEFF000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h6633AAAAAA22BB66FF00000000000000FFFFCC22AAAAAAAACCFF000000000000),
    .INIT_1C(256'hAAAA2244EE7700000000000000FFEEBBAA332222AADDFF00000000000000FFFF),
    .INIT_1D(256'hAA330000000000000077FF663322AAAAAAAADDFF00000000000000FFFF55AAAA),
    .INIT_1E(256'hDD5566FFDD33BB33AA2222AAAADDFFFF00000000000000000022332222AAAAAA),
    .INIT_1F(256'h00000000FF7755DDDDDDCC66FFBB33BB332233AA2244EEFF000000FFFF66DDDD),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'hF756128000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'hF7D692895E7FFFFFF7F7F7777F7F7F7FF74D0A01D57F7FFF5E120901094DF7FF),
    .INIT_23(256'h000000000000888889888808914C7FFFF7E71A01D5FFFFFFDEC577FF445D7FFF),
    .INIT_24(256'hF7FFFFCD120900AB777FFFEFAB810000B3777FFFF7AB01800000000000000000),
    .INIT_25(256'h7F7FFFFFF73C01000000880890888808AA76FFFFF73C8101913BF77FF7E73356),
    .INIT_26(256'hDDFF00000000000000000000000000000000000000000008910808C477FF6F77),
    .INIT_27(256'h00000000000000000000000000000000000000000000000000FFFFBB33BB22AA),
    .INIT_28(256'h0000000000000000000000000000000000000000000000FFCCFF000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'hFF33AAAAFF0000000000FF33AA22FF0000000000000000000000000000000000),
    .INIT_2B(256'h55AACCEE77BBAA6600000000FF33AAAAFF0000000000FF33AA22FF0000000000),
    .INIT_2C(256'h000000000000000000000000000000000000000000000000FF3322AAFF000066),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h5533AA4477FF0000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'hDDFF000000000000000000FFFF33BB44AA3377FF00000000000000000077EEAA),
    .INIT_30(256'h0000000000000000FF77AACCEEAA44EEFF0000000000000077FFCC33DDDDAA22),
    .INIT_31(256'h00000000000022AA2222222222000000000000000000FFFF443355AAAAEEFF00),
    .INIT_32(256'hAABBFFFF00000000FFFF77FFFFFF77FF774466FFDD22AA6655DD77FF00000000),
    .INIT_33(256'h0000000000000000000000000000000000FFFFFF77FFFFFFFF554477333366CC),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h557FFFFF5E918089225E7F776F45818100000000000000000000000000000000),
    .INIT_36(256'hD57FFFFFD6B4DE6F3CD57FFFF75E1209667FFFFFF7E66FEF6E7F7FFFF7D50989),
    .INIT_37(256'hEFA30100000000000000000000000000000000000000000000CC7FFFF7E71201),
    .INIT_38(256'hF73C010000AA66F777F7C5677F77E6BC010000AB777FFFF7AB80000033777FFF),
    .INIT_39(256'h000000000011114C7F7FFFFFF77FFFFFF73401000000000000000000226E7FFF),
    .INIT_3A(256'hAA2222AAAA44FF33DD66BBAAFFDDAA2222000000000000000000000000000000),
    .INIT_3B(256'h00000000FF000000000000000000000000000000000000000000000000008822),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000FF3322AAFF0000000000FFBB22AAFF00880000007733AA22FF0000000000),
    .INIT_3F(256'h00000000FF3322AAFF00000055AAFF00FF33AA6600000000FF33AAAAFF000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h000000000000000000FF6655FF77BB5577000000000000000000000000000000),
    .INIT_43(256'h000000000077FFFFFFFF663366FF00000000000000000000FFBBFFFFCC33FF00),
    .INIT_44(256'h000000774477FF55AAFF00000000000000000000007744FFCCBBFFFF00000000),
    .INIT_45(256'hFFCC3377BBDDFFFF00000000000000000000AA2200AAAAAA0000000000000000),
    .INIT_46(256'h000000FFFFDD66FFFF7788FF44BBFF770000000000000000000000FF77DD77FF),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h4D890000115D7FFFF7CD090955FFFFFF569100C47F7FFF6F1A80800000000000),
    .INIT_4A(256'h0000000008CC7FFFF7DE1201D57FFFFF5612800008D57FFFF7D69289DD7FFFF7),
    .INIT_4B(256'h7FFFFF772B800000AAF77FFFF7AB800000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000226E7FFFF7340100000008CC7FFF77FFF7DE89808000002A),
    .INIT_4D(256'h00000000000000000000000000000000002AFF7FFFFFF7EFBC6FFFFFF7340100),
    .INIT_4E(256'h00000000000000000000008800880000000077BBFFFFEE33EEAAAA0000000000),
    .INIT_4F(256'h0000000000000000000000000000000088000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000FFBB22AAFF00000000000000000000000000000000000000000000000000),
    .INIT_52(256'h00000000FF33AA33FF8800000000FF33AAAAFF0000000000773322AAFF000000),
    .INIT_53(256'h00000000000000000000000000000000FF33AAAAFF00008866AAFF00773322EE),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000007766AAFFFFDDBBFF0000000000000000000077CC55FF774455FF000000),
    .INIT_57(256'h77DD44FFFFFF778800000000000000000088000088FF66CC66FF000000000000),
    .INIT_58(256'h00AAAAAA000000000000000000007766337777EE33FF00000000000000000000),
    .INIT_59(256'h0000000000000066FFFFFFFFFFEEAAFFFFFFFF0000000000000000000022AAAA),
    .INIT_5A(256'h00000000000000000000000000000000FFFFFFFF000000FF6633770000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h7FFFD6C412800000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h08DD7F7FF75E12895E7F77F75609000011E67FFFF7D50901D57F7FFFE63CABD5),
    .INIT_5E(256'h000000000000000099B3AAAAAAAAAA2A2A5D7FFFF7E71A01D57FFFFFDE928000),
    .INIT_5F(256'h4C6EFF77D53C0980800000A2CCE677F7C4AAAB2A4CF7FF5E45A2800000000000),
    .INIT_60(256'hFF776644B36FFFFFF7348189AAABABAAAAAAAAAAC4777FFFF7340080000008B3),
    .INIT_61(256'hFFEE55BBFF0000AA2200000000000000000000000000000000000091AACCFF7F),
    .INIT_62(256'h000000000000000000000000000000000000000000000000AA00000000FF55BB),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h000000DDFFAA33AAEEEE000000667733AA22EEEE000000000000000000000000),
    .INIT_66(256'hFFFF000055AAFF00FFBBAADD88FF0066FFAA22AAFFFF00000066FFAAAAAA66EE),
    .INIT_67(256'h000000000000000000000000000000000000000000000000000000EEFF33AAAA),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h00FFDDEEFF7766EEFF0000880000000000000000000000000000000000000000),
    .INIT_6A(256'h00FFEEDD77FF000000000000000000FF6666FFFFEE5577880000000000000000),
    .INIT_6B(256'h55FF00000000000000000000FFDD66FF00000000008800000000000000000000),
    .INIT_6C(256'h000000000000000000AA22AA00AAAAAA00000000000000000000FF66DD77FF66),
    .INIT_6D(256'h000000FF6666FF0000000000000000000000008800000000FFEE55FF00000000),
    .INIT_6E(256'h0000000000000000000088000000000000000000880000000000000000880000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'hFFD50989D57FFFFFFFFFFFFFFF772B8000000000000000000000000000000000),
    .INIT_71(256'hFFE6928155FFFFF75E920000095D7FFFFF5E1189E6FFFFFF5691000091E67FFF),
    .INIT_72(256'hFF7FFFC480800000000000000000000000000000CCFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'h7FFFFFFFF7BC00000000000008D5FF6F1A8080800000000000C47FFFFFFFFFFF),
    .INIT_74(256'h0000000000000019F77FFFFFFFF7AB009A6F7FFFFFBC091AEF7FFFFFFFFFFFFF),
    .INIT_75(256'h000000000000000000FF77FF77FFFF77FF0000AA220000000000000000000000),
    .INIT_76(256'h0000000000000000880000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'hDDEE0000007766EE66DD6666000000FF6666DDDDDD77000000FF66EE66556666),
    .INIT_7A(256'h0000000000000077EECC554466DD00006655FF6677CCCCEE00EEFFFFEECCDDCC),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'hFFFFFF0000000000000000000077FFFFFF77FFFF778800000000000000000000),
    .INIT_7E(256'h00000000008800000000000000FFFFFFFFFF000000000000000000FFFF77EEFF),
    .INIT_7F(256'h000000000000FFFF77FF77FFFF7700000000000000000000FFFFFF7700000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__8_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000010)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__8 
       (.I0(addra[12]),
        .I1(addra[14]),
        .I2(addra[13]),
        .I3(addra[15]),
        .I4(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__8_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4
   (DOADO,
    DOPADOP,
    clka,
    addra,
    dina,
    wea);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__9_n_0 ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hD7FF803807FE0000FEFE743874387FE000000000000000000001E0000F000000),
    .INITP_01(256'h0000000000000C0100C0300C03000000000000000000000000000000000007EF),
    .INITP_02(256'h0000000000000001008000000000000000000000000000000060000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000020000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000080000000000000),
    .INITP_06(256'h0000000100000000000044000440202000000000000000000000000000400010),
    .INITP_07(256'h0000000000000000000000000000280000020000000000020000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000100000000040000000400000000000000000000),
    .INITP_0A(256'h2000000000000000000000000000000000000000000000140000000000000000),
    .INITP_0B(256'h0000000100000020000000000000000004020000000000000040000000000200),
    .INITP_0C(256'h0000000000000000000000000010000000000402000100000000004001000100),
    .INITP_0D(256'h0400000004000000400000000000002000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000400000000000000900010200000001004400000004000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000400000),
    .INIT_00(256'h00000000FF77FF77000000000000000000000000000000000000000000000000),
    .INIT_01(256'h00000000000000000000000000000077FFFF7700000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'hAB3BBBB3A209000008AB3BBBB3A28000223B3BB3BBBB33BB33B3918000000000),
    .INIT_05(256'hA2333333333333B3333B33BBB32B09002233BBBBA3090000002A3BBBB3AB8100),
    .INIT_06(256'h000000000019333BBB333B3B3B33BB1A80000000000000000000000000000000),
    .INIT_07(256'h339A8009B33B3B3333333BBB3B3BBBB3B31A808000000000002ABB2B09800000),
    .INIT_08(256'h0000000000000000000000000000000000000091B3333BBBB3B39A0011333333),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h000000880000FF77008800000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000FFFF0000000000000088FF770000000000000000FFFF0000),
    .INIT_0E(256'h0000000000000000000000000000000000000000FFFF008800880000000000FF),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h00000000000000AA223333000000000000000000000000000088000000000000),
    .INIT_12(256'h0000000000000000000000000000008800000000000000000000000000000000),
    .INIT_13(256'h8800000088000000000000000000000000000000000000000088000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'hAA000000000000AA332200000000000000000000000000000000000088000000),
    .INIT_16(256'h000000000000000000000000000000000000000000000000000000008822AA33),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0080000000000000000000000000000000000000000000000000800000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000800000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000080000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000880000000000000000000000000000000000000000),
    .INIT_1D(256'h0088000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000880000008800000000),
    .INIT_21(256'h0000880000000000880000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000008800000000000088000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000008800000000008800003322AA22AA220000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000880000),
    .INIT_28(256'h8800000000000000000000000000000000000000000000000000008800000000),
    .INIT_29(256'h000000000000000099AA2222AAAA00000000AAAA22AAAA220000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000880000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000080000000),
    .INIT_2D(256'h0088000000000000000000000000000000000000000000000008000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000800),
    .INIT_2F(256'h2222222222222222000000000000008000000000000000000000000000000000),
    .INIT_30(256'hAA222222AAAA22AAAA33AA2222AAAAAAAAAA22AAAAAAAA2222222233AA22AAAA),
    .INIT_31(256'h2222222222222222AAAAAA22AAAA22AA22222222222222222222222222222222),
    .INIT_32(256'h222222222222222222AAAA22AAAA22AA22222222222222222222222222222222),
    .INIT_33(256'h22AAAA22AAAA2222222222222222222222222222222222222222222222222222),
    .INIT_34(256'h22AAAA22223322AA2233AAAAAAAA22AA2222332222AAAAAAAAAA3322AA22AA22),
    .INIT_35(256'h222222222222222222AAAA22AAAA22AA2233AA22AA3322AAAA22AA22AA22AAAA),
    .INIT_36(256'hAAAA2222AAAAAAAA222222222222222222222222222222222222222222222222),
    .INIT_37(256'hAAAA2222AAAAAAAA2222222222222222222222222222222222AA2222AA222233),
    .INIT_38(256'h00880022AAAA22AA2222222222222222AA22AAAAAAAAAAAA22AA22AAAA2222AA),
    .INIT_39(256'hAAAA22AAAA2222AA2222AAAAAAAAAA22AA22AA00000000AAAAAA22AAAA22AAAA),
    .INIT_3A(256'h2222222222222222AA22AA22AAAA22AAAA22AAAA22AAAAAAAAAA222222AA33AA),
    .INIT_3B(256'hAAAA2222AAAAAA22AA22AA22AA2233AA2222222222222222AAAAAAAA22AA22AA),
    .INIT_3C(256'h000022AAAAAAAAAA22AAAA2222AAAAAAAA22332233AA22AA2222222222222222),
    .INIT_3D(256'h22222222222222222222222222222222222222AAAA22880000AA22AAAA22AA00),
    .INIT_3E(256'h0000000000000022AA2222AAAA22AAAAAAAA2222AAAAAAAA2222222222222222),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h00000000000000000000000000000000000000000000000000000000AAAA0000),
    .INIT_45(256'h000000000000000000000000000000000000000000AA22AA0000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000882222880000000000),
    .INIT_47(256'h00000000AAAA2200000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000088AAAA99880000000000000000000000000000000000),
    .INIT_4B(256'h000000000000000000000000AA99880000000000000000000000000000000000),
    .INIT_4C(256'h22AAAAAAAAAAAA99000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000022AAAA0000000000000000000000000000000000000022AAAA),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000880000000000AAAAAA000000000000000000),
    .INIT_50(256'h0000000000000000000000000000880000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h00000000000000000000000000000000000000000000000000008899AA998800),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h000033AA000000000000000000002222000000000000000000000022AA220000),
    .INIT_58(256'h0000000000000000AA0000000000880000000000000099000000AAAA00220000),
    .INIT_59(256'h00882222880000000099000000000000000000AAAA002200AA00000000000000),
    .INIT_5A(256'h0000000000008822000000000022AA0000000000AAAAAA000000008822228800),
    .INIT_5B(256'h0000000000BBAAAA0000000000009900000000000000000000000000000022AA),
    .INIT_5C(256'h0000000000AA000000000000000088222200000000000000000022AA00000000),
    .INIT_5D(256'h008800AA002200000000000000880000AA22000000000022AA00222200000000),
    .INIT_5E(256'h0000000000000000000000AA2222000000000000000000000000330000AA2200),
    .INIT_5F(256'h000000000022220000AA22AA002100000000AAAA00000000000000000000AA33),
    .INIT_60(256'h00000022AAAA229922000000000000000000000000000099AA00000000008800),
    .INIT_61(256'h00000000AAAAAA000000008822228800000022AA000088000099000000000000),
    .INIT_62(256'h0000000000000000000000000000223300000000000088220000000000AAAA00),
    .INIT_63(256'h2200000000000000000022220000000000000000889922220000000000009900),
    .INIT_64(256'hAA22000000000022AA00AABB000088000000000000AA00000000000000008822),
    .INIT_65(256'h00000000000000000000AA0000AA2200008800AA002200000000000000880000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000088220000000022AA0000000000000000000000000000000000000000),
    .INIT_6B(256'h000088000000AAAA008800000000AAAA00000000000022222288222200000000),
    .INIT_6C(256'h2200880022000000000000000000000000000000220000000000990000000000),
    .INIT_6D(256'hAA33AA0000000000000000000000000000000000008800000000000000000022),
    .INIT_6E(256'h00000000AA990000000088000000000000000088000000000022220000000000),
    .INIT_6F(256'hAA0000AA22998800000000000000000000880000000000000000880000000000),
    .INIT_70(256'h0000008800000000000000880000000000220000000000000000008800000022),
    .INIT_71(256'hAA8800000000AA00000088000000000000000000000000000011880000000000),
    .INIT_72(256'h0000000000002222220022330000000000000000009900000033AA22000088AA),
    .INIT_73(256'h00000099AA0000000000990000000000008888000022AAAA0088000000002222),
    .INIT_74(256'h000000000088000000000000000000AA99000099220000000000000000000000),
    .INIT_75(256'h000000880000000000AAAA0000000000AAAAAA00000000000000000000000000),
    .INIT_76(256'h0000000000000000000088000000000000000000AA9900000000880000000000),
    .INIT_77(256'h002200000000000000000088000000AAAA000022222200000000000000000000),
    .INIT_78(256'h0000000000000000001188000000000000000088000000000000000000000000),
    .INIT_79(256'h00000000000000000000000000008822228800000000AA000000880000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h8800888888008800000000000000000000880000888800880000000000000000),
    .INIT_7F(256'h8800000088008888888888008800880000008800008800880088880000880000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__9_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000020)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__9 
       (.I0(addra[13]),
        .I1(addra[14]),
        .I2(addra[12]),
        .I3(addra[15]),
        .I4(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__9_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__3_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0088888888888888880000008800888888008888000000008888888888888888),
    .INIT_01(256'h8888888800888800880088888800880088888888888800000088888800000088),
    .INIT_02(256'h0088000088008800000000000000000000880088880088008888880088880000),
    .INIT_03(256'h0088880088880000888800008888008888880088000088888800880088000000),
    .INIT_04(256'h0000888800880000008888888888880000888800008888880088008800888888),
    .INIT_05(256'h8888000088880000008800888800888800008888008800000088880088008888),
    .INIT_06(256'h0088888800888800880088880088880088000088880088008888888888888888),
    .INIT_07(256'h8800880000000000008888888800008800008800880088008888888888000000),
    .INIT_08(256'h8888888800000000000000008888888800888888888888000088008800008800),
    .INIT_09(256'h0088008888008800008888008888000088000088008800000088880088008800),
    .INIT_0A(256'h0088000088000088000000888800000000888888888888000000000000000000),
    .INIT_0B(256'h0088000000880088000088000088000000880000888800000088008888880088),
    .INIT_0C(256'h8800888800880000008888008800888800008888008800000088888800888800),
    .INIT_0D(256'h0808080000888888888080808000880880880808080808080000008888000000),
    .INIT_0E(256'h0800888888880808000088888880808080808888080808880000000080808080),
    .INIT_0F(256'h0888888088888800000000000000000000000000000000008888888888080808),
    .INIT_10(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_11(256'h8800000088888888888888888888888888888888888888888888888888888888),
    .INIT_12(256'h8800888800880000880088000088880000000000000000000000000088880000),
    .INIT_13(256'h8800888800000000000000000088880088000088008800000000008800880000),
    .INIT_14(256'h0088880000880000880000888800888800000000008888000088000000008888),
    .INIT_15(256'h0088000088000000000000880000008800000088880000880000008888000088),
    .INIT_16(256'h0000880000880000000088880088000088000088000000000000000088880000),
    .INIT_17(256'h8888000088888800000000888800000000008888000088000000880088000088),
    .INIT_18(256'h8888888800880000880000880000008800000088880088000000888888888888),
    .INIT_19(256'h0088888800000000000000008800880000000088008800888800880000888800),
    .INIT_1A(256'h0000008800880000888800008888000000000088000088008800000000008888),
    .INIT_1B(256'h0000000088880000000000880088888888888888888888008888000000880000),
    .INIT_1C(256'h0000888800000088000088888800008800008800000088880000880088000088),
    .INIT_1D(256'h8800008800000000000000008888000000888800000000000000888800888800),
    .INIT_1E(256'h0088880000888800000088008800888800880000000000000088888800000000),
    .INIT_1F(256'h0000008888008800000088000088888888000000008800880000008800000000),
    .INIT_20(256'h0808080000880088000088880088000000880088008800008800008888000088),
    .INIT_21(256'h0000000000000000000000800000000000000000000000000000000080000008),
    .INIT_22(256'h0000000000000000080808080008000000000800000000000000000080000000),
    .INIT_23(256'h8888880808888880808888000000000080800000000000000000000000000000),
    .INIT_24(256'h8888888888888888888888080888888888888808888800888888888880808080),
    .INIT_25(256'h8888888888888888000000008888000000888888888888888888000088888888),
    .INIT_26(256'h0088008800008888880000880000880088000088000088000000000088000088),
    .INIT_27(256'h8800008888000088888800000088888800000088888888888800008800888800),
    .INIT_28(256'h0000880000880000000000000000880000000000000000008800008800008888),
    .INIT_29(256'h8888888888888888008888888888008888008888000088888888000000888800),
    .INIT_2A(256'h0088000088880000008888008800008888880088008800008888000000008888),
    .INIT_2B(256'h0000888888008800000000008800008888000000888800000000888800008888),
    .INIT_2C(256'h0088880000888888888800008800000000000000880000000088000000888800),
    .INIT_2D(256'h8888000088008800880088008800008888888888888888880088008800880000),
    .INIT_2E(256'h0000000000008888880000880088880000888800000000880000008888880000),
    .INIT_2F(256'h8800000000888800880000880000888800008800888800008888000000880000),
    .INIT_30(256'h8800888800000088880000008800000000008888888800008800000000008800),
    .INIT_31(256'h0088880000000000888800008800008888888888888888880000008800880088),
    .INIT_32(256'h0000000088888888888888880000880088880000888800000000888800000088),
    .INIT_33(256'h0000000088000000008800008888880000000000880088000000880088008800),
    .INIT_34(256'h8888888888888888808888080808888800888888888888008888880088008800),
    .INIT_35(256'h8888888888888888808080880808080880888808888880808888888888888888),
    .INIT_36(256'h8888888888888888888888888888888888888888080808080808888888880808),
    .INIT_37(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_38(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_39(256'h8800008800888888000000880000000000000000880000888800008888888888),
    .INIT_3A(256'h0000000000880088880000880088008800008800000088000088008800000000),
    .INIT_3B(256'h0000000000880000880088008888880000888800000000888800888800000000),
    .INIT_3C(256'h0088880088000088000000888800000088880088888800008888000000008888),
    .INIT_3D(256'h0088008800880000000088000000000000000000888800000088000000008888),
    .INIT_3E(256'h8800888800008888008888000000888800008800888800008888000000000088),
    .INIT_3F(256'h0088000000888888000000008888880088000000880088880000000000880088),
    .INIT_40(256'h0000000088008800000088000000008888000088000000880088008800000088),
    .INIT_41(256'h0000880000888888000088880000888888008800008800000088888800000000),
    .INIT_42(256'h0000008800888888880000888800888888008800008800000000008800008888),
    .INIT_43(256'h0088000088880000888800000088888888000088008800008800880088008800),
    .INIT_44(256'h0000000088000000008800000000888800888800000088880000880088000000),
    .INIT_45(256'h0000880000880000008800000000000088888888008800880000880000000000),
    .INIT_46(256'h8800000088008800000088008800880000000000000000888888880000008888),
    .INIT_47(256'h0000008800000088000000880000008800880000008888880000000088888800),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000088000000),
    .INIT_49(256'h0000000000000000000000000000000000000000800000000000000000000000),
    .INIT_4A(256'h8800080000000000000080800000000000000000000000000000000000000000),
    .INIT_4B(256'h8888888800080000888888880000000000888888888880808080000808888888),
    .INIT_4C(256'h0088000000880000000000008888888888888888888888888888888888888888),
    .INIT_4D(256'h8800880000888800880000000088000088880000888888008888888888888888),
    .INIT_4E(256'h8800000000008800880000000000000088000000008800008800888800008800),
    .INIT_4F(256'h0088880000000088880000000088888800888800888800008800880000000000),
    .INIT_50(256'h0000888800888888000000000088880000000000008888000088888800000000),
    .INIT_51(256'h0000888800888800888888000088000000888888008888008888888888888888),
    .INIT_52(256'h0000880088880088880088000088008800880000008888008888000088880000),
    .INIT_53(256'h8888880088008800880000000000888888000088888800880088880000008888),
    .INIT_54(256'h8800880088000088888888888888888800000000888800008888880000888888),
    .INIT_55(256'h8888008800888800008888000088880000000000888800008800000000008800),
    .INIT_56(256'h0088000088000000880000888888000088888800000000008800000088888800),
    .INIT_57(256'h8800008888888888000088880000008800880000000000888888000000000088),
    .INIT_58(256'h0000008800008800888888888888888800008888008888880000000000888800),
    .INIT_59(256'h8800000000000000888888008888880088008888008800008888000000000000),
    .INIT_5A(256'h8800000088000088000088008800000000880000880000880000008800880000),
    .INIT_5B(256'h8080000008088888000088000088000088888888888888008800000000008888),
    .INIT_5C(256'h8888880808888880808008080808888088888888880808088888880808080800),
    .INIT_5D(256'h8888888888888888888888888888888808088880808080888888888808080808),
    .INIT_5E(256'h8888888888888888888888888888080888888808888888888888888888888888),
    .INIT_5F(256'h8888080808888888080808080888888888888888888888888888888888888888),
    .INIT_60(256'h8800000088880000000000000088888800000000888888888888888888888880),
    .INIT_61(256'h0088000088008800888800880088880088008800000088880000008800000088),
    .INIT_62(256'h0088008800880000880088008800880000008800888888000000000000000000),
    .INIT_63(256'h0088008888880088880088000000008888888800008888888800000088008800),
    .INIT_64(256'h0088008800000000000000008800000000000000000000888800008800880088),
    .INIT_65(256'h8800008800000088000000880000880000880000000000000088008800008800),
    .INIT_66(256'h0088000088000088880000888888000000008800000000888800880000000000),
    .INIT_67(256'h8800008800008888888800000088008800000000008800880088000000888800),
    .INIT_68(256'h0088008888000000008888880088000000008888000000000000000088008800),
    .INIT_69(256'h0000880000008800008800888800000000000088000000888800008800880088),
    .INIT_6A(256'h8888880000000088888888008800880000880088008888880088008800008800),
    .INIT_6B(256'h0000000088880000880000880088000000880088000000000088000000000088),
    .INIT_6C(256'h0088880000008800008888008800880000880088000000000000000088880088),
    .INIT_6D(256'h0000880088008800880088000088880000000088000088008800880000880000),
    .INIT_6E(256'h8800880000880088008800000088888800880000880088000000888800880000),
    .INIT_6F(256'h0808080880000808080000008080000000000088880000888800008800880000),
    .INIT_70(256'h0000808000000000080808080000000808008080808008080808008000000000),
    .INIT_71(256'h0008888000000000000000000000000000000000000000008080808008000000),
    .INIT_72(256'h0808888888080808080808880808888080808808888888888808000080000008),
    .INIT_73(256'h0888888888888888888888808888880888888888080808088888888888880808),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000088888800000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000088000000000000000000000000000000),
    .INIT_79(256'h8888000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000888800000000000000000000000808080808080000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000008888888800000000),
    .INIT_7C(256'h8888000000000000000000000000000000000088000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000808080000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__3_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000010)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__3 
       (.I0(addra[13]),
        .I1(addra[12]),
        .I2(addra[14]),
        .I3(addra[15]),
        .I4(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__3_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__4_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h000000000000000001FFFC0B7FE0000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000DFFFA17FFEC0),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h00000000000000000000000C000610000C000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000008080800000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h8888888888880000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000888800880088008888008800880088008800888888008800008888888888),
    .INIT_07(256'h0000000000000000000000008888888888008888008888888888888888888888),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000088880000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000080808080000000000008800000000000000000000000000000000000000),
    .INIT_0E(256'h0000000088888800000000000000000000000000888888888888888800000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000008800000000000000000000000000000000000000),
    .INIT_11(256'h0000000008080000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000008080000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h8888008888888800008888888888888888880000000000000000000000000000),
    .INIT_1A(256'h8800008888888888880000008888880000880088880088880000888888888800),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000008888888888888888),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h8800000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h8888888888888888000000000000000808000000000000000000000000000088),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000088888888888888880000000000000000),
    .INIT_24(256'h0000000000000000888800000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000008000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000080000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0088888888888800880000008888008888880088888800888888888888880000),
    .INIT_2E(256'h0000000088888888008800880088880088888888888888880088008888008888),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000008888000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000008800000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h8888888800000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000088888888),
    .INIT_38(256'h0000000000000000000000000000000000000000888800000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0088888888888888888800000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000088008800000000888800880000008800000088880000000000008800),
    .INIT_42(256'h0000000000000000000000000000000088888888888888888800000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000088880000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000008888000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h66DDDDDDDDDDDDDDDDDDDD664400880088888888888800000000000000000000),
    .INIT_55(256'h88008888004466DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD880088880088DD66DDDD),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000088888888),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000088880000000000000000000088000000000000000000000088880000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h8888000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h99EE550088880055EE1111991199991199991199999911AA7733008888888888),
    .INIT_69(256'h0000000000000000888888880088880033FFAA11991111111199991111999911),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000088880000000000000000008800000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000008800000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h00000000BBBB0088888888888888000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000099DD00880000DD220000000000000000000000),
    .INIT_7D(256'h00000088000000000000000000000000000000008888888888888800BBBB0088),
    .INIT_7E(256'h0000008800000000000000000000000000000000000000000000000088000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__4_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000020)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__4 
       (.I0(addra[14]),
        .I1(addra[13]),
        .I2(addra[12]),
        .I3(addra[15]),
        .I4(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__4_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__17_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0F00400000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000800821),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h00000000000000000000000000000803C211E384000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h807C211E78400000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h00000000000000000000000000000000000817C210E784000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h00000081FC210E78400000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000083FC210F784000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000008800000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000088880000),
    .INIT_03(256'h0000000000000000000000000000000000000000888888888888000088000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000888800000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h2200888855DDDD9900AA66664400880044BB0088888888888888000000000000),
    .INIT_10(256'h8888888888008800BB4400888888888888880000BB4400880022DD00888800DD),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000088888800880000000000008800000000000000880000000000000000),
    .INIT_13(256'h0808000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000880000000000008800000000880000008800000000000088),
    .INIT_15(256'h0000000000888888880000000088000008080808080808080000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000008888880000000000000000000000),
    .INIT_17(256'h0000000000000000880000000000888800000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h8888888888888800000000000000000000000000000000000000000000000000),
    .INIT_23(256'hFFDD00880022DD00888800DD22000011FFFFFF220044FFFFDD00880044BB0088),
    .INIT_24(256'h0000000000000000000000008888888888888800BB4400880088008888001155),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000088888800000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000808000000000000000000000000000800000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h8800000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000008800000000000000000000000000000088),
    .INIT_2B(256'h0000000000000000000000000000000000000000880000000000888888888800),
    .INIT_2C(256'h0000008800000000000000000000000000000000000000000000000088880000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000088880000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h00BBFFFFDD00880044BB00888888888888888800000000000000000000000000),
    .INIT_37(256'hBB4400888888880000BB77FFFFDD008800225500888800DD2200001177FFFF22),
    .INIT_38(256'h0000000000008888000000000000000000000000000000008888888800888800),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000008000000000000000088000000000000000000000088888888),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000800000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000888800000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000888888888888888888880088880000000000000000888888000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000888888888800000000888800000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h888800DD2200008877FFFF2200BBFFFFDD00880044BB00888888888888888888),
    .INIT_4B(256'h000000008888888800888800BB4400888800009966FFFFFFFFDD00880022DD00),
    .INIT_4C(256'h0000000000000000000000000000000000008888000000000000000000000000),
    .INIT_4D(256'h0000000000000000008888880000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000008800000000000000),
    .INIT_52(256'h8888888800000000000000000000000000008888888888888888000088000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000088888888),
    .INIT_54(256'h0000000000000000000000000000000000888888888800000000000000008888),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h44BB008888888888888888880000000000000000000000000000000000000000),
    .INIT_5E(256'hFFFFFFFFFFDD00880022DD00888800DD2200008877FFFF2200BBFFFFDD008800),
    .INIT_5F(256'h000000000000000000000000000000008888888888888800BB440088008844FF),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h8888000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000088),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h8800000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h8800000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h8800000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000088),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h77FFFF9900BBFFFFDD00880044BB008888888888888888000000000000000000),
    .INIT_72(256'h88888800BB44008822EEFFFFFFFFFFFFFFDD00880022DD00888800DD22000088),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000088888888),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000008888000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000888888000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000800000000000000000000000000000800000000),
    .INIT_7B(256'h0000000000000000000000008800000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000080800000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__17_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000020)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__17 
       (.I0(addra[14]),
        .I1(addra[12]),
        .I2(addra[13]),
        .I3(addra[15]),
        .I4(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__17_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000008FFC211F78400000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000087FC211F784000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h000000000000000000807C211F78400000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000080BC210F784),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h000000000000000000000000800C211E78400000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h1057800000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000080042),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h000000000000000000000000000000C000210200C00000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h8888000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0022DD00888800DD2200001177FFFF9900BBFFFFDD00880044BB008888888888),
    .INIT_06(256'h00000000000000008888888888888800BB4400883377FFFFFFFFFFFFFFDD0088),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000088000000000000008800000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000888888),
    .INIT_0D(256'h0000000000000808000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000888800000000000000008888000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000080800000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'hDD00880044BB0088888888888888000000000000000000000000000000000000),
    .INIT_19(256'h001155FFFFFFFFFFFFDD00880022DD00888800DD2200001177FFFF9900BBFFFF),
    .INIT_1A(256'h00000000000000000000000000000000000000008888888888888800BB440088),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000088000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000088880000),
    .INIT_1E(256'h0088000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000008888880000000000000000000000000000000088000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000008080000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000008888888800000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000888800000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000080800000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h2200881177FFFF9900BBFFFFDD00880044BB0088888888888800000000000000),
    .INIT_2D(256'h8888888800888800BB440088880000AAEEFFFFFFFFDD00880022DD00888800DD),
    .INIT_2E(256'h0000000000000000008888880000008888000000000000880000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000888800000000000000000000000000000000008888880000000000000000),
    .INIT_32(256'h0000000000000000000000880000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000088880000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000808880000000000000000),
    .INIT_38(256'h0000000000000000000000000000000008080800000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000080808080800000000000000000000000000000000),
    .INIT_3F(256'h8888888888888888000000000000000000000000000000000000000000000000),
    .INIT_40(256'hFFDD00880022DD00880000DD2200888877FFFF9900BBFFFFDD00880044BB0088),
    .INIT_41(256'h0000008800000000000000008888888888008800BB4400888888880011CCFFFF),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000008888000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000008800000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000088000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000008888000000000000000000000000000000),
    .INIT_4A(256'h0000080800000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000008080000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000808080800000000),
    .INIT_53(256'h00BBFFFFDD00880044BB00888888888888888800000000000000000000000000),
    .INIT_54(256'hBB4400888888888800002266FF5500880022DD00888800DD2200001177FFFF22),
    .INIT_55(256'h0000000000000000000000000000000000000000000000008888888800888800),
    .INIT_56(256'h8800000000000000000000000000000000000000000000880000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000008888000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000888888880000),
    .INIT_5E(256'h0000000000000000000000000000000800000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000080000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000080808000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h888800DD22008888EE77EE9900BB77FF55000000444400888888888888880000),
    .INIT_68(256'h000000008888888800888800BB4400880088000088880088CC5500880022DD00),
    .INIT_69(256'h0000888800000000000000000000000000880000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000008888000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000888800000000),
    .INIT_70(256'h0000000000008888888800000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000880000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000800000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'hBBBB008888888888888800000000000000000000000000000000000000000000),
    .INIT_7B(256'h8888880088888888002255008888005522000088888811888888888888888800),
    .INIT_7C(256'h000000000000000000000000000000008888888888008800BBBB008888888888),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000008888000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000080)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[13]),
        .I1(addra[14]),
        .I2(addra[12]),
        .I3(addra[15]),
        .I4(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [16:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__13_n_0 ;
  wire [16:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0800021000040000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000009FFFC0FFFE400000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000400040800080000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000005411100000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000880000000000000000),
    .INIT_02(256'h0000008888888888000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000008888888800000000000000000000),
    .INIT_05(256'h8800000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000008080800000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h00000000000000000000000066BB008888888888888800000000000000000000),
    .INIT_0F(256'h00888800BB6688000000000000000000000000000044DD00888800DDCC000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000088888888),
    .INIT_11(256'h0000000088000000000000008800000000000088000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000888888880000000000000000000000000000000000000000000088880000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000008888888888888888000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0088888800000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000808080800000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h8888000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'hDDFF22000088002277DD5555555555DD55555555555555EEEE11888888888888),
    .INIT_23(256'h0000000000000000888888888800000011EE66555555555555DD5555DDDD5555),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000008800000000880000000000000000008800000000000088),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000888800000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000088000000000088888888888800000000880000000000000000),
    .INIT_29(256'h0000000000000000000088000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000008800000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000008888888800000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000008080808000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'hAA22222211008888888888888888000000000000000000000000000000000000),
    .INIT_36(256'h2222AA222222AA222222AA22AA110088008888009922AA22AA2222AA22222222),
    .INIT_37(256'h0000000000000000000000000000000000000000888888888888888800112222),
    .INIT_38(256'h0000000088000000000000880000000000000000000000000000000000888800),
    .INIT_39(256'h0000008888880000000000000000000000000000008888000088880000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000888800000000000000000000000000000000880000000000000088000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000088888888888800),
    .INIT_3D(256'h0000000000000000000000000000000000000000008888880000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000880000000000000000000000008888888800000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000808080808000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000888888888888888888000000000000),
    .INIT_4A(256'h8888888800888888880000000000000000000000000000000000888888888888),
    .INIT_4B(256'h0088008800000000000000000000000088000000000000000000000000000000),
    .INIT_4C(256'h8800888800880088888800888800888800880000880088888888880000880088),
    .INIT_4D(256'h8800880088008800000088880088880000888800880000000088008800008888),
    .INIT_4E(256'h0000000000000000000088000088008888000000888800888800880000880088),
    .INIT_4F(256'h8888000000008888000000000000000000000000000000000000000000000000),
    .INIT_50(256'h8800008888000088000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000008800000000000088880000000000888800008888008888008800000088),
    .INIT_52(256'h0000000000880000000000880000008800000000888888880088000000888800),
    .INIT_53(256'h0000000000000000880000000000000000000088880000888800008800000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000880000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000008888000000008888),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000008888880000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h8888888888880000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h8888888888888888000088888888888888888888888888888888888888888888),
    .INIT_5E(256'h0000000000000000000000008888888888888800888888888888888888888888),
    .INIT_5F(256'h0088000000000000000000000088008800000000000000000000000000000000),
    .INIT_60(256'h8800888800000000888800008800008800008800000000008800880000008800),
    .INIT_61(256'h0000008800880088880088000000888800008800008888008800008800888800),
    .INIT_62(256'h0000000000000000000000000000000000000000000088880088000000888800),
    .INIT_63(256'h0000000000000000000000008800000000000088000000000000000000000000),
    .INIT_64(256'h0000888800888800000000000000008888000000000000000000000000000000),
    .INIT_65(256'h8888880000000000000088000000008888888888000000000000888888880000),
    .INIT_66(256'h0000000088000088888888000000008888000088008888880088000000008888),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000088000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h8888888888888888888888888888888888888888000000000000000000000000),
    .INIT_71(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_72(256'h0000000000000000000000000000000000000000000000008888888888888888),
    .INIT_73(256'h88008800001166DDEEBB0088008800BBEE6666DD6666EE330088008800880000),
    .INIT_74(256'h0088008888000088880000008800880088888800000000880088888888008888),
    .INIT_75(256'h8888008800008888888800008888880088008800008800888888000000888800),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000888888000000000000888800000000000088880000000088000000888888),
    .INIT_79(256'h8800000000880000880000000000008888008888000088008800000000000000),
    .INIT_7A(256'h0000000000000000000000888888008800008888000088008888000000880000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__13_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000010)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__13 
       (.I0(addra[13]),
        .I1(addra[14]),
        .I2(addra[15]),
        .I3(addra[12]),
        .I4(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__13_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_0_blk_mem_gen_top
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [11:0]douta;
  input clka;
  input [16:0]addra;
  input [11:0]dina;
  input [0:0]wea;

  wire [16:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "17" *) (* C_ADDRB_WIDTH = "17" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "2" *) 
(* C_COUNT_36K_BRAM = "26" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     8.971294 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "78500" *) (* C_READ_DEPTH_B = "78500" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "12" *) (* C_READ_WIDTH_B = "12" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "78500" *) 
(* C_WRITE_DEPTH_B = "78500" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "12" *) (* C_WRITE_WIDTH_B = "12" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_4
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [16:0]addra;
  input [11:0]dina;
  output [11:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [16:0]addrb;
  input [11:0]dinb;
  output [11:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [16:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [11:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [11:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [16:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [16:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[16] = \<const0> ;
  assign rdaddrecc[15] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[16] = \<const0> ;
  assign s_axi_rdaddrecc[15] = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_gen_0_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4_synth" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_4_synth
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [11:0]douta;
  input clka;
  input [16:0]addra;
  input [11:0]dina;
  input [0:0]wea;

  wire [16:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
