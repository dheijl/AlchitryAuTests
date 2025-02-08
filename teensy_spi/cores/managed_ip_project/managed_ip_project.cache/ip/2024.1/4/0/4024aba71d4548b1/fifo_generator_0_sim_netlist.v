// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Sat Feb  8 15:24:38 2025
// Host        : DannysLMDE running 64-bit LMDE 6 (faye)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [7:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [7:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [7:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "8" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "255" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "254" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "8" *) 
  (* C_RD_DEPTH = "256" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "8" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "8" *) 
  (* C_WR_DEPTH = "256" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "8" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_10 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[7:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[7:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[7:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 112928)
`pragma protect data_block
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
0cGjksR2skXqCLE=
`pragma protect end_protected
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
