// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Feb  5 20:47:18 2025
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
  (* C_USE_EMBEDDED_REG = "1" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 112960)
`pragma protect data_block
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
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
