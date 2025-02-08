// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Sat Feb  8 15:31:05 2025
// Host        : DannysLMDE running 64-bit LMDE 6 (faye)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_256_sim_netlist.v
// Design      : fifo_256
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_256,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
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
  (* C_PRELOAD_LATENCY = "2" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "253" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "252" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 109056)
`pragma protect data_block
Z5zBlHyFrzakPOvyVYN4n92pIWM+dU27vSCIf96AKax9E4gNBd9HXLYy8Gm70lxo3LooFez2cqAO
5R0mzRPXQjoa/l6RpF5VZsZN+EhfSL8EUGkOSNVOTq2AuaoJf7lwWQkIhMYvzLUNwC3LLuv1/y7/
QhFOKET78PbuuDwtQY01ZjqIQOXik1KoOJ/qHJG3PCCDIb9X5WHGftajW1xoWBbyVS+voiH3K+Ix
IYx4GfJd1iAivx3OA0TvV6oBv4GFL6fnnlAt0IUs2JhgiFIOsOM68wU70YgIOo02Osk9YSY5tDUS
f023wKFEfi6OF/EN96mtDblu9nesjxxukChjLDDfZEOZnbFRpO3Vz0MprgiM5Ql2/Zt5XzrMFLBx
HTlaQ0d786IoFkSLnpVgP9A+1BUH1p2x8M578FUuQ/1veE0/Bg+MM+1ThdanXHD8ekVFJY0bsr8L
Vq1ipPkCnmpPkVVNPSo1WrgNWW1IML2ebckVRqOI23/rhyU2nrqnuBuT8sE01yjx0IwP6nYsX8dE
QeWs9iz2v540qONI18/YgEgnazAR5gnB9As5oapnYGoBNYfb30dqxLuFFT9mMSNZxrqYPWBe+4Fm
Ou4S4tRrnFsPTmPsAG3UQH2tR551cb+UxGxQs6kXsbS+mUBAxCxBqRt9YvqGE1h3ApEIRO+d+UD+
1mhXavYWnjpP6fXLc1OJ8a0WTB+Nubf40zGFZ8uKX00/bipZeJ11U6HszLfiTqXVc20qdmpTkPea
+otp5cfZ7bjIkQA5pZt/an21fzd1gRyNeuuGl00EAfw5gzlTmPKu1FD0/tPYnaJvvekQJp/Ug4io
i0mWD/jAD1jZkBremT8DebYxhgJS71ao/8TPIJnhMACIXQ5nuY1XCFiAgbXCzRKZBajki81tL4eb
SHC3GeO7dtKQMKcjsN5kYDEeTZ8yV6XDsnOYiRUAU0hdM5hBZzHdmdnKRktys7FCTLhVkYSOiPR5
1tuvt4bL4KIVAXm3pYO4IYTEXPuFW4fDwR/+LTWjZybBp4u06PwCVWmYNP7ilNodHIxZ3bjtfSX8
DBOT8Je1MdiK4kG1DQlYoF6Zi8GW2zuhOF3a2/kAzZaVDRpeTM+7BejVxb08J8BH5aw5bXcPCf7v
z00i2jhDZCBZALN6+4/g2vk/K9c+2ECcG8BWTLVZjhqtq6/E2OX+JbRvGSH8OhohkFptCIPKNz+A
EY8ZW6PGPW6xRrceZLhGheDNncc7UQNx5dRcOJUlhMUU/i5AL/V0oPRfDXznjX6g/qSAwEtYzhA7
OSdCazEhVWRxtVwZTA5OLAmCp/HGqwxAkveWCZ5kHzDUeRtooAhIaholEzi+JelauPO2sATolLky
eWnTZonqSUXtBudilsTYAl7rFCy+YdxIMurZQ++J5OSNR2z2uQbCmpPmvBqhRsRsu76oC6tOpFFV
b96gS2G8b0WhvIu6nFz9rGHBDX3j98iMalpEptIgbMpEirJfVm7VYg6abN5/A3MIFiWRV/wP1Z+b
o9uQaNWpXuTRm8sJSRclQ+vePWc+gxTGeiCf8L+Fn+QZaXMd1rv33gRs/0neiO+XIrUgiZdC5ipI
/LajJ2yEntW1FRMamVdxUwarJC+jEcbYEiMAJQXadrDPty2vXL2jRCU+bv8MV0+bnBXXPO8+eXq6
iTwrxcHjYCoAW+e44ltjsP+LdyOouy0C2fGcdFM+D1pentahbpNbeobc7mO4WQZHJd0hQ8B0BlyG
yMC8UgrZqeUL1+5Te1Ld5rFbOWrFKfSLNCm7Rw9mP7gNe0RDfHRfdkqC3lkNGGeEA8GYdQHuAAJU
DO7YDkarbQr4jvN04kC8l4GcZn21bcS1bJfpWSZOH5/6D5cBJoWFJWSq37ZEVlfVoPz4sxA3rAD0
kQS/q/rGF9rTyT16ltTfnfV3fiWYCVYbWqKis2JwL9K2Xd6OjbAHzViKVgJZexHqH/smJMfespx5
KvUsfjERtCzATTDGeNsw2htV6h0zF4hA8bSxEj8cyIxksPK/3SYAuMOUPYW5ibsU9kcu2vQVhAFw
vBK2Pbc1dmOCDHOlCixmu28atDz5YYypzpkn8qwMei28BCdggjOPWXrQQ7aWg3oYNAcgJBrJrcEj
DztmLLTJtswMZVdge8Khn3brMSlAZwLuLmgWulKbQTXj6waxvf1MtvwCjhcbPbzAT0yeAHvemjzp
aM4axtycDVhj1iFn3TUgZm6/9aJQ6S/lY8S+H/2vCTJBsxfgNC821VGgReQyV/bCBHn4r8HSF6XD
fSFkcgGmL56xLdkj62gkMTY5j+ApBJ70YHMBhpTKqmKd60pHp8w/YQmH209lCMtf1L1Ozb5HkWlp
b1eoXBGCsGpmIj2nhk7DqWMS22EWaAsmAEn4dPHFJ4nCKVacaf+OTQQsGIgC1zHJhIQyoKuti/nu
77FjXMYM9cS12FbduW+sTyk2q1rQWLEtix0pYjAM5j1AY7gyYLQ8JLuvS2WOYkq8t99e2+APtIOi
YoNkS3RvWftSMAX4ZK4IuiB8/FX9JnpUL9aWewpfMRL/ToJK15zwsLMtg4q3bIC0sef5izqr/ZvH
WSvixTZh3uIW+T2LvKDpIl55kqOLxwjxKeJ/DYOZsmEIjfddMx+t7jdZmqrD9bRFtdJuaJlKqJvm
nHMcey3Z9sgFBvuFId98teW9et07jWp5GDCFsIV3YaQkukWmZMn6QOpp17EPHN28hGVB1IVNZPlZ
rJCi8UdaxNf3FMmf5LAkG9CnAalHry0huoHi/vprGzcEwrwvkWy5wwjDb8ftcLiHyH/xl5cssrik
UQrkzSlLATaBu+wz0ONVTn+VMy6p7BCRzB2ssXpQw1q0SWxCH/zgoV0vdI5YYPc8NCkJr2tUlXSm
ie7Y9uNsP/HADAs3xeJPry6ul8lMKemoIB2pyHjs3DY5jqZtOIfT3TpH1G3oAZKBh1kLu0+Nir56
97LsHPyFu1WhtEAh9mcl7L1iomDybdTn/WrgcpeXA4PpTZt6vKQe1n4+1Q9Wna9Po2ag+L/8uYfZ
qvYpF3g324AdLz7B++oytUO/5d4HotC/nEmeOlT2qn02IqYYztYj6ZPcdGihnUw1SDnLnNZY7LEy
pCLLGuFsPwLHr+uMFaTfjLoBvtKXs/8owp+nYo0I3sxUcVOj6FJFO+m8d6yCyTYvBW5SZgaCSCSZ
kLuDalob9HdfJWhwCMAxPm1shk6MxYi5gkPIHznl/dDPZlNrvUOeCGsopB4H6wtYAZwGW+EL2B0D
KKhG/vy3AwVfKSl47bxwCg1ASdUL9P8sf72a8xqZFgRZahjG7w6xAUfU9+UyLU8qrvzTshd8ysnO
AiSPvyYMxP0kyF9iygzKrNe+/DgzLm3pAlbfq5KYVwqqzz587X1rOlqPY0DvBqH8CnMbnEpLafRZ
wZuI1YWegohDZtbE9xoUKcWsPWHtRZycAX84uj2Txof5EIMb39paZp/U4mUm20W6GZO06+Rab5B2
qxxIGZ/CxsrvUQ9RnDE3KkUWhURXhdCgYysViBfM0ypfxuhTNTVjViOA0Iwi3W84I8b+WGJi+3n8
g3i2CHOuTRaZXLNmktZsm7LSJ0rL27m8ozLCAkvG/8UHudWsiHzBbfE/X1GvYxjX4ffF1lT4EI3S
CPkcfzDWCZMKqabf7jw01uZsEgeOhZf0FeC4QcUAiC+hzwLUUk8NMDIw5G6+MgCpgLn7X/PbY5P9
W5inu74qWHO1BbACH8DwhfmhurCCc2kLlkAB/A3GIug5VnYAXOpEAv323RjQIRZrDrzk6iy3x8AW
Y8hKqjw7ck/EXIIp53rDOzDTBFyX/Wkq3IsDumLZJ8pwLzlqVxo4WifYiNlkjKlLf13CumprBJox
/LWB0yha7QMk8uqB7IP1WvRj6+5dzy0fopS9cuB+m+46r8yX8qD0v9BXkkT/1QkgH/z9u+JAOujF
izYx90diTDht9v8JMz+73Ig0EUefnJ7Ur9F8VE1Gtl2OmwH+z8atzmt44Z7aWooxulULrclkiSkl
c8SCBDkeidemwj75Emrr8bPYa28Fd62yC5A4ovKkVb2HEQs5ax6uZN5dohPGsQZw0/piRK0d1DYL
DsAnOAMO2SDmtNpLGY9M8M+sdQJ29e5DfDm8CU8iFWrQa3X23SjfSduEXfTzeU9gWIYpSSNqQLA2
ZhdAcYoS/F59Iy9nAa06DR6jIpH8dggrEk7tfBFDh5Hnqru7/w1NWY6kW+8DJHY9wEzERHLfjka5
mAflSQ8MZ5Ghkf9ZXIvcnRxg27WkveDCOvachS8+2rZ8JYewTMCsP4kBYzi40M9yyUTCgul4Co9W
FMLqOuN5OHvR6e0m6Fk3E7AhLa5gKy4P5Ezfaj30uIEtcJZI2lESGeGwu0x4ZPaj9cnGxkyRG6y8
MBPQypXu37b6Uv5JsxgTDK0/NkNQSboCZJ6q1Rzo1kE57jdEQo9C2Qw9VhT10qGc8qe+/jfn5Ihz
kpOYLMJhlJrZm+JxdKqbceSxJNURwFojqvJbNkWjksixG1t4YuBJ6QZPLBohesTBeZELiBZ4hjU5
9vcjGhZiODLujGlDSsuFQEiWlXCTdfUxF+jqI2moWB0c/hiKbX1BwimNtZeC4u56eWEgCkT07pND
AqB58FKMCMgp1Ho9b3mLbyDt60YvVJ237mPElLBJoopc1pLLrry7KhRfbMy8jrGzv1OVaGff0qkv
kawNexfUh8IoBjZQbqlCFP15HC6aCDilodpeBzrY9pGKJhfVgv2dNwyN2wuSJtkZZ0SKvRltzGgX
4t5hsnL6qNKALt6o8gVhqHTmttzOHz0QAtvSC7z6KqYT5H6wNc16vxU/fYB/56x2xt/gg3Z+wgQv
HyYH133ShrkKdzvCiGK9Tc6fP07WlFnWtvjTplbVzIqhD/lEZE6EdRJ7DPE+0x3lm45i45j3BSJ2
GzBtjUG4B2HsN5YIMsVcPvHTjrwEBkY8IkdKOaDAV06Jmu3WnoxddFsGl+xyVne3ajSdAQQo+65m
QqKYLlfpqlHprCda8Vo64hXIwKPB9DhSWYVcRpZd/p3eAJktSyrBmbHniOb7S1uPnmepuczNkSN2
bsWkqPlZ4GxV2JFQ4buInL7VtjachoTABbepjF7cJoBuq0PjgDRfsdw6xW48BbcYfsoB8EApXWJI
lO4e+sa3KdevMMetY0v8OZVfCpIpmYWTyZaKMQN/oEJibdPFWPfM07Io0PRAsP1A23CG/MLjITGf
9dciDRlZkXGeI1DmYEwDTg6iPQmvFfDgPxel/3GSVwSibj/dNSRlAStRznq2Jd1I5zS7X4c4zU+6
2PqOSpVl+e/fhgKIqh0TEmWg5pBBg7wPg2Zul2vt0jWhy+KFJMxQu9bbS1enPla9Umgp95Nmkuj/
UZf3cmuUGSudXaCMvgr6/RS6AIfAYjIY3Uq0tPKkcNt6XIKvPBXksNcRKy1udS3/lhfMLUDiXyDZ
F3oPPAJydWCWNSADPgJucqsGvC89uRMB4+bzgH4DaEBhsV4YGp0ZNbi7pyLz1SLpMHCG0g9imKON
fKQTOQS/3WUY0yGHIQUM7wgQzhgfmN+5Ea98FMAlAJ0YW6lFyZvlJPxwIWfWfR0/oLcNxOEvfy6H
Ui1R0EpRw+ykzkz1VWR8gTprPzMQTj99hC8kn/fI3v8SQkuQluZOz4CJJpguAbCRvBlDpFgPYxCs
bP1Pi6KxiWshLLcLrO+eh9XAgUFYcWUq8h9vf6iDgX5cr+HLaSBJoWJqHEVT2zoAsmXNAN1pKNoN
opZhgJTtyR+j0RlPJOINySLzLtjyN1vqlreiWab9Js279As8PtNfvGI64dFGiq/HKK+9lDK6rKCK
xPEiJU/OyXE+WDAM5DQKl8EvnHBzeILwRc3tUcytplzVlvmbmkVEoFKS2f4PUe+i/rFW/YB/4VQz
EE1fVwIUSeRA6G3ULKnRfqMLbpAWZX8SfNXfQ7wSv3cJrXtQjyWCDX927Gr6K9WxbrADWu+ADdhL
jCGhUnzt4GleCZcbQVYJr1QpuLfYpQz08CdtkhmjKHSLgNhYAbziiPeG8UO7HwOHMu9F4dYjbxh5
xlgaWEUxHXcoDM1uoENQ5FYA+FPi72e6w6BjuLoWOrp6CD1DysyK6/paReb15Dy8XyU23EXPEQSy
u0wJ0wW2xsXr30ixTmr28NdmgnKgJ8QGT0mzOcfI3R3ahLvlORW2+ZxAK5pmhcwwWxDQx5ww6QJ2
3ZL5pC4zERnt3pejL3jZ6pYTnWydwUpKTUPINoR392oNf/Oa7Bnzz6oB0GwcH8KK+yQ5wNF7BROk
NbCEiLgblLBCp6dTNv8hcOlvtoAfq4bZXlgiwgjOQrT6nY04yoEUZDVrOsWZWs9rDHxczNHTKo/h
C9GIllGxvj4Aa7s7S1IPw1SgRCUx/gN/C6pk1djIJvaiBErRDeQp3zPbxN2y9FpK2Fc07QXbAvnS
+m4Ilk4x1phwWzXIMEBpBKM4WOr5DOJJQ26NMKpO4UpsG5orm+r2PHzIpVhEopFoCd2m0kYeNr4A
ZnFvR7i8jhq1V4jlGDW1GzSTcTNsFEg5DVH0D1mqmPGd+4fH3v5p3Xrc6vINNKA57vl1xFG2kIcY
BKflfJBzrjEW2sOQptjzfrPppGfvgmppR9Q5jTYcTBr9AmcpGBNEmH4ma+df3MmXTMxnS/n7h+bc
mRE7zlQHvg+0NG+RKKvubbgLwrA0/TRX1yTsmOxm7u08tMNkAjF9wL6CR5IOpHDJkPegN/TuAc1x
EUzb8ueMEDO/uv2o8Yeg96ecaCVHNXcx9/wIu6+YdhnerrjrwzvxMVByZmVmG35n73sM9Hw+tMx5
2Z3MtpXQobsbr9rJ/LJDDJLILqXxx2sZ4ceWMPZvGREKO63op+75Dypx7bcHY7bdMzg5u/mWmW+U
n29AStqB6d+Rdv2VFoydL8VlliaY+Ll48JcwcHTUjWxVAaB/0DSAdSsdjrcf/ZcFZDTHxwL7FG2i
g69HGvYxhjp91FooWk7DLiTPvamRDpAZSvGoK24y7j/TUVhOii8+pFploYqS9Z1jwWa90XUyoQmT
ZYhOjmNkxebE123uMWksqItlc3VcoWIjby+f67raKkYxE2Wgg9w+baGAJR7Y0boHvM8Ujp7vPP6D
Lo0DUw9/yK0ozoKwPey+0Cp22J36XzNz+/6A09iJkXlKUZvn4Tpuqjs64UE495mQN4UQ6IoHK5/z
w6G36qmk5hyuxct5kDMdbzKPXD2+APufSdWkcFm7IbR7hwovP0asaoP28ZSrT8zuh7QDtqTwd332
oopzyYLt0fyiZ/rSA48aRVyNUI0eFZ07J2JrOlX0elmsEZ1k2pj8hGxSzB4tzdf1XO+nTnL2LVst
fb+4L2PwkbShaK4FXA+Wfy0T2KHLjrPq8Xmrk0cotMhRTjqlpHFDTFWhHF5eikNiTOgTvU0IsIgG
6IvsDEtQIyn32Qh35oxJyY5r5rlYygPhgJnEPwiTycXDPpj6RVoapbHcsFNVVi1EJ4gWrc3TB4ch
7PCr3Nbw/87CWLsZewQrbiwnc+RVNoSoPYswV/aAHcrhJ7EQ/SL5JmGAIQZladKKXsVkOVW/YHOx
m7oRZcfIUt2olQ3dq9Nsyvuwg9xsey3lWkgc342ZtuAEj+NDoU/CVydBAEY5Nve2Ixd0Q2YtrD5Z
M4v1u/F3B9AOnh+jUZ0WvlL6LqyyLsHlK5mKyMrFNcFYH7JM7uSdbv1JXUwvml6TtOBLI5lQqhmQ
19swiVcmvhrq09NPPNPWqzb+QDY/0LClghli6Z4HOaVcjWAyyRgafG8OpkW8xjBOxfH7bap6XB9A
F9LlzOlQWdUFVE/ZitnUh6XtCRzMu/a04aCivOHNwVBWM2ZLnDPWUjA3RpIMNpBrnfqoEIo1IGep
9bdEPkD/H3PwsxTyGTOAKpsIt7Abxca0DNQWOCD2woUdMkKiSxBcYGpXw+0c+2Hwr97/VC/qwEB/
r7hqbXw9fe8lrAUAxSUMVPcXP8Ijb+xxnw2kCn7Z7KRo4UZyrGQPymLaQhR8RYQflUINKZxaBkyB
VTmoJJ/eooIWCEdJC7MRiZO+Vy4cIHSCXCy0Gymt5YJ3wUrd+9N9rS6SXpfMRJVzUU4ve70FMDdZ
oxEuN/GKU42BvEI/NlqU9tjZvIOjkDqCS+6sE4zAW1MhOXVSR1nKXOFqyGkWY1cIP3XXLUFaCZo3
QNj1yZvU43SMisrcUD+9nryqPSvbBesZlJHx8c2oiPPQR7iq7TurNyRXs5KDQqHCUIbMsBTLn7zz
LUeQrzhWPG8Zxo3bK5bHGHtKxmEdvpFVZ+hS6tZo/Ffa2oxxMcjQsMfStrYpWW4K2uPCorkmwPqj
CDKZC9W+793ohAPvwTKf71vPkwLVN8wc/FSdHdcQWYp5zR9Rw4q1fuAKuBUoEr/HzyFN5SiCURSC
Tirbd6K7atGlkhxzUxro+DMoKFSO1nbmpgh5k3sV/xOvGmAh8W6Toy3Aio7HsyeTFD6Z0OEkawFl
Kz33QOrwvXJimLMFfOh6VupFIuf+uQGmAoO3UDRJhUutFVEovoJ8lzIdW34HhTsWHlz7SmhCGWf0
p9QyjOS3thRWU5VCviLbevn2Qvni4DVCT67+JDjiLkPX5/DN0eulBDhV7Y+0BdXGKY3baRwIdB/e
1YdsOau2rdO9KQTEiLW/8hM3z05e0VY4l+uIKCI7PEvJMynLhINX49jslZe8RaJGAHXhrKKPMPy2
+TkiiIwmwhx7fdsJo8e6LcbgGjGPopwTeglrb0L1gEBk30UEitNpNrttoCkbiMwrnXxotxuh6Gsj
DcH8Mi3OZ1VEoCx0mi1VSxei+a8bo247NjKCrIjVOELTgqDF+jyIMzbybkthS+lJsmldNn4jgY2U
6zrV+lj4zJPfAK8btEWQ8Z9fV2Y7Qf6svhR3H7Tn4UN733rG9MjWdq4aF5mI2ztvTYA3twiO2Zxw
YcZiAZoXTnBORLXeDYoIHF0M2HcB1iHQ9+chl8G5nJndiKAYO5Nkd0eJ2TDFjCE5w1WFFYLTjPbv
mwGChJjw4l4dnXjMaEobcP3B9pgcd6DJyWB6AHx09FF/pMppM7cpanr9n6jIQAxC+v4Jtv15sT5O
uVqwqEItwDz/R6GUiuQ24j5+BUuENqq7W2sJMtbJ4P4DQEOFyn6PYMgqJ2hA2RyOc1Dif9wOyrBL
4C9ECUqqFfMdA/6wm0CafqKlnewPR6lrZcz4MgoqXTigHg7g0bb5oWVblNjesUz77VoW4z/B8jed
TF0CKd612K2dxfayp0l1Ip4OYq+0gDfWZjmwlhrnYl6a0Gc2mDiG2SEnFhZiSS/Qr3wPG8dpjDPk
wtnSF/9k/MFFgE+kEvHjh7BPzu0Zs0J890uCw86mEO6yylKKIYCe1ZhNaIhUENugZcT732uc/k7a
ogSZlwmpinnK2nYbqE8Ez9Zugf69I8QyHr9/DvYjNj+OXtIlPD1oo3QiTb4WekLxuF8lIa/p7rq2
QnvAwcLrE9Azg3eEGAAo3O/WCXemW4+3hwzi/pPJ/UZ4ZbOeKM0c5Lay1qDOHyrZsS7uh2ZTU3o3
KsxOrgjcZzGJbQXZlR5AKQcim/YLSpQx0z/iUGW4CzGC+3C5ZPjAYRa/AeTFxUexf6hZ7p27fVpu
A+BsfMJnzb3TBYnnCVMK/U1YHQ/zJNgJnt+GO4LdM0gSY8PU8aEEFVMsuL0w6KYq/gEC4M7q9Hhs
wp4XJcnDdV52nU5c8Vu/8iw2feHGHlcVIxGsV3tDDIwoI51wMJQ9tdQyupsRWPvq5EcTmAiW/X5S
9DKSuBAiuhxqqkZV/A3o/JU6mf7zOX6owJff8Ma8YEiMRli6PIsTAIXK4tgzZnZqsJbEWWzYslE0
GxBFQJkXSo6F7/4SEnM5jVsaZazXVvuMjstzFi/lD5L49YnxiPLVHMnFBtYIqfSpZAzfJrfkDeKd
A9b1zFjEqTP1k8cg0KfXLtlBlptpIND78wLUFo/0S+06HnHaRhNWTJpx3Q21DFulU4hxHb2ifPvw
OUZ2D8I9w0lRL1Q680FI8qhJ3aXSZJQJLF696XolLd1cPHBBzMrW7OVzyfhIo18oosBz7o5RmBjF
L2GhPA5OFiexKMb06oBsWQyNawnJwLuV/VloLbS6MbhjIlutG+a152jmuMXgXoo47twsD3rAiRKM
B4P16Z8OV27gg6353f5t1NcZplF90irWtp/a7ydxqEaFjy5+GtAUb0U4yDWwaJwQ/H7Ck6RFZH1m
Vixx4Ee5twRbwwS8xhLKznYYtoQpm3rtpUTDRcGq4wHIyYm+CyS9cyt0od6Voss0tY4C6f+ZI6ni
gSzEGgKcV5C3ZxHb7lLNcSKqGPWo66RspbRDCUUJekvrRfxuSvYmjddoAoe8OrFYPn9Ec+98qjDy
YcCz4ImCCIcoLA9tBS0q6aQegGAeROdiVy8MvaWFNbIdxqzxyrYeuchfRoyIGbi0/d7okmxwJ/JY
YhNs9CGA8FcEFRqvVELyeF9IREYZ9O2i0hT4GJe/7sl9z92/faaIJMhvrn94RmiJVecgjBLh7FqR
8jY5lNn8VMka5kvvgbiZPkhl+AS+xH8Wft8DpQH16jy7lmg964BPHYEh9SDE28RMkRnumXDWSOI/
BIITf3hJtKgn+9ipWrS9F9DOrBYcpwMDiTcW7XyaMtmr2NQdAralbjUrMdl8PWtP8n4Ryzcjg0+3
NnKZRlTbzj4jWbgdUMTOx3NzcCKmxZZm6qK4TN6j/FJYM4tLFj3ybbgqzr2cTNgjqQ1pY6Vm7Cf+
Ys+absaOurovViqERGfFEiD9h79JaXUYsOD/x9jOXH9znXFeP1LCa5RrgAEju8Hjd4AEvEld1wtC
PY7zIZONl6hl7GpXiQSqsUWeTlFp12fKjbMu7oMAvTMuY40BuNHN+BMqjDTi43uPf+T8cVC6P4at
LbC93pLDulp6MFrqhTsVWtASk7q8OAgHBhbE+vhwUuZUXYwYaqIn0L5TbhSyRlZ2ZTC3ZJm8qOgh
bvF/emqLLrEIDrXi6a0qJVpoOtCb5RI2irynD6g1GW4B8JRWOg4O0hWdZGObVLcHgutB9+X8qZ66
kXbCNonaYwl5UnyPNYE0EClXBeI7JN6qqATAcBvTNar/3VUcDwKwKEK6EbZo9eUJeqCJUr6oScrt
lT9hnkPTb9FJ2HQR8PvW9jHbUdB0bPiTGZQ/KJj1SndWe9uVOj9Co6Vy1HvWw/8OzOtKcwO5UD+V
pwLhlZ5iu4Ev9+OFTV4ZBpNdEmA4JIGMPcQiBR9G6QCi0IS2Yc6kNx2xnbKD0tukqM4xHjGfkSnp
wPeKNb2wgfOqCEOEBis8kyx6oi4YAKXzG4P1WtxfXgi39i1WRJHhaGeQoOo07YO6I1MabAJw0dzb
Ac56fUdnqlup/b8RpPaaABdq5jLxu/57r3K7ZXlyiPR66MZ8C8fFS/72qvR0nXOjBT35bimJb/Vw
cLGC2F18hM0qIas2uNE1j8vtngvJwGmu73NueCDTxOFzndSS5I3CyBg0ZrokFIVee1dMbUPIWZbk
8i8rF9xRpmLHe+CkZAt8IO8CIMbBDoeFBMTBwEfF5Z+M3bYnLBzk/AlEoe9kxjBbxJ1nNljeFwBC
9C+6OI4EtNpUHUrJWqx+XjjHziJmscurDhTnMwho5pWR1/fon0oHfMEJvKWrFgNGu+/b3640cQje
sI89UqeNGTC848F8DUhnL+RMbl1lYk6CVchYcsUUGij0CCH5ipuxjwln1XSU0pW1JLgplWJZT6oS
FlEaM8YZSRR2iAD8rgEBMPHZeRDL4lhppRIWRLt0FEKuNgcmBu4Hx8qFxtt++KhdRQgjTB+hytQU
Elcv8lCHOuCJxCxjvTvHrQgvI+B3Aq7Z3cQ/Lo6uLgCTcCQOfgcJozYhih2bMUzC19Dp0mZfxqtE
rj4w16YZsNJGiTA4AZ88mRd3n+F0z+KPpe46DjdQcSXrPQ44VTOQBCrl1MMLD46tFfdWpBfwwUqq
sK0mXWaNBq5Zlp+Plasrt999+XI01R736NeeG+A43FB6rx99JnDOuKz90b4Vlj0XZWhFzo0JPIxC
8gycNznOW7sqKOtqJLZd3dF9ETtVZYBxZW88wb4grcIgVYKtKjMGk5p8bFli0OrmAXye+9wJ+xus
WSHzD4GvVvIRMo7L84Wipwd3aoR2PxoTIRwS4Va+4Jic5P1b0SRIpAU0isym0tAWOPmByvaWg4Bx
YwhNbSagywROPyYatUpkNX3/k9woIi1RcAGE0C+TS12vS/aoEYl26GZk5zDIXrhUlc5MG4YKwH8M
y6jFiVfIcHurK5oaDvRtRjvqmBdS8Algnxaso5WuIMuLfc4je1A2o1D+YcVr+/vnIT5vzhdHyhXC
lzB6wRnFef0RzAspFP6GJ8gQWBj/iMUZLjwRpMBsRfSxUB/w5MXBmIRg4Hcfwl1G7Guvur8TiJaN
VOLMMJT7VP6TmuP79wPq08CPhQL3kbYZSYOhoflwpxEcDeoBGB5AdwSRB300nTiUb8xFOpaG7pu4
HtCNbCAf1tL1usJCLpPRmqxoXC5sHpjvEiVQV7nlnVvEgnhzfBDZ4QsIyZWXkhMAzzCewgukrYV4
1D0I+7l3T1SvJGmQuRMBJkzW92np5X9Jl2HX85soMnsUIdkQTHrstnh+jSDyvM/hjSsvAABU8rfL
YW5yurTbUnTw6Y6x/SjzACM+Ga8G89hAj+zfURcp8sQCtesq7SF1mFd6AafFtWHxapLxS6rt5PDi
3gUe/jv1Du9VCqx+IG9OTHSQLnuujWNITv8m+X3oVkhRgfZLIddMBwyoUUB4GTBlYAYS2wgoQyOd
hgzp2r6ECn75KP57rZhWWOn+RSkMIq9A3uWw5xO61z5Lq8fha84k4IUp2nJvIhe+K+iJtefQh7jW
ZD+imLmR25m3VlddympHUaKfv36D64UkmKK5leJFdZFttUdB+dX+fbt4io9Zj4FAEDy4H/IVVjc2
GSI6VQYgQS588+PstpmwcbZ0/EyOZW5Pu657So+X/IGX65+s5tJynQ4lirKKU84h0O6fujhmrhIj
xjMWHQvgwoYqnMAcmdbHWFIwM/VWbXhx50w7bTZ8evhzCcF73Zo8PFxlLsG6ynLm+9GmIlhSnT61
9sM0KaUn07yiVlTFZNFuCzW1i6o24tJC2HQ5IrwAgnlDeGqnrhziNgUiBaL4hySKxqKd80Kj5Tul
DgQ8AFVUKp/OYHfjQAR1/Wk+048eccKN+LZGT5+Cozsr9z9mtqg8XrXo4ISUMd5dpme6r2YWOocI
5Ty6n9YT+3p+7oppvfpM9bqBuESDKErB63x5ThV0KtuVcKESF/m3GYu3tsq9q0XUYYOet/Zv1KZG
ATTRYfFzsFQy/AV0GZe84Ly2+fg+yg9gUsLe+W+6ObT509Pxlj4WEzJSseP/PQRay5OuXKZRIrN+
Y1rWv38xDO5NbLbtULzVGkbN9rxAYo/UwIbakUQyjpFAImIygXK1qggCuC/3Xff7lQMjMOtyGZJ/
HFpZMKk8lL3froOC+nt2rzbNbrlAn3caS35f+1YBKVqGHaZxlMlQXnfiZxlIMx3cAzToKKZifFwz
GAV/M7AFSu2HQLy/499eIGNVWNevjGW4F9U8sqsRRZ6DzabcCu+hSr026BUrMjkxFUvbjj/EB+ZW
2GksCp4Tj2kF7CRCOgVNQ7iQqtdrU0GfTHD4GokiBwBfdo1WbSlfazJHdFxk6CvvhjCk02+YwRD9
6xaIcLTBGo/DkQTeIT1CotzLT9ZVfK0iuB1ht5vxH2HBKl2ish+8+cVTKyx0ThmCmrw2iNt1NHR8
Y0M3HZuBFhQYwQroviHsDVKA8Rs9BZHcHLmq5A5YiR1Fpf5IEQgL5vcbnEUNTC2PlvGYzSfAW/3Z
VRvM8YtAIB5zTxe0Pr1nR7f4EzORk/V8ervRSL9AutLDy9B1CfSh2UAkYzSvenDRKntYxxKwZI0e
KX0rTJ9lCumU/Jt/V5kjDMxaOgBLH00U/KtU+IGnOJwMIUdNkRlmlae038sH1pGK5HP9j7Nb0RzT
a7ktWEMFpIUFvzCaB08TB1s8yLOGwWR9DPm8/VDVG5tmx/paZ9q/+pWAEWQMgE9aG8gyNGmE+Keg
MN+RrTd6sY5s226nkcrmw8vr3WXg8s+V4JOzWYgNFNZsEWrETzhP5jp2OUOTP+pDYdndbBVhLYki
RqB1rC6Rh+2C8/Br8joYs7vmGCdkDruBsvHc4VNjbb+0acLyRu4ggxS21KCFU4kAKyI6d7WwXX+A
gSijCsTWRItL/n3pPlodILAKWrKyJwcTB7R4tTJk2oOYIm/AG+zH/S907Fpk/Gmphpml8PI1rrG0
zFJTmTABfPRWciS0VUQiG5KCdBTZv4Ni5loU+7fX871PhOdrhvGyScQmMaprMzFxemkWOv2ePu87
az6phTiszYqyhJK+a9Noew7shOyLL7ZR5GtcvMfAJDEd3WgXSNfE7Ama40l4DV7FJ3rYv8wos1ef
jghJFXDny6ClqN+InFzxWz4seL3Ip6aNLErE1JvbMj3WZt+yTsV/CXRzgHYLT9OSIWyGAnPGBEr2
bmGPzPKFeEJ03UllPD217vylf9Ji0AOEdmh5zHAvmRDb0hYJpauyx4XCuEbygJfb3TS8dbKVhdiE
uXRsCcvrr1pO+dCjCopoBJ5q+1b7RPzlbejDRPVWYro8LYXHK9XgOftdLS8Zu34c8hXN53g3P+vh
tFEbZ3Y23QOL112eB6pSITnB3mEtoxl9Ta/EQZXwnTwo0Pf8b049Fjg/swYI7HxC0qt4JVCdYG6n
J6WBOgfvv9slAVsS7CUlMTvD6HRjzr7mcjl7mKgIWNv1gCeATeq3qx56TYeJHr2UNgZeMLk0feWx
uky6kPccK4TETDWvM1uHhA3hCcb7gildJdN/RslATqeqgDFHJ+6U6LjEc3fqwg4KM406dOmOSkVT
OWExYoj4pnoV6YzQkm/J4w2jzLFkQchwUjQzIXFM+TasN5B3KRWAljplY+XbOucgplz2nvBXDPvi
HkM1Z7sjBjJs7u+DHEEdnJlVOmnPosGW2e//eaOY9AOejIn1oLTNSKSRjzym3y47o/GsUbtXhovV
xCquiMgx7+PTlUTZgIw5E84ofi4Bt5nL+BQG/j+W9ETQKkf7iMOrX1pe/cnRy8D+msR1VNsV4vvP
vfunxsd7QVEU+DwJO4YzE+pcwmp4HlTct3UUsFVFn6zCAnnpBlmUFuBYWGpg05nuE72zMIyRyB4v
faKdJnAuPHJZFFzIH3iBvhoUaX4ZZPnSvThFG/vK0+QQDxHninXQo0OKhnFGu9HJNA7AKeeOunUS
Y64SJSQgT/SbhXMwCwtikdzdR3p5+vpQZFLFi+Vjj29PRfBeVxyhEWJj23kWh1rWw9vpcrtcsgAT
lMgV24kkF3VjKZcdN6Qv/eDuCCwOg/GSQYdpY8ebO37IwvaFQIh3TAkXgmRITDmH777beVplWxqG
VXvOcdmcVBD6XLnhUXefEAGj6MzSEBueQs5K4O9DuE2qlkKRqM4N+AQUaFiWahqBg75LRFyIfPZ7
qWGkV6g+TNqTFOIedgzMz0A22dd/e62yWMfO8LWwFYqyzNbhFVoVF+8RezG9TvpB8JaopyYL61Zp
6ie9NuKM/QbknIUSQwi7u2KslEQsOzRrQwW8iXo3TKKFzA8vJSfk40J7J/6Ri0hmo4Fq5ExiKJQm
CUTb6TcMMSyXR2kuP+AgYxpP4diANnKfZzbifD4+BPCvxYQYZLwyDPf1+PbQtAMKOejaIF5hYUwD
VFMQ6QdGHMxwL/X9xigh2NX45mM7ayJA7sdSZ6WInSkEx9qEkBg9TVxx3W2Df10nY6D7YGiqlAJk
Yl6D6y5w6GpyeFbbBLLvv+CtXlkid3q45N1eaA2OdfLGwCGrNYHtr98sVyWoig+n4w8Bpn2J4gns
Mhm/zDHOBy4GdKdM9I6DggyI079pU88x1ntqC3Tl9Y0YR35E60wUsK8AchG+AqjcEOi19YrB4x2T
/tMCN8oAVbTiBqQyot0WwguyyfhC1bq+zrhlVvTqXf0N553pzWtQgRXAC9dKKga+f1YG8e17QyMY
vzOTcJOoBglLoQ9flEIjjiuBXcuiCSnZ61V+IBi8wNZJsO0UMkTC2hwDetk88S7UXRXrAzPGw3ur
tSquFj41t+ax4zqUDc7MqU9Etkra7zIfJqTtAITo9L4siit3V5O6wSWLgyiCikf9KB1QPqRcoH4V
yyKgEATTo74REk58oD8VjJ7oxiAseahlNzugLj0Q0knoKAUI8RlugCuIJV3E7uc3zN6nXwwOm7tA
AnRYW8xt6v6YgP9EE57ZL23lVzs0ub3oDK0C6g81xNEkCdU5X006FP7xcv3mJmCa+5UU3OTPqrf6
lLX1s28P9RE/6C/EWbQ8L6tLT2bEtK7OF7hSzs81n+k42iAyzHcGfLhY7zBnUndG3fj4vCfZfZir
p++G0iGCtvpcbHAC/rs6QwM6zaku2GrwtiL+OJguGXgz/fXm2Uq8IuQ4MR4WGEhiNSUc9H0Oelbs
hfQITzFIKKmi7GSmz5tvuK1cm1O+9Ej3QL5iWHcRhgup9V0+3p2kACaRKEfIhH7b0/AqYoWpXgzv
RyPjDXZc04zHis0EiInnJzYxvJoXjmYdJp9aPHvo5h+wDKj2lLFVyDWoWc8ncaTJvlu2GwJT+3Rx
oWxJ8+pQOFj/wLDyQ0Tabj0c3k1lfjUS/Ww9bIjQX4H8itlnRY+zhvn+KkqdMzZta789HAlmo7q+
Z9Rc2k0LZgiwxIyL+s21tVIIn+ERM4D1bvrfoACU9s8+VR3ycesQ0uieaYF6/k6JkhQDSYwUof7M
m1hqFa+OQLIkGOe5hzJP+qFO8Qv5KaciXdHCI6mY40LFIQp0xDQ4GAMewkRA9s0f7oOOsQ01D8FF
TDQsj981xptu4PwcqqBVfm4XV7mi2xYHjDMmOUUk+Z+pVrHbIDVib1VI0GLOCB1aLDCP6qnXCpWe
bTKxjnL6e/GbKupmqF4v1szSdErMOSK4JPjR+0naHht66IMkcXmyanzKKhlLU0Ln1wi+7WWZ20jF
M82m+OCXCrNYfN2gOfpBde6QxV+kM4t3uwW/hvrRnYayol6VxMtr1MhCukrSWAZAk0ApOtG/J2Do
A9OqVXR14vzqJ7cA2hQUbfhXdy43aqob0nqQ5H7OwBaFWK9ESOTJFVkVM/gcHnT9PS7Adq02hdjU
b08RCpc6ropZYM85rfRKSFhsl68MKoIbIZMrqSolccOSn1gFT/xnS6gM6TpfNJtGSpSDn9GTrbEO
7MbNruLxBy313tCdwkrQIK2RRMnZx77ro0I5aXI2zSTsHIu2owb0dRSX1weZlBUD4e2cfNIPJwPD
Z/CnbmjNTHNPVaA07/ErlOhCJZgdgiDLfZQ0bOLl9r1jkECQG9K/kU9A9sefAgpHwSwR8YNAzPju
sFXUtfp8k224JC9akHRXyztE2Bi2gDInO4/EvIRJeT5aCO+EwvdVi1Ep2t0XVyyUqyXI7wr5J1CP
/zkx9ypEumEAvxlILcskL2jUh31IyGiCAq+B79YmDX7Wugo/J+jpNAFkkyig1XTSHzUcV37VNhSJ
1A9QH20AimU05KOe2mGWL523e6OSihY+lm9EUuQ7nQZXu55IAwHGi0fYwvzrHaQkajqfUyH4m+Gp
Q/kWHnagpK9Sb+HrIsLniDqYX8ENMhCpeNoxc/N4omGylgOQNUBQvCE8L21KgkHvyCnfLgUvq9B0
iKcf83NDj9zKHQczq+cjJEOXjCLCo+r5mxV3ts7rIjgF7IZIB1Nct94C+M2IvlTGaNBLEi/rc3SB
QZkYpgJNj5X7I/jTImNkenz5Oiz7Qxa50GhmhI4AGX338zlsKkHui3Q/N4FSCOVQ1xsuZRc1+aJw
XnrSei+ObJB/q1yVwvaVoYCCJQpzNnMmhlwrVrZIW7K9FL/kynrRzNWKe8OIxdRqNMlNWXKuD+Qb
9mNcTCAGSlG9D/wTn8tyIpDUv7iEGk9rDn0lhKcQF/7X/X1Zl6577HSsfTrV3Gbhb5CSt3Xgl9cE
VxGIQwu2oydfgnTFh9ZnEFkQuCl67T+gpTuXtFs5hCRE13Vjqw24301OK63/X4DndgmxO73dlnFu
RLY+FjGL9B70Yzjtl8F3HDgVBP6T9YhnSjl/UsureTz3bYr3mpHwqR563FGWLs8HbEjeZJMySTdr
LpbWEvjzggShRws/XJ9lVl1xmkmwc1LiiEG1bNRtMjcu5Oj4ghI1xjBgWaPNQzvXgqyuPXRN2aJy
7XY2IY5TwS1mdH7dwdZtTFRREijtOisnnmxG6yFYdv7OmyxY7Czzuo9m8UMi+DQR35mi+igHod4l
7Cmxdr9EQf8m8VhnBLtHDVw1nNm1NdjcuKNNe9BBbcnSuBTeeDpENuX5XIpAi2HZFAyIg4KAFJLp
WCaJOAWnvsY8wcNeF5FWRQsSu6cr1mqfJ4iY/LnwgkxvX9eKAO4YI7Q++2ngnGQ8reTCCTQ3a7xO
LUsacb//jCwH5knd5gT7gMDfyUT5eo8MeFFZaLNJaVGSwyTTIQ59qmfZdC/m0RAqly+zlbtlf6oK
HFeBXEY8uKuFFssuPgXT/sbo7mwDwJUP+pFgXlk2OyUMiJGO3NJLyOBPr8Ifg1LltNZPUNXnDLpD
4J6UW8kf5WDzh83tUDHMFNpvjSAghs24fR+uIEITr+j0wrqr7cb6le3/lc/7MIyTl85RIXOE/96n
2LozyywHftSU/V1NsJG5PjzX1sVmU1Ot2B72rBOAfPhTKe7l81ylV+naAsbFePlOKAtwj0k8iEAd
hvJCgAMKadGu0zrKOmShKV6H9qGSlOMVuC6cpy46/ju2wUYSIPDttMzJPPZRmhGqb9IeNHthaBVY
6V/qFDiofxdm8MYamd72PEz0IPP3MHJX5CRpmuj/oHSX51Ddsk3AwNC/OxDz2V575IndyVYCWcYY
p+wFe8KtNgR1rnBbXWqfftT+75eZDHYOudwzRFrN6/JFrEsBnN8sdMrYYXollM5OfEllFJL0daGg
sayfloIAS6dbYbQV977s9yZvEPl/ab0ZUEg5IL3XlC92SzdlmOVvaPY9yQyKTvRYH9JQZW2SXq9n
wK4Uv2ADt467TZCa4SgBG6efCDVptY2QehfvkjTnmGrox2Q4hL59Jek53Xcs5sY4Vx+Zhxol66MK
vfDPeDBc8P/gpS15oOoz6aWweQNyvCmTAG4M7DZ2u+66NtwcJCbDE2qRFxa3tr/00QhaxllHHaFi
ZLWXv+TwCj4HEf9O5xaEW/jGRrkGUGk+UZrsH3YaeAoD6h4+tWit3ziKzq+16jHEbDKUYs4gGZzA
wOOW9aFA7SSXc8fE3eJ6E4bOenZH9X1sLgFDL3kzY2wAQUoVg/8VPX1zbQqj94iP8PfykqguQZZB
aieUpNi2Vs1y1YyzDOP9ZqNHaHhRFNTcy0Aenz6RYP7sW3krsk1Dq3pumc27yYXP2JZ4T4l9csDE
9X+TAZt/QRnmlxTS5NQQ9pBSydgSBGybvrL83SD9QMzMfcEevhlJMU28kmhOK0D9Y9ZwauY7GOqT
zuK06zWeaCM5zACZwTr3TGoDjjP2mih6e8aYjDpLeOPIBaW5DXeth/2QT4mW0dAYwExySCkFH5id
jomKuMnB+o0uJqMOBa3cS7fmrA1Scgh9X3/UoQRdn7Ej8ll8aEQNj6LPFTGhwI4PykEH0fyb/HBH
R8+EtIEdhc9QS6YIkmdzTWG/EKXYXu31lRlXQfBLU3QcmLSc+mYGjpxqt5mumCG+kYpg7Z2IdIGb
TwMyFdkpbgcnUfWMS/wL+RSOOW44omTlgOsKuRQm8RhWAYojkl7brOJenTydEXLSjzZNL+BQRF9Z
vlueVSrawxm3+Zr8CruGivdGC3xuec418It6LGwCuDNesdCX6vkBubwzd3fsHqaXaSsfsoCgwDAO
AvPeMYzuBdlZjMrCoB8NAnryKZKZPKE+NbqtOROE9aUlbexrxXRLOy+/o3xIcTkyn9xM9ZRbsWig
xGN1SbQWlr54mRL5bo3JPivBI8+bQtHLR7JB84UNBskLQrtrOHJZMRok30MfHQ5LMYgkwVGSm2+E
Ioe294JJKWM7myFFSzoEygP98UiFG5NcUsn+vkYMpHWhsTJhZfORR/a4WczoOXATDM5bnt2WULyM
opLR0SsnlgbmaUgL/RWLTS2g/mT40f0ovS6TzdWU83TkCjMP9EW/HWKDyLsfh0DGbIbWxZhIQDhG
m0Whe7vDGQAh3t/8FduLRmlGWYI/GhR/V3mSsU8rNJb8qNc/pXMS+NFAzlGQJ4KY3qoy9YWccDwy
nce8I3FC6reCJxzcFceYrePlgi6L5Ix7ahTYODMAzuuwi22jZA/DLdE3CrOxgOCcsgoKDKAcT6Tz
7Kkv9ddg3HrSQegF+ywN08pi6+Gs+GLi4ddjeXu72TeaMdcgUEQoIw3Z1UqYQwlQdwXuteLVCzM1
7WH1p9OxcCixjy1MUDVoQOSEpKb2VfjFXqY6Iaklvxr1VOEh2VkmA5nNO5N9IiDHypAFwAszyL1O
o5bOjQwS3rqX5KP3WxpiUI0wsxJlBWx347bfUu5kS9feC2ral0tODFXnP6A2pwMQ9m37RWlLEqJM
8TWp54w9cZcX4F43YKHVhCGXEDF1gv6Kqv70SWFCu78lHTiFF3FiKerCFMJEJesvR2kXGkhgsDIZ
UYciBQnNSJMM9KKJVo/iyz4+S5gGhPhqZbNb19mfJlgPV2zYOlW1IJXgAxEF/ioZSVHEiBUVUI41
P5iNf7JbRh5hOK0sD9h5KZ/wpHEJnn5K6L7HzHXXiIRCdvzcURDp1asOhTq4oVIsn3cWvXAeG0Sc
2fcYNoHFbpY+MOLF1O5XFPPVRTV7X8i3SyhDnShtbQ8Pgv8oaksh4ttemNfUrhGgzoX0tvHVF0E7
lN9vTyXWyOjbXOPzlHFpmsg2KFZFDoJ62NawnmnQBi2iRghrCCHD+ruUxOMuPd/W+zT605M4LSdD
Y/kXOOMNooz4fZKdk6SrOA/CYLoozOK3XQSM0gsTsY3FC5U2FM3IiF5aDWf8IsClGjnezlMXoNpM
YdlxHokHeXELIk9oNAULysiiH9CakHJOKpQ7Zu/4xF9hFTOzH45lYpt3OyW82D7klk0P3xkGSBiv
2g0U1E5HGxirkGd8E2HgtxKG8PLIUF8vHlXzsAjUcA5XT5CBtJIrWLQXgB4KTZsn9LUjfsq85UPD
FuY0EsZ/i5xG36uaob9krrZ0akKXtkfSWuTw2HPfe9Bppy9rP7ol144CzXF9jNXnTXZrRGtHXE8v
HvajEbLlNv+EprmTe145hSwyCqqz1iDdcvakQGMNb6nL6l69/l3hgRqV39IKkauDn6WfMM18ZJ5W
LCnOwUhzJ9VpWDot8aiRz0qQRyj8yRV2X7ak/2EseaM++pJaqIBMdW1oN3LpEjcLX52tMX69p245
B1Knp9UqQ0rNgvw1Rlgjjb5JpYta5WY5j1O+T5XDPewFO6llXYNwgQfR8lCrNQ1OV+q462t5JCTg
GX31luWqtin5sR/MynXMCyZ2MXSKkoboDxURC+5O8VFKfTGXWuZGtAZVLSwZTtbqZA2Lfd1VepBK
mkdGfhs52YdWHK6dIlQvGpcipGn3d1kE00USr7L9etjieHI9qBzxIod7MkHClc1P3OxT2XTBCe07
h2d3imUL84lpWPr5MVrk9zye1wD2q85No6eKChSVVwkz2xWXMt22gXoh2qTr/kM9B+aPaiCxd1tK
edWH5tFiwTY//ZZgLsRy9+yf0lSK1e/wYPgRJp832gsj5sz02D3/f+MDlRESwlgGYKnp3JVC8d3I
juZ0N7giukw5HsFK2hDTBQZRjzrm29ElbChud0KP/+3IUcH8ec5zFv9RvWpG2kTlEj8tdFiZVbF4
7eXHRlWtKlCE+Wb5LXsNbnvx9KhhTr9scHleK+nNXitobEBD7BKAiACRY8MTemD0C29Xl3wAdECn
qH6+/eC8nL0wUx+bInJB5Aqeg6tO+2bteI1lcwKzPXel0cbAtBYbVUMe543IcT7Pz/JjXpOdPSpJ
WzzVuMh6S56ob3i5H81xaSpg+EjYeP/mUrcUfVffE6ryvxejQ7SlGz+N15/NPoPifdYoW/SARIAU
71So64twtwdgqAxPs2pOh0+S2BmxMjsMcCqPh4xiBwjiHHQiqm2ELCRSkNH9VgKH9mqBaub/WBFR
oAAYxP/1R9DSoJtIchN9o0j2wtaWzuq+6rVTUW/TVeRaqJ5g1F+qlfnzvUEfCkj5LKtGfjICqcuT
Rb6NnGcCfiQK9JqVcKSxD+0YX3VBWp8ZXzq7/0IsgK6WbWoF/9Y6g4gKH/xEpkKCwe4SII37SeaQ
5TpyOKPrjenPLMMkrnC6PJ/4CClZjQCvNNLXwhZEVtrdXg6+VHCi56BtGSElk8GqqLVbPu1N/dWa
JmTemCOIHOFVqaYWcLQjuIdzdPHcVXdQzlgnEa2Py84+I5AWtMdQPg0pLcAkrhLz2rhVxfL8YF+Y
xtOr2/2KRiDiRMpaUZn2OXwsEA1lw10BZOXyy8URRBVQhVQpiianF7r1VR1/5BP9oNTjzmNziKKI
PWVdff93FSB7nt5dXV2DvL2HAZF/drs5Qeo0xtAPV8LrqhK+40JYp7nJT0dsKg/1SNfAnEp6utO5
lyJ7UkY/JPklbJgkhOGIYRD8sybqDc322/GIdr1Blnq2wAh1PpgcIUCl2ZRH6sTQzxsSeMTGesdg
jwRDfiWXRJyUKuMcOLI7vxN/L6kPo5WhQCmtwjQGt9dBHVlOU4x3BrVg6eCIIh8zX3cvscoUjgwL
5YyKaFUxiszpG7C2l9BgAdKoGuqt/ks7kJPFsoZtXsNJ5UQx8DU4g/PtggeMnd2MgktiLBuQ8LyZ
3gkLPnewqQybxt4uqzbNeU2/spFrxERlXwF+o10GAOeVcSimcd9xBJx6X+fvxaAcTm34Z8UK9Q/t
pRB2D4pkJUZNAF8eSniaj5pm5q7OPzYO0M8rD1PVzHNtvJwVBd79H0ESdp29zRk8O15/L4I29eMt
PJqO2n6XP860j/H9zqjhW++cO6Ip1BdYy+d/7MabCTH3QcQ5Se6jeeZ2vgOy5aU2QzovoL4sM5zz
to5wFA49JD+0/ksIfvnIat4e0GgEoFJL1fEQMAQ3QGekNc4QQClJXSyrWnw/LSsOfjGjCM8B6pIt
XBYEXIgXyoPPFRqOiQrQEXZmKM5ltLRiynV3VsVZ8vffPqIMVjD/j//n8sBlsHcv0BHzD4pzZI9j
mhSJfT9Phb/wb72aJNM4uUeBs8XRIZO34W0sFmLAOZZmncSxa909xD/IcphdCwCVOs0M9D3lmpoH
EreKZQzYL2FbSf7znRtdhzPdezpArfmpTqvhX23HRQAIk3cp999CYn/fSIg7xZuMQwC6BTOPnLqi
7IRBU60ZATlQH+pAw64JNacfzqraBiHUlzF5AlCWb1APQH2JcR/+M8F+xsnQqaO54h7C6y5KEFh+
MoqXqxTuYmksOythvaW4FEQhL/g3FRVlRp0ALKIsEShsTpGuql8LRtWLiLUccLYQGLBMpYDzYXYp
2M6YIhd17LNZvfXF68Ny8WcgHkrszi93+4Alr9/IFZAnVHwiMBW3XaSf5WBN+RDm35sEHSw3DI01
EB/li/jDW4d/yREQ0ZnT169kZNNm6zOxjg8f8i2FRyT3SCLm5T/rEozlDn1veB0m+wFS3ARE6mlk
DTDevgBEJkfX8xXCAlT7EkX0No3tYiJjJ9gUAdSbrnKuQy2ie+9VWumb/J5CEIvEKEY/NXSijJVT
n8M9QXkO90wzvTK6HmHyHJZGsJnH8+9n/1HUZWimKIpqtJF1x1Qsu8M+rvHW9SpMPijKGJQdNwNK
hJ4EEgGPmlfC12H7KKni2RE5R81kToBNUep074hGga827rlRdFozigbYd5qFT/Av/FXslGUNIYpd
QrsPK0cT+fBgKDtCupIHbkNDBL+mZO0vgR2XBpjCEKbVbYLhBbHrNseTbcj3Je2tWE9gWZMdLNbJ
AsfnghUIEpMMnfjBoR44yf3UxOTpByoH3ubNZGU0Oe1K3yUNs80v4SNVNx3h4nZPmtB81sU/dYH7
/4yRr2j1/Qc08PKC22Zw7kbWqen3+gAQckUKKqcAzvJCAIPiKj6ZXssNceUAH0FrSzlJeRCBLjGU
ZrFt/ecMdNuipkmhavAAcuphqU3yOxCzg/6LPJGPQRJsiD+cDsuCYIWu4dcgCNbMI3onv9PpMVvu
pvrv4FXYBAgXQ9SL/BEXvx6Lse06lEN3GeRnCWa0STaVXsGy3eD513In1MOgQRDz9GHRRR1sA5Io
ukn09PoGiy8SOyXdInhGsCLbseTo+aUjHZPlZbQIG2EUiu1CNuu7g/JoiYrQbO7qHtqFufdhS+hf
Hv/SLpqwMZ4ul5b2tGCgD4EQxEW2i4pTAZ8CNtUNOWoYgs3onuoQyye7IMZpTbMKj0ZyTZ7rS7h6
J984H7H4BLtSmTZanhibiH17KA2wfbHKXDkh633UEeDVR1VYXn25V8sWXJIT6D+sBtD9kAOcd05/
DE6hoGYQU0wTeLijs2KUSDXM2nkVWphzq+GNuWGsv2Mfh/KhUj8+ovWLiWyeckIAXs75M2h5St/Z
V9iLFFN5demZeAvs1A6UVJKEJ+mrbKK7NLPnolebLVN3iksuyDXYejiIwQrWR4mHDF6pEbiprtXd
gEhDnb7siKk6mXHkBgZGp/OrdAq3E8AyRQuU6m0oMY7LwiRQdvAx/AGOH7pIoOjPUV8nd4tma6sm
I8cEKWvUAgfzD0RQyKjkyRCZtJdGJ+xES6q0iPi2lODIQEHpRKbeAqzOiuuRVtPAQgg4YhiVT7VH
e9H/rlGZXxx/vDnOXrp8kWqVxGFmpzy6JKZE+krHzQIEref5zc3QURRjADs4RF95C7FmafOAvnaH
4WPchrCODsFeGoEtuom4aoc3M3QJfYmNP5u9nw7CnpULAjgX+LYVReDtAajSbBIUkMnIDXEDo46W
TJ+jh4Kox2xeaRrDxdtNyXgWP+RP3XpUF0Yv0O+TxAErWv2WO1hhRGEbKYrtwmjrpl9hhUvbD3VM
alUglxJm3mygMTwhCBc7vCvmDdjXGUwDdPngcWvktP9mRqnfKY0k17i/yW8ZgnvbaxsMc3/7MlIQ
YYL26bPIXYV0V2d1rZetYZ9j59TGQP47XutqD38GCFzv2+PxNcmDIQqDIdgKFyIRZdlE0w+1emVK
xD9jrBtIlIuw8DBZE4XhcQxQNy1Lbynyo2N4+WrzvEmEBHjUGqmIwfFXH2ud2ndmjikvsarxVp85
DjzlCIqv7pwG2Ke1etR9Y+iu7sJAeK94QhzMVGmfNa7kAqpY+pPWlGIDRC4YlfdziYdO8I/o/oSo
B4okzU/ciThnm2R2zg7TE525KioxE+TnTnme0948DcydSGUDFEdxITQ9AMEVFsYDTJ7WZgSICffp
9KZ240pqKmHRxq/Andcgbshjx26oaGnvmwVKdnkNvEHSLBrHQjtmoxqcjRF/oe+E6AGiNonkxoS6
pHVM3luaMtgJOUyKeKMzrHx2NUmPaZN5HKv0u1fbmymfh69BBvtVB06Of3gV8YU9BsThim2oz6B4
vqOW0xGEUWA75BomGCz+WyqY/gG9FcldTzHhWmUW37REQhWe03DIS8TJdTlvlX50iuH+Mh6qZuZz
mHMdky/fR4af81rMMDL49M8v7HYYT+T2y3NFVSo3fyJ1jyzUYoH+BGvAUcjqVCes2IukGeEUxoJV
RwHG0/wOc3t+4Ik+o1Fl6gSljUy/fzQXP5xJ8zlDSB57fHtWV4kkiPLxdmoo08Qua3xKLz6Fpp5F
ZfvxaiWfZMEWzJyuW50sliaMwGH3DUhPonKN8+Zpnc/sGiBMsugiuqqbzw8wmqA1II7x6PArFojb
CVVr48ka+/nSm0gage/4OIvKt9eqLOXBOdKK2dvUWNvg9jbO8MHU6A1mUWQl7gXdXekF72sLikcm
CkIB/PEs9PplDd1etSu9I4tftU5G8rw8+k2QG2qu5gKd18Y7ol5aQEvD2ZpOVq3h0s8mP5hHAy/0
RPpmiR79M5KESMcfzPkyU+E7huWRboh7H0ex+91lRjcNMiDC7jplVelsnk1krvXbNjNTGqKlpXfR
X4ZO9CSS9RT+U8PTjc4T8iHNdbu9kBJ9jw8cicUw6auCq/FzacsKslPg6F4ZcqbVGUY8Bz6PBk1+
HjBYufgnh9YzwJIBKD4TCwzhjv8rjmHFua3UF2NmNBmYr4BHXvpATiCCgLw4irFWYGnxmXMI0Xh+
XhA/jxyMN28PWAxyyyFqo6+EzXrb7QKBJG9UUNLI07YoBbXnxV8FFBQ75wnDhDIVGzOM4VAYW5sp
NzVf6O+x/iSN3U0luLNC+xb226LBdnJDV1qd4h4R8ENLEGVP7EyBnoPqMTLoKE8W6CBN/RuzQ/wB
8iv1jsUb8qBPaC0XDtKQFltgtyaf03CzTTNdVz4xxbhocB5p1RWZDqBDa322UinULnbRKA7voa9S
KyPMShy9S9vRYDNnWXCt+Sa4ju3dpVNyh00ZL8VqIs7oUA5pdkj8Cay7rpReGXBrQDMRdfI7p4t1
yirehS7n6+mVV6tFPbeFApddRc7RtH3L5rOncunhTWjeB9HzYiPh9TTAvkvnZtbLUIvlOeKP5Zdo
wR+aWB/5wC1JYSqwQxNS+KBiF+xNONlE5KQWZIgHzQttVtQUph6HXIV0bsMCMEVkHqCrcWh6PT69
TRv/Y2qZ53grtr5kRbNitLQsFZcul6fqyZyDKPu1n+UrUqfli7gDpoOo8bn7p4D8gFN4j8WfBGKA
TVcbJ3pGeAzF6VdODjJpy/U7m5WVfcMy5oqffSOisFT0GWMO1KOL9dCBMCvNOxJrDjMSqQ7JzZmI
UusR3Y7UUi5sb5Ip4klMpqCqYJUV2QB70xRSGb+XtCLkwWP/58Bv5zO5dvAgzk+xfek4zbG/iBDf
KtTj7x1JZgfbGTiVtWLwrnaoKiVx8w6i53veW9a5oqQv9KAtP50ULoez0hC+nJ0HSq5s215Gt8w0
sSX6nJ5VZMXg8G6AachYMr2A41wjUyKw20Fzcour1OdOwJdUQvCC9PDJOQBLmDBAEI6rWpeTW927
a403gi6O9DVsoUKfbF64s3gjkT1kwFUBJXxO1Z3u6FQcuknBSL/q9tUPKJLuCjpAeQoUz6QyLjBG
nk2vs2Lmeer1m0kF/gPjsU5hTJeO5OtCKXt/kiaeziqrzvSSCv3zEqPbbjytQ3VCbDJVZ85kTWvK
272JMP8Zef3q/uEt6HvGXhMpqWCac/xOE25r0D8ztOX773S0PtCpFcfzIjjmJKTmjRVT8EUiiLLR
DjiocDTNBCB/8+unBEX3iqiWfZa+BeUr3bQawcJWG8zvILBJpkmwyJ+G+75IyAvL1eg17LNJ9qt2
1PhN0hGqvwD5HIaI9dOD4zcpElSABkSKnKStg1yi7kjKYbREhUBZv8HRGmQVlLTsg/h8Cq2VheHn
sW3Sy1fQv8uZuGRreMd/qoHdtyhXG2gecdd/1s3HV4gsgE3Q2FDDMQ5fdm63Wt+jAROo27GHO0+y
PpkqwgqXaQz3mltdgdHXsph/brP44D/ArP2nNJl7NdGsHL7cqEuz9OpnEydna5Vl2HM6HvmW/yZM
kOB0VfYjebj9WkAEb9VVSEzJZYPCO9nK4HJ2YWSqPXYPiG4/sUVZTyM1ZgZY/8U/3UQgf7FxitTv
i/RcKK2g15aHcwQpG7ib+kDM+tpLau5bRPTZxZz5G7RJQIUF2VQnzmUmZiPoY29BYWOYvz4DdW/I
P9HLnPIFPZwwfGbr88xBBL1iaScZKVACPp9i/+Ms0D3zTHJM6w9evicS0JWDaqH4G49Oc+nx/JwH
zeMwiKLq0jdG5nahzY++li3wtPw0l0qwIwO5aFzHw5+L2NN2Pw7P4hdxemUsB+Z0GUxQXUHYU2b0
3wpNQuSlvtLBCofvK86AI9PVrs7M/NwhLetTuLOpSPjRXMZJQaq+o7fPm4u/T8NHdm6ar8o5wPDj
7rUiXBwqykjUHbqyI/5moOY0g+3Oriwf2xeBa9lhdxLVAaTZvRQTShBuuALl3238kODxpjriIL+6
gWnWhC3hHqDpWeVokJ863TAcKcC10XQ7oay45tcFRUH355lDHzK/9usv1nZbRL4NTWEnwODcHGXy
KHg9eex1lm8lc6MDy9SAe60No2KOIzn0VKe0byRfM38NKcOYliLSfZlhZwpm5HtBM0lslDbLDd/z
GZAqBCkkttgSoeM/IYiH5gAN5mJjjzhjjbRsw/H2DM59G7wMCcPauvKkxiQxYn8gzUA5SshQ5ZA2
0mdaVQLZnX1Su8DsSOzN9uMyM36Tx33kZCIK9MEZp51LKO8jF3KZKD+Z9HofGj1ud9tSPVfpVbdQ
EUFy1XktgwV3FuvDi9bnqcAkP/0ldyAroWmwSSe27AzJhYTkRBlJ87u9CpkD6wWdoHNE5jCQ8fpp
LtUaXR5XcjYTs1rBSI3leBCr5kDmy+EwIYZQgsz2Z9H4OZkaXj9EIpefvQCmriZ4NA4Wc/IOP1Ik
IF/Ra9ayRQROe4Sp4tP6K5YdjA68fs7IsC0Tk0iVcz91esPlu/0IWmaQNFI3kz7/vaXozYbsYNbm
6u2etqjZyienhNJ1gJMn84zQ2nMlrIepUWgV1OVSK0O7vcyxhkemg5/SyxCHXzr042xmieg40tmB
Hdo0Q0Mgb4DuhTllf/m6Jm6U3So65U9MwwiYdABqWoclaMJ9h8Q++bbeBQ2oCdMRhXKxThIywHck
9rsb+POto4nVNbCFksvlBdBdWheO8dSxaeYqtE8i8Hm8/JTrX21wYqUfdt6IpNskTbO8tgsfbI90
dPvSA/o/oo5hoObebqoJ5McVpsCq4b+D4Z9Z2ZKisnGPXRL2Yp5ByInopcpcWnxUus2CIEBvkIgN
5dsQrYRkaX7c+vZi23Q6uglcK5QHqtXplSiBYdn+Fq4IC6wcfxvooCnAJC+omprrBdZa3Gg0tQEK
ekA7eqKedSrp3LViKsEGa0RF8AiDkzoGtBJuyC2/6IK0vBu1Ctqoktzt3768sKZ2IKKFB2Nfr+wq
8K01MYgpRnWITaxZe9onBUE3yQ0ShCapAzWH7EBJX3KwVeRAnllY2zak1cVIrgWLvNM5FbhCILtD
oPACxEdYXVAaSZMDujeo55SEKgYBz84mxmR0+If+FRNzyl2/lfHC630xymbcg/CqxzlXuqbETC8a
yS5fdknYfGW1SIipWejfdExFMh59XFuR2Cr8ZfawzUxdRm3j7qMCVGqhYE5NRoo74cqiYuhIXvLD
aOqf8pFAxVnFFzovGKW1UKBS1axys3cwui+Zh77TRgns/0Gn7W7BXVYshEiHh3W8oLY9sLS+2o0x
ikVPVSxPjdQv0s55qhBTAd2wuqeCaMlEx6SFX07IfBihKydHf4C6lanC20bws+zBZkaBxyujTuMj
9QBMx6hn5qF5w130t3RLttRrgA9tGs9izT0b1KvXJkeqhPuClK4WhEvD5LmUOetSiK+Kb9nXDQ9Q
7d2Nvp842lJVWzmAfALKOObFQwBCD+ttH67OSxR8wRbWHS+7L8WCmPJ7HC8+TCYYM0UwfJJhKfQI
xLi4wO9EgG2eJhQFRx9IAaERoJP3nJhjO4tR5ImI5cyDdVrDM4wF8utFK7/0zo9GbUYUlEVih2TX
q/kQJDIRWK0NoI6HIGPpe+mMpMuwVhMZLTEkjkKov7bPXULh8PDjAMO/DM/TS1a6jdUoWRd3XJpB
mlCoTfNntDuMjwItcaze3x3nZTVxfYV7F66GiNa8a4RpSiEiiWO4yTgWl5oGwFwOZGHMEpsf2QYT
qBExuUL/zcRQd3LWbTVRiNzDtu+5JNNEJxKKX1vRSQUi4idT+ggAoUmyJrVdu95MJmig0ad3eSlI
+9ANQLrrg+9UN3KzVhc3VTGmLxSLQ6vX2Ys8U0uU9P/Y+MWayQnGkqQFnM4K3C/YV0CJxC4TtdQM
cDfoab044G1vsAFE5nNu7lRmEQUKRY2t8IrGSA19lqPvb7fQfX+4dF/vlMy3YYpzfaS+lPwHumOM
yVgUjlOyGwH+pDrmT0B4JP6nvPXzZJ5cEPQCLp3o8Qgg+oUmicL+T7mP6bVVDKQ0UQl09NEI4tk5
cRZijMT1Uy4N60MDJqTWrVBvg03s6lIxj7VipPKnVMADbd/CbgtmCGq7IuJLo8Mzyttt0SSC8VlB
VWU2FIMWZnurWgrTxpuK99C6D3Q8JZt3WzWtiq3RH87sM8D0J8Rr6mMR9PA8KOl8Z8Y4G1M+VK70
p3wr9ot9ervNB697A6pfEmfj6tCljcx0JPp02nnCndt1m61cYtlpsNAySF8ZUL5AQ9gnN1G5x9E6
1DOVaFDJemskL80zVTjAytbf4wF1vFp1xXMto8O0icW7OGW/5gxwzJbvhzFxKoFS/50IHr0Ix5cp
y8nOopc6/Ez+cjntZTEMFbsb7bc+Ah+MDS+l10oj0KfkGjcrHQ9hLxgqMdC26+mSveOyz0albq0E
pqtHl5H88WAqNIYw3I7fV8JRGse6Yq2P6bmXJeYuPa0ZwykWEMTMhEllzDRvczHT5/qk0y7VzIrL
wg7OgJejXmjaSuEuEsqMWkDeaHYjho/mzRH8ilXqvG7zCG+8GJ1T8Epj0qIo7BDiLDcLLBlXXKX8
r32Ik7S0CGn/eaY7mXnkaIkzyxZg40Fm/P0dBuqubQasqk+C4CAsC5RuiLnk6jThJUJDteTsnksj
MaLA3loV0ApcEswH4AL5NaeioU/6MTmsx9ZoCQJ5ssOguCWvRQ3hhDSb+5EpIO73acB1AUb+T5hC
3h29jyXmVIsdjdVYeOosBydLQSIPoX9md8eLJqyKkMCV4RSlcOCLNsqSOzvYzNjq7pVYnH4Yvd2D
cIXECPpZsGOPcYTfC5jdW83JB6Cov4wvxEeh8re43zOBBtx5ovevIEiwjmk9vh4Au076+4V5L1QA
J8gGZEYT/H9QCFR6GLqPqNpuDJwhDEl1aE+LgUAiFAyy8+Rvdg5ElL8xJsb/gVpZBs3WkeVIX5JB
XVYxRIzUsOEDx0dGcq4HxFERF3bEsP+sZBSUsOnvI+BCuT5JgzoPOquK6zU1N/8i8gMx9eoofb7c
CvMvtV5AehkInK8wDk91/eFHHtK+FkDXGjU1JBdjCf/LVadh68sWctmFFz++5WHWLPuTBP9ayixv
DwUwhEMhM5UTZDFYCe8DvM8/qrI0H8cRd0f/dkLXjEejFoiGdsYVOKEPgAgInrw5q3BE/aZw+EXI
tBq+6+6EY2DfRa82YKCkZ/+8ACccn16OBztyXPCloTCeFQnvYaEtXSPiOmgmJFBNZceoEXL6+BlQ
rX3cmoo54OjtBlie0zNGlQGHRo6FMnFYFwp7JyjIhOc/cCY2RTUE3VeFuVCu++EgpbrUQqD6ZhtG
EHRrgvoBEHgCRng+Aew4uTSTadLO5tp/ZIIDQIMp7mLhw1jHXe/XauIx3aRZYivsAskP+eYw6iHw
3Z9YguWLX9Y0lPMVJ684o1RdwA24apXSDuQWufI1lihWxt+2PooC5Dt40nRhvfuph4cF0zV1eGYc
IXlKa/wJTToZCY8s/oJKU+mqPO2q76nagr6QlmHOWJioaezN2tyB90kAcGMKuTLXToiH3ERcaZGD
sXyTmlF+jxhOWRYbHlHwfKsPfA9USRdV3WcyNsGpBBE0QSpxTe+RWFiGVPeIN+ZrH8H+Aq6ozN/H
tiKzuMiVj394KrtmaQ96LPkkK9OvM3GnkN5+w0f8kPVevj8J6eN5NnB5YyLsISxjRDbAo6SaYhNb
4BeJ5Yl3jjywUs6bx9zt5Br27+VTEAF+OYKy+qe6ldG+tA0rgC59I/tIAK76NuJEAVWN91yGrAz2
OVQJ1BWzu0Qe7MkZ/whHl9Xq9ns+EAUt579TQAo8wBJvyi+FZxLotw2+9Fiz6nphNqh+5ctNqP1M
dkMRkDU9xjV8k/RpHIMV8BnmCcma36K6yOzTc13U+ny54qw74zVZCVbBp1bXEuHC9kDhoWBEklYE
Qs6G4XYpHuCpS5F4CoJ2x7E5AjlHvtpmhd+2LtN8LecVgCDM6gaMYU9+zHMel6lmNxT3EBMalamq
rJnzOpizUwtBMycH66bJX98btfxS3VhX6NK4pwFv9fumUe0fXYisHVO0qXksiEzfJHubgTpXWq58
hh/RIX9cEEAnvDegewkDsP7A7Kra0QO2IAt0/aVnl1GxrvO3LvjrXMmY4ZFMVgBfE+gXa2JoXRs1
JWsBz1TadVe6FreX3RBy1Q+3I96965OR0d56rQYEKRjjCEI5OHj9JfltObDWkzMJsDvw3/YaEIZI
bDy/DAz+4Rl7hIZb6DZPDJxuGXNjzy88sODBB0jtnVyMlW2wgg5kxbVk6RvP+TFqC7z1N0CzqtDU
3i7HYAsoHhf3OJi8Op6Yw++M51hHRqw+2MClGQ1LggLV0ii54z8Apkucob9QlMSQB1BDHGakq9ik
W7QxV3jEwsUGCwPMp5gtnrEu508eP0GbAmpB45K14Gr/Nmkrv/DI/3F7mWAP43OwC3oEAVkSg8Gr
vk7cFv6fmqx3fZao0fHwSXgzAlSXHJAAs5hnzrgA/YWhJwhOnW7UkoSGgQcYzDIp0Sjyqn20ivp+
wp0Z60iopFSTLNURqYurd8SoiI0qO3UFMWk0WDIz/XyxN8yyS5oluI3CBTdsC+Yd9iolLJPIfeJO
PtyP/pMvWk7KY7k+cDlPQik97T7/roToODkmiAnHa7pJlGRSkIViAefzcTho9vT1/jDyZujFrx5S
LmumTuF3nlpGK7QwGcZ8bHgglcR6bB3zIffQ/10PLyQktfntdyx5ICkhvqRzqQQerN02MnB5f5u2
l+wVVCN/JkPJlAW3DfVNy+KOfxO1HXxvPEeqmNqNEc4EC80MO+VY+QVbgu6XKL2waLKO6flFDhAH
eW5KnF/T74UZngZSikdMKVxjQX3BvZMDb0KEmMBrCk5MFg+/rWocFBpNzRpfOwansJiu5+W1vdZ7
NA754uSQ7kDMoJ8YKhxauNXly4gdEmuSwvqFh+JQgApEuuHpPQJRyTarb72PnmUTn/hy2dNHvb5G
ceO5DAx1ZBD7aJiUxCyeUu8/45rRjSDZHLXzmtzVmVFNtk3ngLpBruh9iv/JUVF8xA3/sYMR5PTI
Hu6CZe4N7X2uTntL2qx2k0PiyrO0CkfJ9xBrd+Y6DAHA+lBZthWFY62qDO1VdfsE+D8oSrzvavNv
+2VmVRKRm946Ceum4ZHsmqbVtJr1ZYTt04ha+w+SVmdPNLFa/roYm9uJVybghH0zn3rRqCxpRUkR
YYnrFMTJA2TQ0v76hbkX+k4jdbS21e85uh8PC0rF9yg0cYRtS2raEVTPIXUgjRe5cfLzOCEb1HpA
B5PKcYC9yDalBWKT7++XcpPWdYs5QeeDOFQzfe5LO33CUHTZLScwafyw+9/AnbrT4Yh23ObH1j9H
32p7Qn1fP1obzWwIsJq1/PaobuCsjiUhFnc0vXTsXuSyT3JEOaRkJJpwUawuQhKauivXiSpWdnrg
AFoYJmzib0S6Qh/UulPBGvTIB2bILH6IF8f+C0NJs8veXBkKN4mL8WDv2dkfkQHh67jx6bbOhoP3
tAUqqchB9hwyaM6ydutSz2ChZ9G/p2TlyI2Fe+u76NmGenv/4MNRXn0299mLFBJy0DKUFuxgmDtr
cgDItNM1/zCFgsXgR1wstLUynFL/T2K3ee6W+NSgPo58CmcV29kWwc+Jhs0zkBGiLlS/R/vxe47H
+aOvntxN3Gz5cbk+mPEC8EhobAMmvoMmZ2YGeCDgoh2VeS06J60K83Px+Zs7nFxGeKEbQzieImIB
UGWsIYx2EC8T6vvpTvC5FdP5B0DyGWvS/osZCpHGvR0BkPSHLYj3GZz3WSzPsaG5k6nVpV2mqFXU
ZLzQ2e0ngh2+04yV6uQeTgXtdRz6Tk/jAYV4+QuUsEd6yohEu3yULdDp71XcbqZBIAHvnH+aFPUd
Qa3HywTiZajf3tCyNLGFU9XvfkQftXz7JXth0W6L8csgLLSiwqk8/HzOfpv8DTOlLc5rHbiduyOC
PksbyNHV8+zFyIaTdFynfDrocwOXQtlJZnqui3MPmPg42WC5damnyxpAsX8wVNpmDw5HK10i8q/1
R+yZJXqYF+Vv1ulT9hGdOdOquQmhm2tMbdn1PnZBS3TdY8ZUKuFYJtZTpHap9eux5U78nlDyhE9h
ekcyfxEJGqpI7Rf/uZNZyfit5EuWxLn3UBpmzpXIiN+JV2MSsn5JcSXIMS1SeFULsukxyJDCZi/5
UOwORRNLOFPHKNZAg3/8SQB3MhD2zI7RbYeM5Lx+Cd6Xaq7Q3GSdNM9rbOmlLRfOz3vCN8j45x6g
6y/G6khZjZjoHDEaiyjspKkfdiNf62DWu7OxS7h3la8CK5EZo10/GY1B3H81mPavnAXr+eMyI4lV
0IgdvpZwgTGHl+lCpooC0bicvsc4BgOord4+DNPgL4EEyDhEv+bicxtbaYDfdc5oddn3xJyMNq91
EGgoOUyQL7WJvJMGkkSGg3KxNP+dK/ecOpCjuikl25C8VDug8mUrWzO0NZ1lJnxjQtHlD4xWzdrt
0rILIw8Sc5qDilhZdYm4EW6S8+J3vkojL+th8PTULn4X4d9IfGMLOb2rcHWwkO8DfCdi2u05OU90
xBjUwCq4TDRa7cVTnxHIKokLJ9fl//xbe92mY6WLiLnh0Gl6fq3fIyxWZ7N1e3GCbNegGJ5KEUMp
zcNbxU4ifh5ovqQ0sKXKCXnq5JvJld9I61fTG975XA+mjKQFYy6sueS+eJvOSxQp2pYOPemWhURm
JMtAvuI2Nd8rEFGzRlg+t4KeKy3j3/2rcV16jJeUdJp9ZDgQpKVWO5q5vNSQauOMh33dkBzL1EjK
o2wzxra1AvcpUFTFiWgnyfAK8NnlEAOB5cLgZWEZj/BEsc9Fii1tu1OcJzWCHDfH93Ubv66j+o0B
sk79+HC/w5u3YHfe+zyC2/jvqCUdsLspJ8UYMQzGOUz3V3lEBSlFt2o2sHZOpNLD/O/YkbP267tj
Mlv8fAUyxUzWmt265aUc8SjftX15CiUyEs4UPZcjUAxVEtBDnowxlOgNW+NidX0AMCPaC74GpphD
rT2TMfDpCXSLR3W0w6JVQguhekvaE+Ue4EWWFSbW/Xdo5PanhCVLexfHDg+gr1nq+yTm1PhqQi8i
aQR9qYRDkG+JHsC2dKlB+gyz5Aev8lXYbUfRgO02jSZotjfxcZ7oxD/rFNA34K2qOlM0vFiXbjj2
NGCG/u9A7nIKaOj/qg3el++JByzLWUz+jHomiFIfWsbtzbmcuty8wS9O0g122OuCrMFCxDveuyFu
egby1fQ3viIt5B0Qq2g6DkMFLdgz0o2mF2rDzokhbtdMQkelzZ6lGUuS7FATNoL6fd9iWCbnWdsG
XvtbNXSqu3MtBrYkXHulRh3TM8t8RARWrSkQzqWaK4/bqrXNuPm56oS7t+8+8GEJcY7nm0tpe+pn
P7ac25zOPUZigm0jzrslNa5Tz7MUcu7zadsy94FObQugYch8Cr/ZHEiLTXRb9oBdQ3sIn43QlZkB
TMfIs0GJPfYKkG/uJxYHobmcPWmyj9ofgg6tTsA/auM3SBczg6R2PePPIvTKhc2xtzyFvK1JYRZK
TJvdTeofRv76JGY8+2kkP8ma7t/uidi8xzaXHOI578uFld7/0KOEU+5w0h7Twm0K9bjurkxCoQmd
xZe1GN/tShH9jtrqDFq3mJkffaZtByD4tdlk/oTc3RC+62IS2Vnqz1o7qOy4qFHJpczThZTTMxWt
ZW/GiVYp/yifeIeOE9DgEA3hubQAxZ6E9lyNGxhamRiClnYU9vSAOopImbZYPupHPIChZv3jVaom
N0ufwy+XvePDZX+TEFMHZ5gXGr9nXKmWr2pidnLGij5ET1PiGQUpLT4Yd9RzqXXbZfiIOpLbzcwm
CWEm+J+haT6EnC+52/HYV/y1WdDOb0a1NsiNGwQdR2V0yihp3pV6YCTdA2jR1pg5afqnqTEjacAv
UH67Bzqr1PR18EjMxugtAWNm7QZviRQAYJyccKkd/k4gYtVQlcHWPau3JJdC1UNy7qsXQT+jI3e0
Rj2zNgPEXITZJ7qjFb45ZIstQ+9Ys9lbXsbXGv6hD3qKVZ1IjnPMEfWRuFEbUW+9M7jZmp9Tlqsd
Kn6ppYRTovIZCNk2rD/Lpou9zqfWJZh91vaAR/e0uZX5aG0PjRuY/9adwR3S/l5TpBR3WnVoDN1g
k3kRhgapYnJ7+soy0Vpvr6NzAtQeXZ8OrKW8sDF62v/RStqb2XrkSiZpk1OboNnn829w+LsE5PJH
IREit1FMn4TASiDNdK8rKu8DB8HemD7fyz8ihf1SswLwn47yH2qkQdnUVxM23ZX+rTBKXTPkBK63
/wyy5/rcjRA81LC+pMc/RKP1sstA/t69fHwmNPFfjO8A8jUIzxfb00dz2i1GyzNnAM7kKZzguP91
5ZvItRlyOqiIUJ3342pEuAyLLuXifDzLtgKys9n5Jl2dOE4H6mCvsT3BLz/F9+m0DBfOQJ93SBGe
PMr9Slzy6ZPq8T9M3emE/lvyhRbfolYKILKWbDU9BKl7HG987CCM2OuHxzywjXJ4B6J/ioXzZFMh
ao64PmklRL8X6f310cBYHHU1luC2xtvdMio30iUygFYNqqaeedPb+/InTEPmZjlI00Pa9+M+bTYg
lvanK7EuCb/FMmgpDHfj66LQX34YMbYqizFQrHscJ1dnb7X0eOxiI7P3brmlO49I63eogMAG+dgK
VnuTa/w/AOiukKmpe60FaFD5WvdJ41o3CTacreDbEnYj//gtH9GMxl3kC1YJ+oWZ+/14HPdAYY10
M9g1UwjTHWSAeXUhgq9M/TJ4BwmXb4mvC9dzbeXv3UNaif0M+z1mIIqC/zFAj32tZi4cfIVakIPj
75Ha9/mte3ifAFTxdcipMv9SI0epb5gAUxqjsOPjjwyASUatdBwYNI5JEYZhEb6ZvaMBTNYTFQk7
tbjMh/RIwC+eQza3cGJ9mrjnn6dTpN43gwtvo58hlR18jdCeRginxNFwne612csYbDAl8+SWiXOt
MolHDRzpHms3KU43kc+byJal84hYJz4WDe5xjmRcZRr5fuX1r9zIG4O+d50mBAiiTIxscSZaiNAL
sliMHIGKzNCYUlrlcf3Xkq/201CUpXboHTLMcJBoECfazVpXQlX3lOd0oQOMxoOuOc9ZIxyp3AU7
m5L/7o1i2Y17TB+B3tmEeVxf8y5jmFv2mbZ/4eX9gmyFv9oIM8PIcfV8VjhR2wBIiav5Rl8Nf55/
Wpsr5IOYb90dEQkolLGXdy89zIeSHjmM4R2py5tqdchEnvZr93nP40W6mOMO3YXg0BIdKMjPE911
0audQ4dqMzjaAIaOPkfWg2+PHaACSlm5NiLbdefoxmLo6pvq/R2vpD/O78oB+sueuwN4fDQs/qKY
KE19HRD1KSUYexVnrhWU2OH2stNwAeYl7q5CK635ou++AL7M7Io+btUJtdXYD7SFGpBzn0zT9TTo
7s15OT1jQiTvO3w++hxht2TnNidCerQQcRQYB2PJmGlPxqROfEFHnnjd96aXyhCDIDVgoYOn+NAu
2biCQYSUw/XnVvTdTUKz4VTn50M+8ahKnyw6x672v3UKuj53w1RN6slEU7pXjdAKJoqrw/vwk1LL
xyKA8OT20LKvyGZTbm1bVuPKMKaXRvlcG/mU1YjNsnN6L1VeuOL8rjBg224LzIMjofwyCw4Y7vLE
B7m/IUUiZ1jcu/yyckxWekV7ZbFRFRm3FK5P9cPPlfB54qH7KGXH38gLsOcrVehlZK8R/ZvBHLBT
WswaL20q5Q38Rg8rqPQzEpjXg87DEPqJBHYPMDoi205LVwjxbK8LO2ZT1RGe8JeZIop2kwcrD/MP
9wRj+HBRC3wfWeyfRKw4ONncsIePvllaF1qpWrTozwFAU5nOSKeuTTWqkt5G14us72aFqmlGlTbE
IwsGQ4BA7QZyF1l14fFsbtPumHkNkd+lROKWoxzuZqIa+ISb/5umheHsSeKn7x3tZ9z/pgKWEMOf
NaEyvm0GWNg2R2gOdk+usjil3wdMcepgGu76+MeFPrkfscdC/8G68OTGUDEkJoI65XnnrUmm4NbZ
2XO9AJl8FVV6HhnCNfNcR95HaAccXZrIOQZBkqSVjGv4W+AXcXnEE7OtMs7bEwpIVjkKQ47w5jOG
hyCscUa9r1iTQtxOuISoKq6mJFulVm1m2/dIL5Cq1GUHn8AdZUNI9vMGuInz5iNiNjbYtbDE9Wdt
UAPamB6JT5/QuYEQrqsTYuhcNr+AjP5xw9SyJwSKcQk5fBtCbE4nh8VdEsILLuS9/BUVwKd4W/Ob
8o+FWScNIHQtQqbdwCGZQHdXegdwc/iay189fxowZ8DloaHnhenQvPiceIWHj4qPcxXJfa9i6PBy
8xDLJJmrvmRuzbNUyg4nPySEbfhnW2uVGxlF04MBHneu4VRfV+WVs939SXw4wyWmyjZwzFtk/dZM
aD2zdUTo3WiVjNykxkm1p1J45M8opc57z2H0RRIn4FJRSfqRzMlZNQaWQk0FhvDy8+YRvSUbxsk3
H6amIlOG7nXHqaATa2zuubgJVEivNSK17vWHPD5iKSEf6fCPGrVV4F3COrKbGoimNHWh4556XnJa
nqO6zXJJX+RUMIxN25fRhWyrIxO1gNbi2Z25f5TWMSxkeoQWa/qBp16xJNQ/iT9C5KyBoWX8ij5K
4TcMHvkr/4fxHiC7y0DxCMrEJJm4Cb4wLzu5Eel9l/8ZIq8iaEFBSpA4xyoeJJz+oN6TH3AWfvPh
HtU9o9KXmqhLZUallE5bKsdj1sD7T5tO3e7YcsWcVOPlcT495ho+iz2uzIAA2PsB/Mv61UKm5V0F
jZmyUIm5gc5SD6R9AjJZuSlKyqviU7sWqZfVSJ5mgt6n5QSYZMiHenkZWZ8trXkPJEDt/0VuqCxr
lw37MqHbuuG2pbdnS777R+P6QNPuAS7fLCD6mRFYRrVppXyyYLDpCMtARrXoDUr4qDy+t8EgOX7C
04OjMld9C0nzfF8YFXzj2wmaRvsoymg2VwLX/KFrCNTS37Ihw+mIhw5CMe69tRA5z11n6UmuPxp5
m+iBq5GwvNcOWc/er6bWmX+Q5VSYM+aX72FlIVtTDwTzex583oloPgoMVoQK+T5liX1FEgajQDmn
3i0Lr+/NlHD6/lPEBk4dF9RsvA9/OGU9E4NixYYTgWGd07Svhu680QoJ5os1XHyIfk1DLOOJPXAD
aFVnCtdt7hbMbftgTTfksl2fc81fdCIMVgSbl3p+VG0N2DT1NCOkSTvyzXs/r1r/kLg92PldpORi
N4RN93Bq1ukmGgT+kdhkxEDsi5JVfo9IO7tENPmRwr6JYM9/yhkPvotfy4divzqsJR85MXN6MGDu
xkUw9tuonXFmRvjkzg1+6eu8/nJPjHGgj96BwTES8WqQvS0wuYzZe876of9uiFBYzwWTFnD2aoLM
RJ5r463XKBVDR2YlQzaDTt/8S1mbg5m1Vtn0oTR0sfvhNC5IHJ+fc4CpVInbzMLaEPs8jUEulZSB
UUaLfIKqE8fVR+wXBIfNWwBefh43L8TVjlgcw6yL+gfR3CLkggWKuVfJWkJhsdOqg9uLXn3T1MNy
CLTdkrJsNkhYM+2fLRC6XYpJo/Da8gJR2XlnXyZosn8MIyniig6ZIiM+FNM69170p7sJZHRnjr9M
iOxrkhjoQGWa48qmSboxrS3KKRepqIJKuPQ4UltTCEiplDQy/O6jobv+4HIv+ABLzf4153VJ8DII
MDuC3H3/6LdvFL45Txt8UQHrx5vTA8+Trab3xFBN9Hma8QtH9ZkZrbri4FHkEtpNvmNUM94jSqO4
78kW+247eprRYpLUUcUUYyRDZAgjo4Hb7xLgJFRRTZM2PwHNYp8bdAvPtjmEna+MxwJOJtteu4uF
V1ezBBg92Gmf95wfykVzBtMT2Z22NOzgyhO34A3gGnCOglHvU4VhfMRWFfKpxy+B+2vXHNdGDyZi
h7f7P87+g/xuxduw+4VvJNS8BLYyvWvnE3G2kH4ixMMna5K0rpxxuzDg5W84T0KQnyIwNrVBy+hR
AS4xVMDgjUHGk0Mtm/B6L4liSeJ86wi4+5A9ztmhYks6JqmIJtlMUEYFoqdvPGGhYfVUoaimjoar
3dcNLmU0lvELVM9C0kRcGK36IJSZwP8iX37O1Jo9BEHyyzlDzm+27trAd+omzkX8c2BSRLiabsE5
/fjOWjydE3lNwl2GVSC4u737sEPPxKIenKbWMV4ZUnsQTVS/GGkcXYBJWMqiFcVA+XauQousxhys
krCvoUeHGvAW7q5pBJcgKxfigOlKGp3BJ5IfMsEXgfD88nNAGtm6+6s/Jub0sXBjl8r2KG51M3r4
OdeJCzPy8mC8VzIS8GzZrpH/1NP1EabUqym6PS9KnuksEvjB2x8MNtmiJpQJ59eyFxTCKP2KdJt5
TeX/iv0GXf8oVrSQHXt1JmPWp8XVhAs6ZecWbkWBKONgmluqxobQ1PwNMYp6tmccEnQifZ7wqfoT
sNFVrdLFKg3XBWBO2EeKJHCyfdv1cWmFZy/bHnLH5ZBYQHbFdmh5OuLl/ij0oGrgLwkZ3DNVy6Gx
Q5j29b/DjyOizHiDPDhTw7FDeDjJ/fFnbVdkOaIMAvOO/Sx4RP3tn0GQu3IniUdLwSLkwESZRcOs
2iwCbjMkHIwMaqQ29mIojh3IN2PGAU6yZTceFTbgNzJwmzUYzCLzFFn7M5L0FRpV0VSeTkliJnTM
Xwos7DxSvUBV5cZdFRAEdlREcqKhPYZ6sgR5B5SXvk3AQRYGpLHise5Jh7UNTQo3f6t1QMuNTjcj
e7LihPdiG09jxl8rH8UW//QQmmCv0oV2jl7qAwVUm/H3MnWAjddjptkpgrN7AQ+5ihPLSg+E9wEW
jfSY9w7CDZf9QOw4YvNOmbahpG8mN+U+OwXaEX/BiOSTVRhrBkHnXo+SkpIElQ9VmcDrwl/lFncS
1hdy0F53880stkB6RtEfDXUVxxDNrycf3YU8sqNVbhdZvyZ3JZ8lK9likuXLNxThMT7MErR4sDCG
MlKZ125ow7Sf9EuK8OHjvyesHa/9AcMmVx3un2x+nKQZD/yb8EDZ/TKKCAbLw57aMvERq0ht1zCe
vNfBNqbKP9cEfEVUPHDlT+TB6v81R0oAMWL9LgRyZDBmiKkB2pVNJL/xsvJIn/eoJgxj54vWLB2I
kXSt6HBmE8eoHVLcnXzQPnSa7TUyIjKhKM8j0tU0laqSWxnGWOxK2u/uctplONsTR64F4QlXp/tV
7Q17ZkOVaC0JPAijDzLH/4oaiU7dN8ECBmaBntUc3Qco8IrIUR0iHhfDPTOHGPkejlcFVjRSb0JQ
ykG2z3Bp5bDKpqEkbUCJqyOP4tgXjNd2sX9tHIaCykGFosZSzSLry/8tEF0syzIJWzuBSA/XiR1+
1h8lGt/TZSjaRTdE+H9T8G2n+IivcgFpiYrAidH74xqSCN2WA2JKL+I5PwzhhDp/qrLK3iJNCVYX
buHcMYKz1JXOMgcRoreG2mZ3aLwmwn/2cU3tHZVMtXXj59/1TP2CnazMiwqvT3zJaThp3D5hmhG8
Gl5tHGimdErWVAj8NVFlputplZoxzdZRQMc0f1sh+lZL2RDBWwllvwjLsqCIcGSSeN22Sqas35XN
Hn9igCbo3n7bFM2H1jwgRFT/d6fbOZ0t5eA6+wzxKC4DM08qr97j1Ac2PUh8o40FlHGp3EEE9Q9U
IkkRcrg4sH5o3wp2z4tAyhUTSfYSuxAJ2S+/6zvVJpSwldeA8AoMPLmtC9K7YdKQ4JvZmLYJJjX3
6sFaoSFKlwGP5biHnfuuCe8GsBgJAQKjd/rkCgbM/9nZjFu2+G17HqVE8BBgqqkSRYu9C/2SxLAV
EaOey5QGRGmeuX7q3fWQ2nRH1zvbePjpO4Sq9ansWcYIPjg97qW/oJCYNxZ2U73EvYQKat7kUtPJ
CVH/Jer4o5PMQMszkyoN51DgUdlN9P9ZZNmbaNkyezvKm5ZXnnvxvwymZmOLuBsyDyzcuxUtf+Nk
eCv3Ziza3TLHX2AXg+hh6aOI6YATum4dzFjTeGTigdkEeIt8sQgt1/D0zbCQXo7iRzaosuztDLrT
cLk/wfcovjp0xAisZKawaxqgUym1clzhEsE3fUDIQUSfS7NJQ+RiT9kDTJYn0F3rnvxLBGWtGq+9
OCndjkTTu33I/8tS0d/NdE+fO+D87dIyb3LO8OMQmWI+ENmSuSL49xY8NFKkpK27uikHtVtc7zgr
DHp8YCdcAKGelEDCQoo1b1rhIv40G1vls/ez9p94U+E6HsK9Vfffzt55VLNNLCpxqXdPPwVrHhbd
koUZ5+71b0ybM8XURm9lepgRptoGttLT9R3rgdjyczg176Gx7Tz23mG3VrvQsWEkrguT5Gb36frp
e0bysGvdaxKlHfVD9TEpd1L5m/b4BPj8H7TJkE1+nv2dMMDGJwL8dxFXQW8psHGM3Wt4c/kCGaUA
ERh4siRsv+umzZ+a9xD0Igjxzce5eBamOFgIzfGPQb9PSw1TzXTKUaHPdcEZrEYpRKbA31zX4rj7
h4YMGlgmT5EOVDFVCeOJGmBj2wVT5njIOJUnfS1GbpBGDhfYx6BccELfSuUIh/gUdzBIqHC12xBh
EBqj9rI7ZhFXmmT5BYK2EyjJVtgG4he1tpWJ8gy1B1v91VY+aJTU/XVqC28oGlYVqOkM2hHfIzhW
VU9/ihdaNOKWfAfWS/4mmLKdhGN07q+KcQwntuX3c5U6X3MuD/ue6vo26u9F/b6+7hYXGH1XK3Ha
xyrCy8Abvx5cmHf2OVxsfp2X05rEPUqcszNsHgftvr8rknyZcjrH2t6xEqZ2MzgD6Q9nXm93mboD
ngQOWPUi15O3Bl3Ro+NozlFaGT1t6uG8dZC3XOBF+jPXqpytogVfgPtyHc7h6qESjUdfeqw6q+tc
9OeYMjfqHwTadQXt9sG7Hr6kzxdBJocBz2ozg8f6uEOW8g/RlLpD4uwdGXN5zzm3ni4V7O2EKKpP
2Oe19gmKx+N7AgOQGGqc3fGpAGr7Rif18hvfQc4pcKrdMciwgsoNDZlfsWJXZ+FtCAXoiR/NWU+k
ESC7NLM28PlfWYM7WaoHRt59qGsUtE07Ca/zfFgFQNvj7lMIHtoMxLBzLEMVfm+tkektsrurFMnB
1STlHGcuZ91/HeQa7TN2LSoxcH0GzGUi4laV4/LIE9ZVsvedSTzSglBl9uJuMzwzGS4wgKzxhejV
kJ6FoNs2h/pryrnCKIuiaTzCqT5lwgA++L/uHYNbGhRf7Te2/S1tXsaxvTzR1SthXOWQlmD4Edmc
nhxaygj5WFRAVQ1L32Zq7UtZg0ey3zVSwiCrXZiU3HUYhwZUqKMQQ2zYzscFJ5xuy3aWFpfigW1q
qSDOIkKgbvyd9FXhLmndhKG5x7hKNh7n2J6TnyLO+mhpeh8gFad/16u8pRZkhrWX81F2V2rL2xHf
0vwfkmnTmLmDNqVeHZuaMXwYUtqb/DPGO0nL75GwsHNfwlKZJmZL2ayCsNQ2Aa7ObXYR/V2RCDKA
+7gaQmx1dE7uxp9F9164awlr/6OGr4DAIyq5RjH8uLNoEEjdk/fcS0De+1BTxIPvVpsovviSs4YI
Tk7ikmZ+ljMdu/meriq+HYptrL0MU+hSFkPJ82iKR5GG30a8vZv9DLaARuIlpEetd/RwETzb7M3R
EN7QrMAwX+bTUv7ya3e8ccOdxq4JD2YNjpgP7tdO/sGiMts2ZhXJc9zX6zkpdN6LGigU5Z4kcMBJ
5VEIV97F/VfIdQ5i/8z6ipjTuq1xZ91lVal8uzS9QFCESiv6suYSGrTMu/vePrIbCug2uFEN003T
stOUOJySgXl7+YFOVUNd+xSs9L2gX+LAxmXTwOBkiQVUfSaSYIPRFnzQTf2Ld/S5+gA/D6AAHxxz
BB0wuIRGd0+GoN2nX6bLikltNwHyn1QXLDLKkHBKuZUhjWbC8J57DPMu/el39O0gq10qwhzfPz4l
fihDXEZErInbs2HFmcITyX7NACnWoq4X8OS8teFr/s3wpndar4Ys6qdlDdWy4iB9kHt7CG9HyqM9
nNE3i+SHJvRYAs6gqpepTRQQHbjsogEoqdW0fc87gcLZRNBgqWNi5Yeni3+W1RS/Fh0W3fUtsu8z
7/W+QEgNLVKpH7Myq/59NkZ3O8RB2aHkft2RPpSNOX3zBmB3/rDEQ8+kkoz8+lC5sgrLqQLVjpNi
3u6Cgqg+5P90M35ncMTfOXJgO5BstKXdhKofbdbbQ/13dhczw/Hl0EFhfPePdHoCRQa5ItYxzmcQ
wGd67PWh+vFFfeZVTZgyPGEMNcgJgX7tlYIZkaR/9tE9XkyI5osAyAlDpniY62QF5hYdaPoDWgNi
9NGZBwZYIEC5Ra8JhzykWjH8cjPb2My2RKgNV59ejaiQsfU/gZdGERs2r5MhM4ySW20vfFt8/VBt
B0C+H983U2CFwrbpbm8XrI2coqa925e+evg910T3oyhPbp4pzQD7SqHe6EDEyMapAwmwCELU2s+l
3S5t0DWWBsVz9bFCPCC4f09beEzMOOp84qpzu76/24W61b/LTXFxrLaT3rDjVkDm85s3eAegZgeH
py9MnE5U4EOjwC18g/qWQgR6hoX4wjMl+5L6xajrOpB2Ge2qcFRk6viTwpgRJssLK/AMIea9Iugx
9ay8BNLUPE/SKBU3VnIVPXOZ3EQAT6DiXceO8fKjfee3mSIotBKXqOWEQCKITyqIaK2Obykw/ivC
PXasGec7xgIBcB+HrUO2Ea58avnVVKLITfz18nXpJP4kZk6mtBQD1ZDEuGy3QxNP0en6V9MucKCe
dO8FJd2ko/ljmG7t0cUQvDfdr7iIY0MOWB0Xmg+rKSheUKiL8DVRTuNQqjGQKnECPdCGpfGFmuWY
TV8j0ETnL17nkejoDkcjf+5dql8p8nlsl0JShPLPN7Cvmvzn5VWqWhDLj3vgxjjkLWbOblDaz8D3
YKFgM41zG8q41sfp1VbxrwRikPLGiP00XgphZE/LHI59Mj9ocU4jkeeBP8ISgvlQzf03zKiIOhfw
8qRCEgt7UKLXEeIDM9yQeESSpKJA+1CDDwcr2toh58cVxIQZP/37CuJ51JZ3RP04Whj+aUT9ETDt
Kyx0tUr9sdRR58I99GMklSbG9hPQvzm9xaTiDVMg4ZN+UgB6FaIGFt6xh/9Fokaip5eOoc+Cpo1S
l5ls/sYPBSEmqEyqP7tYHS4W0bGCGJrQL9qK4+B2hLG6Pqsng4nhk9h9M3NUU2b0Lzpoit0jjv47
0uFhQAAjEYApJKLLzF5JniecBFBuJjvVX6K3pDeF6MlIL26m7jA2GaKMGZWJr+d28KJplRgocWAI
r6veJBSSqp6FWLSl6rdsmaUN9aNOI84vRdeCr5lwOMfWrATPDwMUGLkVHAGtCkNORYfALSAeJCRg
zfGFOT57n8rq3yj8dTg8jvOXegrqlpTiOCavwc4INTmtVemkYqrIX5crbuSeBQ1R4vw9T02PDb36
hF+mplMraIrXZj2b7s8tbA6NGseBEq93KUCUn7pgiHO6y/Ofo04iA5Zgvnh1cZmqBgdWHUbPreQ/
Nv52SiOzYDrw2F4zugRjY/dcJsmudUZKnyTQOYUkliYorNuKochXdHYHhAKPmT/VbGF1fjXv6DM9
+YtKZ16T0DabgoYar4dZwBaAaiF0tvBLH5HFn9SkE7bVcKJ2li7lTfyHFo/h2ES2eLVmo0s8Z/zR
iYjNEuyGOd5utqDxdvYu7PGYPIw+gTG5q/J5YI2oBzxIDwLH3Asr1sKOalYTXyIgpCaRjlXaPmTt
4FhUHVV2BrltzBY55jSK6uTiun/Le5utVSLuqs0bLjgozGi5PwYlrZRDjR6RxLF7LbbQqgI+XxeF
tiDelVtl+WaX4Q3M1a6g+mRPIzI8SrJV/2GC1DLyEjJevloRvVskK2zbsBDTFbJeTff3GzYI24Gp
aoh0RPNwmmeOPvLiseZbUdCL5qW2ecACI+oI1hzEH0dTYdXgkHSqqBYd2t2QtNTjy3XDW/3C2RmN
YX7RGB/7FZvkZvbeqbJk3mEfszX+3axqMjn2+vjH40S1CMEJcrWK6TD9RBu6ORAWCWp1VQ7ZrWr/
iBHorQxkqt8FHbzf0GtnqCqWs9ihghGMXnHvgxS6e20WXpBi1fdr4m+NDRd3RjAYieDAXWw9/8M2
isFL+aW7LroCjSp5b8kE8UKdT5HU7LTHY99ylNWxGIpumz/H2aMwBzTj4sMnX+rUALFSKaveb14A
ZmigyzZDtRSWaTvqvwjJmIUDaVi/b8b49yPefoAsFBjFCi17ws30aU3tWGLteKiz3Gh3xx3I2J7C
GmrOxu8FyoRDQyc17VLhAb+OgoICxAXa/+uvFqUVH1ndTMGw2I7Ye3sFUHjKcMbgdQhx+X+TYmmY
3Egw6hqc9tovUZkUyiv1Tji7yRgLJC+AnZu4WAnzMuMaeJUnhNk0fTeUwOxjkZjcjlEdH3B/hnme
t+edGFlJ3vdtkavg1am8536ZtsWqsu5Cu+PTiyKr4lGe2kYsJG2SDBrSQlRr5fWsfAvFU5RQoDSu
p7Dyu2347GArZFJKA1vyNpea1GGq2Xh+7JKiymSAClHoePfsKg0l9N2+hgRC8JCZltsK03MzM5cB
rYr74+y7zDRhgtbVDwHrf1Yvz1HtiP8yJ6e7I8dyTa5myxOp3HhG65ZLEJVg8vV4ki0UolO5hvcK
cnQrFPaU8UCOP7k+IDnZkTOTNOLJgnC+4aC60VtFe9Va/dXVY84Ot+elBCfAiR2AuB4q4764wRjo
7R07PAidjUzlde8foaiKM/hyGrZ1wv6IMeKELzfQUAoThyG6e/fx2GIibwyd1wcqfYejCp5nj5dW
p6lSgou/4W6oPAFCuT9+n4VpVdMAEkYgRzDBGVe9msnfpTuwjQdnY9KDUufK1sjne+TjRMwJ9qqP
cvBsRpq6H2XEmMdqBxrWoxagqTclSwO2Kq79QKo/tixvuo5Ug0bIMWZwyWJClLMdgzYvlyGBzCkw
lHK5DbhD9Eu+FhJnthvfw1xhI7A7yRQE5TGBv8ldU2qaNDVfl3gGpDblfJ/5rOqhiFKxA+Y1hQSG
17opyVWjj1nwf+bchA0Dkn56ca7SSIJMtwYqOvczgR64wniZQ7lP9xIfwKcyNdH1zBg4ZS4/Nihl
I2jHyxqXoftut3mw12Z6wc5h6OXgI4QI/OeJRpiWgWoLEHWG3w2X6cAldoyOApoQXBLSw8SDfWS9
YvvQSxgQLtLKreTv240ZD5ftahoIJHu9eYZBrl/mcJXd+dj0PylQPC/gk/KnF6xWRWhCO4zZGG2J
4LEcDshcgg0Yc4cO6zv53FDnCZgEOUiXmdMo2eLlSN8nfBuvmt2DIZjI2hwy3i/jTO1wxqKRTtBX
h8K5MmkK2vdNa6jeeZWhwHOw4JpWJyuYC9QABBI360kavrztL5BDZljOgsfiBTSzyKN61iL6atPS
wQnghFljibv1vvg9VL3ZJfvIvWRsYYt3uvk9Cr3b16w+ecdAQ3/AAcx8yaeZmrlbyuj+B/6lj0hQ
LUcWLIsdNXvK/86w4t0cyMz2qPtAvNwKTgPbbp7knvgfzZQIhg9peEsvUtk3pwEwxjbUd087uh0D
6O0ScZuacKdnX98g7p+msPjVab7pB/k/2sWb+fiRHOi8qK/fEAml4MpojJhRDs9F8xSr0Uii20KW
6Yf/CeK/MZ9X/GxdxZNAH8mieCEUhGDikjqxxyg2nZBdKsk5pys8/duyJFUNyGGyy8Nri74Yvv5x
9U3CTRBSmE5QmPg5bM2C9GC4yDXaNxwlLW95X87IzIOpObXTqQMRIeaUIe9YnfVPssPemB8QIu4m
5TBKh/sM60eVTtJZ5k5f/qpCqmj8WIY6KQePMNnc8iUqrDPm5SUeswvIss6RtjdvBWCEt9x1r1X7
bd9Gn/nQB6c8ryoMqCRVgUzsLy2SyNpB2Qe9x0mFMdMTZinsUk84K5muj5zVYsoLNTk4Zw3A9IH3
NapD3e5O+MysGQWVxuPOqYxFfObYfpv55LjOINL1EzcVg/ltjKN4emh/DkqV+ckHMBQkhs3N3fon
sbga072D+eUT2VOxikVK/PIHbZkJ6kzIJMzeIn6DS+bpEkg6cFwezSzlQyrvFQBnD/ZAia3PKV6l
9w1jIOIMS6cldPma1nxo9jGep2inS5QECjMuUwSdMzqHidb3aDRhUGhjXT7s4TCKPuO+ScmHpi0D
fPlFC+G3JolYL/UfSmOJHxkk+4BwhHJ/PVIQjfb/BxDcDrJARbEsDhU6/Bog6RrYGI05KzrJ6NXb
fBSs3gsObdnrx1Wp45CboYGiEoNAUR+14vOV0MZRSgTlSpoMJAjTZp98c4osWrqgIWFgV6fgcoYP
ppnF+jCT9xuEZPtdi0hPgM0RJHijZbvBUIebUdGq9oQO2ap+CsZzqxHgrmmAXPkjOW3KE1nRsKgp
N4KpRZwcF8eO4K9Io3KD7NLGwsEDtxKL4VsAYipueoVPiNbgPo319tHI7HeV4tlK6IdHdhPipNcI
FjEbOH+RGZzbmqQ+iNKi9va7biObhDKrRJlQBrUrpfaA9GQd/CbvIgnxa7OQCBmsqL+cdZPa10pI
wlqrj4FZ9vY3drfKkgxXWr0ZnhwESjDzCFZbjVAlOqdtK6yQCN41+SRXE3umnjpZXlknUWrH/OXy
YGzxoK5yRsN4r5Pq2PHSUYSCCM1Fet2Yp4lVmjRE0ltveN7WZVLyXntZoNiqChaR6Y+HrNuLKJTB
fkgzQaapElM0+/VdxsLPo50hbnwa2yTh6ur9AF3V74I2bS8gqGdESGSKbYG+JszH4M/pqhdqXfO+
tOu5qWZgpUqvvSFcvikxliQe/+C0yKMOXzCy9+Rn65n4rKUmhXHyX+AAdApzZOPoQUOX5GqIHr4d
ZBoNYPpQ8L6tOzM53LJist2YY5XjVwYj/QPBz73s/ecEIV83Pkmr1vDyiMe9p62UgmVj8g6Ox8et
xfe0ZFiey/xJBXcrlq9yi1JJDxwiHRUhDQa00Ca/4md9QR/zEMmIvFnZfdxfaoRC8COvQ4e1kRwl
9XQgH0+REEZK+5fnRUzjTPXennFW2B88+K9TyiK5F4uw4o4UZwSDuoFy1R+FyEc4xhzRBt9dBs2q
/yF/h7f1rfXQPSd1Kub1V8hOtn8cqjALW6hbdBJv8UxFVnS1X21SbfEBIjyKwHqinZOedTY7NqHa
DHdGR7RQoM20vhfOg1TGPxCfie4w0F5++3bY+J5Rss56bzx1U0BY/fjnJb3fA5Y6yVAQInP1GM3i
BSVBAcbP0ZfCA+mgACMrmsNVQVwiLhGbyoh8Ppt2/Sw6wh183eV7imBTYNAQJnzzJZ74pFGh0CS4
zhNRT6n2u+s1VSwJ0YlTcDF5oeBWm/+AC8t4BmbnznhNCi5W8WGAPs3RVIQeBmvCQGaXkpWH/Mm+
4JmHOERY+0UYsIR0S8pEVW6dtGM6w1S2OtkNg20Puu4DYHgZpLzE/pVx5pX7XfuJL+VDOtL3Kx4G
MIycbMeSyd+e1GFFqfyazVMNvFAX18aoCl5eGpd55+eq7dTRmspBhET90Q9vidn9UaFbabrvapvp
V02SURmop0eqnptDhwYxHE+G7g1bPcWVCEOQyn8LuJbC/YE+qcF7W+V4DJoivBnm48nF/Q/lvh8a
XeRnCm+xlzq8ixkokOYXZaiDtivWYPyFKYKx4HtmeUGx8CTGSps1ZhzkCG67wCagBiyQTbz8zrwT
TTvwgotzghiuXGgnMh+drpUdH8HnFD0XxmumGZBVr7jHXRuM+UL+q1NE7wWuBBDKGtHKYBMabDR6
tJmgMbBGXlN+toG+cbvrDsfqD2USioPvzrPsasyCYiVL+IauzNI+URjCkJ0/cWjw/4lSsMW/S6wL
urJc1vrajmCqBusy1OLcJg8t7xrWtQKKIapWooUlfh9KUYdng3f5e3DIaQQI2M+zSrV2bLHdyK9x
WdDTlz3gsHqS88qvCrL8sJW+u50p3QIfgDDhSQRUIp36LmCfxET12l6tDG8ojkjOAp7RJEj+R4IP
KiF2ilNJCja1eFPiQP3pkl69syxHWq5vEIByOrZz0dFJy+v7FocbU5252OP9gff0jkQXyp9u+HYN
31i3HCVH6gv3A2SHG8b9oghDV+8l1eLa3r/f0Cn7YAjqO7+1RWCuV2NErE0RF2P9ZdcNB+x2IRCz
NrFjiJvXiV+9W2ciXn8U8cqCkBO6+fdoAnG4Qj3OrgbL7zZtpwI50McEiOjADIj4WGq47ntjlV/C
T40y0jY/rjsCtEe60XxSI8Sdmb+wKujpiUb64q6w4na216tPL1TNmiCRqT+s+44QVl/YFiuXi8Dw
n+5QONqmVHL7Te53IHDbwwsC5HCje4rr8Yi1rIX+D4h/b0ZrnltaIMfUPJpQoXo6INd3OalShFpq
JV9ARs0Csap6ZahRpyYkSoHvcQDivy5s6cB/iwbswPYwJ9oAiUE4sw1n3w3b7gLFF/zCwNV7S53V
m4OtEI5n9b2xmIEOyb6XZDtXU/61OIgXI57JgXv9Ou0SMM1X8kLy5sTr3+kglaFBIJlMPUBXYDE1
uIOUSPydRxv8S+IstuBccbNQ1g5G7dn1Xi6fkVs3c2ZH+ew7zNysReu08lGPUDZZZ7x8MP31rATm
7LrETc1kPFpz/tnaTnbxIMU6pY13Pf8dVZEzinMy3842sJDQbfvRmygr42kwhiaguDhEGUq4850/
wrZq0tJWJURhoHQveeemAMiAmSaG3lL/0gzpNHqcaxWkfkxODGnyMCYlCQW3hQc4D+bEe2Q4/JbK
qO8raF+FPoH/H1ExIyJ9QYWnjh4wn9QM/uFqvNCd7xwtH0Ji5Wxn8OpVaxrgoAy2dhEyzpF9IpCh
610RBk7yR2LRPRBRmmFHMFkMiLnmIxYmauj6sh1oUS8/DyATTCh9aek6+MgyaI/MhN+BsN4wjbiH
C8x7jXR6fO3fkJf/QtMO8UFAKvda4GtpLvxGUQeoe5YTPsbEvrEvCv418tet4/+DpmOh4SWD6blB
51+nDUCKZ79Nm5LxYE4cexPfDEsZxuVkAS7tuky9Z18OXM2ONT0rwTPXT0aYpW2x89KbilwdX+wO
f6fhl8OW4BLZSQmXml9jHCSCcFWwsiJBJxkWT2nW2z0bPc28WCuwWtT2/ErvWWgYf9lX7797B4Mu
2gJ1jD3mDi8q9CybxtZ9LqMlIshoYUYGbXG8pToqHJLaOTUGxlkrNvzHW9h8VqsZYhZLflLAEFrZ
4kZtb/Q9itY5UCAZUDPvcuoS29An+3E/LdoJPuvfrcnaiiJz74+Ylw9AqTy7IfpD5oIMVTTTO3Z1
bFFA0uELh2L8W/qCLspBCBL58WkZKoL9xeMGGRgu8myCo54BiHGg8E1JpzZlS6LHnFcY+68nVvPJ
Kf75+WR2ochMq/s1AwkgDU6nRUqzudAO3ipx+7gpJueKX/saZOgrKLXpy57PHb8RLBIyChmR+yr0
pogJnW+mUdWTSiAskx1e4LbryjQX6aJ074qTTlUf0ITNM9TwAn64Y9QtMJlMEylbZXOtj3NuUlCH
ixHzEtl6DtRuWmEi3ktUX33a5gcTX1enCArvxxOAlNf0d4USptenpOlLYYrZzVnaITk7JrcVX+oF
CgYJFckT07rDq2C75ULRh5d2DysPD9CvQPHSWaPXTPeJ9WxBkrLtitKGY1sQysvEJ8xiQZoYqGn7
2l8F7V0iN8luZxh8qB+x8KjmXp2bAi9r8P0tzG4o0yAL+R55dJUThD4sPFMKqVwlj+gwTMndyvLy
m7rPZDW8ZBWySqmfURVrh+M+I/1bBBwtSckvRN4mMGQoLvU60UpINQ2+quWn0yOG9o/lHPAIy2x+
kLK+uBgDDXdoAcEtGGkefWB9n6NtTYkvEdJBIhPRaN6ZdS741b15xIZkudel1KNMyx6sYnyFZqCO
41odNZTl99m0YFxSlmHVGv6FqJYELeoaP0ef8im1Rxk/4P0GIN57GpE7ixasORO+1cLSSDFT1R5K
K5torDY5qZpkA6mk2EzOPDqYuDp0sCMFB2/pav7q7641YYwlvNDXW1qJhuPWQwfsSc0cruKMOczS
gyj9Ip1BMOPTDngKUN66EtX+Xsb7dtUtON10yC0kJ2z2w2xF6IvzZLo3OE1cKBmJ3vMPc7iQ5r1B
T7kMsrIawk99ZTgLVIQJQ2RurcSQQSIpzXzzA6sWECGMLuP0ScbJv0j2tXPvhSDrw1rsYjpxU4ct
2wjTZ4iIM69fXCmRzR0vzx7La8/c/9OvuA48I/zeUz85HYulpgXWDMA3if51SIYG9jbC5dXDTeQv
xS9kHMbfhw+3M957H1fNtUQE/MWFZd11Nw6D0ea5OK1138b5udMVtnAIwO3/JeeCWF+qLQ3Gidis
lqhVETZsUjsaThLgoDdGypnDBnidOnijSqj+KqFho7rwkhKAOG0hCoFtzUgNWD+pQhhG06XPX9fG
/Sys49Mj0tKHUXgQaj3E5aN2taC5e8Mds+qT0C8wsRzIj0i7P91KLDXLUXCW33vVmuVipckgwOjp
wBw5HUUo14DuGlpAAaF6l8KnCc44MDoZqsoyDnCf9b3uT/lyomgOkOMw3vWmws7KtxU7d/2vzMAb
X5Pcm999U6g8lubFmxwsdAugNtpJ/ICzfIRWHCA/7Jwpp8ckA5XWagDsGjpRqjc8bjG43PKA/7BC
RsW2XV8ZVumptTwaHBwOG+L4434JmMHeR8KdzycShkdId+KBJO8HgzS9bhJNKwtb7xTD0SEql9AM
cv3IGzp49nDjR4zejgqC/Q5R4qlTgTDE9v3pLwyieldNw24VtIg6txz6r+cPWLziWszedut8hBL6
Qo7EBKHoVqSluanZv+tkz3Mvf6JF1QL4X5x3HL0sDXHB99bvTcgrWmy7DoWaGeq1am/KGeVnsqu0
i5GtLJKLh4kbbBOxdaMCRv3/3CPVBR8sGQWv2u3HnByCoigCl+XsDYpMY43j0FikNgOBQPCB48op
/CTncpMSP3jBUF2GfPhpLDrwbcT7OC7thCpIpxZ/ly5Riihnk2bBAJN/1SII2Zlm7qz3kcbwEgu/
ef2XhfXSwRYmwGhXU+vpIbKJ9IdHEfvl7/RgJ5mTIbIgLwXi7iRwNhxLYA95GoqEGng6/3CSHRB9
rqNkK5iomwgm5nledpWW/VqzRXN3wf/inzMIxrHk8e8d+gh//P7hqE69zdwoo6csGnnOELROFbFM
ew/T0CCDbYx87JktnCTPZDRZTjRDyOjJfcqeEyeC+6GE1cz7dKgCeJrS+X7YvlNKiQ6VvsLPHrWu
sXp604y4YgjY1mPJ/H71ZBwlkBvhhxp8dEUwM/HyxkCrQ+9n+2Rp56uJFqsS+kOXE46dvNhTAoBu
3wxcv8g4xFwoWiQlRiW1S76riq7YBlCwCDn98F/Cd9U3jQpcQmyv1GrwBQowh1Ky9kKnQRNW17w6
bvluONowhtLlKiPsBw8Khvem36cMxL1bJXpUDHqguhdi2qI2uVgzroCvU2r3kHwXPW3uKGQJjH+Q
PtJzLy4PoK1GJsWwsgdnoJGZFU5FMBiS5ZLxuAk8MT+GX/VG501b4O7WvXPkZQkm98AFgi8WmG37
r2vU2IZt1QGkC12S2H0x4yT5BiyISidCMWxEz175ZRy7L/Q3NHQEZemo6BcZS6izD/nvxjZcWNY+
4soH4W5hD6Czd40yFu5YxgjRM0QilWC6y+Mz9zYlbipDTZ46IQRh5fLo9rQ69OAR8gMrck+y2qsc
3RjYiE5V2rhO6FMh+4fyOXd+4qSvAKbEyxnvovGa6Tjhjt8AvG++V/m9pdAKSpVHq80WrPO7MDYC
sqMtsoinRnlpvaRsoqJY+S4KalYYZ3ThcXAtoFuIr2nkNWoKhI4X0bcIee+8z92+2YHS+E6jAE4u
eYfUV0FYIbDsComLZ673IW8kR1cP1ZyupLcf22+3I6kWi97ZibEGG+vYrc1D00gmK/F4hIE3eweg
CEjgUsK8y25P4Dp6GC57xcFs5qHAoFRu0c3auxBpxxbRD1DJYCL4UOvAW9PtrHiaWpGNkRhD07iK
RmW1eZBW2D8hXDKBPk+vFviturz3ysYZGyP0Oxeww5Ls8SqZhosBC36CLti0SAcNXOUDWrgLgV6J
IqL6R9jtD2GwGQEK1JIluLw/OzUYZS3tnAfYnSzjppo+tqyRwvs7ft0vjMFbqya/Umn0ghrNQtVo
+uXBn1xKQH8NnJZFG1g4Eb5g/+9JKdLN1gdYsvPfgx89mYN9SZwrrisH0hwclzXAiCKU1oxuU2Hd
PWM1rvHZh/NGNdWUbwAffv+7iYDJg6NcMNaU8620Ks+P+r3cYrLa2Lga39hEKWbbKZgB0qzx2cmr
IKhlrrtHjGVDcIx/x/gVSvylgiLoze41Hjxkg2A+0pdIi18ctqJk/EO5nJJcDVVuynAFq28YDzNb
btl7jiIfyECZgeeoXc95RSnHlR3Z1lZ3u8yLTLofDjQTL6Gzq6H9wcJohUt0G2w1YEFQBXG9Is+c
HIQWE2VhJOMQrJ5tG0ToDj/f67Nnw7sBI4VFa0pgW3hDVk14aH8mnkvWlKfhxCVcPzF/NBHTaLc3
htmeH85vKJxE748Kc+aJBlLOeMaqkjdipIQfCWGU9qdhzfODKcnqMDOapVWfTBMDLrnsuwxvlo4Z
ZEWhnjb7Qmtliiu1tjm8cd02/CZ0s+a8YU8NDyO/pYAZCk9YHU7l+aXMAtLuwcVQ4Yvz21d4cqyk
twa+RfVHzKw+SDVoVR5yzCFovy5UiTL3pcdQGJ+izJY2Clippzmcg9EYjqsgwoOr+3sAKMO3UOkx
3/x2RE0obu/z2rFbChRjU31cdHmBUKPWSjBfRwKzwpKV2oq2tzEH2JYzQOjXGqS9oepBbgUzNl9a
Nu/EOpCwvKAQxuH9H3LY8ggUJI2afxxmgzcZg08VXGUqUTRpgBUcaHDzK1nMQ5WGd5Mjl8rMQKQu
ByFs2kAN+CCR+SrfRV2AyuK0DivO1uLm2DplmwmZ4TLI22TFT6NPG3a9BcZ5TlSfzzLtrt7hrBef
6VxDEc4QkuJRK1VkNa/ViPVglfYf1OnfeiQXeMAM2ntcc1b8EeCGwiEzsm4lXJlyZMs6YeGiUztf
8VoyE9GBoIHHkrO/TtvWhTUsxigZ7QFrn/6xvYVrYAt3C45sTe3pQ35ab7EklAvl95QAcUCxfTqW
zymMbgqCZ1yLkPa291SB3vWzTmB7kRPkw+FBDSDokOOMZsV0gy+jXYpsiXKhnEYXOoJfCHyzIOmM
TDz8HWi16syU2f4xZLxuDfVsEmIn48iF0oz6q9Qf3ZbRl+yjLE1+8uz5y3Xi+c6quO/+Npgd4yYv
SJkiw9FvIn1PYDmPMiO9kkqpEtJ+wKNlx8uJ1Ry9XcEuv1OCISwsD91xoLNCSPQwOSNNwEC3VhR3
KhwJ2wo35qkXnA8LD5OlUs+BazEzZccQOC1RVp7d8Ue1Ud7t2PuBcAfnaDrG4EHcU2rRbJKoEwvA
X0wStDxsp8Nrq2D0hF00icbgG7nNuaniniiQmFjvIYumuPLXMOAJJBNWyLOHA0vi+caRK5s+N7kH
ZnVTBz+FJleJPusAUBqILta5SBkFf57lLHqdri0cs01+ytnRYY65pL/0XkBkj6dgQlS2WrSRPXtl
ZE76UlLYYW5yl6N2GjmwFhLmkrfMqB9KRellH//mfqek4gwQr9HNaO4E0WB3hSq3fRUfmH7UYsTN
Ya1CDZRMjQ35dRQuK8nxz99Mimei2AJulkKD/lXqPNQPXDxxxKnyCWRX//0+bO8N1kT8RsUtOJTr
Z6rYASggjZfdC7eipLHbKqcwCcNEJPC43J4/96OIZtVp8dT4XV9t+Zpjk1aD/w6JFYrCg41Rny8m
FXT+FaD8I1HjYGFQCJjpWt6TH2+8TmWJG/L/RZGtihiw3qMvV8zFY295O94MGvIpPVk2H7Q7oHmJ
Wfk/rUeqogNb83kv9ksCvhz2yo1/XxPDYQg45PTLAajU5moKJuHu1jcbT4h9YPIxd+e9+iiBYeAA
XeVwODLgt0yvwpKZJy/+o477vsdjEb2QvT1AjaxvioZ1lYp465D5yEhh7rEaRCp78vAEVYcY/0DJ
MU7ly1TMbHsEUd0MkWW614rbOECjcFm15liIr79qnOxgu1yofYQiF22GFq0PS+95zFGzLdOmHmWM
7nodx1PSkXKVNZCy715QHgEsJdIXryT/8Arei2NvFQaMTnQ5wesLqOSbFwNPTzvQBKwY7aWO2IhU
jbDy0qG/RabcwOF74uH7lIGO+i7OG40KkA+eJcyx38zLlafoitfPstehNs1vbcem5000ngi3xL1Y
XqypuOeA3oFJk6gI3svI52e8v1NDR9EUorLRWN3+ToJ1qRDUgVEqgrMCvtCm6kKBVtYNjofCKjE0
2uYjys91+LLKiUnzi197VpzQPXiVxZLk4cRP+NyjW7UTqL8JL6ELJ0ZdX04KiDer3+m+pKlFdnrR
RBkURvzjCMZdPU+fSmes3GRPE56ob0vW3k9d09CvzqQ57refj0dnwp1fzjeQW1LPJgJLv5YHspRq
4SyY8gR/RTECX6s+d42pQFZbaByXq+lpmOTrMoOyOFAN5TML0oS4WAkHS+iGEP3J3xS8Zl4B3O/t
JFWhbGRloP+B+8jyHJiX65f0uWc2IZrcGpq+HU2qRH97/cbtXbpc3CnACyBrEtQg6qK6maNTcXsw
xVtQ1XS5DojHiHFMSBwPFKIQSLMGw6HoM5ceKFnxeXasRa7jJtqahzhnFcx/Fh1BG6M/WvTO9PtV
EAd7WDKSHA1sTakswxkaGNVpOZ7yHxf3XP8nzP3hIeQlAIrEamKxT4W0n4LHH3B64XYpqCiquXOK
JUnRV7czL0HYQcOfeWLnlwNexlna1fiOyPz2bp8xm8ImPDseDgf9OqeEdEk1kAHZGaw/otQe/emu
fF8K/5mkO0HgnSo207oMcZZe6fw8mVPy38UDD0cgegyGnOtGsqWtJYpxPY0UxipGr4EiO+8rKXY3
zm0vR6GBiGsl1/ylBlP6p4SSsM9T3ma1RbmsNjLzjXuXqc/2Bpfl03R5LPpZNn8/jEctTk7x4xHe
wgfRz/dMWXN5zxfIX5addBGvQzke1nxe8WQ7bdy7v9Bk9UTWh2ISONslkbX5xGcER6qeaxGiAFJj
dQA/HV1NkF36ph4ywJNpJ9B5V1f98uB37hec/FMLr0h9qHgj7RGC6Ne8XrCjlf/pEb+0QicKAXHa
1N8ZmQrngMGdF7lVM/qj6EfgcGiLNs1PSmbW2mM3YF0HF05Bh/OKI8/KDqVFaB5tQMRD+feNYqo5
R2Vt5MY4o7K2lbKr0NHqydhgAVUxbYR8jQ5aj24/Au5R40WoCF57+HL2hEi8G1WYGxJMfE8H7dg4
tFPHrylbx7+BdbADXd/+ffTigniNk/fDDcX47qV4TD1GkHauHBqibj6gIhhDWibR5+noHaPjnE+b
N6VxxINsCchuRbZmYr7RGGuT4TRKoHzNFuB758nrBRC2XW4597eL1Swy9di+KaHLJpoWzLLVPgiA
v4wjF6+T/hH/w1T9SXFtI2nVl6GxJ3hTj6Nn3kn3FtyyV4mGHC6ZU6peOx6UZDHZ64pHcxKn+Ka2
ACJZ0UMHaYh3Jaeab/8T7WtiwEDvGcAwDcji/dUG3Wk6uT+KUg4+V4ysYI+ZOSV0hzw3awweFBkm
NJIUa43aM8lrlj9K+E9MsMETkw9hyolLqOKlb6JTV5+GNcrpekpHNsoSGwyczSHGohggyToXWPv7
wjez0YDEGaW3t3NRxM8z+/WajbB/Wrq3kY+yqvAagvqTCI9FADlocAnGGcUV2LNEITWDE9jfuFgq
VBeXfVHqVcCSDDU+OoU0npAkgoOKjd7vwZ1GrOpuYm9Mkds4/lXQ24DATyyocs31n/X2B2N1+jC2
KMieVByubpxpgmh5Yz7PyhQYCS59XE8WwQ8VpzttXr37mHJgN7MoZ99SglFEFr70ElizFR7W/BjS
4892d5ygww56Mw/ev25+frQeF6kcpgFNZzDVTMRkHVDDhbD896ZDxV4HC6hoR8vB5X4UuXxMnNjy
SUWPGO0OtT53sP8cUU4X5TcjOJ9QS7GQ3iPfErKoubuYR64/m0ynrLDMe2hTuxxdP/HPAJaj4OQV
IaaPYfNHpFZnyCWGd/ZRBEJi8ir0OmrF86rzyhBKCUWd107QLZRerICdvGB6EqJWVzDZqjFDE96L
wNOQIHkbtZOk4dhDGQbmn1tU9ii6MTXxEu/4MScA0Q19v+ctUGbMVibkhpZ154916oZ1NM0CwH9p
rJMJdjLovZQZZ2AlRYqc5btcruJim9DUBLRvJrRfiqi7zLrND5Xdvp43V/m70LbLuntbFQynMZ94
M/JIA7mMaoROHdG6Et+AFa96JuqLpmN0Csl4DjMUn+GK5FucBa+EqqAnnDxzZP/asVdQn6fFkggj
DAISmBm5C09GO2J2IZS9Xo7cOc+6fgV4UKoXHF0m3SMitIREQSDD/WvKP7kVs+Ol/hsQKYf93dw5
JKFEonrovRXfyMdVvmkuowXzuMadBo6WGB5z95hgob5iCHC0SmQXnmQwrhnlwciqWMj9mn0FTOh2
GYqQ0xDICivONSNacx6OutVcdQGItbmUt9B5sBr5QyDXGMNQ8RDd3NMArORz59bg/rkcHL1/7je9
ik1gATwd5aXAY8L+SzwRFxlqlshNYGwioEOh4konizmrZueih3Uh46YRNpCTHxspNu05+j9+Xjr2
lDDqqtL28+2oSQGf01X4rDZKr+z+IHz0EzNXqKuAIB7Tj071IakOlgudRmRBb7eLNIeWcyZS/0FB
zQ2mMxkql3xYjec77NpdkoELdVSalUSlcGJl3SCfZ/KtTmcblWQsJtAm6Lc8+6mVSCaDi/l7Uz57
5oFUamQVT+13Uih2KBx+Uhw2wWedmNUibCBWmC3HTZJr6+HGN4P7iSKukEyZQ5cthx/zVxFdDJSI
Z4QOw+Ev/E9yIaOIcHBo3+wGP8+sprLcS+CEfSdjC/4KGdw9DUQeX4UqYvI7w5cPjbjKSZyO+ZQE
+Uok5EoB9K+5Ucq+H/CCzSigYX9qmrduRTkzAKkUdpvD7qz6bqZL4jY3bf075keZ/3DmOcmVAz7n
kEqTAlsaJlMsHEePm5l8YjrqXiocaeLw2tMQLFLDlIocqgAy0ZYljouEy3b/hOem/iWLDD32FUId
Ga+N3JhnMd+mrS+shiDlIznByLPbetCQoCq4u1Ny51xL3Olm/d1mURAzojE+SLK9y9iXH+5vEl10
OnH7v2x6zd3kBl8UJkKYZJBI4FSEAJsqHnQmH3CbZkvJRwbZUTHn1sCHOp2VR7vTX0FDyj6rHrfi
e6/Nh+3ug45oWSQrUIB+Q3qhWE33FBQOxMqaCUb6kYMtQDy8bZtazQUVAE9ToRL0BCqAzAtBClDM
V+Z29w85a9EsIQiec2tPYDoVBXhb2QSISORvgjGy66E5wNNehnG0knTDyDOVjbWQmF9BL6Nmk2Lu
yfqxdprcuXGWZSNoFzeQQ54cEIXjPAzVsXAMeT5VchZS1Qx6JeOt2PvMhjCxFZpYpVzHD3FKwUZw
PGpzIf5V2vmUUYjsXcOoQbbEDxda9p4O2iF3QlYsS0ezoZ1ZCKLHWgVvKDIsigyS6+2holGf2WYt
VVx3IGLIMxMnBLKcfE4TrqxDlF1iI9AwD/3rZ/bbYps7sUFhiRR3Yu9PWHEYrcGWOkC88ZkXGR+p
3XiQ9uOcZs4eQWAZXdsuiJCEkcgP/niXloUkDA4kIKV1yKmlJKECAy/zhl8G3SmHo/qWFZ5mJsnx
+nIG+ceIYAHzSokhCZmb11IFXB2H1RBpJ/YkRn2cqHGH85KPbdhXjPMdHwvK6Tby74/ddLAHtr2H
znOrrZMT/M5MlM01qL+rg2/hKqELkmEatv7JHntBi7UXWmxCUpXTQkADI+Ru1Nl2fXIrTdhdgz0F
peZe8sDjPsLVQ09REGnXPgOnIdYek0DQrDFrh48D0P1/P5Vx3cTUuG41om/B7IJRle1h7ZOng/43
noNmesZjVgO8BkiISdUDLi9RCI//uEv9rdFf33vUPGPWZmt98bwmcl852l8XaKuiTstz5z23LArO
j7CW3l6o4XZ3etA6uhWMdvpbzDOCYMTB2o3LIUNd3Nc0ozV8fhHPBtKq73dvlEZmVXJ4hpOxZ+0q
GyNDvnD1FE8vrakaU9jU4uH79o+EYK/Wd5CYXnBSNXSulNKqx5IdnTjdcgWc5XjM+nLMxS7X9Q2Z
0KDJ7Pqw3NlfUpcHMhIuBK3nqIpQDMLtQEMuvRAkAy9GaH80TgK77aGwNWcFFUdc8aHcqISGQcWo
EHvUNSqM56pGdfukLlivSQxvrna4my4lQZY7fNB64iC8XV0sp+VsPbm0hstbLC7RdHsUd5EPaTij
mqQoTSfuY+5o1iGpo6baWxDJD5e4yDFs8TnH6MGwn6RTkh+UV9CH/ZwMvSXzlqPcTMuahEoAeesZ
nULR0c1QU7DUsGM3oeb6wZ0lSr3tpS3k/5T5KuNWEc3x0rLxCBUCT2j1hApbrke/EN0PEp9zyiZ/
UtxH9SQ9KGT4IZmkpKrjIEeB+Xm7m1wcFxvmf14WB9IXPk06n/wmiXDiCQz5lvjg++8kWP3hiCGz
s5qOHV8lkiXTBd7E/Vms7sEXtrxWpZrSmn6DZ7t4hoKoHCkO1/YT5XtBP0owc20TiaPgoSY9xOLt
NFy7L8EwdnpUHTr70opX8QLWC+u1qq/3igczocOxpZTsBt/PLGTXNuYr54tUDQ4iKqa7fezHVbLJ
XHyMuRds4V62PfJOWx0ZtOJt5xsX5elCvJFE9n/KaWrVBTLAinMsbAjErqjnqeZrxUkiG2K7MLEY
dxhZvwK+OyEdB0flL5cs3kAwXs+1/Q4bZCv85SHZofAydbjhiYkg4D0shjkSfBxyY/9mo5zcYZ27
eck3H3HGkaGyPYvjRU7WBcbgzYBfSBPYby3INrHQ9BzMt60QYxVdxUPQYGSwe6pse63noYJRWq3t
OKF6ICIMQTT/JL6vEajywA/66n1DUBAoapfe+7tl6WZa2wysemNu/fEnefI1vu+qzjKLzOwBoTOh
688wIR5SCWMXq+sN+ufKKwH/0G+GVNPTWvmTeumi4umJmtcPdM+uDtet/axilhwCyvsF8VzxDzkh
FMPKe1rDzUZOKiK4GaKvPeiz/vE2JQNmoF+fVFJNQyXS1BfTRteqL9aUgZS+udUNmj0k3yaiY/3Y
tCeHtZ63nQdT3Oy+k6EGrukD/spNCTpHV+y77yVWtKECUgjKTtKXYjiVamWaEdRRDZKLMgO729wU
BmAKwDWp//BOzGUeOs831+Gotukai1/6UFKXA+2Fh1xsCdXCtxaH6AbiOyT5DoeICtkFH6EK1j2C
26hdNu8R3SyHrbUwOemnJNc99JK8bED67si4Ijzy1Cqp+L7RvhNGieon6SVBx6QgkCrWnrA0VT3V
yQr6e4EExVe0uixq/jbGFVzEM9MqAuQqHYRvUGZLuF6zSomj/c1OseNJP3z2lCiTookfJMXGauzC
2zUlgpvGK+kX5u2TjNhdneyJESyB1w777e9iEC1CqZ6cGVNpDIh6OLEmwdXG5IE0R2p1Vk9u/RPa
b4YdrQuWbdCP+SCNmXiMpvGrtjkcagx1weO61mwfV4uB+hxe7rdizbbyxFPwOAP+eIoEt34geGEM
tTW8WDCxza3/X0wJSPvYbZ6B2+MfSMP/fkEyPzWz25qrClXf8nPuL/TgEilNemFUJ5kPafyzTesn
/Juolp9FBs95jPXHKM5jAEtHQLLuGzqKPFRzGlH4ZVWOrwMCzfnwB8YDVrXhwnxwi5T6yTbA6u9Z
ci6KYPvwTPUvoU2e4NxOSu8K5LBZPtMPOz3Nanq00bT1I8nOwtL+upAkv48AzY5wSykYz4RJZ4Wb
oBuwgzLRVduXFS/dRDNUm/lpUrYtwYgZDfYmM2OMd1Byul1KMsFe8MOgaw6M3AzIt5UuURe0uqNZ
EQ9ozSzBk2hs7vNbZUJLOSYafd2ylIEC9wtQvyKCRvQaQrZ8ReTqcYu8TRrZpewl6zZNY+g2lOCn
/I2rqezFVxgEqL9XjtMPgq4VmNvP+n1bu1xHlASYCPTtZ48zCYWzlYM20g4/XeU/4G0QOe5t7QtT
4kI+aVClZ8nN10QXFbfogVEpoNDHmtzSa67ffgFLgb+YxYZmD3JpwgZH5mUm9+y00qxYvgC4RCqd
N4cv+SgpnPFznEkQU8ZKqbeCnEjWY67hFDPCT1PFH8Oe3TeZyixEbq4dk+TeN0MtTOI/QAbuM8Kd
K9w8aYEtUVhZ16Gybo3TLot2s4HGdUJ1VX8BN9LVyMuVdq42iyM6tQ0mDyxDN/xQMwF50sQ/hrPT
nGAfkYH6YpVhIc/vzp4/vv6xeBk5UbOIoAC4GYyWdJ54LygDYsN7XK5UF/JTctqAoF+1S/kkwJvr
BP+vpuxxa7n7DJlNPytM8c1yx9MsfUnRWfmFMLImR5rODnoPnpeuD9B4Idm925XoQI9KQKelpaby
flHgY8UZTZhrLD5B1xu4eaIgndiyaiZ4wD8wZVuJbYs7b482kknXYu218DUaQbd98BGoVOlEjGjG
hzAJtPPtMZaHG7QsoVb7J8NQsvZvo2oHcEpcTZFGOPQfRoih/lL/gOr0b0bZfytLvRRP1mE8zafY
1QxFKKfty0bZCc9ymmFzRKFCZyc5u38cXX900Bj7WEn4IQkDz1jWN0QIExca8UzT3WAdkvjXh+IZ
TMVeuymFhS4UlazcZMH7NpUjhbjqgOCaJsnd2B1vXm84BlbZsfSEAk2reS1C+tmZnqM0rXWv8aIB
5OWO7hbUTEG8sQFsxADoHEvJFzdMcc21Zg3GaAm+Ra9BlZjVAvVDknOz8I1KERyKlc42V+h1jJyJ
0BYdq+IM5CjNWpLTxxb88/XfexgBaUkkLrQv7vVzDLXWY9U30bHePUkSLjEnwXUpVya2vRJZEjvv
Asc7zD7Ibw/FnZuDm3iMfrgPv6X3HJONT8E/0m+KzP7RFqBOqd+5fq51EhyK3NKk0paLUsotP5kc
M1FcmsEgCz8MPYmHL20neNXHqY48TwoCAhazJ5q5DOcg7QPfr9p4jLbEkKItXJpReENjmpEhUnZN
l23sKrcTOIExCFJoYpWceAgD2UxhRruNKpdFXSOLTw3fTWPNr2ChbtkVr1xQFtxbzQKl/Ybqw8Bu
2Pnuys5/zaDoIIqH3xnpJxnXcFooVAatjhzccbVFH6Qp9KQyl3cmuRz8CfVPKdEHdXh5zaNBwBVJ
T8UUj0RmoaRYvFpZCHqt3LHhdh7yajOnJiCp3udKoocbPkQ0AqupqfksrS6cP2f1v32RbFyfmIEw
7miPaZqkF62y8nVPk/b0JanRjYf8yUYhTdK9CHrPX84H1dO869BXuEdY5bZwggMv+xqhYaMMj2xy
xpCzTr5gnGUoeR5sVWFfw2u3CdgjL3mWjYf7y/OHenyIPRNyDfBwnX+NCyiz5ldxCQE+fAouhDX9
ZIDq2twGjCyy755paQDlSRgdMXHzI6AeU1vz+5v1dNs+kgwcISkEo4mIRsgW6zBtoeI4IhR6lS0F
YnhzNfyfxnQk7zUqwuq8cAilbFPOmsJrVZlxejR8lqIkY4GgyQhLPyFNHEEEJq7m554R/NGujJOO
jRI1pCcAORSbz2aDrTZ+YYWfSgvL2KVBrBcVFCjJjmZ5ZQwsf2VR7h0QH9dIQlZTZso6pNGW8PDD
OXj9qCnxOE0osUKrUqBEd5I2fveXIk4Re9hrH/TVJjWREXG6NVAeK+bYJn0lYSiqI0+TspeCdQhC
aeLb9FKUnaxokn7/mzwAcn146gb3Zny1N3T5NDmksV1gwpB421YOCHiF+Xq3T+zsTY9Rp/+hUsf9
rlC+5zWuqXiYP6vot3N8mkFmac9FETxdPXlKQj70q+xa3ZeFIPd02/oxAEyIEJYu/YtYwAgIAzgW
l+mLaAvsqHuQB2bHb8J0Abgaaf8Qr/S5mAOf36Jt7c3LHm7ncVl+DwK8FlZihUlwqNumq+kP4sbi
R+XDtNA3akrATu+ergrS8FIUGX0cxo2YkYNcL7E7KvLQ1Esw9t/mhdSulq/g4dFinu8B/oS3BIDb
AHWTy7xp/Z2L5PBEOmCaKct8nTtEKJfhfZIW3FSaqahlUu5KlbkXIXicvoGydAWoroZtV7Z83Zaf
nweycaapSI8emOw847YC/lQtYNElQzCfXyBIeAIzkh7j8EviGcTm8K5hOAnAlwvwLnKftgiPKBgN
agnmJ3NzXGKFSrXKlIr5uPQRNp35haK97cihkS0Nzf5TSNECOYrvC9xgjDOZlGlEP8zzdl4njV6N
d7/FAcnc2fsrtDPrPpAaxuemOkmpCd3lT77V9+WeoQYfY20O1zg07P/sV28AmK7SOWiWKFLHnRb/
Dz+RJsZC+tdo7VLSBi76ch4C+xn6YeGijzhy34vlT2IETpfIAZkUQWfJcSUQBH16CqXAqdqOFe2f
zYnGqj+kdgy8KwOjLce5fY2Ve/IoKz7mkFZrTUSOp7HFXB9z3h/DPfDqfPZ5eiePsE2kJs0odp08
zqfJaCNlXowgV5O7HaMP3oc9n7RLU2rOrYTrD5WEqa10G8ZeapO2fi7k71VZ1uP5BAUlYryS7LEh
NMTSjxw5/sVvnoL4QV8I06defcxgMFZsBsfSMR5DA5lHQvyXl2T0qyyElyhN7DiBNhALm8B/XMdD
0gy1st7JFgy3AovDSROG0rdTMR+6BL6ro1QEf+eSrfQSMz6ctj1OlzHyw9cb3UwEfOUpHkzWc+fa
66TG3PGvcxPcedyCJN5GAIMR9yCYXxC5i5yIoGmlGOLD+LhRkb8UCscTM48eHElW6CHLX0R/fMTr
rb69BDY8kxMsp0rAXNZjtvHVIab8vBd0HEEWfOJhZy2UTGoucLhvYgPfRne9q/gy8uWz8EAPC31U
yjhpaJqGJfTk/p4YSYmSepj27vFQt0RHWPiZs1IyiNAzzcB8CvpUU32o3HhonJFegeZD5yeFj23Y
R9xwX8Pb+un+dN6hAmRfMSup/xmvOjfTOcegK2kDpTi5vYsTF8MP/ptDqqAkd/Q0fOKJu/sG4nhg
zLailb8nbX/xDfgdrLlk+VVaf0YEB0pbdT4Jsygi4/lGEsOBgzi6OXXcX9QszRvVOvXYw2Xfb5Wm
JFE7cXkSGc9yPGzf/G0OpBr9XAcItT+TxvN455G27GukG+d+zLwmTpjZHiUjWphNoXYn3jaTVllp
+GGtApayav0KJDjWhWLoFaB6c7YUh1tif7QjRckeRvZmlEPr0Etjbz3ORkXLZmeyfr4uVPHJGTlm
byHTH4KWg1tk3uT/PUzKDqkVlsD6eC0Ac4AFx2wioj1mOXgjMisOvTjJrEJHqYAo4VZT07rK8ap6
6Ii1RlGcfYv65QbdFdW0jcs5rb1i53ZJoM9wNPDX6hqx078Ywr2WFh1JS2TCHpz+xdISpL1TjCOP
W3qBuia1zBytxUMCwPJk60tv57hX5xla/YlfTLm9Y5k0cIJXK/vks3pLjbPIQ2BY8KLcp+Zr2H4s
F/ZiHpabcso4pH+IY/z+lbCCDEudVNLScuvMhEIsQZ3uoaZKW/z4Qzj/z3+/b/VEG9+MmIffUtZ+
F+Do7jrWlcH2ORX9o6cMKyqKnwIE3ogZhj6cvLScj0Z5JxkM+hAnlqR+FT9wm5egk2X5PcBqYbiE
L8LRfYVwccgxB9txEcd3YLiCjcYkTLvCYSZ+d8xFnkppMjYls8asbf57m+WC7zQVsuEMw3nonwJT
T3NU8yrjrYXwuyPYq5+BG2ukBIZllRwUYf3hKFsiAjAI7xRjH6yyDiQMlvEbvH/Cy/yoaHf8tnng
lHl8lBHKREOBceUy1fuC4fk/cJAi37LGrLp2CAYj+NrFfK2IUxiAzYYvuykrJv3IjbPopwAgO0gk
4v9A2bEgtJo5WQqQrXCR04sbH8xYl+kuGZym7FoWnzoaESCaoq1kB2APJJF63MGEWr/Doi7jrFc9
GyLhAtdSXuCWKQme5s1cPvQ7nZtZfp1pzNppzXwbVs7iRVq0kEbnl0CK1x+KjhVty6OKpHZu2CaA
6Zmxks3tlBjiWh3jsSvPYv9VxvhWhR/F88c5636tU+57xU97/fywWdFHI1Y83f1z3Ab4yfSWjhtB
KJhESzPxVmj/3zNXcZmw/cA9SwfngJkfRFNDxE9m+Sr3EfvxDaeD44KMvzg5smIwiswS0IcMp3lD
K3wb0E4a8IgKGI1dFmx3P0O6Nn/ejsDRH7iNj+4oyZqlgrMROcXI9va342OkAXCWmtDx2nUwUmKv
qyvO4fgKXjwiRIpGbvXbY2TyHj2RRamuFKXe6pJRM982uvRdPRDCraGn6brzNCr9kUJKBTVB89tr
5/de9CYd0WZO/ft22axOD3G4CFEw+J3g6HZ9Mssi9pCvfmpyzZmHX3Z1/SXLQ8jhDgDuYCDTtWjW
N0fapj5bZJCIpihQiH4x9X+zswQrsPM4x8plW3vy78fF3hi2IVJ4VWAtT9YIZbgmO9EIriteJFxd
/QoYJ6fdep1SNt/YFvA2Tp8M7s4F2gH/LduUuSfLi62cqyBKDO78XDx15k3IUqZOXCaMSuU9plsW
EGrE5W2WbdkIJ6R3cq1p68cuWGQnfBjmicBHJOYgek5mk8Bh5U61MSsU1aoUKJMlW1rL0xXfRRcn
Xm10gg0AJdmLgXR0p92Dh2HXeRgPHzPlodbY5JTM62NBC4aK+/CTu2n/r6ZlqRNIZ2xzewwVf/5g
Enn7dTuRjuXhRUjlSYdHxI3EhMFztkcBwuijZdrjThhiAQcHnPZp+6tfhbpQWCzqJ0pyzkM/7vu9
K728mZ0ujQ12AMkee2kvZ8SAh0oQneJhX0h7ofGPAKIdO5cel7js3zadJwDYVxQjF3J5bAyH6GDF
+/HLHHvvf4grSRs0ruJTDCPyRYBJXK63IjzFISyn3Qt5qmb1dAdQ1XGQV174vklOuOnwhdRPTNej
Sla5UEjO73XvJ2GNf9dHmBZSxhpSiAD8Qa8upNJFPRohVWZeouzWTBPs3naSR/CHFixbvdJs7d/k
nmuBXDIplh5ggtop3sqoC9hL/HnlLWJ+zsq0wt8S72X/UYqABDGI0YXzNoMmFkIBx/BMJdlg9RTp
VGyz1vEJa86C/g8qzgukdXZHzlHHLyIsfTnf68kHOVOwXvJuPsMXElDhgHq6T6cJ4Zsh7F1JghlR
ML/pZIZWfMegkhwEWkvmI5JQiWv1pNxFLYa2GJBnVikfsac+0mNqKjNmUkvq/tHm+kyxMWp12AJW
g4J3oI4/nBsEogHeWiV6t81eQDb2msS0kGk2Fz+432xxB9MT3vnAIZIM6hW9TwDoCK07wb0fofTu
ts8f0ptJCXe7dgQoSLSGsDY5VFdxi5w+k/JEoSUH23DAmFfxhLpI4UngB7Md2RwgSBMo4OlA3qpy
PCjZPPsyTDT7Yi9hZxMYEfbHG3BZXES8GqIV94np9c8pl9Z5nMuRf+TD7ZYzL81tOhIDD2yHaie2
6zEmvGyi/rlpLs5qHdUAnssP4W+B5E58nIh5rmuoo3Xj7Z0WqWShm00A79hDUfTPeuZ8IDL5YeGQ
+AqpiHb/Y1FeBt8Kbg/fXO+BTMFWuB+VTLQlOpqRBQeBDA00cYDE/VLksFIzXwHj4uK7bqW2X8g/
l7jEnfjunfj7Og0P5fe+v4PyAA4lbzOJUkfO7UKxrHlXm2Di+f1p2eZ8O4ZJ4Xt2TyVQGpfWR71R
EbGjNCZWFq///W85bi/7vot4kBqQ84V+swaeDPztmqQafbnKXU4v6sIxdyR4qAaHle5GGQ+dH1C9
8BbD/hiu736RWJXnGYcjVeM/pAMRCyJCpbViXR1G0r+8Ac6h5keykgOnH+9n8DEyVjsbONGvTBOp
fkTh5bOEavpa1CYpNSu1cfnP6GUdsgyMRCxP0pGSk87bNn1lWuV8SeM4p2TaKtMrTNJdXhtz389p
G++JbK+/k/YO/IJbZCs5H64eghglZR0Q5pFUA6oCS5q6VSbjtnh0Tho4uK3raKfv4YFq2+nfo1Da
5eupIqoKxHVGanShmTRE3gbj/rRg6CZhC+9ngLHyM4tAEFf4d2L1gYSx05775qNx2L5cLq+GhQU/
u+fYpcJgA4C71OsGYH+FHj5M+cvh6SS4IB+5qQHKQl9ffSu0QfTZsaCTvArOLnud8l1XhEn3RZJl
Sqv2Rp+JeaTNDU7CDpgTZKfG7aAhviDLMy3hUhvBvTeaJ2PdtOBwQQAK0zK0ZcnIDHf9+1m+16JP
XUAPg+IAqjStVGsK91vzbBwKhPxdDEFLI1P9wu6GxybnmJ0Tv9kQValPrMR+KhhX/PlnW0pBJurS
Ky9NR8jxgprRFKAQB5Frml2drxBma2Act292f8D5pTeLx9ThoT21GYSoJhagWZagdldbU9Dtn3RO
m45ptTi90ZMQ7/FqrpmTXK7iiukncLl9Nr5VY4++cS4Qk3LRKq+N41nBSrMPN4B2r0oquMtEo2lU
6+jMBWeEBiS/WAonv7Pgaf4EZ9+0LOq5st5mvyFr4/T1/j6pQ6TkS6taQXnQXXPcqiw5nhybHPck
hhcEa54AEuh26kTMsty8cQrJfTWKwdFKGCCNH5DMWTRk2YZ6oIdh88Nk7h/mW1tWSpiBtqgb3iAs
+XUOqe94+HPIG32YQWW5Yrhw+AryrxSUQuRCrox8fxxczjvnfaqD4vf5M27wq6tCR3Cn7Ue6VPGe
+ijtkrzc/JN58AoWizfvJS3uwy0kceEjcHZT0eviqnRpIef7FseuOmhONfG9/BbINGLYUHIyNdEZ
ADWQ1TabRMqKTO1HHbJ2u7V3u2B3b3apbv4Ydg0Ub88K8dCfT1ewPfXoYaC21+bSINeaNBd90Rzl
pAnA0ezB7F+l3jVimgiAg76bGBOnACJVu+QpAMyVCUJplSPVk/pROmB2OQkdIv2Z39IfjKD53z6f
qM1g6uSxJPdPI6QjAryd65e5dfWyjbnzlhnDbOk91xEKtcuPAGm2L61EOrw6LG5+zWcrr1ca+SyC
sUgTvudgeJQ5dOU4NJBSruE/84aIOts9zJktpPX2R+CVfJZuVsHNdKS72Jy5Uk5ROOYHe+hesJkM
+N5yFCqLLTdhO04vYYpqZCBLIwsB0xQ3aJF+3tpIsFBziJiWkPSUhSlorZDcZdEVB9y3NLy6kn8w
jAHmJduf/MbCl913+bZc4caGJpLY0Ur97PBYffB9joUFnv8wOLr+er5G9mpH47Hobp7FQyqXawn/
ntlAy+ezFvgbY9xjfqnW+v3DK8uusMZlnCRsR7FPLUJgkUDRSq9OYsyks22fDUFJUOb/JRjH7n6n
9cD8VGF7sQx00WJazNcokJQXxVkKnDk9+KGUqX8g1k/oWf0mdEXupXWXSvL/x147rb8OEdLYJcke
yU+UJ98usCQdHwNlVPpKcFW9oXMMo9R+aMB1x5fiLvDPaBXkzse55OyiYwXdlaZuyo3HbT6vZWZK
7nZTBlVAHiwpH644ppBJEyL//4GBc3jzjzsKd5zMzmnJU8cSBGiX8oEkmRlSO7d8FAZF/cbZpJGe
V+rJuL+jKnW9V0L1G34kV9n7DFWvUqJCjsr6oFYhlzAACndQe8lzKiTgJkJxnVMYGu/k2j4ycxNa
IpUMNby8vBpx74zIhM3W8iW8DckDeirGrYYEDW7bxEjvjvNlv8cYjWuzOpjmyI5+f+fQXgeke5Xg
cspUA8bt1b4ipW4OoN1SsiWtxVbM2917UgX2YPuCZkdXGlXokr2NngGfYBKJZ4lT+o4eXiYq7Uff
f0FPj6VynGmPTMbO/VUMU8F1ZCNYX1hUyRR0OePqPTq3WfniB9ycdOpeTT895FHw1cwwRiSFGg18
7LZ3TC/Y3k10lyncc+0/oh04YTEuT14TGMGjy2uGElCfF788rAyzTOZrzdYj4V2QbxFI2Rd8A+6l
T4rZJVInMkiX1sjARZb5v5Ex8aEryvMhlOzX5LDPHb+18bjiIQnzQBVKrAHVa6vLyPdHjDZHXRG0
ORiCpzmODzOwZaES/MlTs47w5z392fGfwEWoFeQQfHTsKQudDOGWBKTbCIVGaDeWzbp8RbZ8ELmX
OT7LtzpzIz+oDT+y4uw5N82awgoHS1FLuJJZ4ptQNxk5t2aKV7On+HOIHoMMERBRxY9CBxaaOF59
dd5dbLnrgKccfwWOfszWDSzA0FJsWDG+6WHDSS7Q/0Ca8vhgr3v8KZd8onLEI9ZuKB8O3CVzSoD0
6/SIRfOe10Oyi/Dor1mWsTKPeYnqJufwL1VBbs6cdMp1ATrmADD2zsi7Q5L05tNhRXKED70wFnFg
wMKuxbQ2DTrCylWgG90cKGWLU7KEwNlcmGMrcMVtv/iFHEA9S8HB432aV1vzbkkoAFvqVv6jqLC0
8JWzsIYxBqzLubSLH7/yvQ8rm0l00M1qHKa+ppsUQ0zs0IXZSZddrgrthm75haizHHOtXRhhayIp
h0NOAPumFbhZWkt+1jwQshxGWoXX2wLE0PlyHhnJpxCxABDeWevu3Rf3nY7WNSFfjbXqnKFcAA+u
Q0wqAl7+1UyTJPB+lZAld9R21XQLNka1fIOunwEDS6S4a7eYIlvZXe3lcI9i4nIjitIn+PTd4IB0
ufDA4mfE7xkT9xV0n8DNsvEZJVe3F+Ih8I+Q1dDzHd4S7vhfCyLimCMdHyOoBspuz3A66liRTghJ
mlHc/pKyPao1XJ5AuPjXdjaMA7+OaP8WajkDQCk2oIeZh60r8AbV7OYCEwz0IyXShoHZWXg31xDi
ynR0wFkFjFiWVmHW7sPjav/bw/ex/zHBFbSQfv9yURizwUDitleHovc5M+rJfYwfBnlhR/IEnHbT
Ui/O6x+GxFvBNLGgoygrJd4fI1kbkHPe0899of7mXRfmgX2knXUcJZBm+HauCOBq1xkG6chjScUZ
LV+42Kdsp8tPEY6ZmTFD2MkdRQVsgcGUdYBttMHl+UJYDkgJbdWFikcpoTLrl4UW8FWlG3WrOWQG
wRF48NSMg9nX78PVnBNji5VP7oURd4e26yYd4khnLYpNKsRXD7R/Q3bekgxqD9iPl6NgLfDfXYdh
g0xlXF63da4szCtqpIZmKXGhCBMlDeJB1gpKA9hhN5oquY1g0Fxe2l0gWu2FoA2zxiG7LJECw+Ua
TVZH8TF+95lnVx/CamMltSo1JXQJ2kU28VqI6k/XMUX4bL0ceTG3rFYdRxTTpCvF2/s2PBddIUOz
o6bE3M7bppglFEXJYOBcKiF7HU/Xc0RFyTBGCERNkdbiv9T/rQfryKtfS4eFpfmA9/Dn0CFha7oY
Zpq7d2pE5PgAzdnwGIOj5cXhd3iXV1PEJev6yW9X6UpYoRr6udZNbk0flqZCAS2fiyJ51j5/GJVc
KdBmXn1ZadDXNqCdRU2zAF5uTTC/JrIL6bM9f9T0SR6m/o6Jk0EAFkKgPFG+dA/1PJG9jHFc3dWk
j4gBfuXRtNa0UEEFUXBBTJ4dGhVzgjz5AUB4BQGtQaq7mZgsyaQwS0Dl8XmSGNSkwWGwv7/6AADe
ckWaX6pl5g3O65c1xMZWwShA1NPIo7zULMzDIiAhWntEla5pEHyYCIJqXUUpb01p10s9wx+5+3tS
+k1vnCl0942Ud5Ccok7R40KaBoemYPbFJuRqdL1qLmEmQshqrqH5sLsQ0wu9yVNKbQR22FHLbl64
fFOlMBy12IxtzSgx7Pz/0nDZaQJWqDRoscNxVgx4L3Y0BbWVb3Ew+IUlu4G2Gbesv/+lAiUra9ex
1svg+iqaUln+JWWOUbJdMPydX21/yWLNSfnVAHfO4tDEoe16fDRzeZNpSm0ADRXkN9bAqELb9IVn
LQQzCeZHS26GhfwFzt6tb9H1nZ9yFTa6x2z4sg6XSE/NKazlnTKKiUQ1AAKBNKnkIUsie4Vb6ET6
HaR7r+/8lAllmgw6h+Mhw5lfVpKtjRyeFHwosjPs9uX/6CeyaPlj07QuCiTo8GSSHpBWyty1zxjp
rbat4Y3W0RU881kTE8ge6VhD1F6Nh2VsCQlFlWpr+5p7w7tkQ2HC8GTjJLiSSvByoB16rWDNg5WE
V1/cxrx2LcTvvd/xGzIkLOT5MNLP60VEzbrsNXadg5Ufbjv30/8CfZJ16LTo3FOn5BOeLnlYiSuX
NYRl9FgcGMCh/U+5S6BT/8/fFg80+eUbStpkaxt1VpMiBSG7bftQA5nvd7u/KyM3JTlphDuhhZjN
ebIz5znZho8IpQXZWj3q9sR3IZA3/T0yLLRvntzob42gvmmXfSpdPq8JsARnZ9qNbY4aLUMAoV2P
KjuDDOFVpzQat7RbA/WrMxH4Ur44YFME06NB4WSN7aHiK2Dg/Pw806AJqbyyBx2LWzq99J9SILEu
SfBlc8wa0GT8SSlDiiydSgrjKeeqq4/KHdrZEKJjL+xbS4uAYp0huBSL3yMoXLs+/bnATU9fgB1l
e/vLPecQgiVV6M96k+9byIQsGTPPFvYzMmp0ODakZJcYFI/j8/Cj+Z6TlZHj7QuNkPGA/pD5vZ3M
sVUuvRCFtx8tB1lvFC4FhEhzkW41ruR5ZOU4etEER0MHLTjZIM5eHaU2Zhwwjl6CQwP7cJ//UEx4
gHbtuTOYV1WsQkFgLwbqJGayzGBWMhOK2QK8LLruJpWgtQsO/Ihs5axOO/Mt5AVU2x/gDZOTGZAx
yM1VsrwGUGHE0a5GkXh68/bgDjyLFty2FqNfv8/HFJP2jcnIFACoJ4CdQvpJCqlnbAhSqgJerZ3n
7CjXhSNvKLTUexfPfPIteQvL6vqb4NxmBVLaBkOE0A1jXTn86sMb+2vyCHnWIiORI5SMSvVgdks4
G5UJRe2e2lNAJ9rpnts0TYDWE2Fa5U2umYC7QftLFbUW4sWtp4YSe8vcg6NQHwGH1feY/OsqoMI7
8bFy1kmYH3MS8iD9xOXs419joNV4VdMbC0k+c8ak6bs5eloCHnPOeeXZdKkg5wWC3jtXmyAMQITn
Fx0k9UFdrIEmwfwFDfKMJnhoD37+z2Q6zL7yKbNLnc9tE709o/NvBUrrFaSMWCBoYvnFZB7jdVmQ
IU9aMWqZ3hCMR7qG0RcBIozMMxxKvSXwU1Fx9lG4o8YjZeV9p/jANThJ0xAHJu6yEUDjSc8asrHe
wuBT6cYvQlBfMzhDHmJLmWOReeiRFGbcQQPv9RDYHbAt5OIfxl39VfFVQFJ++BhUs/NCkSB2lV8X
u5rJ1orGHy5iBxOYWpEo0ZOZWWMAOIcVmcNztwhPptPj9rWr1nIi3BTtMvowZFNLZbYTdCXDtlB9
xOScPmTr08KnnMsH25fC7JEn6RdxI/XYhqvv8/Oa5Nkz9orxQ1Hb/a3U3dmtvQj1LMWy+ZfWjMPg
wo+RowdzYgMi8t7o+0Xf1qlto8FpWgKKWQDWN9mVabxAA9ZBNyrqR9StvbLznfqkqh6GjnyCD1ul
TtwUadl2YJQ5QwHoARNlNaIWKEr4kHpknR5l+UPA5p27ftSSa/KESMEO+LpRk5b5GSYKDHOYA9L4
zitcJmdwTu3W5sY0yhWQCG+JICYTleFPE+WRnmfR5KE16q4cEOPjyKn3URXmdz6gAR0At6EMKuyZ
obuLHzQjz0O1u4rum0f7sG25WMpOJuADnZcK3VV93SrIGLwo6HRvD7HwPpxo7K9hvTW45zD2Vkv5
JyfHACsxS57Ie0WrjKQAxrEsXhgRiY+EuqE5bhWtWGqy9S6J1Jg9X93nSTMlVhYKOlnMszbo6q3D
T7LVHJfxyUeDJ7EOf4JUyD2f7ffKMgRNPF6K9exUtjw0Dg/aC7aGQ17z2v+lQ9CSYqgn6a8GoNco
1bHR7l4TufQoeo2fun3ZwiqC/2y2wLTxMO/nA+AKWLhaNHTHWPz28Q8U/MSa0TKQui6bmMXbU0gB
bXfXau0EottTGQkn4CUnalK0CB+4qx0Ec7Tj7uohV3U05oyrnuLFeHygWZDkz1DJjJOGm/IFDG4q
+F+SOaivcBkUWmnk7Do5dl29wR+Z844RNrNWodPLorku9nb5++4d3yGjoFJ97GoLweeTLEVUd6tY
/QxQ59zxn1iO42QqIclbpkiZqvdNbaZEH65fhQm4aMKO7Zrciz46JMNDpn+nrVHB81YUY57W71HU
okO+6se4inFtrQUbh8vdf7h8C0ShD9XaiWtQwDHc3JVn3rcp20qGG48XX5gFUn6cB7Y3LJCkxba/
NBR8paJUq6jWsWlirndo3PJjrymht8HR2L8RDnkBDVcPjAq8503k8915/YWMrje8+LGPt5wR+1oF
kxWJFXIMAq+F1RPEgAA+wIPX98ZQzBgG5prV3dWcy02SymP6l/83mw79rWyBGsOoikPhoTq+6GJb
jymEkSy/wz+hO6c/KHJGMGXDVz2Yaqo9uCiOMojOeeNL3WJSj2zwzx8qg7UnRTMrPKYy1pvPbLKx
qcoiFvNseLocEUGYK12WFnrSbM59YCSGPFWrtvATlsY8mShOPmifFgaqmlOmlHn69kiwn/Ta3zhG
eN3L9z+iFqFtf9K9uUfHRL+nF12yfd31D0UoeULZOew5eyPMJnpVcEUPfm5+ih30VuXqmmgEhJdw
Xj8ul1p4U7nqh0F0GbiYh0NNaVBxcTeRJL+jtBbWkZ1jwxVPyrh+tWa/aY0l2g9lFG2cqfhAVsyW
2HrB1ic7ffhjwWorkhp/lMdADKV8kIt3mC9a+1x48RYyt18x1IXnDUF69gB+/JV5RmClBv33Lvze
oDNZqjM/0mxLMh7DUj1mpog6K9IDPZnDeoGL7DJcZgj/kpykTHPic3fam5O4RfxNsCgd8tb2hBpQ
TkWllk7+sH2xhHRknDZQ6np2rxnqU4I6s+jt0jvmqp0QyCAN/bHdVw7ZmceTVOvQajGWwlSgk7be
7xELO8rln9UiQ8or1jZ1ZEMMq0IitpqpaZ9PpVi3HPhJ7dhhYH9QzgRDbVReZH9l5Y67NYMYEWy2
EjuO1vyX9r24kj1O2qHaQp3AEDz248Rg/qBKpk7NRa8ct27JpDg8AaxMMrKBdtx3rOjWWik1xXhj
dGvxwl4zeBBQbVw0w0rKsrrTFHD68wag1AVqFu8MA2ZEoWUyK4j+7mdxn4zeGf/yCPnWU/oPcGaV
gM8jOz4WM1AjLc7Dl3rXY8rl77mnmsuOkIGcsdXHYNHG19XJo19DhwO70GhySekTjz67WPZX1TMx
twK9WKHe9q9tJaJr3LGoPuX7+OtVoh5A7Q2LHFBxV9hHvLYoVrvSgTRDovZAFoZGy7Ou8oTHvwD2
QFniVWdIT0Mm/9taApL4dP2Bg5ZoYD0RuPwYTjZbdPJk7G6YGWytfQ4GvvbLNl1U7VkRvWcpR7Ha
jyEwT68hPVOyfV02AjAZ5wecC/Syu7bqIBS3gmP7r3y/SRmKHC6w/S666RBtyE7g9rkh2kzJjyBi
Sl6QMU/sRZBLdwAp8nDNZr0sRaHXtQepsiDRSsJzXCylqIeO2ZaBTPWwf1gsref2z/VyFrlZXlvy
GB+VxqXdWMkSwlBBS8pwcUSN4Yt98EaYsTxDzIDJa8HzsT5/g/2xDna3qMg20I1Ax4HUfVvp3j6N
frKoS0ArgPGjFOHTphnl9JLk1pUnWuL3llQbiYz4VHVxU5uWV5xcvyFdq70E/tJyNGgBZzjEFTxe
u0txQqXfcv8jz4fRjqAPVvW7FXb7iCSCpMmlQ03JBRbe6QXaj0uWDHNbSnRs7JaPOssNW3oR7e7j
dKOjOm2mAlCSRZMme5JQZ6IfstSQzeugRTNBmtk43+dBynfYsVOnO/Y6chAVeivauCH6K7jlOk/e
a7oVifvrMKiMwDBgVq1Yw7Gp7+gChUP/MC13MxajlhsHQWPUV2lkEV2Ql2CPgfyZlSJIsOYQstSW
blyepXY4p/0EjoPqM0dlwe6m89YwJBjA+VjQMY34jTEuewBHiCTSr5weM/RfovyoYOd9Z3nX8whg
PPbaTcR9qmwz4lIAzpycatW4S2+1Lk9skqcah/gLvWBiD8FILQsPxXmpmF8dNMYSuthsl3KVjM+S
4PPOUyNunRe5VsSmWkvilQEijTojWQYcmaxZsxc7aXYHOZlV5BT799N9bIDfmJuOd0r1wz+s94hZ
42w0ItvHetkgwioSCQ471jIh0gdqpmoym3S5GYOWqb4Kp/X+EQjrfGo7/bEc6COVFmVkdmn3a88I
JMEoMKcXpL3AZ4OIEXIWcX46UDS/qvl5DkHWWZZ7Gm8MZz1ZRfEeN/36Cs4ngRW+MKSfMe3n4l0l
sMSQWiqj7vp7ErU8qD/t4A1TCnWGvALwsQ7jZwryEY86YjJm+XMeln3fFoGj6N7keGkdeJtBxME/
rIcBL3bGcXZMxjb86QA9cpjMfmBgK1ug/p9zPHWXBKY6ZWYjw2goyw1I136kNgIRa/+ONGKalK0S
6PxSv12mL/UBRQz+OnhIaP2BHBHtIWVB7c1+PczaQZsioWGESuMi+/X7h6WHdzimHGPLL0HPPW+b
zpU7iaExpDHZFvOaV1z7bSwmbuOaYbkSxi8+IK6J/7DW9bMbFDiBNpVzaUxK+V4JOmT741i8SoWx
/3MV0lE+YwpgxhQS7OqQAY3ZHQoJDJJc4E8ethLj7jwClm7FqclhG0jtijt6G0qvNffii40WLXV9
oR8Uyi7l9vukr5kz8RdnUAR1VcKTF4FyhqbIG15fm+Zn33tW/w1oCq60l86HDKqKs2+jWHc4YG5Z
K/byXzgjqGJgyccp28aE51fw8MBZTr3I1jXEMZjz6xp5nZEwYtBbpluqXySWga2lGo/il8kT1dPH
L31+YZWBRMxyNDvZsvscA1WpPpzrRbgUye2chnMTQcQ2RWLxQTHX0yKi6fOKFFsebJfH6KLQA7C+
nyoNMw+ttvv/5k6esnQKeafMoHHcQh1EB0MNUYPuXkeb+wevggtlMhUF+81qwqGMIfCet2+fPm4R
V/bDsf7HUTpll8GxrMZoSazw4Vmfn7/cFB9XqUINIdvKdxHXxjjmU7aQMJShUkYYhNPuryPzUkGF
p4RDToLN1Fnr2p7LEK6vLOsSesikdnN5E0ESFZcgNbHQARKpnFpgKQB463RN79dpSLa2604DevDr
0oUyYEXtscsgOmMTUM40hCeJEqcWFDdNnCqG7PHyMp4KReBa3MKEUHcHIpiU61CaA65+nGbo+tpv
pD6PBlRZ2Z21WmJa3LylK/aVL+9aNtH88ffQdDt41v8IIntb4JyrVjfDvpC6JPwMs0RI1Drssut2
7PYdP4zCd7cbeyfOUqb0Z6zHRzywq7IHmDxWcFU7HHrKtGoszzjPWxepQFaDA/S2GoVCYGqt7akN
iOMsh1ABovX1qYc0KcVspwJVIo6fYv4HWaTWf+nHIGC0lSXVF8b/6b0gkpl3sQt+/kgUPZXRctEV
gKJsKKrPPE+8tfwGuKwDSkXUD6HVcrPWujHVNfF5+Ra+pm2YFpOj5Sjd/2KLhatpi/dkiES1pyo1
demxI2EYifiDd88wYnf3terWjt2f99YKh7e7rcXnh6FkjPcYLCNs8WXJmXlmBt90e6qxfA49BqMN
9LEPm19mXTdhoSSBSxA6VJdIBtS7mjUNLRZf8QtjgMaBKmpGQ61uoUsTdpk5MIErn0OrQUl+zdZP
Qd/KtZ6Mhf7jy+rz3w0Jv3ZyF32Mi2sR+J8mrXFKuCCxT85w94lusc1U5kp2kmXJEdtBiHGssoVp
9M4k7N714Fak7FcSExySOp92HjAZ1lE3zeLtDAVwcggEVFwuYZskCH05CZXsTEKVv8HIl3bgwViT
JIaxqNuBe18x8+C8GSwUedEtO86jtrjNyoWphX0U61G0b8ey6gSnIYyN9WVfy2+bVr0hhx/wg3YX
+GucGL7ct6lEQyXcMn8KMcpvOIQ/tJqFmXpgLeGY106UMAs8W5poFrkWhv7WCl6Urc47OkECyOS3
LL/BVNHjHOp6KCXE1hm4c3Umme3dq033wA3SZYFBX+RMUBuZcw5uGEedfJb0GvNv4yoT9rkZWxtw
xCTk0KKWPiPtCh/Rfyu817/9IJFeKnz9r9rGCn1BHivjsioAvwKq7pV/Vr1FTfQual9sRxAO+pKo
CLIiRMjLhUICw6iTXHsfTIOq4dgwiCYpuAoqCtOq/PKeAPDK4QGplpay3jA114jIvc6FTxtOmF1Y
9/yvTpHLVVr92UqmLGAqh7sKhF9AGSUp6HM7bO/MiZUTgsOXVkpYTojc3Tg37T630ekGb2OYinaJ
ANe1bZ0WOae3l8UGpuW/ds7cKlJ2/h/Tx8o02ytcMfuaTd/7TZEqVKI6U1K8QDghpDxmBGSh/dCP
I+HWpNtr94g5ebKcx5kTyjAPSmy+oLNEveej7I0olZpRkJiEqDqlzvgSbUzI3KjOWvQWqqWfDQ+N
6D8bXsZt/F+IivqMmctrO4zotbvBUEXyyPZN3Ie2e4iKMuNDCLRdLU8Xyng7XcfvKJt2I5tFRtQn
j5DRoa8kHJatHWkSIe0/J8022imqBjR/AJecGrM9ZmieBvrEXdBVIwb9JQ/KygCpG46zdliQNfuR
X3EIXklmaqaECc7zUFRR4htOQXuzvkfbUyudGWcgsYkyUg7gAXvDkRxmu64SewxBsg89d2GJlVh+
TkIPVx8lhp5hOsjsOpAvA/128lQzvrNgn/Mzrnl2TdQd99W5XcuH8CnUjix8Shx++ecHtaPjYiRn
gjv2rwmMyzUCkgkqas1o5RnoTzIbAAtFtTFL8BzEMGdMI3xFX3Yr0hj7LdTtP5Ta7LDA0UjKhqMu
r0l90uIcZat7hFWWj+IEGxtIWKPyH00H9N8N00e3DRmwYoNv/EqS8mZR+DAsN4lH2O7xcYO6+86c
xnIlBo89/CjZ5haKSFKvcpxle5JaTcoSFo8Hz6BAHT4Ct0tcjyUXYnb6Ga6YGdrGHSMeFf2qKXRB
W7VjqwUJHzvAxAlw2DTI5CbDGkv8rE13G9ZZ0ivF5KzzoxUK21pnOLnr46At+ZRK1wfkdXiF2/YJ
Mi/33BoDHslEgPYiAjbtAW0deUp98RNyyYWYR8l7Eb3DnLqfKun/KKpDX4+Na9TU+mTbuTzrZbhA
zpEVP1Mmnuyk1MhDnUagV6crUBO3oa3cobZklGWQmAh3RyAjMTDxOjhRknpimWWQWY5+uM5WpOuP
5o9H5nbvaOxg6JldfIUcfKq2amDlBold2dFIKEIDKoGT+c9wINl37TSPkxD48xF/O21G1Rqw63SU
O/9EI30Ee8lN6EULoBOaeU2oA7kn1sC0GgJBFRFynNFBp1TOodsvKQFpc9s2VLUEZpPdK+6SKayK
LwJ1KDTFaz/QjXb3cSf1eE4KchenzqmQ71ln7M8AOpnWWv9iUSXNaZX9LJ5UMqgTIjC5VL/FuTLM
cq4/m4/5TPLyoQxofywJNZyu4MZlEzhw4D+tBsybRmZwB6/zsWoiPYU7EKWRqpzFobtq1r1hKFTz
b4lLV8DRkPPBuDOKKuQmL/iLOe6L90pXFOJVUXRzmRvBNGD96RincKVFhJN6U0paSWWnjH6Qk3Wk
rRkP8PMeEOOotN+XEq+LFUrl2vFiGlzPwP/m+6yM4LskCDawNjt5pEn7D4KTJXbfSJ7QgCeKOPpO
aZnKr/9nB6q1WPx2HO8yncFRv+BceNQeOlfYd1Ft2wErlbCzkKw6UN0JwyaqFJQiljawSRrFP0s2
UCoWIzBzW7K3amK7KrHFIfjzu1JszCA4vWlh2v+9+cnM2RtdWFriQwKiXGQcyjMWNYFLWEQNZnq7
xD8JnYljiOfcbKJKy+w9H0eeprOegq7vnZ09uW+UNDe44M5k1ZvgAJB6wgEpAgMPt40fFOeYMoLY
s48BLnCRr6sI5Is76J+fWKXlYub9e6znq9mDGvuXqLBedHiSy9oDkwAM6G1bqo8FwHdda3lXUUPm
6+5vC0uLgz0ounRWtzB3lr2thj8qtQBF8zLTU+d2EDs3ByBM473HX3fhaSx3pJJC0nL011EKQy48
WkeeK6omYRZgNz8InuOdb04eG2IooGI+hDx8P2G4l9ht40Kw9rxlKdwFJIl850gk8YHvrwu7GdBk
PRaqJrlAkkg3ihDO3C8TZXNOFrV7rXWKK9dw6z35W9ArTaizm3o4/VFT92z5/BeF4ezVs0q8PLt1
TmtR6ovpQS5GWlWx8yyHjsVRAqlL1N426dEVVozH1ryKmJWujsl2EFuxSTS51Np1ZGS2JVDx5cI/
IFb6YbtFhKboW4+x5kdqyUfRyDxc0TUCjeZVQAXQAf5KF6yLxnpANoRg3if9wlUzubqiwTlMi9aU
qHVsOJ7yNuPD8eHFF69z93qR4KuRDj95AqT524wRwFKBkU4b3MmlA3u4hDiU3QltGv6S4jzlipIN
36BIGSGBLfd4zlEAojsJpap1jv5F5ylmANBZblxAproAdoRvgJMv7me0efnMOfT9phcMne1iIsLR
i3P7JcfkKlHlg2OAVh8BjyRrwCuDAIvIY5RBN1XuOxZaY2G3WWMpz1G56dj94QytM04L0dI/v8dU
IUwfR7FVQ7lLHTwELrysUiVW3yxLL6+Q4ImLYd28wKLjqgH7Bwno8nqKpXGEiZ3tTdaAIWyJkTxI
ntUu1ej882UQaHbvA4DqSdrwtS0It8bCEyW8L0Y1LZJyAMx2dkE868uV/+YLRBQdkEXLuKaPKw0G
uuijJu8uT89/4OGL3VY7MFwGJdGxudJ4aOa4aJ2RVfhtP+Iyj22u8R8LHhz3ksH3m/Gg1ZOvQDJp
3UAGh2vj2pUTRsY/rck3J0ERmBuueBZu0zHGctuLSY24HBzaVJRKq6NbuZ78dqe1LO7P8DFbiVjB
07Hrdlo6Opwx0dvbzN3iuxx/HiULsProDPe8yeGRX97Fap9CiWZYk59PlL/nuUCc2nR3H/wFB2Qk
Os0yALJy2R6IJrP2k7vft6SNKV9fnNDCkh0SzcRiNHnle1G/0qoFPcxUxXFsgLDGFw6obIDYsvwf
eiSfMPVGfZ196ucX8aNMpLNovRodl47pae6ecSvrWYTUYd/y6aZIIm+HsMHkqP5AopvI37B8LsNH
w7s5MXGu1TexfitLsDGSBWXYdfDzIPh6XdvS9ayGHZp3l/I6FT82AKJ9biPRLni3lunXCdUz6YH5
VPHa1ACtlk1dnYaW9IWOkPr2kq2cwWLbpR4dP0iNn+zj3ZOP1PbRVFcFmEWf9P4NIAPUJimTK2aO
A0kn5bKdnk/ebBUTEEUIzCqEm0K2eFyhex7ZYZ1JqEGTOvFZvGjCxPNJngH6HbdPbflCWOFoSoD8
bDQ64F9IinIT9TrWkym9SWPE5U68kd27P7iiVGzWBNo2U8BaHEXj6eZTbbprdrJnWRqSgY75gs3f
A8M1nG0pWHzCgJ08SRpd3bVhkHGSd63QHPGgJ4LkU9mT7DXw/+ZTWo4wJUQmBqejfe4mDyQzbovN
1iWejY9Lr4ecycmd34B17kZxuRkRVP1u2t1XpWgb0O2BFZ21nMqQzFT5GxFYapj5E8emI0YXU/XN
YFVvMVymOcVNqFjjhJKvsmGwMim9gopSO+yy1haIt1fUHaD7s38jAxvq7gX0VQ+b/d9RWvYdYCo7
q6WvohVnj8f0a6qZdfgublrj4/NxHfEl43TU1dSjakOhOYioq5XLij+7EPlBmdrHre86YaUtIOc8
wSpjsancLF18GeaT1vQ35uTUO5mQqGb8Y90+bBQ5ZzY69TlhDQKr4jGC7nep+ebRpoVhl8Idt1uQ
IQsuSlQcy+pSgxN3Bue098xCyz/fFimpkx3Qu7wF+CgcAgYkpZj3bJSbv4tWEZ6xLG6h56QZypmC
2sRxpx6FAozJ49WMBAoxv2ttuzasQXQwDZY+ShZuK+J5mpImnA7USJATJHdkvQsXXkM80dgOkzF5
0b619VVJ9c8+Z1FAiuuKwnx0MtsNddb/NlLG/8Z433Y8QBlgTtcraZKhm/0NhPv1GIrEDVvkl04f
jARVhCAmkVAy0Z6d5L6G5m4KGhrxEINzHcD+1FAmIgQdReG2pio3LeGXYuQwq3kaptKT1OOaWj6c
SaX1sEdbYkX65a2atzGL2bNd4RLiT6Wj9gCNP2h6ovZmlsRGQ7JV1yHarlPXsc3hsTXFKLt3WcUQ
iJg2NF1KF9JRQUbCzkgJzCITm9KdfatPceQxSP35Vc7KLHzayNucQ+Rr0Q6TYMNyCKxGjzb8MXP4
HZkZC3rXgk1oAAEsVgSSKgFOi7m73blYRyCjSTvIIjOVJQ8+aBJtcJ7+tSbD/ohdducGpvLnC6jw
Pv5LpHrayYTzASfYFJ7wT9VF6emqP0HTm0aNzbNMHyXQKkYOtFRoxAZ29JaimXWj4zxdsV4DNChA
gbZebkz87PJtKPg78BBj6dPFAylaWUS8+vz7qVI1+4D5pZOKZKvHT5qXuEsz4grz8P8I0Le73UpX
YOWBZc1J5A/inI4OQM0JMtbnSPZ+xjWsYzW4MAU2H7Sr1cZxN1fr8Ok5TZFBf1Gf0MXyAkAUNWOn
8s/0Qg3cn5dm+tYI+675RW/ktVAOQxx0CKiag1WzNHWSEAN6h2CvJ1IFui3VIRLgI/JnQCGbZNXp
jNoZyNMluzhNJK3dGh9kFvEDyW2ETtJVlvWpcX9GN0oklBdKuxiLVtrD5QVN3ihnNPUFt40rgfDY
ak6RVCOElckBEnfsR4DvOUgtp8vAb8ce+fITwk3ruWCfM31XYNLVeNm2PjZHFI/5kN9P28Um+tjP
KUedzC/W6/7uijcfsyyFycCuLjeXRUWUBa3O7gbgiSxGPoYVZkxlxXqYAbuldpbj2COoeCp7dxci
4kOniYoaIxITZlurnW/sh3wYS2ocwpNkn7sIcQF/cauKiPBYwumsyjyrArPsEjc6S6t3AwDDuRq/
pwxa1o4szXX0prBP72s29myBiyhm4SDpdIzN6IRQkKSQdnsjAUvcDbiS8HhnO0tICEjSU/Zy82Kv
6/AMOtNO5KOg+q4OxkF/jKRR/L5WFPDqFVPwW4O6iF5uD1aJVsrJlje3nhgzgCJx9NNiHVl4YMdJ
AwJLyxWkPYEoeT9t1DQh2c3GACg6VINebEBaCxmnuw3yk3AX+oyTH0Z63aTA6lvh+ISBXbYunOvu
UmrVA6ZKOPXxwnaV02Jvo1j45D5oBcm9zl5RsW8Myhm9Y4DozmVtWM+4QE9l7Kt1j2SF71h/W/ry
lFlxRvMhZ+8RjxghYdf2po9jLda+0U+5L2aT9BlOjEzZWvswR1X32tbq8gtEyyWkkFQOKqsg0AND
q8pJEHAGdZ0MCphETrkQNxOz0rSsAJBMlQ9JB2uxC1yRSq5RAomd5zOH1ByseS/cdyPtnQdYaSvY
XtfToJsW16HJti3b7/4dR6KXot37zHxXM2NBPsQagMQZoDMTYSuCEWBpJIe+Xk58IhJGNk7cZ5hR
1oeAsHt3Yynz3et/NylDyIjmLa27Da0AvJGfdA4EB4LVnJBKnlyFyDH9F4s6LpDIch2xDpUuMwD6
A1dDLFSbA4w2efmzRaSWS4JbOBn7IfLCX8qn34YbvpJUULkp2XDMYTaNRfFQUaASGbtI+lEPX7Wa
vpZJNlnTv5yuLZV0VmSRh+jY4BdUazOL2YiWGa9SH+V4P9W0Oa8n3Dh0X11ITHKOTNnhvTw4tQtt
nvhYOvZLcOMVwn/FjnkbsEBBrVB3bCQ33zmPyB/8m1w1MeSmWz2mTpB3OqCTlegt48BAlng76+5Q
VB7ku7T3C10tjh8ylcA/6ldboAfwAa7ShfMGT7YxaWkS+fS7xq/XBr+wlHlrpEDNnI4IfCipO90L
FRO4MpcqtrOkWO1nmo7+tT1SCM2h3rdvQdJX7SJSkDZLc36xm8dJWgRK1p/IAKReajTxgyhJxZS3
8nRiXA8OKXuEh3NKkeEd9ueKVp6dlCPYIyLokjVo1JpLSoZz1975VNwg0iqr+0iWNvOQqc6MmI+q
JS5DHJAHXLyntFS75qO28iw+wtyHOv4l9ZqzRqiFuIlCvt9piqvNCYRv9RCxgDUCjDssspo3wz7t
Jc5+7U5oCWqpkQ0/QPxtQVsyhfNNXmA4+LWb50B8ZB6PzaMLzUTktlsPlorNhxHLjfGrZBy0GzGh
p7xTI2u0SfSZ5PDC+MBRIp2uAAbgIuvjDcqatqGNLQiRNQ4QwSCQqXmEv2wtnvMOR/TzP5ukUskz
PXbXpBC4iSnhdkwc6MBTgUl0rcv4Tkx5APh34En5M974PyQ5OLBfuJAHTrvoxJNuxbnwzy56AEQ+
wUQxKda6DA5gk6feCiwNy+ZE40wTR/hOmW/lRNDkFP1aFwAfwX1rPIELfypn2DINyFsRgah7Piz3
nDkJ+rQO+O0BTO0vsmMm/l8RMhuK9HXQH/yWtQV8r/0Lso86lHseNnjk4gA9/5X9zwxePxpiqcT2
VE3pd31UxVu4jeA1yrgcC2NTlq/sclQRETvhC80GXduOVTnx7AjrFhpdHVe0lVMWvLNnx4NkT5CJ
UsKqyfsJDqfhQjqcpd+P2BRVKZGPYhvrNXiKtperIWpqTHBj7HlTu4DvHXKO+aM9OuygxYKfk/Zc
x2ilTajx3o6ZadslKrWD0c2hK2uTLNkfgtjWU659+aTa4sn6v7biDRo/fd1nyJ3fk0c3jRZwC8we
miCPHP7Thh9jgR6iOcjfx7JSvuBxm0RaM9dZPTH0s7qUi+HpJvSd/5FcM2ePFQHRU5GtIBZjATjP
3/jj5bcskxhVTTxL7imAqIQFllvCWHZb1nvs/QfcdcjZ3nuca7uRSSJWRcDJhCMq8Q3OtkbhUZi+
a5Y1U9whTgpuPz1vaYJvMONzCNwfEinZiBPg4Ba7JvP+q1HSkSSgG4oo8V5P44HQzONOe3HPMLVU
TGOo7BDUnbZ0t3/6M8+qhRZVm4DUDRBypXhyRyD0UdsXwnIGQ0YhF5sSEDfyHzbaTDKbTIMWckGl
kKB40EI72pmA/nENbQRp3hpy3ID3vfAeGGG1u0o/YMK1EQFdgBKVDKWbR6c0j05r5YS4ciTYA1Ts
XCysfkaocSvTFEvg3gpabf+WxtHRlWDOzZ9gTfABGBqD4IU5ae382OU9cjHhvL6DhVCy9k9uFBaW
tKLyo2Y1li1O3p0Z8Lh1DvO+LI5wJQ/D5AxD3NdO3yI0R6ByMzXNxTt0BV90F5GFZVfkxd6RBDcN
coU2iEthTF5cJhsRAlkPBLn0f+yYUMg1EAf1usIhZMMaTeJ604zGgNCcWb4s4olEtKH0Q+1e573v
GM1YJwR54Pzz4hlkfjSGH6P6H/onsZYJEdoQR9uDNHtqRfLwwvuj7/IsruIetbuvJXMJva4gVITJ
DdiHqu01UtEkd5kVbVvPtDfWHrp+EbbM9cm1bmBbJEPGl6liObNHfvOx8BOuWraTIA5lbUziXV2X
6KB4sK9J7b23qzKA22S6Y+L8qf9sb++jHMMz35FqBnhgQNL6OH+zn3lRIT7igMdYIFHer61KaU+p
3pvQtg2agkEv/Yy8+8uWUkPicFqnIo5MouHWKpflPOYUcb4fV6nDE3/nr/qZQwe0n7q9yUP0KiML
oBPhBPE0xmHZU5WZTEJfPH88ikWyulg+VxC2/ZSmlUS8T9UBa5s48Av2+/5eqqrY0jjhHpIeH+OH
xx7GZCsXCVnxHGhUy+PRvlWLVoY6TVZv8xVzeoyw1bqSxPXvdAvh62Dq1TQi0XyFRroMtphL6qid
r10ADrVYQPmYSOEpCj1RV65g2/AgiASXeoWg3iSSOWPcRCBUjl5FDt14k//0WbIE2SRwsF/PE0BA
bQddBLIPEBjxMD/TBsk0XkVALLaGWd+3ihEeNKTrKL/OYlAwnDlM8L6a/cix2wkTKNiO8prL4sNn
kG6DiYdwQe1AcSCsQ/rHbLJR9RXYlkTEfLcOPD/Ow6zD8G19Qxp3K8VF4sIhum8ks3viW6fVBp/p
wxa0Nc4rUCFjGj20YlUjGYTPZrxwZi/pB7SYOe8hRxCSTJGvUQhT2m/FVUSEyGiepqg/UkQT1/CS
ML9qGsTUY5jgZdA6FdoeX+cIYa3PAEdni+4rwhfst6BGHc93NF30DtQtDSiM2NhJ0zI6H1alY/TL
XKXYhfn4F24o5GPiI9sZBKsqv3q4JQ9RInmbiX6wuj8NGXtfpVdDwQ2xLHBm9+Tp3Kr7z1TOczyP
VUKqm34DEnC612NSNx2uXMfHxKQOJocv66XtD31zfUxPMecT0uJabflg+zw6MbdUS8QtTQUlX5EQ
pRNp7cARbuAW+0EsvpVJ6Ublvow+PmbnxpBUdBI61rgdoY9rFN1DRAqLm5a+GaDwS7M+m8dComuj
1tMvlZ46Il7K6jmGR1QW7Neuc9pj0vgMSjfvvprVT2EZIJf5/8mPeno+sPpjoutUSQkiRl1Y0JpS
llEcuBETvX0KG3emDAtg81EeMc9NgPnxcLC3oYERxHsaG0K3IDHCW4FVORujLumvBlbk2Zmzscj9
FLCaOVV6+b7wEO4Nddq/UxI1YlP4KsW1gHSxvUwJK7Vwac5u9LGsbmIO9mjiMYdbgTGTsmZ56V3g
rmlVFHbEI30QG/D94PYsXCpUZi8ray0qENelDIR6ARCJLdZIBL15Sa2YyKED5Fty8X9fgP7eLkRM
irdUFh+AUrct5nJDXJ3G5jFOQ7spFG15g/03xGJL2LP130yoro3b0EgfObP6t0CBMku36MTpYxd5
nMyxg3WfQA8WqMsREY49yTCef2uNccr3HRV6Olgc4L/VBFfN7xVdUUmAJFFwDxmO6M0sNZZACzC6
zGxGwGw9fFVdnnoiBcoS03FbKDXf/NT3Pvn7+0jW+oAxzlBHJRU3hWF4CG36eT+WQ7V2ynLFwaAC
NtjJf1MQAQ5HZxW81AMltoWbHue8cge8Cg7GHj0s7C3gGgmIWMYY6XZQnHg7vmJjBSFwtuAVXLz7
gKh92Q4F27SMcLvcD1MYzdeJ9MQhlzNYU6fHFsEwHcQow/93RFar1D0+2G5vdhqcl73ubLx16DSn
OHMaLgLjz56YWaiARZh+nunDUuHiQ0LraXYHv4VHmHcQWY1KJRLKWYlAoXM0bjJuon0XTzxIqYJb
cdVqODMoA8d39aN6z44dc8QSv2NWfw5A51y+TaErtoD+mOelXUXPYtk45KRmucCbBAv+lCC44Orm
6KsYba868lLJ2E3eHYu2tZNNfqhBv++l0eFIDqpUuFh/gKfkhEBMqvEaiGGF0w/z0tUPi+RGaZye
EscDzmRB096Y3Lzii0Vu55iUswmI69Iqw5OcWnQI9g85oG3mdf+NhmmIpFEEXDQ0gjxkID38m/33
CFSc9Q8JhIc055z/gePKGM7En52MBxjFOfTyPJ1KiPM+HEtZGIASv9dFFx66HaacYjR54lQuIGuj
KRkWmIWuyqBmDmVAazqXNnSpqdTAyh6JS5++Fi154ao3KBeFQU5nwauQ2PUb8pKlnoXfKuEfUIhA
7HNNfu9O0HZm6uO7T+4g6MWZdn0NQ6Gu4ze4dBXPpYS2XfjcUDzMvRV1xQlH1F2zEglcNwE/2q31
WwbO8uIcbrejV+KiFLq1PZIusOSqd4xW20IJICXcOgJGlGXQAwcCd4oyMFkoobLYyH3ANYDiy9PD
JUkBraJY5HeeQ0DaAjVpaShZL68ADyH0iNqZRivpGXaBrGiD5avigbMG0zfMxclYsgncSExuZGwz
9TYiamk34kqo9TrS1yv9PqtBxwxxZXk32inoV/yoEjK/8UBjDTw+BTZ9NNGg1RIWKU6scT4j0tMe
Nfby42ohS0sHNrvhpma8vBtebQMUfJvt/b/gAiHynMzPvr5UwOmz6CwlpeUbvX5XjebXVzc8I5Td
pn0GKk3+5fq0xLdgStuNxyG+8NHSebnQWx85I741yerSnjsY9ILFvmI07ygBpM3XEJLgKvX4oFFC
qggb8MCK45NOqfkeqmhaz6ajWT32UMpcjdant0LuvotIk+UnJY/0DReVvSb8D5M44CrZw7IYOKON
+Ig6/hqnOv1I781OnlQQ/JJDwZFWkALuUdISuEYQJ/OZDBkIW48o8mLpG6CvsIEZqa3GnfsRbIm0
GAdp7TxlmRypdqgpz01C+KTzYnB77OlB0yLJWT4Yan2fuBAfsBQ2xxBN1e19OQFXryWI8pirzKgc
EwzaI6l84bF5JyzOSlFxQSqHwNcxll/92yuZ+xUJHRDA3W5xDWSMjuoKLKE8Evkh335/Ljk0xU7+
xCIyp/RKX/CJ9pnfppJccN8JCxnLi4alyzmSgoefaUbol9bc+0IMob+n87idRLW591aRSe7ss/5M
4NEQb53QcsekMC9guESalX2HCJIvwnyfEV2VRZFa5Sdpptgwr6ZAOnajD3G47JofcEOZ1ulJL4M1
rONowaKXw+CVkiFUoBpdDr/ddYl8blCdY40gtbTM8xLYP8pWfe2Z78j/4Ev6ja5r6c3mqeFGV7Dx
d3Z4FZkjoHB4WLjLstuMpx/DuGR0Of3wC5tBT+auQN2MKRFfH4J5BHOI1tQjwt6zt7ko/6UVDZ6H
6L5j4WZ2oU/YDzVduan4+WmX76iCR1XfXxsGJfGudRjjh6CRFYIEXHAcH573gWlGOilkm5r+0OK/
2YtHpJ6kP0KgpvX94n5UwLjZL3zy8xfXmF1SkvA2Rz8DS0c5/JR58o4vKMQSI/o0/dP5TlAKmwVP
/IeuhTVuqHWuUdeeOr5eolra4akyrTj201FNdkb3sqtKC34vJxlae2xjTnv4m6XtY6e0OzofbgT2
fjz/QtrqqzyVm2BgpfgsV8pJZ7WEIcvekZ58NUMjsfQUBEnclpTTDhpn5McqevKn5+XSXQY5KHPk
p4WOUeg36nfHdyoQoNgJfZwWF2s9sniquiUC6RH0XdzSGBtoqg1qUrfKhPQMz1cdBHRakgzyCff8
6k48FE+cJZ1+Zk8BcMRJM3oAKdOS7lVYA4rJBmmEN/7qgZtmoGDcGAMrRkFuUiPKWD0xT2mHSWNY
mIUoHafAuMF9+VjaBuLP/899MnmOJ/4LhTewHe3tDUVYoHgI+i1rGZxN2/4z46KLME11+ZXKrRRJ
wyJ0SqTI5LiNVm1ks+TYoz9r9jLQknXVe3RgCpIa9S/Hkq53Ggz6gces2TsbdGXz4DfDDSgxrGLi
DdwTcEb71VLBxfyJxkGJpngtrmml95877kQa+7zz2tK1agJpb+/SQzSlTRYB7AJ5J81NuvY0+6VN
WcbQxyMai78gbhIe7cj1YLgghj4fdQmzv5CoZYZ4/Awvh+obhbaEEJB0VDsCvnfKeKiaGCY9E4yr
CuxjExybBAqnBlkzv8mT5sXrXMmlS8iosf2OPjBlbLDSEmiCU1QFDjbt19dzxpcZTNS9lV2feY05
d9fYi9ntxgMJZDU5kmIO2Sx6ZX63zv0OS0++myBACCZryAoqDfRNr7rdvNmNw4xtjEfPHQtDBxBf
Pot6uv5sVzuwfItLTNlPCSI53yyBPP57Et9vao3Gu98QE1I6pDB1dDK3QhfY4w+8JmKVpbKhoEz/
jMhZgQrbRB7EgwaafsiKHCGIMxCpmtd5/eSrimwl2uOxDHIvxDyqeGVOcyrODhN7vfOH5c9XAmRO
/PNu4X77afuubF5rJ/Zo4D4WDmMVVl/vfQYG9Ws0I1MWTjxNXzN5EACKDtZb0bQewYhILjewEGVg
nFU2T3v2kknxjVXU/MIgkfOffMyTVMLDy+wXR+erVuRkHIu3o0EboyKWj23yMo5HGuMpwpn+sB9R
rRp2tVgfeWPUJpVqVU3ooGSIingsIyGot5aEAfb5jUVOqqMXot1nY9AJUyaT1GX7rh+VqPLkEJ6k
NN5iCKv81/JlrvtTH/GQvibxFWdN0PujwRCepZB63NAiaHTuYyLbeD4Gd1+r6903BnPkMVxlwYqU
OAJjoTqvmWk71srRc6W0YmgSM/0zaWF4YYjSjVpxAOpsoRHMzvkBrsf0hnsZIG41i6xhAEEk3jyw
Ca2Tvnxzsb8Ey53+SaFq0mRn1J6ITaVdZlcbGJfRmGpLbCF31UQU0h2lvpIQrSxGY1LXRp9H9wJ3
Iih/tf383LKnVB1VUIYK1qO9DEcLDW0dKDPlmHcvWgmvu4aTeS/ffCHCoxxQm51m4H8KckGTgxF3
cknmEXKqi1MZ4YmYp5xVShJa4FixrqslSh2M1yOUMBxJbh4Td6uQZ781rC3IyX4ctXX39id7qK4x
t8SepebNHO7HQ5ys6+zcpm6Y67QZc3IxDZwoQksnVyPvZ4r7JuMucMteqOuhs+O2ULZtMT5gVtWW
6wFQQnMwzc2AmJjaEMLikB2a0Uf4vf19sTDblVFEEL/sln2BMvC0JXZdC/828iQ/hvk5kDJsxOCX
g0wICb29i/d0na4Z29NsdTQ5bAV/FRO5kFLue4hYpVLJpXHK3SBl+hHZeZqFHz1k05vMej87m9ER
lQpSY8fRxlLk5jw9mAnlkhJRr/8wzbAgz37ppnjJgk3C4yJzCWkjfdo1ZPz9CmLo/vJO+fgYqhBw
NxsmaTc7l3vR0BvnzcHZ2RLwem5qpN2Kyk3AScAX3EfunWbdIz5r5nrZ4A+ndSjN8fyPQXfHaLR8
MNtOMKSAd8n4O61LA09kp9TRjByVIPfYO1J8UVfw4BFDD6SbQjGcKOzwC40A2Mh8beDTx/3vn7bV
Kh0XlAkWNpIqnPTAguunC5mkP18uPsOtloAUIhHHbCT0iJ/AVGCPzFMveTzPlA8tUbxnGoShiuHI
AO6enLvO7ZNN5ddMMS/qXfXu7kZtKnSsr5Y65+q/Hd4Lr0I4og9ucy0HvV/Al9vm7Y1iT+0rDibw
vzrSNtETr1oN8HVn7i6Lzt+CcSq2yG1Xdh3efZsYRLxuiaCZ+M7Jhu7Xwf8/ZoPuAxa9fizwp5al
Eu/i27oQoHXVq7xSkMOZup8oTMvqIyNfnmE3ssbt5BDnDZNYudkWkd1W8OdqmV3DmMrdWdj1KOLL
D+SpMj7ZBTcvP2EYqY9FtAQroiSdnOUhHCCr8CS3P8nIqWpFANKRxSwR1PaI+R8MYhUSFCTTmJGe
LbD70McDB8SZcfgWEfGfWY80lv/0ZFO7F3FH3mzUV+E6i7DDMI0ZF90kTP5an8QohKCkhH5DXnL2
wZlh+FPaAkyaGKIjw8kkQEr5gzMU0PvECgOoH0cWhDftMs7foZtnqIdtI/3k0CSfhl5baYfmMhX+
enVFm5wj+nJLc8E0fyG/De+pC4PLuX/PNXTRVt5R/23U+2fd+G1FDG8ISMjETazr6euL22tRGEbs
VNO6yP30Fq6V1uDowm9IseaPsaRRxWij4h6jt61j9VVOyJMcNkkJ0ZuK5ysfCpIsPpcC9v5BE/jt
JtU6Z4FpOTbyUMctNV/j8llT57diOq4zRz/Rd1j7nbMmJVu60KT4UUrYVVf1JafCe6V+fuUlYFgS
xeNogBwS7Nsq0vfTuMZE2b5FHq3VcdVcmhSQlHwaSb7CqFllRv0W2gCstg5v7g1khFRsNakvuQRw
rlSEk4ZuQI2WPo2WF3f6Q8DyyOOEEahjiZbqb3qUKbHNqERAmltdejM3ljDlkLsdOOtZTnExKAM0
MyFFL7T66eHFcm6wNtwKrLb6/7CoShbgs/rVNYwaIovdZoA5HPzpyMpZvKvc6dJWSNEgnW69ckl9
2YBxKMiC8mRMt1W+AajERov857utQ+Lyq+jrUQjT+nGS8zg7EzVP8sf0fcs/ZBNIcZkZMc5mDYPM
mYchTH5QYvqzf6nEGz5xGv1TnoWxB5ZldpgCWVMhMRGtpSU3TB3Aw3Up1eE3kk+DWHyzCCXZCM2n
Zk5W/DCQYdKht/lDbJjaf8wG3MGkvVdPxKLEtswzHK8ZE2+BH3h/zPjvzr4xj0iq+VMKmLKFRXd8
nYjKa5PtvU25gHBlcSgplS4cwjaOvfINpyayPSxHaZj18p6A2ABM2Jb23sZEIwNxoWhSVVci0yUI
OJEgAbSs9UtGL+r41s5JpPvL9bhgSkzp4IToGsU56KcrnOyRlxPfl4GeNBQCicQv5r2QkQ0kNplI
8O4SX/hzWsxM4bhzQhnjvRBcRRkIifdCoaA6b/gMHtLrjLUtNCBA6QQATGk4C5IMtvkT9gDkAxZw
aNWlc26OBwIJWdIcEZkfwt3laGjPt5VuA+mi10RTERn3KpyYlH0iNF2q41UxVej3g/gaAoPbpMeJ
rNDPuMowpiyj7SEm+bVhIwQniALb5wj+qyelDoD0eb15eWylqgICuygJgOlWZiWpFEtwLO2rYi8c
/R1lAWyt3FXx9qqjHkCJQPiTjXo+gX9lVMK8R/TVfaIBMWItMXCU2uDmo59YXpbVx8BgjFrNhDTD
34dJGev2tmo15E+RVmVSmOqkNKSRg7Kll2O1DSzMCNc75t23DCAJnXT2UbJ5W2YsBPb54hgUXzZx
0LCEOxfa3pIDKE8J7TVI9HVi4QlTRDnxyCZZ6+pXCRyAhrF271TsuvD43MVcwaIWqWTWkLCfqzwT
0TV3yC84JHYUYmprUZG6f9j9G1FN7pdJ86iXiiZX8/lHA7Jj74F5KLwwd1slWrmeyROzMOTkM5sS
m+cxdcNlwIVfNUfyaQCMqJ/ShNYJs4To5CIJFVoSS7OYftyJJohm6Gxj54dYxEvMVh/DDPVOw77N
F9uZNMI+ICBSwNj5v0iSmqv/a8uIL76Zt1uuAdcf+/ZT8DhKzaMS/9AQaRh8NTRwFQSKhKxuH8gR
ymRpvovCicZlSBYeJIsffV41p3d9wngFKY0xYKpuGLRCuyM/3UVhlWutRrIYHa2LjHjOzPMis/7z
9L2HEr0srDrnRHy4rX7FHG3nwv/hoyNyGETzCcBInqDwj4wLNM+QRvgAWb9O8CVwuIAO3EhfWL0k
WDlTLdsYidECMZUKtobpSugbK+gpSSMnbBK5XhGMIXaG6dOF9Mo/sex3IUlwRHZ3aMEeCq5Buuz2
LMjzwBY62aqygzU3t+eq7oOjlxJqJx1RSPcg/HZ7M8Plngmq6Dqlqs6wXH7A5ExJ+qRp79q9V0QK
TG/UYnafNZl/wj7fLpJQ1m4aAMIeGtqn8FrScuvNGnhoeI1wlq45Oa/f4Y2Bhtfh8RdtWePwusFI
KZRjDNPhtYLnRaBX1/Rn9ICqsSr00Q+pdWOsb+UZ5MnF3UTB3UJixON5odUmPT0KwS/Yl6F8H5/W
oEh3G7XxKyeAAaQCwIkzrvKOa9CJdfE4qVjRphh1FqJ+pV7spQlQzSiyARcFIsh7bVkrCDp0TysJ
/Jp3mGtU2XEtwmyIILEJutT8KzJvm7cpeadTsBSLs7olMFi45jYNyBXlgCQpzJVzDilNNjyGKG2o
bm0/Wo4LLEP34JMOexN/wSB/cqIMkXTb7uXn3JMseP9Wj6InUKA2zb47eN7jNmKgyKe1hQvdLoG6
usPZG8YIbvix7on36kNgpFoR6Qw0sJ3d1DvJnNgPL/REwamzhGo0LhTn+556uLl4rIr4OO2bVuFP
023f4NB6rlUqBkf8X/yNC/AafgGYn5Kp+phPZSNirb2cEpcWJIwXEoG236wIgTq3TULn0BHRAXkC
6FHMCKHEwSrefnyq3TeyfAD1LfIQSouHc3DyekhFEmy8xr7DNXIe4smFMOO7UaRxLc2NKYMtWA5/
ddhn5+JTOpihZV7zPwVwY93SaD66HQPVARUMBQ10FUEUBCq1pO0NzyE+41A3x2/oXx1dzYeB2hmV
A6FFb143W65wPBkxRVdaHd7++dYz6VsR2RB8MbPkFwJ9O79pJqvquiTslWeoznkoxG6xnSSFo6yE
JWI/7J+zhIZt7oV7EHS6/McUzFxgQiDhf8CYw52qcbIZBNxsm8Ry3OfwQlApm5NmthJN7rRD1IpR
5kOrPAegS0abu9Q5CgYtA6U6JootAtG9fRAABL3Ctv62C4aF/9IlutzjynR4UGSNTSvYvhg7pd7h
1xHqbvjMysx3h64xWQkYL+CehyCCSu2MPcNOUDHalO1JAoVlQeRAJ917fG19OukhtyA9LiZyIxMJ
AVjJdDSst5A9iUvvYhsqVdBFQADgfRuT3FC6r6XiYhpEv5ZBMI3+JGxaorlZTmM13ilfQe5YXk+d
eRkcgI1iFB1rVetkoaZ6rZTIKZvqQrtMLNYJVqwreDEcYecFPQryw1NKzxWYUCZ+rf5aZev3MUSI
c8A6ouNVFFxuMMTSmRmVm4qP7IPrA2sL9o6G2CuT9VqpMm3uiqwmXJPRG+O2cisnrqLmTsxNEQ3U
H2fWxEIfm9q2+3eWAhXjz/8yXwnj4WwZoQaBW1z7llA0/HrDLgJhPhHfSUeBOyGSvKsJZPPCQqqq
CLNckeJoUoA+LCHZhCsuokUuEbjSbgAQFqG3VcZz3ezU10cmFD3/WVBLuG/NTOUMlfxpHxiMmyxi
v+30Sp3HvAt/NQXlIZJAPd8S0pq/xJL8SYqNEqYj0+s7b9xDXsxLlJ8tLVpxPZ9o36Z92mEyzUAf
OT6noIdF32Yz/h/1NxESAcaDMRjhDzSeGjnqgbZWUYqIyt/H/dLbfkYgwtYajZNCchXpzJ1GqkCA
5CyI4/VN1mhekiaFbluOgSrj5ensnUmrvCzoI9S/tdgFK5sqX9racpcFTLPh9Q0Dz+KOkN9hHiGQ
ePsOJag4qk3mykm3Cf4gcnxyg+qweOPTOeIn8kpZ6qifwmeLrV7F51x4rasM+ZN8oAacKAJfhjTc
q+Qjbo9DsGSlUlpwoWbIaigLr5493JtDWK6AsLtRMpuSw9bmVR0pMH2U0gCtA3jRp/QZ/bMUZO00
N5LrFBHBZEdnP9XFWfJPGwAVRDiT0+yXdiI+UA12US/uTUZzyuJ1WI9nOCdYIaIJRQcp4Nbts1Gy
UUAEYfU2+8ZjoPjG+6lgv3ZgbUolMnXPbgM0PjhvxRgYcZEas05D6UkNsqO/XJOZBmUK/Ff6i8Z8
G1MrqFiBmvE7yzNI0BLL2eHxZtE3QF8/3GQScVZZmSnnjrauA812tBesdyyzhATBHaYSww04rkuB
maJHN0rkkzmsReH/IkZX+zbr8Z2MuJKNvPbc0bNdmZVPctQsX0IHYdOvP4h/lmge7UG8AFt4rLpf
cXrleCKNa2vjwNxbDPe9/ix72QjqV9BEITQF6YMF6hQvaof4I3Pcax+RmVZVc38e2fFcpPVWBkyl
Zdv6K0zOebf+eiBdbDvIdT3cLddkQfVdkzXM25y9APpZMRyg5gBrq5Z3d/Zex6H0hVjfdE0E3QfM
x3P0vjXIL8N2gE0CKlwVp2piZTvQbuPXsaYUKQxjh3HzrPv19GEiPpX1pg+ynCxm56TpsfMbs62c
fj6bicAI526Eh8KvFlY1xpUxLnhTw9Hvrf49h8CDJINbuyf1vv7rQJysQufTWKGnzzcn7jwzS5Me
nlJB4qQXxbFtLLmkbfHozRaRipEJZapiTEILO1m3NvJUKjgs9VsQsumSAeeSJm0xq9E7UbZCmKyq
kTfdUNidIJirQ9E+P5QLEY0TJNytdGnpRmlplTcJpvmwWykqSRCU6T4UmWOBmp5RTRFisoOqr/iE
9gMTJ6TiAC263vEAPulYAIVINqR2bklyEtYXUxjasO2kL0P/iwZt7/DYiV2N0dLTz9iZO6z3RYLA
rbBiR4NdFU7AP5SIO0g2nsdA8rDta+kwrceswduFrhZ4FSI4tJHQ44evqaktpeE5GqlMxww+MrFu
vMh8QF4kJGHqbeCaUu8WGcDj4rRuWB/44dSw+x0hx+NtNQ1eXdzS64x/f1HpfuLTpWXRob7bESDy
2lslibOpQcCP08Prt4YqjXlGZDICcWpc0ZSPjfTet0y8rG6zR7vlBfX84e1UWrOF+wW5rfeY6tvw
Ex9WliGQTk2dNrf4DMWGMSHx0m6FQk6Z50jDd/PCT/o0VqxoeszhChcelvQks6v36ZFZMY+mvR6/
Tg1rn1BpnS2Xd5VtQW+YDbnmegH/5fqQB/Lx8GZzv7OHujw0F5+CXgAAFtwCsBRMFyXTzlIGQBhY
IxG3oOSJ+vhNdeQYawebfliJs3w2lAh96vnVuJc7YxrntfBQNvLfrrbCHejFBxSTCo0PSIiQ5XPg
Z+Ng11U0lEqVt1kmkVZPJhbbDicRwV9K4UPQstrkehtftKDUwsM6SxdLlCqKybmpaOTpnIdtXWuT
8+0ZeuuHsWMKHv/lV/hNDqgpzjm98gr/jt5RaklBLr8HxbcnWyebxEvj4xQb1IE3sH5W/qQVAuai
lNinJZVrYPkz+ZFxwHUMq5cawYeGhVkopXp0bGs8XOnYcBMhq5ruOCKpN3WBUZH5bXVidWPxPwPK
6pRXUrJA/Jg9dyb2Atv2qL+98ZmtCDuxqOG9xlO3ak76gU/ZK1PdarrhR1l97Iiu/V6FOOLTyY1n
z8sS2C+qvQ1E4rkXJ6wuLwai2/eMzki28VxHXUp+/V7c64JMIckUoehGo+UqzasmpnmjoYpu3XCI
mtgvIqksG8+i3DF2i5vjtxypDk4xNdeLzjAS0pB5kT+bloVAtmzsOPXIq5pqmuEMzg7+VkPwPGLM
W6K2WHH4u3jCWuF6swwKFiAk31shqeqly6ZEzLPIRAzqTRR8ABIacjK5bX2O3WNxckcr7NZVnbLT
rrV9h+I+IQEtmz7VTcbnb5EkoTtjCx8WKTj78GiQkS08t3DoY8kAjj4WuSf7ydkAH4Vxrluz2k0A
JYRc47INlN0ekKS/ECOAD6kRgW164MEUTx9DcULgG3nU5V0VCogQpNQsM0sR3P+EOraHTwxMtMsv
fyVPZ0OXuMzZJGGSzerRCknifftkufHJsBaIAGeOwnFZZ/QCM2npHBQuYtkc+nQn7phK1/0vfJFv
P29s9/1Z90jFz2reywkQTHsMzzyn9hFXpzD8nviJyjSNTGNJMz3jrAQKb71dN19kdvPuaa/HTFVA
3mOqLkK0I5kj68tH+nvbUYvQMEcooQvFM4Viq7zirHV7zaiL7YBcfRjscTbTSr2ymzwiqbJNeWBF
d2X/vAqHZ+T0yOmufosm4Z7mUMLa+KemLVUgo3txodMRhNq1NJffmTcMfNEIdKwSazLo1o1fye1/
xFkXZHZXsvxzAhpnj1a9Co8CvhirnceJ8gqKUPyGmKB1lgslIeqa1Apx2gWz0qKRn1l/4qgAGT46
CaakuX29HadBvHwRpATAMV/s2v6bdcFp/9ZRn5wmmt1xsc2Dsep0Vlj99q2Ld8ReLsOAvA+llT2/
hyflaNt6U4QBggAEm7mc5/vU3V9eX+ADIb7qhijqsA9/t6gYXFJoyLLd8QLFhJ08GA00G/oiGHhV
ZJZr0AtynAwDqGwM7Yn03gAV3mRySKvlADjxs4GfBQkULCVzstDGFlKxUqe1QUJhSM0fVklZb+PS
ytWoQ6xNg1qxjffPOmr74eMo3Y00+1pcu91jNSglKfeBDHdzejJERzwpWhauuFI+ZoIVeyKqslbt
B5VnzCBlPZZoXiaXJj839JeFglx4GeebTTkSQ6gIqMJsEjhW7OtZ540wTagy5J07EL/qAQboUEGM
XU5zKwVCKEZEsBANyWtZgBQgL5ORc+4e4M4vH/UoZTt8M0CRS90wlVf08A4Iq7WUnpP/tSkpGBjt
2KddlleyTm4qeMTqr5ZGwkkzsDY+z4n2pxD3+QPZUo5Hy3LsB6U5toYgYFJKNJtjC+agSt/5u6X9
WKYRQklTUYA+0AD95Fz9qRNRj+O8Gy/Ch8Uc8HikHV5xveuovkAV/usMtQWWfrOWKQtnb7qxBo0Z
YbpBKmuEFMj6IVmXZ+cxYWRYl97G53olPfH/YdlTXvIM1uFQkURezKETGomTpYLHnsdgUNAyCIx+
GUTGwqeXNwDy3NWaYh1r6H/OgI7Kd+GIQn2My5pG83rzWFg/dmzQZ41FV+DluWPjI2XrhI2wbNOE
7RCsDmHcRjmPFVhd3tsv9bQ+fqShtBnNIhWyqXWDnyjStM68JWNZzCLq7KHudDBKgBb7BGLXKrVQ
lgCSx5fS+M+NB/vGjHI/kllWqoNOu0eHi4jtfQKtdcNP/kpQ8t8f/lTrS3HLy30dIHc4gPUGUOAg
eZhCcwFsu03p5SD51yGZ4Lyer9rPyrOWdCFFpuFPzgA49oiq5ktxhSWp+mD1vjNE5oZ7Ag4cMisX
S4Bi9ihAJU8t9d8PMfvDTiFnXFVy6IFLeTCfXwOkXbK/lV8p3Xvqowwi+3dFcGZdsuOaNTJknal+
nGMRGt+hHELgsPQ7DOqFT7gwmnaKBtsRtvo4moQvbLzjTw2djsVO/uhOB5v7CxKItb5FP8Te6RaT
7XA9suyiheXumM3kThEmexgml14NMLvcKmTkX7whx8WiWG/Wtdu+wOvK9B/MuaOcjHIoWgvrS0uc
ir4maj86WgXyxtGQHtHKuDDuUdD7oDfb3Q1o/jMPIZn9wzgt8exJIbvEYSkiN7o5Jo83ZX9gofAp
M6xu97DA6gF8M4VWj2eT0zDWLiJ5OzBwAOi1+uw1uwV/2xEORBjcg7bAGMqp1ZdAW1cemJ7yfTdF
4LdAK8mpar595VJrbxSle/JTZtSto2SgS2Xi4NDY7VmpstSBhqh3ph5GANTiwLnysyRZvgNUOa+V
olK2rWhgzzbFKAySnMQ2PmqG/bj41867enOFSQqfNbTyGlx8ySPd2kI8TqZSyoadLe1NMtN1kSxj
8QfxO84QrsX8tYavHbn1hqHPuwIyMBGaSo77oUHLv5MktY4TQNoh2NIzwqUOuo/1yJmQjoqRAVZe
Vji8/smTP9hXWSIXs+KqYuFqjnFSRHJdt9sZTOv2bJsuhGsYkPMH+2QVYLy1iqZSrDApjXqOQwFo
wmz8ThpNyY/ftfdZeSfzB1UQfOkLhOsQPzlOTcRkjZHdL9jxH4VxPUv1hljnxZISdgrAyz9+IQqf
/H5DGBtT2rlHfszM+aKO3JQ01UFhaeL5k4hEmcpD43+mAdrngRFwXIbWrPpvzTeNubxlxheZKxiT
j5NLRB/IFcJBbZN1+XVVlEs9ROMWQB1yyHDJouwhRecIHBrPIEqcs3+buAlQrsOPJlt5dw0QibUJ
yxXuzM+qyodBhDsHsVSRmsM2QnmXr+1Y3yUEjRpj7JAgBaYTE/gQiOAg1ky3U66jGq6vaIjf9tAb
lQLJo4neDdBI3G//1A68jp9YKfJObmxIsjqQ0rWqmpehUIIO2X7adxRHbpkjCP8oN7YGdxY5TrQB
xgaIoLGFOjONnRwygkEAhRytkpSMUCVl2kYzx9AvADGwVA64sEXXNJFOMNbNNOMFade2Q9L17Opu
+nfg1yiI3RJA7NPfcNAW40QWTnSOWZyYypX64rMG0hTUPgtEIsB/jtzqlarVum2quM0slzILx/5q
aW9t5AHLI3Im4mku4TkvuqvwU8DyWJ1SiSEQzPL2XO+evimDF3rK+0QOvQFDc50vFflNYfZ1Qn0o
6UEZkoCaJtDYFMCAUmGH2kNm4Cul+UXJYQw0l9avrgKMvQz8mFIn/OZhe1R3xeL4yAMQi2Cu84vr
G/+91j5hXVngteZaOyjYOTC208AjRD3etkkeQG/zqDfOpN+2fS1mXfRCpLrKwnj2w/KasGmY5wuX
p0yNi9cxZ4aoqiQqRm4zfqMqRHYacHuThZk1LY1wuQQ51BCfMNaatjBW4IJ04xjGl0a/eSKFih3W
fE2MZ5LWoGg2XKUZ/rPXcAZ+8fHu73p3zKD38BcqyvhJHUehj1KiY9dmlG05o+Cfw2nepK1VzEdl
E4hjPcwhvK88ZSeuDi0xlQa3wojK0Mbt+UKBr8qNQihBfF4knyVbnjlqbvvmfVLNl6Slccu19+py
9pzLptI2rUNwCS2HQk08z8VwZisjKzsE7Y3dNI//MzpoZj2Hg74NuoA2+jxUq55NVNSfIdrZoEB3
Uz5/sSrRNzUox3nzqL7NrJcDp+lJ+qyJdF27OWoocdo/lkdszztzQETwSs7Q5jh8N4mqMfMPYLeS
agGv6OEZWbZECuEV58EtQRh0nUGT+MtlKj9F1yaNngiMICwXGKQq8SbSaoIZ+44PA8XoebD7rcNh
/qksTKl2Y/28e2gebFCPkJs1dBzATz54OaSW/seuWOqk7YqhV1rogaNYQ4+uwIqduELxFVyHyGSE
LOLa1030F28GNSGtlpF8c3pHn23UcOz4DhRwzoE6EnEIytm+xkfnkmB4q08FscQMEYNUrRlYWWbb
JyVUE+MGYKupp8rBn4xQPVX4F1gbjBVwmDFP2U2H+xPq8ALjVUBnvPilvjaZGTFiy1xRVXlBmAcu
gf6DNW6dhrdrptzdlBE+IEx+bVgH7Avg8x46A4gx/GuKHjW6fKdvziDomFgWKYj7N1e31cIyJzns
YooNx+Cz/HXsu8qOQ/wnGaxWWb/c9vwBGcdJQRj7XZTpRF84vo46KwS2RKMeoeKugvCLESlvMsQs
FLt7H4dEMQ8kVaQGNpuu19Ekmtuxkb2GAR2iqndWLxxG2CBSVWOsYG2cEvz7hgOqCf6eU+ZbSuEz
GGETaIE49wJ0NeSvwGhMBpx2r0KWxva+k5G135u7Xb1hjNoANHNDnqbsdhOPOLtgiGa3sF9BF429
73h3yyP8dIVyDIhjVsVSeoIf+T532FLsp6rnfLym5VZEgwIZ2Q4AHHCs6MKQJLZrU5QWeVenE/CI
Pg4xnqhFeL3XUCTSxpww6Xnp+vTGEvMYZykEhrJfrRZqGIxUAQfAzJLG6gQnMJ1tFT/t9RJe5ypM
NHhpwmmo23btlt3F06y8ig9saPRrO4Dz7MVqcjhe6rTVl8wNH3fWwpxNHSXBD4mYL9SzFQcToXHc
l92bKhQHro/FhK3Y2JBqbPiqareK2TD/LrET0OviuJCCPcNLNqiPHM1Avu49hOIxJoqNkPuN3KQB
EXtnkluI2ddTVZwK91WPJkRTmfSOujFJVkwq+GEFxDS0+pck/FRWP2Sn2lsV9gFELe6uYS6YlQES
N4AThCmqGTXgOKAbkEvt3/K/YeO3VBgZM6Ht6en9omWACMOXJYh3//NZC6vCqpSjM9HmhY1hJDcP
Q/gn1OqbQ6ElV33b0/Oo3PQKHYzvJ921VohZMmlhS7mnKIuJLY0Ig2SjKy0+3FMtoNG7LBqRlatO
NyMxc0Y/1v61CDqJj5BmSJRrdgtbwSBAciu7OpcPQbgGOK2sc9zNwynstsgX7SdqqigvVOu6luyI
g8HVn40yo6ITFKdTtYLbGtyegYDTu42TKpYX8XQjpyyn7l6Mt4nmdve+xOqF/OmL2xDH3WS08L7x
HZKNOfl6XlWB7uerfOLho0iOipLCqU39z1tifpugno55/kwRu0ZeytpSxyAq0Fl0Q1yXZsUz53jj
OiSj58xyB94KU8SvoYB5wibsHGW3wjvZyKJMMxidPynFHkbGzmNvMkNVzzhhpXcOhO4MPExXd1AW
MDjFSeRwvId6qc0nMQLmwG9PT9JuQ2lU1D/Rhl6QzHJ7xYsWm3/pSUZDo0zx8gcAsepj+EPhONos
ilaRvuK8ItXFBd7ZWq3HeDrNbv2A93HHwrjqM2oqgllJJk2IAW77lydxY/Km85gqf37iSdvSIhO6
T6+QZ7JDRyBpYZ+4vwO77ipebJUAmudL6oQJfJFTo8ebXK6dQ0o3I2Dk588Us2x07klT/AzLB6uX
xD53Y+RalKZqKlJ2KchiWCtDPG7Qg2Uheqd02dO5YSGWUJ3dgjky2xZIJGDqK2zL7oiY9eqwq5bw
3Y5/WTgx37DwrXIaFegu1xzAc3LDVR+85n5V/+dCz/am2SC/JTiUpyIQBb/YcdYloWV3R76xbVER
j7r4lM9l//zGajEiU2FlNj4H2JgD5r3k7y/kKZ+63RvX8XsRr7sqjxRnpQI6Y+gfmCYncA00mohN
b6XO/2Ehl7kSID8LBjiDIk/AKUkkiRlKtNMWojf4Rks6Ln8ZXN9tdqCemoC+xz/ap78p0bXzqkUc
5F+ny0vApCayHM4Jqoo39jHIRu+MXoj/rUZ+Tr+8neOChq6EvY4RsCHtDZ7LGOqjtYhjJM40UIUc
yHWhSWR2FYM6650cUi4y7klR27Gwh87K7y8OxMGRM1njn7BRy/9MXFnJqc6BegMkEs86BN/8zEOK
/Egeo991mlxEZPGTcIzctGi7TVA4wbQMhlOrfQpAIhsptaMZO7YuLh77wL8DRP6PaJSrXWvpNvJp
q36nD0eB3EGU+CxvJfejBcGq0XCh6G2nZ4M174zB6ZBhrosREJnH+hFsfAzyksULz6By/g9sz424
6iKAZ73+dm1GU2NTigKr8we9C9dwIM+/OBxOIrStnMJy9n91rviIdWuM/dhHc31ApLAWMl23X5gT
AxGuLmMVWRyWTY61asUSuvMb4NlSgPrDrugbrYxOdk68JzCkqO0RoKv3sYV9Y4qD7whn34vYkdS+
z8OVqcOG6ugswJDOeMHIAK4GIFTOUlwOMEGbATwbN+8DB7spwyYWRcZo93KpwkNoHe3nQovLoWVC
MbHkPEoy0OpxM12syi4TWjzNn++Azk40ohe19r9kt8M7VDWBeERgcfzNNZZLBiLMdMHrPdMWUQFy
k/z6252i0E111gPh7YcWG4t6VcElqMy7nnqF0Jlf3eysNWi/YrXPcMOV+Y7NzdI50f0FX5NF12BK
rAAXGxjVb4zpSdYAdKIh5/pbeyNbyseD76XVgzksKRrjsn624+aLxMRmTxuURVfnbLxSUrQiKTHU
1S5iYblTH5EBv3oKCqes+SlBONvOBov3SbuufycGit3YAwqLm6vVeQzNPpGJra5h7hA6GnEzjv6H
oOYZTZrDaitsddSwL2lURNrs2LTr7qDEJ/+gwO381/ZQdv0wCXIeqUptLu0DLxIEOT4k8T2DVlfG
VcGSzBqn6HpN5iaiGOaJKPsiqWcHS8+ICY94XR8PVFyBH9XA3QyOjftXXuTDc1WrcdnJlYKXgK4r
mPF/VJ7VckemTz5uwgRCEmhK8eWlnb91WWjvrOJWGKJs5wAxw/Kc/6ZcFz9S1nwxl46uCre/7SjV
BjjREo5VrK9HCWyUj0Vzpyp/NPRQEI14qQ4JUn6o+ayEI/iEO4N/n3Gi3lyJeePXEOkf6IEpnFSm
wEYICf3T98aF9T89G7GyQnHrKgc0Qvo5T+ioX2s+fk0uI2q4w97LO4Y81Z7KggT0EVF73QGjzTey
nY5kUpkuk51weSY2W67QmXt5P40elhVPaNiRTinA5AITaFjfaN2P3NbmO7qdZ64LJocH/R/iVwPC
NA8tKCrGgZ+ZzyYl7w7gwWzTCSpubxV5Qxn+DJHAf2EHJ2c9D7ws9h9H2d+7OWdbnZa80sufpVuG
wAhqVEDPEyq1wxQeK1Xb2Dsh6K5LX00j/1Kli4czpONdRHC6AAhC6NG8GDbqd1O+Y76fuojzTpcl
3YvTu+8cVijXI/QkUsKUAHFrNdWENGm8Hf24C+5AALwb+UxgwbwQpV6lu3KlhMFcRlG3QKoS4+zc
LGq7jOKVyLyF04KewRX8ogkRCeUcQo2waMqMrFT1Vq45kanvGdtJH15rNcJoPmOwip4kfbbEQIWf
meHaJ/uhVtWyC+q4aP5qpStcl5tOd1CFkUkHn1kG1po/D06E2fuq+gymaNccRSx2Wv+bs3shQL0J
Pixa/hcHQWZ6NXOp+OPaEOYLrlb+0YiB7iupoEQNpcB6n9/jAhoHyQovr1SWCE0eyeArP3sFed1y
tXbxJ0OTuvECFiniylojpYSN4sHWwx+feJ7h9XjiImoOh7LB4pseU7nWkQ5mucRQbIKBPTSucjIJ
qnIX8HgmYNIbFQeF6sEPMSmuqJO1rRWvDBWud9etZjDJFsKTVWjWzKUp/VohjlcE6mRAio0oomtO
V9Lza3T3nEmIX+/eaNF4hvsgy3NXJiVmj0LUNUGiw+RcHqLKZmEQ2zsWqM8BcnjcJB0KRgdaU+4s
oUPz1nZ55QzSMlPV/Y2xYYOh3kj3N+6WeL6s667AOi+Tx3Jmw86XITR5eiUa+Zdun6aWO10x+Jw7
a5yF4vXIC9wI/mqzHmwkQ+c6nGOnt3uQVKoVkBTpl8ATkHWMFEKyvBylubrLiTxhryXcFAntz9q8
HHXWmRRSXy+l1KfV3RgU4fwzU0fFej/nwO9fw9bRe8Dc3yYNY17TNv9LzyjSMTAkh3YhCiWxj/1T
rQ+PoyBEHNfguA/jGay78kAktgx4H2cEFni2KVCEH8HRMK9MviqfN+kQQQElLpLaTlMKMu6UHohQ
vy4IN+0UvxA3x3Lduj20iimECXsA9lx3Ma4UlCNL8/p6f/6SMHsyAHY52fExH3Bi25D1Gh00np+3
4CMp7FPvB65kSUbns7ycPohNQ8Lb7rZ5Zd8PKe50hH4jVYfD52mENgJKq+Dzl4Mb8GXcZCQ4GgNm
MR0X3zq3ItQyxOIjm1IXpEnbSQJhmt51oeS74KQHt1HSPSsWduhCxpEfI6jdfF9P64Ar50x15al5
fii2kno5HTGeHn5Pw+yK+TNtHzm6e1E+ckdsryggUNcWyHT8cyZl0WjFULVnXSuq8twN1j+xavy1
EIYn4/5P+KtUiyXtSkplEUgScxz/2POZBKFOp5Sg5fAwAMCMQthOLD6EJHC2fxyzy4jgtB4SJTNz
J8z+NbHGl1mXbHFkLW1Z7sWe7XjcwlTNGD/Y5c5dxNjuLMK8vIoIMHfqAXtS+O0YP/VIjBs+cXjs
fqQxaxBukY228vBhLkP0FYVXCiCUmWlHalAAXGBIvUNo6Kpr9pP5EdaOoGoD+Q9NYhw5R9mnChKd
dKeb44BIOYALS7WnwOTtuMWMrbhv/0s1h3DpUyZye8unTPGJi8Wd0hNdraBSYsA4gRN+NchmXXb+
k6zOQZyuDIeE+0ehbzDeYoK1pZNK1zpipYm1m69t+Mx47ra7y1dUMQWS/I1bg/f3ve4RURjTtS3Y
+HlKkij6ivfj4TZJskfiOcUDYmTTbAOc6SlkZMcJQfLQ5N8JmMGzVoqfVqIA+n970YVVaZBcDXep
nqHN45rs9+/MBCrYNZ9y6yeXGbmNdmPa33XqlPMOLSayhOw++cpVa3rE6tLaN8visgnNCLxc1esE
UUV5Z+nTX7Q95zuVcilsJHkYXQUg/eYT1FRs8irdrZmiXc704lxr6/yiU+2youVyLFl6i/16qGbF
rOoqc1oaxNdZfDr8JorCMf81UkrEqkED7SQdidEyoomknHKNF+UJs+k+LVWUqAjSHbRtnhQIs4gb
M6tAIOXNV0JIWwmhoX+Ja0WfwwoqbGIkVHpQ4A9bh1/g/yJgZFj73Mh335tNBsYK8E3ZLPEP5elb
tG/+xb/R188xBwUZ2+Y6sFZHHlZYT6wDvRGP3xXu4U3qyF6mprvKWXFec+yCI/vieMfO+lb/YZuz
tjeEtQgD8ArA9wHbU+MHPNDPsC4ZGRwxpwuGXZT+sAAVNwX6aWOaXiQGarSkLezrWYvtvTq+A9Gy
Myk81b8nxeuxT71wK6qp1ID1HPsQ2leZv64dvnjZsqxUqXnvWK+ZdEILVwK85Ox51VIt4cG0OxLB
HG0ZFBgBVKWAhyXaNe/01RxZVLcWYLXleMHCBN7Wun+EgqntN5O4dkEK1SLkKxJavJY76dVkLVJb
OyHysZfo97IvEbZCA62MxZ9k4Mq8qxlfngBJWGXGKZTRz36iOGxqLCSwtoziudsGNcZ9liMZQiA3
/0TsFnMOZRshPolw0u6L8USPciiVJyCXzbUBORed4X3cu7DoG9Htx8D8mqu5tb/b70VC/9rDoqrT
m89v6Ok+Luv7PCpCc24nhrYiFihsfPtZZr/cV4QorOIwI0/5lRGoE1ligb5/wGWqyL0ekT+KyI23
bDlib2Rj5X4maLROPClmCDKRuh25M7NTabGAy7QQiO2WXPMNMkrEFzhCR7aoN+iSk4cl46QtyHtX
wc1eT/JbIdrkB6p0CY4TaIJw84XQbyFEolATTWfKBtQTKHNcT6DXLJPjXNaI3mmdeIFqrM6B+FtN
Mp4tdwZN2kmD+37GahEyuL6qqzPcei5YMt4IzaokmuFkVDM1bmIMnHhjWQzQuKUALNZrB7q5KoH4
j0PgtgjJu8+bQV3qmtPnRrabxnesWr58pfCGzZfLOUcc3N9MJXqTHUfSCuc4EO37+Ddjh5UD6aoH
N83ExLCl/o/VqSoRfk5P3t6YdlQhLRhKVniFkvNYDDFmHFw0rFWTk6f5QI6DcHK5DkVBrUpqCpNC
nsjtHpgHA/r/w+Wtz3Lc5Rr4AwIuHvkCVNyGRSkZRuMF32uln6LY87zR2R9ZRnwYyl5DHLmrtai0
ROShz2M8+AffO25kTPLRYizDwL3rxD3QWDJR1jfwUIWfDjf1J2c/fzqgMQ0EI34ikQPvDwkaK0Jr
q5J/Nk6JN3Dj26wPmLIgpqeayMxxcoVrUKtaWRikrmwsAMvIozkwxkBfYCtQhgmq5Akcb60VH1fB
JEI/8oIwVk1g9KHAQhc/y/APvogzh3N3AQhUABPZcjUX805/qRHCsxz8tzyBYBNq1grBw+Ki6Gj6
ENpNmFMPJRNDN68HjvgcKPwEHU0VAXA84o6okbZoGcIdeBdfG/K/rk+Y9mXaOD9x1JBlhosJLiSl
w89OwzV/HSwR2Fu/gIbBAeJqGr+2RrvKY/2zOUdaKpmeMzSCtYuRxFpdXwLCuVTI0s1JXcVs3FOQ
3y6LcomvuMPTm5xMonMvTGDWwryt1UqaO3cA8PIk+rXIq+Jxngx2ZSWFej7HKVQSZx0Ga2qgfzSB
IbauF1QAX8It5UlgbKPNsIZk6DdKMwpVgMMxBuxdm7tf78GQZ5qdnqggNJUq8utI28o3bMyIF0dV
VIoVFPzyNSz6iLnlWvTqY26F+nhKd7lQ0xicbs8pT9/ckQHxVQfJvPphGw4bGjujrQ0jHW8BlWgq
vPKGUI2JQoEqPgEwcryA+nwnceXQHyB933xS7bopKP1HDdqkDwyBYHSJ3IXgsW0XrfPzkAYHGfA4
GMyf2cP6VY0Oc1QPE935H4cdpa8huxO0d5G+FQmMSqtWIk5XJ9SzvpEkJTvHWvO2AzwUYLMPHR/t
qUHV0cxDt8hzHDi8LTXVcka5THWPvSoFvkdSkjKc9UtKP42H+Yj/20cnP/pIWi1JJK5OGbQGzlJp
yMMscomqlqDajwXbTtdk/7fpwpx5NewnybAf76VydnolFsG27JYbCR8yYB5or3TKNvCm3wfp0nxm
s0o1JjLipIkncRx19OJXwiFRSWMRnr18+lMODFEiPYSfDFNG862t0gL4VINUAUnB4neAvrC7jE42
zFS6x1Qzd+IvX8vhYlddu0tucCslz68G3HggWtZ/elXZO66ZJTMDyPSBxGUHRoR+dqJaGBk4j4MG
dy2+STWQNCo5F5kHu08HyuHf0qewhnf7dPD3t/TTdYQ4g6lIgXwn7XMyeb2jBHErKkZMTIouHvuI
k8/UKKX2M1oDpCdFLcI8ridHMeMXE14yRWYOBinJPbov6vbplEZkN9Cf0HckWJ6Ufk8cdfpeSb72
SYYtFlcYTC0jGeFVv4IKqtQict7cKWmDiLiyz/UYsipef8f92Ra6K/sWEc8TkRdmSoAcqgD496/w
uWzCJX/RhEYTnRu6Anet2cma0aFlmPK+qbojPb0OqtNkXA150SlKgXPoYdFckcxlSVpW/N6hRMFv
urFuDL/cNLqagJe/rSD2u8KpOZaqmbWWjNG6NkwTBIW0AVmxcHuc98fb/D/4IwQsXk8BYRMUwKDV
VxJ5opJYlPmiYKM4PBooZc29mdcNJT2eug5aisDJTryYKiG0FYteYldezQQp/zNLEfQvH7P4/FZZ
kp2xBEqGxIV4EbvuaHGn7NO7sEVSPw2ItvsmhiWrSXn+ZMw2aC05j3m62ptKxnzF+TfU0NiT7oL7
ckL2d9AtLazz9h+uGg6OeUNdOCSxv5v+v0JKDsbDIHknT2TDKvejjIi8xIUDl+VctKVv71oClkyv
R02H6XG3crJQdj/eFC8cbycT8Sv4ElZjIpyGJZP6E5lW/wJfJunCCnBFQ1loj1dwgHUKLITtm1j5
YDgenhnSFxB9k1Xmo/d8qMQ4PaGq5QyVRDAk2VAOU9YZyUCyd+215EeBAB94ufC6o7PfjLvnoufZ
7hY4iAA/3rBPpzAcQfhmVcthRJVR8Vn3Qgxt1mkjPOUYU4mYhhLnwYWrYuUT47YvbiroCJRh89qV
jT5qTRpbkXWIidbuX8R2fADT684OfN8arqtaFiHM4KhwWPqe56Hqm8+aYKs1wSsbl8Kk39JPUYQc
2a7LJfbH2tIdUHar7/dFMjTeGuF76MjZHKuDPlBXmgnnjDGo1Gcu453V/PynUIDpAHDE/f9Wq+fG
hDUysyQkCv3JiRJANemIujCSupDduptDmNOljKDoHGDFFksR5Y4dyswTyIZ3RycbqQGbNIbFtQ4N
td1iiykp5lx7gA9nxjPXx0zqKWqLNEczL9wToc6SyZ6dWHwm4JyGEZFyaMsY+i3Mk/ft8ABSWfj1
70j2P6l+FMhO8muBQRZf/3+Kr9ekeIOOj0yhyalNgQPsIc1MciKCBSdfekJMQNAzILjA4D+AA78v
CKWhzYhfjw6MiUmK56vFouYqZRZKufcp4h0CLEIOKRjC53icOAQYOEwYExPwGr8BYNFvndEMHIMS
O+i9SGB6sqg3LuV6Xs4LfjQFDbYuGOPJZqcdmxeA/vpSdQT7EuCq83+0fw/ZnaaRWmGWz9cd1qd4
FymhOlKqXhN43Ud1iO4P03y8f+QgoSwAu5HKAHFPWppGg/jdYjmUsjOcBiFyQpdus3QHG5DHm4fT
wXXURpvN9ucNERtX6n8SmPxixWVLYakiK4HFZ59i5Nhm33A80eELQb7RJhzkplbZM4Ngc2G52bYj
r5uBjK8+UkNP9wj/rSCdG4cJx70/MFjMbgoxIYwI6L/8dpqN5H5BLOYDkVwGSx2uwqN0/Royd64e
eLVB4TbKIxEQL3YSku5PUx9okaBA+MOdjQ5IxeCKyNWmnxa+++I7yKuONzVvIyZDzeQxF6rzp7Nn
MBe9cwErMsVhLA8Rw+MXOnwJMvWf4eu+WxZ6uz7Ws48FpruBfgxDKG1oVmcvdtcIBOmU1JGk9FOi
o+WypDHJyFEVQZs7FI1G6lY2CxDBuXizCqQui2qGYeVZ/iD4k3allhE1YWkaUEt3DZ6QIs3HEv1j
u0Y9rWc/Xh7Kwvh6LNt3Wxd4Fn5APm4Am+5DgyCRMZAgYo/nfAUwlzxo1F1RkXrYU/fhdipVHKpW
aZuIe8p3Ja3ylpyxWAF0BQGvNDrfoESb/oSfL/kpfw/z/ZZ5YQQbMBy/JHo7jZnnHr/l+NuHmuvC
HiUYsAZpFE8/JqJordQ3FUaD1KGf7PkHxNSEmePp8rsMO4dAiAmVZds/ZWK9JUbPgRPU9EvVI9zp
taWhBbu46iOoOeJjsa+YyJJ3tm5HFxfJ5+/aKVVkbjX1TiZcHTJvKZn1Xq5C7AjtMPI8339v/SrD
h8F6OCTGo/Qd6l4GT6L1Ski8j6eMu+fVWLH1bXog8SCgU5C1iA4ZotYRbTfvv0LK9DUCb7EVMyh6
aWsix4YKHAeznVudajYacI/09nglE9OUHdnjNVAi5MaJdx/pMW59AXdcxFcJm9lxk3gfGnfBT6in
SuqPbCTWdYZLsqmunxMafuSocWQ5EG+b7o7vOfnCCh9h7VBB3o6C6cm0NspGDk/GUp2KUGXC7Mu4
CchMiyZgiKeBPL/wQDyondzuvZYxoUlMRJd3KY13G6WQoPkW9NtzpNogWPWVqsgBMvjbmFkZylhg
kYIvOqvbxyqKaTuRIy+mf6Rmf8bFytqLFsQBAtu3ckBG+sqHCZe1PkECrwwMP7n2gTM6lyvBH/uc
HehIEZX/SAeMnJ58cxfaAhX0kvsiqvYQN5bF7vaQ5UyA7VgEwwA1941sfAqKm9V2tosz0bid4aDe
OFmIN/2okczr39fBcTqoQfM/HPZtRxnR4nK/T7ak1FpCItw/SvF9GkRDVrAOchtO8FrfI1VAqUgT
dlO74mvRVaZ3VKTGwFKm0rsPGvAv2jrCidYwx+3OITVtZKYUn45QhLhwgPZWHmGThJsrW83XIeXS
L+GZ/911gwUXTNt1l+PuteDNyGA3ANPWN8efiLgEep0KOSnGJsEflxbMybz6JX/0232wOc/etDTA
G9SyjLmIzIV2HYKYRYOBszZ917WeE8Hij45skMnwxF6MpUZSzeK8JNz9rHLY3kQ0TMy4arAmu81h
507Lg/N0Q7X4TSi4XwkIQ9XyjXJyXR6+6cF6T2N0zMrkruqoMWJZ7PwL6N78pT+qc1Yg7i+mTvNW
U/AWokiH3jyTVBmosghRO5pYjStM9IiSNvJIuc8LB69Vl2/dXNyCPoA8x+S/UzMrCww59r9iTCR9
yGYG3UlUibAKlzLHXRay2fxo9S3cgeqDS6OnKTz371Pgmsx1AW2iHTC/D7xJqAoqzKprlL4TlA8H
J0OhzoMsA8m/RKjHJf79MqgxoNFMY0YLLTpYqYIlVAwdSMDTmWBaFGDfpJeI0uR4GEu0aJIf+AX5
3aQ0HZOIW+XnSYh55WNPrha8xtTANelwQvPfp1UxZRQZnAQiHdW0uaPOQs2AHyMewuXbzYdMeh7S
uGat73TjWxiEfngxZ8ao5TeSnICDVEw9WLCh85SVcLQVg1APnlw2o5SAkIkGL1T42vZfPG9a0b1t
49oqjuYOTsbXJzCaeKe+xDv68/pTbCVCFUXkYcsAmQU7QJ7YzYQcMVjQYV6f820MW7gxBXi4DifK
rIpRWgrtgjHcRem2WKNpOUt0PtLD2AIGGYo5eZSHRzaAfBkCrwYC5pWNMLUM7Bs0nGlGlnW95N40
jXmPmV5eU8MLkx6SximEXblOBVmdlzIsj3MnaoDqlUM6AFi9nxZb5WEuu0ofa1NH8IqDN61vL6UP
7GFsvWEyzVdzSr0vUNQJtavYf7qjNEcNHq5vN6uJGNE6JFzfxon1c0xEC7ZQSK6ZG/3OTXxfrGOM
V2ruXWX00dlve23wMOwsuBANUN1ieYI6DjQ+ka4LE2nJS1E7e1Q629azJWtHIgZMFRPQdNJu9PpE
vtahyA0Q+T8dUzyTKOZgEpEJSZUUXEJdDX0LXKMCgKnTfflANRI62swQXlj70hFnOmq+V+kRAbtY
79ZuV0DrTlp+ed426DJYUO5V7s8TFBzcV9YbublaIaDxSGwMrD50C9H4h333FJv6sS42fn5jOLTB
UeBE7754CvwLa//Bx6pe+Tm3tNI3oUpvTRs29F4SCIf6FPbWIR4ThWKzX4AiRhchiUqTD8OwJ4Hw
yafV0EzTw4MBLztCZU7h4RK3iGX5pFZLo9McSR1mG0w/+Mb8gtSPMdaCZg0YpIAeIFUKnmj9JI6f
qNA/sz7CRs8oVk6UofJJC1fG3hw/hjgLIraAm01eoA/GH7EM9Okyrgc5LZzQ/mqwBmyRb7nOeRcd
p0GUkMnoW/+pyOYZJ/GcKhfE4PuUrPnjRY+RFBWefB6/KsbRlvIoj05jtfx9Df5hjBeGLlDPhDfM
Tp1HGKL7lcMqJ/jihaXGQfommnDuCZlTk7ZxDBDXe2uHkzu1c8LgjZd3Lo5SkMUmqvQCowlzYlJi
YTpA6mhLqvalMpwy+oHOlM8dFq8eWLDbSYokFalUKAXZcH53oEZ8/dhvhz7KH+ug3TYhQvTTHPL8
JH/qorcxinmsSCzW6PSQkC0qHDuxVyCxjFYbFNuYcxZolJQ2P0uUtyA6dxn4phjHbnl7ik/gDL4r
Qe3YTDXAtoYHDbpE7noYCtH23UgYWnQ0pNmYH6Cz76zA9FUHNysZ/CA1RP47O07K/iTA4aV6SqKW
Iyx53Qux9JbUzyzR0m107And0oE8petyx9643dRSkQ0vZw6X5yt2Kq6c997hMkPJtY0fvVWwMHD/
RhdfpbJKuJJB02DBpHvF4dKwsby6dWAhTlZK5hyiq12BJndiWoQwhS5238K8+RqliDIvqlD/F+XV
E1iyyRi8RQfNmzqU/hDxBaYfKlNNNCU3tF8GhNzIK0q5Y4H/NiogAuJHgMWALMRM6J5dk/YmOLba
3SWKCW8L0OkqfiUVtq0I7XrVJfvwHWnL7CFSS0b5sRVY/R9P6UK2uQYrs/Ez5m9TM/F3IguguCHi
5ecSRkrCF3YpWxlivkDC9sfkPv3sJ3E7cRu/DvMmHYzydldtpRwnpzvrfi6tZ3nbmKvPs/d7lAgk
RWxD5mk3cWpfzB95gHkSjL8lmQzyx1jSdFZgqRHlfZYdWN2lzBtyViI22uy8i+DEGmxsGw47oMXH
oeOHXFrEx1nqouLhWo2u/tql8Z4qDlzu6NRGWFZqn2EjZDXNiux0CYpGqd2C0pS3QSIRZpOkCbs0
bSJuVbX764fQjca7PXfC+EupuM9dfRo3i9IvAMrqPJIYuzw5eqQqd8C4GDQOIJnyO97fkugjDR7Y
KaEyhNJ1goJXNztvr8RkeLpQEQ/LYz53LnTuOIMbwA8FTgQgG09z2KxDXQ7b2cl2UO8Rq396Fxeo
9B3kVbVR0a9t9lU/9lVC5dgQHovqLkAO63roxHNkEO9VSupEnmFIsV5AZeGuPadzdVEwEYlg+aO/
ESlANsXjdfNPNNptyvmYMYyr2AohpORB5GyCsqIvlwTo1xpuwBEQOETAg93a3kYYoLExKgPIRlyi
73zxCR43BSbaFT66TCycQcCXDelaQdISzFBvn6Dv6KP/X4pqtqWuZj3010xEf0VABV84X3IIN0+U
iReeK/79RTY9pHr4d7x57btDM31AvVrD98FLU7WGWzoKfBR3e3luRx4eykeNNN6jyozNeMzDuenR
Ov0m7w72JzGRzdyOpgqK6Vym7bx3Wqfw9Ent4nb3eazZB+epGHGwqOC3Kds1Unuw9n/7NAi+Ss68
idTZLWOuvCUqZopN2uqZZUVIkChW+aev6Zxlg/ETwdOPO5hd/7m72u0cuObAEGytSfyr6MW6j+W+
TxE33kr8PPYZbsX7+WnVgl/L4c2vulBh+FxxwQEPCLS5Y6od4yJQkT7oBL4qwr0WG9dVf50vBjgx
64y/LvvIVpjQgiUD4VvH1FesI4cDaDVZvcoC4pFXtdCFG6PuxT0I+xfQ1Ur6gm6Q+yr268MzKFPO
3T4JV8vBXR8c9qIoOl9FfvXk5Yu338GD37ez9B0elqxXB5EXUNNJC0AcAvL5QoaU6mG1H9XS556m
pEfKfM82tY3e6zFZcWKQbc6j2Y9oYt25rLLb3/C4EpAs0hVOsMw1B0/aT1fNqhuHlF2itF9px/QU
BAI0MpOlPBsHX7TOU68zbQWryKl/JxYZga7qANg2P9MqpWceKrLaqez1isqBR9NokhPHYJwj2gE3
7ZiHpeV84z/nnT+NHlivWsUVN63e/A5lm9O3nWb9fJ5G/bRR+588fxOd0RyULzvEpoOE/dZED0hA
BoOxfF/QfuOqyReM9Joyg18Y49B2wC7+YpUkKz0SMEkMz9oFzXZm3nYXTyPgYFbN2OWp2+2mr5mV
kDYYKcz6K1dbBA4j9wT/Cn8hnWWqSOCopg9lqSC4H5OuGsfKm/x+Mr3Q4jfauG4TN9vGluARbpJg
53dqYxQW+w5aW5lx1NRQ+kQFmH7ow2ugQw9g3jk3AzMb1T+H37lGRK/2f2MhNbU+RFAhv2D6RilP
yLSY2Yyxe3HTnKBHWOxDvvFV4KR6CXsRsc/bJKng0z9LEedx59d79P94YsxeHkwAifdpFb420x1Z
Te8fHrOErG2zQcIG7ncvZ+E/XkYWI2YEEWhE3rQYL+W7Nue6vUPAKiTbt7S2hQWYt6e7u2rhBC7E
kkGW5Fa7ADb+dRosmnvcDzJyR6WF8iOeu5Dv0VNfAxFpL8vod+l/zX27zW+zY3uMtZowcMGEBhu2
ADFxDAgR8BefnHVjqCA0NCRjBtyBsrI2Ql/MQPNyL2cVMuYgmdMn995EGFbv21MNw5yTVRlx9hq/
aUUmiYq2neyfOfzcYTNIzzA5fGUW4d1Pz0w+ugE15hem4DiimLg4iQBPN0nHrmEdNZzQkFXkGcWL
bfdJ8x2SQiBn7ZGdeC+h1wK+OgsORstHdIpoDzDNxfMsu6MBdst56S581LmYIQEH4B6hRmCArHHo
oOg5ojcDUD8D7QkB+4DZihpYQeRw4v1rImFnyvjl6+5s5pSaliVS/XRhRrZZ7v+juE9DZbGyzFpE
k/OuZ1eXLsCtZ58N3lXYODcNsnFQiCSdVI4kf0wt3EcLNl3VKrU/Z8NDvdrlGftJUQvXBczcRwQs
Tap4bxoyEOK6JWYP/THxqVcpox82STKPmLJQlscksmRC1wOs8PQD7VsshXco6Uo4xcihWuMA9cDb
Br4WCj3ISbe9aVgSaW+bn+yg/qoHlDTkXLVXAtKx224Q1+z4Q2VSMoMxBG6RvlOA3NBJQqDezYqg
ThzrXVbrI46e4mZufDcNIdamDsukrMc2T07f6keDeTbtWu6vjxLN4f5YTT3vZG/HTCTE9/hDKPRK
aAzaJxrJFzSJECqOxkYV9atA4MGbv+yfcy3c0q/nAX830pLkrX/OdqDTaEuUAE6HRofyR2erDNtq
PSYfitt5M8lG7HdCG82wO6o1C6sRMCr8ZAXRvWUJh+cN+62X2XG+dZP4UOwFIuTBUkK5qptSoOS+
N0cI2OkNi2fEzs6Hd6PEO7MDUw5mPzMgjUedgS32FjBoR3ezehjV7ClXVyS/Sf6UiCbqUMPu5mS0
XaMuprmmfFXwXWUxmCiJmZSI+3XCqPxWXdaz6R2UEdSaDn1xD9xp/qvtNJHmwa/GKj1Jbw1ENZpa
9okkNt88jPbRKtHGsOZzQGBVAonghotSgcPcvfUlSkYRkU72nVOS2zxk9J9lvDxrCcZrybFhbgGZ
nbk+1EzJJkaaPRhJe78+6JnksOvihyZMvvcbPKGWcYQAeGUIO98j54gBH30FFlmDu/VEYilFHe2K
Z2qfjkGeOhhe5qcTWEi0+4/vXhuFUGMOBj6RS0KsRPFuxOhTk/C/Wmuyk0fg9ea2sAsVStqgPkds
zMHHlF8a2rYwSIu8GPedVxkFgNHoxcHbcuU6FIUOJykiXaWs3XSEvhxrMQRp0xvLu+atma/txHB9
BmQocR1zqUd4CROLA+rSkjOj7JT8CLiAE/ElcrbxtJltYsF/xWsH6zpiclosyTehlNP1cj+Q5wVf
QR3uUMKW7+pwSbS+0I7ZLgQ79Nuh+FrHPVVFpU8DcKOLHKYajJj6a/VNblDKHIoeBZIaETV0BQ9C
Ll78e3vvz5loNmTfgAPz+28GxiQlwaNeyavUZuTuYKiSGsjkJ7DmwagPnNn0iPeQbB+ACDmOk7jl
8GU45aBjlhR2VlVW6BLXuCG361cRVFs8Ux7cyr991VyglqZ9YrUWCLaAUqqNTmHtwWnnuPtU99Xv
SWufnVFxNXmuy77/DIxM6gkHHRqAwAE2iDlDiI7Yh7D2LULj82DVvzcaM+uXYiBKmycSalLYtjCS
gao6juVXoxvQHqvMLCw4rz0mKIl218bR1n3O5W2+Sf59J1cJHzf1dyuxjU2oaH8skBfUWXSJgUyg
YZ6Jq1QlR9bvOot4B8G8XyZSrnXM0pLhCGFBtAvlzoTV31Ha3u7+Tj9GdEHhjYeuMH4pIV0qJD+J
ATg5CBekqwT5aQ7uvrOqBGYw/53gXyKvZzNe4wdkX8rtKB5sc8gc7Gem36ozx96LumuTMeUc3G4V
Ny/cOiY2ry40lk5urCK1D54uoepAR+9K077ulkKleTpobWZJlTkpajrcv0tFEb3eAaJpjEDLLh1a
YVZ37yWveuCXK3us0FnTh5m7W+/Ae9z+xo+kvac5Eooii7T9zlJ7I2I14jADOHXN6xZc2iSo9eqd
RuiBQT126YoZ0I3yy9IxkuLZWucnmPrb0hrJlIijZQ+OsaScFRZe+8Rvf5lBFzFktcIDkomAP1Zj
1bMbK0n8rNxlh5kUvPtHADCnIKJpWkMJOhlS0F8v5PDBKeFqRPm+xICvEhj07ielO30EbIVWFQNE
ZqB2g2JmOMZaSq7o6K0vFwBrt2gfnGrT1QoAR6y/Sa61PKBmxWsYrWMlCkXArxLOXKiGAFf6Ojvl
LROfNp+EhhNtdHawhn6H3UD4IHiASJWUzO3g8wqVr8DtwAGF1AP9iWmCXHaKn3x+3AgfTCLRVdOu
6K6VM6JjUU5pk/Bdlq/lHp0NhK/HYsUqhTjJe5BLFbAZqg0P0CQZNt/MZIHfgWvSZxrBKpHUq9qC
m+3KIcEbFR3OPHCSpYcOJdnlt6/oscksiDGXvQhcslsa4fboumkLIB7r2XifR+OWY4ZIHBfgWuJt
f9hYVT3CtIHoLLcOfBJjdaA2JVdIaJ4iKUlxMNz3JWgN0+D7G4dvXGCSbbI3/CpJse63X2Tt9inL
72DqzKz8Fba3kU72MO11IL9dschQev3uj3Z3DsiibhcYhO7fGYKvhYX50OtB2m+BfA3WAcIGwjEP
w3xkrMTEbSKYPmeE7qMirezp6mz2DAi+3KhYhw13BBtOT+Z/T2h6E62ey+9vl4vTJ+pUTU9FhPD8
XCkDprhQ97vWWUy6mEbjqa4QdVOgAnPYAzmj+q6q87mh7CN83MWMX+OQdPB7A7kgbWSNe7CU/dYX
S2gcFO9mcx3n2K2JN+9dx0LjBBPV7Sq6YmjCOmEETn+DORmL3HoXOGue7AbVbZCAtWUxDBfQLZ3q
6ujqfnAEpbyTo3wTn4RWkWU2yij2/Hh342FyPiC2Ig8/EdiWHE8PuK+labKQ/T/8V9Y/dHCMHm63
mRpfdpT8XTQECGk+6FjbRrmVeysuKwnTtN3+F6eNNqZaDXfsz/Kobtg1RCZh6CIB3ZIRGSdZYfs4
NSbKAeS4zU/824Fnh+ZU+A42DRE9wOiSes5GC+0RH+XF988Xv59Ptt/myPPadEAouelrQ/mPlgFt
KEqvwJBxPIUWZ9q8cf4ME5bGyTOnJ3AW5HYkznRj3aZWy15SF6JArjeJFuic3Xl8SlL8Prl1rXul
U8AAs9aaKCY6Nb1Kk/nTLl+MD/El4XU3ytiNfq+dtUm575eXqywA8clqft5iy4aJNTyK/PcQmBYf
A9NmIBjZNhiRRaKfwQG+T80jRkrDR6Tbza1YCn9QofIu+bldcWYB4/qdEULymEt+NQ5/KZ2FZ595
tU3S/26YTM88wTRJ9KMS+R25CQ991Mqveite5GLYDdeiV1SUGB+QFAUbccSnXVNASiswFI4DZgQv
YvoNGjAac/MyewoCP8EgrgHVyB+iWwUmsZ6kFT5F0JInXJa+0EAlgRxZXH5OZpCfx8BjluI1iy+1
CUvvDms1VMIWpZ67XiNUKIbsRBhfko53GRTJxYHVAj4otiqXXcFPMrfEgDd5abVGwXwM69ry1L7Y
nS/Bu/lwxH64sTFtAvTRFa4z8/5kfbKC+wS8zsFp7iGxNA5LWNCEkPZ7UwQ8dR1Rpz1iwnfU4knC
Q4rGtFtqrwCbqZXPs0/nH/PuzYk/p0GGjdT6U4pqTa/+ckAScuWAvUr9Bhlsu1OQ4XEEUTzAazxb
Ssm3G6JHV+t6Ph0D9W/t1ELhPdH8oDV4ThfBlL6zVhGD/wcjpf5VYCqw9TsDPMaor10DWqKlnPYS
5y1H26sGjWudTV03fZX338i1gtQYt8icdxet5wWLVYTPUauZahTw5vBjIqFUgMqcbFYFhEnMGfwi
H+3UvrTlctjdj8aXegd1mZX1ZZ1PVVaQsJckMPVuAicEQclp+r2XJDf6Rh5P6pCPKgy6W/ICBzG5
8IOOQttLhhHzEhn6x3VkRT7Ta4GdXm7MPj7ix9CLyS8qVswBYpFQRgK9VrhjDG0AabVE3htWMWi3
LqnpM1t0m3dehh1LoRV1XbSw0/YjPAbpcgjLU4HMGCRtoJH1haPfTz0SgeQ+y5B769m87ogTIo6W
rbZEfBAvQdWe9nhYuXtulvVwwKxGZMBLb7rV0j1cE0elUhrLh53LOE/L6THWuRxvaZ2KmOVZjvhX
bGawXsk6QlXkcYdnfe1ACVJyDFFjfsdzkXArYaUeBqWV5zsOOjTzr9Rj4MwUKrCmZUcIOeqUChnM
gwNZp5rAKUkqt4QQNEatTSJrxH9qMEs/FwEiU0K1AI4kr5FzM2eOSk9lKB2kU1XOLoYxiIqPs5XF
fwPS0Gjx49Ik7yc8AhfIc0hrV1h0qor1fKxm5dl61U0ZMjmqgH4MZrDO/ALw7XjMPhwG3jp/BW1p
KfrrZhk+8/xSmqSPW5wBsBogPZwqOCwm4P/2VZJKmmiIgrzw/Dwc3jHOl3S8iHwds3sR6UzDq5op
qo83y90AcaxbqBzZNkUtbhzFOYvQPDHhF2HQl1VDNvVpFvuhsAjwEB3v/Oh+cMdC/FdECsVg+RvE
e7dU6ogqvCNlJP4yvLvw9yQOuGFhHDc2f4Ow80xS+uXRLmKLMML1nQeq8QhbWT2fJA3SJIfE3/QL
uQd9go/GdDyxwBu8TBNzPsgQ4IQ1JSEf+f4Kh1LT5VCRS61G7b2oaT6NbezPVLTT4poE/o5sR0lZ
ZKTA6sLijlkZtbGTaskOWKLhiLmDL26vMsiLFbRMM7MMl6KtSRUkdVCgHTJkxcEufmIcQSq+RaTS
zNr7NAvb+9S0Y3eHKM+C0RI/3pPskzQEp7e0vtSJfFWqfakIryeBjDd0MpVpDz0y7332aUVWWu32
l0VcAh9Y56OTX3iJl0H6ZEZN7yziIz8z17SWumO1Wg4HmaUGMhrj0C65DTHS+19gBVAs8vXz7Y6T
OUCfP6WPcyk73va4tGTCT6bbhSaQ3mieNpm1sPRdjfdxVjTPtFSoYM9WTW/bHm792pFa1H9+nPzT
l9kaJddnI9JEq65WH2Gxi+IV+i0hrK+0O4KWxPgCapGvfaPdBAMo1UIVNVD2MnPUMnyUlk7iG8IX
Gqtm33nUFOoODzOy99t9GIy5SGc6NxCTgTmH8B6arS5QI9HEnhyYY6JXcMLBvqhg8QT0drfhfy8s
Q2NdCrogang0Ag6M/pZQ0Q+Rl6rXzjNRTOw4ST//6YVID+0akPQ4UopOwtY5D38KpgmNbtCbUAyB
kYpeuqKWkI1fcqoQXzXw+ehYXE31p6fEfzTHw5lm9483LaGbmj07dxVLthcTkvs0HFIMTfBz1/X9
nOjQAinx5dabL4fDh0dOOINEIfjQe0jfXHwIbFytWWIyD7zde5+1dfgJ56j43dekQtwO+DbtjLzM
6+vDeagl8yS0yzO/y1SwkMnj98F3V4/SunTWS+r7X0CU6LdhkZwpjClVEbGxBhQ7zGe8IyOFBbZv
eWVrs78lgjGeQSykrfcN0DB74vxLgw2vQRSS+pUy2wIb+rWlhXlCHqRla5O9pnNfQXlbY4tIAnXv
G3vW9TaeQnKV5zSbddlMJJxISteJGYrMbtRAfQKTrgAp8VudbWypccetezsDg5/aBCiTNdCyqYVe
QBnaSOlS0hT8Pxun3g5sQCUBmZ6vKkzUw2qZ1uBsouYBLJ6ihIKVT+rHy8XnCtXK9Qi2ueA7ZSs6
DT/g/P+Fzrl4cFQSDNA/kWgFOz276OpfOQhivCXgt8TPZgFLgGBsQoFoDk6+2R8PhEopVn+hqsNJ
w0RpuK8+HFpKVHCIKk/FTbm+m424A0UJnEcXuyvtKSA5TgMJ7XwrRJjN0shZf3K1sQc+ID1twPCn
ajcHrdC2N6KIywvf0vLhc5BLlGXcOro+/ByyepYxNGqb6oG186YwcdRGpwBWCm51qId/GmQAAIMQ
H5KQfH5frwfeZBCzB/F41J/VUJWAoe1RYe1PfEH2EXuxKq+3aW6oAyMVQTmiJnHLsHYdpQCplan/
MU1VJtTOGx249qkN33M8/RtgwS1b93UBMkCXvzt+IKk/d280alfgv4rlgW2E7gCEAqiSNdPE3NcU
AzHSC+/Cmy1okrs9Q9C/+NMMsKwT95AqRcXPLd3CtDiYgyjT7jfVq20I1y1vQ1o+790fdZG0v7Iu
TNWvUfPrgIOSJ8pPecQeuzCNcpRN4L3ehC99T4TKqeC6SS+8zUq/xWpQHZGZvh1BrxWZarEV3r0Y
9KdndexXa8aOs2zDFajwqD8hED3Vc63zzDKsqoKEjOxxDehrE/3vEYfixJEbWmum+LkmR9nFScGc
Ij4YhZZv34f6UfK0KEqU3a7fEmzCGpndUr4GBxyr9S5gQby0SToq0iK2X0USqhNSUf3WcHhMghuo
OeXk+rZtzcfAWEjan/y9rn9f6TjsOKQiaJW/+pr3wTemVFEeY9oyXdN4G61hN1a73Rq83XKTkaNG
qQPx5e7q8KLJr4lPTFo2b3shzrq3Q5r3D8vkOd8uWQDvRro6Pj45Jj6Lvshu6Bt9dHxH2Fr9C2gk
mK2WBniYwJdNwGLIm7LmpRHhcKPx5Ee49Y9wEPMMYxFXiUVi3XLHt8aWgNQmF2Bx5XpixENcB+Ur
lgg0k3f9pmqyx9OpFWsjpWAyWi1XcR13x9PoZsMhJ1eTMa15L/xnKfBzNvJejSNr+8WmKNFEJspX
jXlfzpl5Gj0X4PNbV10UUNjzC951ed2rPRaC8MJKQbVRNMsjPksEPwMzUkmMhzsznfxxUk8XAbd8
hxl888lpPny3OE0/43alYQ99x6yjEXkRuprWuCqxskND8YYEraY4g8Bsjb5+yEEtu6Tax4jnsXCn
dfCY8LknBkHjy7gP6cmL9GfatnHX/BtDW5zGgVDdfdQ6Sh6N8o5WwKJ9+3ZJdRRhYez0mjzdb6jE
0KRpHrkl6isqnvMmnEJ7I5t55N4GKgT9dEdX9jyrsOC2b96/zo0reQsaJGsGNSWNNzZHW1N76RQr
XN+Xt0zyRRCjNx4PgUNzwPjfhqLVD0q5/6r1pneTixJjODr42gHL5CU2/6FORQ3jZacX/+b4c6Ez
cmqN4VM1Ke+cBlYfkhT3YPrspNeQEZ0ghfC9INyN2foysHRFQg3VpGCHM70mK9u2dBF7aBHvr1Nf
34ekT76I5WgHrLHUtSNQxW7PaXSezs8pA+fLQ1IDO0EgmLtWFHLoSSDisQMDrzmsKdWKkbVJ3yt4
y0o1KE/pki4AapfUqXLmwH8UgJ7tjh2ZYTvo8WCCQixQ3VrMOt7ETWYJ3uZqHGGo3u1+0ChRTv9m
ufLLJOJK5zuiiSRkLr8rfl17+lswXDmD4DSDhJs0rrf2g0KlIyvleqn3S6xMiDdV4VlMR0aBRuM/
PbpP7uuzL//xmBxqV6BhOEjS7WYrNx9rIpq7too/1e9KT/vRS2bl1DhWqZz6H2VU8Dy61FR+8PKq
JIKZAzKlXhSO9qin6xAT06w6uatwdqdE7IZG+M5S+6M7fy/oh3+Uh4fk/QcNOOA5CQa9qW3fl5m0
8JCr6zZSIe6MdDq1WixT4HjOy0gJclCQixrGfhT12eKRixppMZXJFk0hxvv1QSDuUQFQ/1UwsPWn
7fFqkTPge2GhHNoDWwFa3EnbPY7IFBz1heb8Pk5/Tz3lLaw9ru7KznPHl5YGIN8hVQo5Z7Ug82XB
ygRbd0+hTaDsparGAWkbIA5T57QqPlVh0XulPuobG7D1yjSbLo163Leag0xt3UQJ5OzrUqqpIXN8
uRfbFUxryhlkrcOB70qYjiynA1PYC1qvy6sDjzkt4WH0SOubM/zQZ53JzdG+PW3Is9v8bqLpat+r
wq3DDcB/qXWaHrLc/sa0JI4zcYl7wjEeAlVn6isr8Dmmk67NNSMpBIHrBV84/f84ZuyMt36HRon3
BGyTr6yb365VHJN8OVY0q7Af7Hm0PkjA64EVaVrJgEOElr743U8psRwxD07FJn7w+LH6UlPCf5V7
H83MXO+ITpsKGKhQ4Th3GY6EjOejbFgUSavcP0FD79ffcWRZ0bbBajQuG90e8QaIPOaoVwD0PR4j
hKmldcUjtGSwco7rUqgeA2rzs4qDIVqREWR+cjcOAtUzf7gJ7YUdYS9sAUI9/cxFnsAbSd9jgGk8
2whx1LHg80Gkry0k2SRBNA/808P8BFbt4lzm1QBkf72umoBDBveW/WTitVO2xZelqQjhmoylmiPR
P2RaxGDeFoXTVo62LZaw8LVz9J7jiJjb6im/6YYzn5hStqNiSq2kmDgDHj1UTJ29H/OPcRr/H0Nk
hRjIYTuWzsOd66Trec+7L5cPZAlM3VfgFt+HuuSv4G5PH40Zgy1P7p4RCDMQmRSzl1QvSERYGyDw
zbeb7NV3hDfaGc0QBeEe9rXhIRPlfEnrz3quy97oioNrc0aSORIF2SsS9duPoF9JAm4uZXqovmZy
yWHNCZxI+Xc86KKT2WbeKOUh23X0l+L8YLNcvkXuDhoD0Y1ZPhsSjGOakGHM7zUFc6aL9JqyN+5c
Q/gUrpyAu2yzovWPIbYwMfquzyl4hccFngkjPLEJrEKf/llRq6KOp9iTKUJT9YCq2lNBVUjWMPBc
tBDrMj8fLC4P2Uqg7RnNbJOw5aEFsnc6SRc+bZPfrVqHvRPUvuBfJh1W2rcdIMBG0uPT7VMUHJ3U
JfIwAJzTT44nRGivVcwdzJxfU2j42awl9/h+1D0wQAd9KGuE5zpEItb/6BjNR//660mW64LOKeXm
fqltj7cSHZbhhlUr1OzwYYKWoeQ8llTV/icpi6SJdjUgH26lCjAJPETtRW33cM8N1LUsOW9E20iB
lAA+kboQFxoFwKCMpryiDnmRoCoPwjXHqcQaZAjoH4voBp5TCTlJ1iN5vmDzuVtvEb7bFGhTI+Lp
qIblClhsE5Spw3jM2PoGlnsVZmwQjp6wp0NVTHmYE5RZixxxnjM0aQtgLMd/mNvZBWNMNltjlL02
bT1TX2gmq+Fz8TDHEH22IOqiM5KtDwEzwBD5sHIKvrotgisT7uasUwwcp/7h4WBmv68Cup5t+fnt
Sa+k37Bx61UwLBTwF7/g1w004dvzacTzeeFlPWPHd6JvSlu4tK4oibn+bEua+2vxjhJIarKrVCam
8gV/Q6tJpgzWXaotskpyuY/jAdA+kA/AErEKatBgsJCLH81bUFAqn/GxoTR5JvJJjaUrJVTfCKuG
uftRw2HnluGrCVfQ2nzqCT8hUWNNI0GCG0KQJD9z6YrJybvY/t+1QdqJtyJic3fULecD91RIOcld
Wirs1DQPV4QYVbsAxSKM/upO8Vu5cpQNQsh3Nv4z7+efFCwqDjnli0CrIf5b2rOd5L8TCh2vvMxe
fvRAYZfNKmziMUpmSMJyOO0+2bUB74x2rQoAiarUQN9cZ6fKdOcam3c+GhCHsXIKHYpCOVNCDlcF
KtE0c5XXtZhbSR1wcfi8C0UCV5jBc0d/rq04wsr1yP/JqvKBL6xl38NQZRYfae4eUlL8e/QKJSpH
QydGtZfPCkEFSrUM61ivQ3JDSghrffRvLu56qBoBWRvzIZBWeGCTpAuHRjb3BZNQdvxnH8J2nWY8
OuNewKNArFNat5yizJ+J75zKnqtbsnzOvJqKONiJYbVw0up7wbFmXGmbnp0phmU7jgSkAp5ZMJB9
w9G3T5SKHXU56TiiPNcPJyAEeqOFcqGFClXw6K/+4NUWpuyJMw460wK9OTsGg90Q6j/rGiMJAVoi
Pg2Io+mkKYz28lc6yxy3tTbGMKc/F8nYW+RRqC+sYV/Mc1RXxcwt2ukV6g7W/sW3nDtgzs4JWyt2
FmJINnhLSVZZuvm7SIey5aU8DK7omVLnibzy/oSHZ+uaala6sFDjszX6+FY+U+OKsCF1hmchWBIS
JZWHy3F2Rj7o4agfuQSc0ym2YMEuHkT29z9N56NdUZ1rxJ9fsJjVX4AWetcj6tS9pR9khFrhZFya
jOUOKccwBXTfuVBrCEY2XzyWHj6d9UH9KQkyygPax4HpHKmH+9XQ2KXx5sRVlJ9CHGc+U+UAKPE6
wDzyQEQjm7ea9jNT7/ZlagjK5Jx0ZiWRPj70Y7Qohxn1KpMxeZ9Ae1O6MZya2cF/dSCxLfrnb8dP
lMQ2O4X4eAyfy7Sb4PjkXfo5t+Os92MiUZDUHApFOmkR6+c8VbzQ095Csjv0uEa8A/h7lQ/KPRLr
kEPxi6uDTXnygTQxHmNwHiRh14Jxn1SZapojqEbFA5dDbG+E6DbALFlMPWEH8vEejzj3NX55p8C6
QG1R4IJBuIDecsL51HyVanuTlTpj3GBtj63iLYOaxt26fEZdrn83/Q8AAUiia3AJHpNnFGyCbDN2
iq3DiUEjOFBMyzesQdmO/NudYrudo9DdY8m2tHjnsad3+B2G1s5QEB7kdxZ9uqXzxlyvYF6QZIgu
+dj55zYFEY4zAInbXebM51RzQ2T+b79MecpEJKBcPs9B8LHOkRy6XD3GX+T/B+kihF9YTkS91PS9
uSzNsMh4XaV+PU48vU+jCNtDbQGtPSV7L6hdr8CrYdSPMNgrlm8lTp1chghy6mUz1gIrToRsq1+f
pBZOCa9MJ3ZSyxh26MGum97DzYr2u0BFKLQwuVXX8dNaN5Pzi97VwRFJ4kilupt2ZXHeUlHA1zwc
dYxSFlAoePN9iLwa3rofzP6u62FiJRk48h0+r0ZJ4m3jBn/tYoghP/JGvVB5Ff+XZ+nzgHW7TSXL
o8Lq7tD8DwSbEGkdDxEXE5vJpJTIJqCel9h3F+vQlEjztI1QHoBmUe8U/rWQGXPdROBS92L2d5vc
OpCWXSTUzUSOlzM7eA7vzPoCVIkVL55ONIXbCjWWJqgTW4Z4ShK06JxBqT+QAyEFfQLDueSro9ty
f9TDqUJwp015k//eBCTIKW3KXuudjPxoCWZy8rZPk+dZ2n4MYpZCQCO3LDn02fXq9PyfwXZDo1aw
4sOuuthb4BA+rzmJ7jDMHkeeN6PzaSw1igPXyZNFJ+fsmOoxzckBu0R3Rb3KIJTmPBT0YhuTdwGN
VnotH2xEvzNzpNHM400EfA+KiaN/uAa7Vj9pAXI3duykT+sTzB0XU5508Kv5RQlDrjCe8BF5oQgX
HC96duPJ0NaHN3k0vIOAfHjuklTNmYPE/CelsyL6g/7LPDHwWssTo1NHpLS7TJ+wJ153VkaTLKuF
bjlRW5HtouOKLcGvZIy0e1MDRiBy9kALjvKmX3sVoDmjZNOq7DVNYv8pxl5dbDLuQLNUmJWH76gh
9VQYDhuQm1o6EKQLbBwbvVDQtsK9PPy6IGK4EmsWHbvj9gbIwd9TLDdo+NuKTDBHaRW4D3oOc13b
PHd+DZeM/IHNcQIpXwvO5a4Raeqj0dqQKLk3Dm2DTfnYVSZEiuQMKn77cAL5eqwQJctRqPsDrwoE
X+UZHxKtfZNYjl5uOr4oDdQWELnaRn+WmVLmnNxKLvj8JG39EDL3P3NaR6In8eXY925muiPUFwoO
UE7yc0ib6xA55bEtcQk+Mgi8DfoHVrbqvXcM+GDF137XJxEfRgn51tkxBeX4O+DRtMG51X/Nppy6
65Y6XkIyuahWdSeZ4IKOLO5FYqBLxbuNQeOaMExw9yl123kl8atHw90zPZYw5m+GBzsLH8VAyI/u
TGv1W2rykWyo9vk+MvhR7zjnYl3YO+cK/fAxPrzrysb0ZSAeNMkIE5WBmlFwfAGKsxScyo42x6Rh
+rwrNklJEceTA2DWeB4tFfaqc5OZhQ0t6u6E7O+QN4fi+r+hg5r375HvoZ91DEyipGdGuqTG9XgZ
UJqV919ygR66V4L5NCJncH7Hg8D8d2Vubk3IhbWQP2uL7+pHmu126QbERytwgpjsPrBoIfNSVLcO
SnParLJQ6T7DnivBVcc0oNlokzGpoJl6kNXRT1l7WBXr/h5RhGbhM58zFaMw1ZNI5k7V2uDeVIN0
zmjhdSTmbLO3ocDzAiUAIfWEjO38dkZOnBRqY5lP62HHl1BP8X1tOj3f+/HV64VCZUOa4O4x5gXS
ya2lDIlM/YLQmeDexhYFVW7wJefylcdLVXkMtm1ujtcmg1HvnhCwa41KnEOhBChY/5lyGHoddPUH
pmQw0Z8Dy7Aod2pAEgtBeN22tYQHLfj0zfHunRKQDIvvwKsFHBEmEbX6QGDzmLUll+n1+wJ+ga9+
RPaz3O4pqElna4E+bBMYHiv4sYLiDRcDstDmJLRrw1lESQz9EHPGeuyScOlslleDMU6tse4i6ncD
QwP+IY+H/prC8+Md9VCdgijFyIHHWfBkE1HZwGM10o7Q+C/pIwxbw6Md+KoSlqIK4K/LNg3K9/+/
6pZgolHG7WlhHOudfdW5xUealgEM3RVIGlYAZrD9XjILNBinKHmCsXj6Tf6tg+thcjDvWn36nVVQ
3yzlSbaSIzpvDb6zoHSodk48AFKFXNqumSNSyr6yKgucfrEBy9CFs4k4BtlBpiW8ermcZkLgcBYU
/MQusL5pX2w2FnGlaVL1leNXGJE4BVJsy62kfQyNEAzeuZ03WNfw+XK/alZ3fCCuHRwmFyQvETb3
HewX9vAoo4d5r8VgLLV8mDMDHOWDbTFnQZUVKTwyJc1l3GKdIwg4rkesRxKvrKhSdvm0HIz8Oz9I
FiNXLAlvpq8eKy+vgDOBi0qrd4t9zqMxlRIMgWbqFJ2FsUyHsDMPFxRgEy6IYT6A3rEAJfNkVsQ4
hiRKTGdtWZ+Q8x+Nae76PNfhzb2NVt1zhl+0UJ3kT/2PGtrXyWn1Vv6qlX2P1T0t4ZyScT+yEoem
DFbpbI3vYeS537m04Cij1spCpVo0gNmAfXV92guzjux7dZWX50wIyCxkJDqKiFDBlmCPI+UpoeJR
91UpMqoNNMwY+9I+eTWYoHTjyiQp/4NlMYwpef43i6GFdHyFblZHBOeu+e+U/A3IWIDw+XRjVJoa
mrV//Ov5KhKJusfysbg3reCMTt6YAvxGWPu526fPZYSjirCzdQvWMP/Jh3VGqgtrc05esFkUzu9q
MOqVohM0B1Ivlyn002AmrlSJZXqmJnAwObauhsBNGtUxckWBwi3YTnyVW2CFIbzQMS9PsiCPAYbD
XgAk1NyZJBnbVPXVBtPP/FU0WoickYrASs4hc2eUnXSG39GeTPZ9dA6mDgBDqiJC0PTO4jVuD3N0
XnoEaADkfMPEYAjjMHU7xKwhbdYBmn6ExmHCSaZsy+n4nljR2+W8bhUtQ4VnQ0Xj8YGJ/96BCvHq
Od3ah/vwT6rbmYfdqNQZeV/u4rZaFGg7Sjr159R4iyvegv13mEVfQylgPUW5RWOYyk3LsM5ucyIr
ier1zFhXf809IFqik00Qm8iR2DaHUPwVv0uWwGL/32FDTivmZvE44pVQN2TucOB8uXbmLcpkpqOt
FSjTIDabFLeN79Clvqgb1X8MskwwS+BN0fse8KKWti4RIdIADORRJsB8GvyRU4FRDInG1XbxbCkl
AMZcxR+zShKC6pfDGhe/3gzSek+HzMEqRukpnxwBoSO80N0AG36DP1LyARuov5xS6DvtIcocdlxG
FPfM4jXpbOr34nVrQuwwJIMcV1M1BiVQdiq9juiI0pjgdPrbZHnc3IiMnL4e7rAsRGbFToYlB9Ny
ShUoIQNpr0Tj+AYeiu76js8r2cHVhbkNX1oEjkg0wowTXnPK4jjJN5i8BfYa5G53jEIycWAvgaSO
TeaVatXRrlJi2bcOwLZ5p1okNPG85/wBPZrzcApBtkXrgD5HdQcYyhKZZhyxMjVEZgNlHF7SixGx
vLpQMJn9xMHKUqVvIqgBtjR+qYnfq7j8mBIU7jKfkhfmOopAESn0pamP5Vi5FQ9H7sGVl72lAOZ+
69FA2VPQqrar/zFLkZ4XJWxwNxGuOwLHcRn1dtYq2hwsXx4A2xYuv5ZzbUZN9r2FpBbyswI0qVVD
s3m7GECzkFO6XfgwFcwc5t9PikE2t0TihEBgek0nFLx4GzegavCofhvbOOke81+v3jAELyiVAxZi
LNmzTBaWU+L5zYw5VW06xyzKS9vupgmPoof0qUKtHsGUoyGAIinrkfPMT1ONkDy3Vl548cZ/bP4l
6hWeeLJMXbT4HCFNJSlhjUGMoo/O5WIt5KIbQZwgYPu3X4aFAaNvtrbZDKhJtM5gQvUGSLzWWUr+
MGUOQKBXWXev4vdXKUBXB1w/C/WZzXvFinmrFHD2je2KEYYcxzgOwE8lHIpTxZbhhqYrn1hnvQfj
x0c5UoemaxwWG9ZeQ2Q9S//EixzfsBnnoCMp9W/czcFEuw4S3Q6j94K5EBg7nUicCRp/fIjxbYhO
8gIcecJ2BXje+fWf6lDCa1UjUW4dFPoFGxaQvSvq1Rn573BrbG7UeSSGYKD5ZIwQWWyiKDPxE3Wm
F+6HMOS4V74+GHMxYOYWHl16YxMyURWeMLI6lv59aUB3Vrla30ImS0LbZ61heHqwwIQZFMGOHDvD
cHjBT0L6gFspfpAcmyocN9cVE8BXx3HdwXgh7BjmL1A0P427W1K74tLOS/1GbEO+Y0pdphYAR4tC
pzjTHBkHK5XeZA9t5XDuAb+F/HRTBho4SRvPsaMQkOOpqd3YlIaMjH0pymlxDNiH0CN1htlUkBy+
TS3mRoaccAblfPTat7VT//f8mztT2cHNI4zaxQ48fkpKdG1PYIH1B19GoawRnHX59ubSLMX2otxK
lvNaxMDrIyvP3syk+NFY65VeMTIFszUYnmzRFOLHzcJeC5a0w3yJOKsQfrRssIrrBtb/BBREf4Jw
SN2m2suKbTq+a8uywriiBGQJQE45jxfiSHNNCnPZtKb1vybSqZbUeQAgGUWiqoEOEs07jhJH2y/N
bBs9tVbBQZkxRFmcsbpO3fq+1lxwWV5CGcThMG1kyHxxozoiI1mFsf0yG579DxMTJ+9T2yHHZQqV
d9FNR3DN5SjAy49RJeU8nBJhIemQ4SR0W89ejkoqP5K6yv3PPAXdvG+HbrL872dGblbO4nu4Rp0Z
j9CsuDYOuC/P7Wg1rPHT8pR6Zdt1WqRuIRPB0s3gckp+8hrMbuNYclSNOy0Cf1LG6NlulQ88janw
s+3pS0hIJOdlIAJDaYvCFYJ3hSejFX1xniFr5cClfRlRSQrTjs/wSPSS5NZuOiTV1vPAn9n0nc6I
VtEET/mgaY5R2OEov3XU1TrQ3ueuRa/iaCX0sBgIXu0kjb3USB1hNr8aaTV8TiJVX1CxzuXKvvDF
M74Ru23h0FD12P0yx+s2SoxLpHLsgRUZocyi0xia4eg64gIW7QasA0EvRjhp+WV81VKfDyxDc/gu
zqTS+pG/5wqzliUAcxE3ZhIshdthqHDFNluSn7EUTyxbh08Xsl4h5dUAj+hyIN11RyDioaBjtMb9
0VG6JZHD79mLda91kK9r01CLF70i53/fnSX34p04jk52G2rYgG5s7aJhTgo2ETMUiLRLXByfO0lQ
pID+3FD1g0juP1E7H7AHfTjd9MDT6XLK9oDoS3dxNW4YooGfylTgOzL7x045FcnT+YMpwWG7mFhO
pqB7l2olR+luaJpAXhGT1fhSfqCfTHU9wzbMSuhR2wrW3l9mrtiMQxhdVyXCs0pObgy8bclEey5J
zl5wO+dUL788vtDk9BmC5plMs/OvsWZwRcbr6qhWKdgcYs3oMjK99/gFd4k3NP8uuOFs7JafMd4C
+RnYmVQ0JnmO/T1LcEXSQtDpw9Ft2A7ess98M3yaB1aGBdeQAOKHEBgrV3QOtbbrOgcDhhqgHHy+
odXiAJCweEa+PvHGsErCA9MKVIR76CY2WzIeo3Fdb6MiaacgHaEghuwZ3nNCZih0PMxeik4i6quj
83EoGnuYKjjEGi0qYKCxNR2nbpLtPsnAm//8pWb28v75UqVDNU3eRqU5epa14gGK/VgQjC1mXLa7
U01btWJxcem4nSQZSkfa/2UHtx0j+ByovKXdXsVtghQGdxndqXaF7sjZEx5ZI8MCLrHKzK5lasvw
OW9h/SjVauoxMgkXiUIPmZlwM404zvEVre7VYemPF34dAFN3OCLkRpifjH0Krj6Z/06VJ3uAfmgX
8OiulYL6KRL35Gz8rlr8dIeThfWAdV5QeUgxplerdtZxH8/R7ni5licud1BqOovaaEypQ/UzZbQW
AEVXIsr3iRV0aXWsa+kkXWIoTB+P3ey89lLAdowON2eOAFemfbe8wZPQmlrXZ+PWxGacIDeuIObj
fGAok5Z0ND74PWp4CA51G/yXmjtOnMoW6duuoNzLLtYSdeCUAFeLQY7arw+j8fkmBN5+VzFkFzN9
l1Fh62MXo1HPWriXd+Y4e9j3uefoT+s4kwHLKno6zpHQJJP7cRw4IJS+K5ul9WURNtL+maTFuVVS
UVI/6l/l4tvBdRP6EZCzSZCblJGbyPSZWODnWaj4AXHUgNdcA8jR0MEQwnm+vTmjfEqgMyolQ157
4T2vwzzG1b7AfJqI4K1S8HjXHVJ0Zuxp0WvkOIqMKwS5mhDcG+MVYt8dx4WNmoBpvDgoUrrFlb2I
fBzG8yWWf3p8ir+qsgeUY02iAlzvCZstJcF8QOO1s7mfDWO72I8M5arRCgPbvDzSw9Q7x+3Hzpla
7tMk513iba2ABDoRGgABsXGKWkM71djNcw56az5stRGWKTTh9HpZXfwtU7jy/ENl6K5WnYvLWB8F
EwYGtzAeJj8QSNnSlijLeYZOCCK7/2x606Cj3ltdXbRf8fFtbPMoLAYAChU7NpR+FnFNZImjgm2X
kGrouHoIUz05tczUpWOTRGF7gCT1ZzLYJgH0HBcTxrIth/oq5C7zqvbcYaIeTOINIAafsPRPg9V4
U0ACDVLlEC/54CE9tH0dB3TEdBW6lfGIIN2qSxWhcYhkWrcjybZxaDwfGlg4Uzf91ceq4Dr4PogN
gNDe0kbAZVwH7bNkxq3lapI7+9WjF86nZZU38BhdxUyP7hspS0NFoU7WBzL+1X9cPF/O87m/0s4v
KqeVP7fxh0prwB9wr1YaXE44hMfgjd0hwsgwA/3yxNgpZKaSN3A7GkR6u+tfVRAcSeSEKmXTchek
EpUkAq7IUKO0/c+QS7GYuMLfZp4UWtVonER9jRFEMF7HovaVHhn/SqZ0raLgVBi3drtmWYBNBuj8
j/fHBdbyJQJMHKjPPEc8kl+or839rucf1Tk9tyJc6cco+z1Px2BiKrGXa8VBkIpw11kMjPCcUMnp
wMfTY0YpHX9L6Kuv0YUa90UKPL5JoGJA0p0UJzI4PLEgZ7qy/+5+wTq4bi6lTYIa+E5IuK0iALWV
U4BUtyurPCAKiJQfVyVS9iwzh53mtCYlrNhrcz2TN6D32sModn1rgJDURqjY1ZI5bRe97as2BmKW
viI2StfOYUQcP7Q8BC2x/Q7Of/MllRshs7YyweoRini4hH+NK4/uahcAOqn39Xb6w3rdiGtvLZ7u
x6vYVLwfkmz5YJ6X19esoNtpLFX51g/mPvsQf4KG1mvoiVEuErrG3bPVHIzMERdU4utWfsrZrN+u
pPDnTWqnma7jsXiVfEqI9wYSQk/ITtbbpsSWYOAjm7w9NzO1Pd+f3Zc7eVSmEdjdpGSBv35Y4p8s
FDhNDF//seR0pAz91NuNpD5ZuGJfO1y241rFMXP/1bC1oLF91YM7LayXfAXlgMXVSOMt3J4Tu96H
mP4wbs75Dm+8sPLXhMQtZGDWfYsZy3PvAOaEYk64hGPpAoY6BysdHUs6KwTHrc1llTmuev+WN+QX
evjPMAULpT0sWa/yMxjAprTeptkxBsNuazYrOFugVJ1soGBCdXuYdga8jg9PxpL82mx6gM7yMLlr
BRNUfOlfh6Rd0sTLzGTk4iMIWF2BMwBC2j5ODgrhZ8IVDtS58XluuElsOltiaJyrTkrLpe17ceOI
o8oGSL/Ew8jr4wlU7UWHWkpI4tMetkmm55f3uIkCrjgJTqeOdpDwMAndu7hCP9veaJOqgTrF6ROq
4w2i+h7UDz75Y4Cf1IQ4VaekWEOM79IqxXBZ5OGlbJKNubykswymvKhRk/Gh8Wc04rI/6mpvNpst
+IuwuS5qMqqQD5282paJQujgyR/38Gcf8cAhksCv0YeLQaqapEiMbiDPzbq+QUk1yrKyprg+8TvW
Mn1wxzCJOCMOLWwQi08Cd16+Q+8FbwLgWXeuq20W2ez89H46v8QmIrvGZHDQQJupqGDbKL5RYuH+
03C9jTSXa5m80XT1BwMgddK2rVXJqf32vskoUXpy9tiPUix7vHhK3dzhFqmmbHjIvTG8wZyxnoym
AIR4FUOg39FDTtYqJva/2ktnvZlC7XtA8ue2exDmjyUzSfH/1prjA/Z2UQj7DbdjPm+sAefHctZu
ss73QexAx0JwEZbqj4GK/iwl9ZmOmFBZDs8zJ7j5jGotitWzmISpuGI8Sp5+D+SXcHIQMQmGPy8q
vU/L+8QlouCJrMt3y4vQMviRMV4FNlcPE+Obud9zLmuEiH/EegfgzTQNcC7lzLJqiPL9CKXcOczS
weq1jDsK4gCQfosdjmiJtuowcdhroQXmBQBKJRrS2POgdZQEHjqKSARdpkSC67ek7rXPUL2AhddO
brVSKNy6Rp6+Xcpn08e5uOeNki4DD5wUta7z30w0hH2hcMiq8/gt7UyCPDPN57saetpWfxkbquiy
JVJlYV4+kBaoUH5QkTtrdtsKRWZ6KaAzyxbS07FJsE1c+YP6q+52ZaBMpfBbGJ0ok7VGE4uNDJ+v
4xnS6wZkXUY9ovD1V8v+UqYMvRN2xVCtwSLqyJDcjZ3dhh+hqyaQ2anGsDUmMvdhFynkpdHPF05f
RjIRnRT47V2rs/vKh69sDSItVACNRk2+6AE8oBQYqnSRYfGHn7hrjy+dHGOb4iaxi9rhamgQcFxP
FkxefVl2M2GvP5IWxzz455tSqbAJ7NEzpPFLYqKfeqU7Ko8w0ZVT41ontOQbiPyrL5kpwbbaSLti
k/656B+mMRjlz5ClsWbZhGKlgsc1hoHI9TibJttr6MldBQtykIVT7eSUfDVyPlyqb48Lz94Z7IdV
L7bQ9YKR1yw6OOiJvcXJkgsa4W+uifq2NRC3n3WJLfcfn5SxA4RPgC1PQRlQil4bwzfnDZASI0F6
Kkwg4zcqNVWdOljyaAJ6rHhYs05V0PpYbkBjiDjgilD+f3t0o2Vvnw0X7MLZQy0sXX8Sl8THbhiO
Yczb+lkA/n36qU4Lh6+f/fm9ZfZNfiFaJlp4cVUExUySyfRtRJzMsp/0ccuPP4gbSnz0OJpJo824
bkCrzTGr3Jx7JhlnTWDTQp8wxB1kyN5NexDQmHzN9vUXuRvHJEBNp51dmTrbV1XHum6bdDCMh1Ko
U8EdoyFyRKn3dKEnS29TFbEtQdSr82VJ1mmwJCHsUTTHn7Lsg8DpIV2F3NtA1qk5+K0fmmwe3BxO
8zwCgVCDa+94uabZtNfqZACF0xUQmR9zeHLK5vgJa2aq2jY2Cr/P8WwdXgMOMRgGHh9VlfB0G1+b
la2gr3tEZuo/o2y7A8j6GlifXeTMjA866NUIS/gZ/v9EzjTbYs1ZHf3OHqfzsQmpC5u12ewYuyhv
NSoEsghjGsgdBmrPiKlJdeBCV0UuZOTPA75SYs0s9UqYwIfPR2E5vs3RJS0BE6C+Hef/8l46ql/l
gQ+d5k6zNbfwDnep5VX8f9NjPe+nAhPljOepT2NpIw4ymf4kpcS7Qffy/syd5D7SNq8UzFOQENLW
Gz4520e8JsWLBYoRLPWkUEA1NQ6W4w0SZx2qy9iXA+VzMRBSIvexH6oUc4nNRTCOVhNW7sVxQ2oP
a5ZlEadWI2wZ4MugRonWGLGgDdo5QHlweaiy3BF/ypoqSWU/7cB66da2qyC9UrOLT8jvyRdX7/Fn
aSkHKqzT+QlnYoRrGX84+DvHEw7WSXzp5Qf5a+nDrXL2UngNeEo8L7esTmJIhEbZqzLdUpWPeva3
w8Kgf5HtFSrGcoIFamFAvPL2oPbWei0hnit8vLZIQDct6Z5DEZAfVk0XJAbPJpAI2MShst8HjhcM
Gav34rGNM4a5GRdNUULL1qouOKoJG0MoreOXixNqFWexVmtYM1hrHGzkdKjvyw47I9t26g530coS
7/pVZaFJhEexOybddWXFuHx5SSj1bC+IU5v9qGTCGxWpNu4R1q/t9TORH5TNxCo8R+iPu836YMJa
stiZ3n19wt+Cw7yg+br5Y4/AjXawCiC0kWWCt5ZWwxvAv93rjNQi8BIlC3RP/EEoYukgtNdL4Aio
QBqZEb8T/Lz04QrzvinYsHRRGgduHn1A9DISgw49qv3Adp3R1oTjSEdgDSId2cmffDctOy9QVT3p
GBfx6xJs9vD8exAtvm3HgHfW7QlbuuVI3CybQkjIoXsddJU7VpsleDhIzbH4B+vrPEmkJFobesux
Alt71VZWxFRIWFIMsz1QLK4DbItcA7KezWIW3d6BlqJQX5e0+ISdpkMoFgO81pcAG4A6XHHxQy7r
Ogf9SCBXl6ufmhXhWxd/RPy/kfV11KvKIpXahIz+bwuINIRH57POEaSKqShYyj6PB16nauUCK0bD
WCKgs9DaGrGsog+6Am9SYD8GHAiP2/BgQR6mnsDGDsUBxhr1/Jnh1DRiXmnymkG0RSC2tFXQsMdw
h9DAJd5rqbJrMt8n9IVvzlKV0htJP0Sp7rmqq9dLJrYyTlltoKTKWogrc31OZFyN8tYh1M2mTegh
Borrx01lfiA2ICB7Tje7YspzB3FfdX3Bo7TS/SvBy0+Gu59A2ylQA2W3qfu1GtNGm6hgYesKpezb
ptnGMwp5CVO7++cL/uLL7rFese3vqSMUvmssb/6IIm2Olhxyy0LmWsUpRFS8+IGVyB5JslQGQHy8
qBdm8F43/N12wFbo/Pb+dv37e5RREOqKvAKOtBOFHSscUEl7bJKoU7Dsth+ep1wpA13D2hkIscXe
MLs1tAgzhgTp3knrcUsma4/7XtCWRpz0V+smf9bsSTsDsLbfWTWNKUCfWQHrKizSmEUPyYHGRSHJ
4ZFAZqd235wL3UStk8m6yFBX0U+qEf1gc85FynP/NUqV+AVGzAqsHpc6wHLS70IRV4prR0ULScTw
HG40qMnyY0St03BAZTtyH/Dj8iljG3U2bop98RddktGH9xHXhr8X4FNuglXrMKLKWoQhj8zU3fMA
rz8QJp4pNeUbxyuxa8Xa1ZPYyVtDN6jszhgm3Vdo8Zjs71Gh0XvzahmqMWjH6czQtB5eohFFL0p5
5f9DCpb4cnjhyv9FMBHelz6nCG7WiW3QP0dd6EFXlZkiFlztJQqruaJE2BB/puGrX7eajBqDHXYK
uf5ft9ggPmGAEiRhFDMZ18babQ4aJmghxD19hK8KppMcLkqLVRtZ5fCUqGV+ciJuUS9AvhRyijFr
3rWJ6VNS1M9J9fHDtrBvdIhVp+bnXGq8kRlYfKcySUUY8+GHDa36Jp27acEeL773WTGWyyoMwpnb
q7SqGdU+dxwI2uAJvIxeyBVg8R5+9EZ1zVIbg3YYysG7CGi/4MjZ6T0k/3/J8Q5vQOrP8yzYOE5o
L3iRa//OyJl3739rKovo6+9IcH9Erc6gKJqUiqo8zfBaoNSFlNLe8G/Czky0oQvUsyyo+7fkE/O4
4pbRpIeYX6+lJQ/qSWydq1QZ9b/PMtpvQ3GBRZIiWrgpU5xD81miBfT/qx9RL8kR1a9iXIzrD9Fn
PhQsJU7tpIV+L4o5kBT2CGljJ246jbEd5cpH6a0I9Ov2Hw7nJk0OBgCcyCZAI7Cnu3YnbLN6N/xn
i8T/OHyL/sK3f1fvt126bXWesRBlShxwGB3GZZJ+ynauOir+ZiDAdFR/+a41aPZtNAgk289Qo0YU
cHrBkysSp/ufkHVYhGcvO4nBRgc4LI1iguvNd1iAxzrP5319+pCOmpsVrCisYGc932bmi5rduzjD
TH11DewMfR5XwW+a/1MdNj12FqEMKdMAHuU1bXaWcGurjmMssbBx/ksgCuwhK3CBLBSPU0fSXibd
NDbCzkhcUm0NTEW9/YXz6mufnFnT/PHn0oOwNN64OMr0zIX6zA7qLKgciOTqcqYGD6woUefslAFL
FXBr8oQ9UrgMIiel0jJesfNDfosKaWcT5suFQjVUIwQ3yWOtK0p0bF2Y+2msIjL3l0M/A5kHhWh0
sAJV4cAIF+h7qgOmDzxi0mUCEjggvRWZ7CiNSTnl2w1xu3NtRgH42kj2X69h2sijD5BKIc2lJ9+I
4E9GoQSbY2CgL7DNuOeAm4VC1Wkp6Bl1/bFD5uUvpXnO/NiUqlAgs5GG7YndtW5NOV//62IQKCK8
HiTF/5fXgCq+YlG4mjyhF6chQhFJ+yWIXqO0Bso3LD1dQr0yrcPGAvHYfiDB8EWIS11N2SExAqYh
5RrlSu8GbyZ39REyTIkEiwZD7eahi3ui8tYLTrToUgodozCA88SHsP7dJQWBmAk5JqMaT+9pgOjT
zWdac/kCnewArWCRPcygOn4nCZZzLWeJpGLXRiuBu0VvzhsPYCVSH76twUGaHHUYrN20mgGMM/ds
OEBEAssvel4hFcWRNVQhPZKnT42bu0XLq9E4yuBSIpO3d+PwsURISUCSIFj1xfJ1NhPRFYSeziju
7nhlqz+X+p77qYEhGjFcz3XFA9em6v0i2DpuH6c3znSxjqDnVafpO0MMJCEGU2x5A6bva1SYjYtM
71R5adUL0IgeNCK8O8hqQxnkH5hNmomY21P8tMvMzHw26gbn4o+e8p5QOmzYCZs5Gqkc9f8TVG54
aUnibELtT+40OM0JMbUX0JFe7nXoWKJBk/k5e7uK6T5yFzQvcaDREKdo0/V+o/p3kknZ2rJB0hTT
DhpfTgGyntvaXwoiKgMsy7m3FtVIETa+Uq+o+3x1ioP9pvrrdOoaQiZzxrkXFIphT39Hqj7FVwto
6U6w/cEv8tuyFQ4lvZASoYmX6NUy8zuPprdyQ+OICdY/XPMianwsuYUcfle3XlmSRCHPqskSqS41
AX6pLCtsVNQcdvAsoAZf0P8Knhf1/emdO8BSaxKcteBPbYzC5+WsLYtDmay6jVzYj8gNOkU7QqxP
6+ENirVISSTEusUakeRjNVTf1d06PWb+qXxTHDGZezorl8sgUi1AhesgGpAXUMofV0v/+msDYR2O
l4zq8xDxrxJaIhsxbD4B29ZquzlkYhtbB6j0ljaEGL1lq11ggaWfRTRoUqcrIr2w1vu7CeRqZ4eM
iFASlEQYGEqa60uzhneZg/RhNseKvGqka6ePF6Ux0z9Wi3Uf6QjpXCXuw3S4dAQwE1ZUrM4XaNyt
YzLZNfsfOWPrz3NaM7f60KJEOsYeNDAg34WUPxY+/bhInCdVs1+TCP3tRS1bGgiV/g7W2kv/iqHS
1SRhgEdDqgK/6y5s42FHYa/Uec7N+nxQMH2uCyeNoOejCzLR0DnKkbsms7WNJ99NcTe60Bk2HySY
qLuYGxJngv6kKYewo0+gTpe4cTiBoHNULHvD3fYewb3iANyZ5JGoNeA7t/jPJ+zxI/M7wT8kUXwi
h5rHbFuClO+fGD7macH98lx8Ra7IM841WUhiOBzmIMNu+h+HW6JrOOTaZbmpN6Qyf1gX7UHcFzsa
7eEEQ/uSYK5cuxCTVV4nEuQNFA7+Fzk5gZppJu4Ps0gg6tBAYPB9parOeQbFuaCIEDbXKAYzU/YH
eYdSGEncQO5hsHeMCaPYi0/yLYo8pB0ZvEeifn/WKBa247a6o9wyta7VWG8CBK+1ES/PZ2Hbh3pt
lLxJEFUzIEv3bE83A41X/xKojuxLOuHDewdI+q8pVVh1WlHvxJkwq48OdfAQrsrZ9fxr02dmE/Zz
eM7Mg5aLkj08JqRVCX4ombrKS42l75Ud54bOGKgyWK5SbFIPbn0KCn0IjlcZNerjLt8Q0OfXvFxO
6HKHiP1eNfHkf55zP5KoYKxlG2mpd8YrxYE0Sue67oenTQ07EgI0cTVMHFS3jnMODYb1dj10CqFm
fs0mYLDpUSK0bw4yu53q3kt8O2kn2L69ZV9yi8IVQ6AtVT2z+GVLxTmaGcYqg6cHYopBNrUWRGn+
uLtW4chBY/vIBoXXDmMq38k+nqGX6PARD2jmDeeS8q2pFC4rX7tXatL4TLweGt00j+frR/PfSl1W
epADpH+j2Vzqjz5xjIW7tKU946OauZFMO140ry27p6yibc+H9i3pqA9cG1TbH9BbHDjmifJI11ve
33VnDwAPr8GsdC9KC8L5obAGXTFXVttH4lOYinnJpE9L+A6wJjMKrDPHFLQDrdrLcpNdoa9FgTVX
5eoxJoi3rr7ESOIsPXLXV1Sp7tT2Y0lpeKQrJC3i4VhHHdCJ8HRE83EvFfJWvZrmyigCn1xbgDd4
di3Ilpy9Q5xk21pY4EGLIgHS0+r8G+5MoahqVngyHf0jKwC96d/5Z/qJyFeDYRHNiodyiSr+GECW
JQlE3X/CTpVhmNmOhR0z0rqxAfhpzazIa/kyTIfS8l+9IjhFL0s7T71qVAOgluXTHRiNXiIGuO+j
EFWQwF0q/LANC3MP0VgRGiW0oF9dLMOGdeb1DcA5WmAMlLq/HzlypRIEdww1uWwZdZfUSPbOF1vZ
wjN09OoGFrspLbyhgxQAxm2/n59b4cy019ImOKZBipceXPgDrAo9mmGE7YoEoF3Q1z4BuCd3HxSZ
O6SCvfsyZN7sOyPGerSjpCa1u0b6Oleah6eLtep8m1S0BJ87G++obTXQT2d33Jd3t+3pSV5z64PB
fJFF74mEqhTsHrY38GhwaQMyitbDk+HOViHYw1UTyEOXS+aDGp88T7MHDv1eh6pI5rQ3WrES9WWR
O1MPn0Q8XgznbLAaj2tNxjCPCiazeR+UVp45QMYh9a/d5gO3Gy4AGA7I9GThLb0ew1L9ro+f6TK7
rrA0ouDE81bR+O0UqZrmoaxdKWNzL9hN1rBT+K9t1EY7owHl3ttQE0GekAldO3SClfZ1ZrNOZBUr
hWWb+PHx1qkgFvUC0ZSWVKry++EMWzYuJon5O3xJKLwUdU4OPfXodFvYCMZkqm15B0ktNv4YEtH7
+J7VHaFugWV84aM9vtCQU4CHOFq3QWC2goCC6btHMXJ9EDHEAYPuW2jUjhFZT1CiJW2q3JXTYgV9
KdlGa5qHFEwDAYhW9RGeDKSx6ZLN+LWDVh7lfuT2O1VbctHvHlxQ1TZQDgO48Mr7K9PK+9Cfn3pB
jsoZkIP+7WA7h9MxTYd1hZCuAbwIX8ySJrGGXLiBXztCRyqg+8yTiSk88U3IoFl99bydlUFBdksw
jnx2cMu3xNdFHo7Sp5TbEIxKgeegvDWexlh3C56iBMQ3q70qSYERbu3yZnEdOpdIyXSKihNs5BBj
Y+1KvlYexTKa1sCilgRd9VEhAODKi1Uj/J5BSMwBEtdOFVN/wA/wPw+Qu8ZkE9Ku1+RUwDRkLsxh
5DN3fCxAjK4DIpi3Pd2V1ehhXPB80pm0v7l+NQzJOhAX/93ojq7Ryv+L+VrVLVZGsI4gZuSCNSGt
s8D+smmKHQLgl2vU0jdiV6DjQFmc7DNIKEnox7vvsUrlLAOAQ9QzhhjPbtPPiN8j+Vw+pZIj9+nj
k0T4Fe/f6cqvDBHbo7Pz3RQDSFJD7Brr7xYaXRXappOrVdyju8hzTxG6EFXb7QYRzWtpDTuaS8Wi
n60/RgBcn2lcOKlRxtnZS23mZqgyHz/x1GYCZBIL3J3JEyFLTzoxGjPBRyfpGI12uASMa7nMvXFO
XnLNQpNsR3zG5QmDrkc5a0/bZHUarD4xV5pfGAiqf1NrZz9wk/lJfy0aJTIxbBvzqu33CkfC7HLK
Lwo73L/8F6G9lKnSapvxqTt7xd44l0t9OCDM6A6teN7vCuN5KjFZsXAxlScLsRp7kxLyo/4UKrfa
ZhQEYtTwiEB7XEcFrqt/hkHFCvDimzGDjfReOGt3+e04f2H5+wmR+Ghaop/xPdjdjG/1tJoXDM6K
jEBIWDyMR7OLKozyyG3xrIpXMszraAhrFVgS6kZrz3RbOGG3EP3V9DVQqMNsSnyGhghRsduxPqrY
jj9jddf5s6JvNYXgoikK1iEghnuQfjyUyoSWgn8MrQqfnQqAevj5SaJDhtaIcRCOQ/eMXg4mtwq8
2w/IaBo0l48w3g7E+TbmwR0z0EtabJDxPLgVhzp9uMddd42ZHtwZvAYFXcrT44TjG74VLXh3bktk
+RK/XJAOmF+GkqqYjOBZigpkL3shl1uvQFswfsG0sg+SH5VonjGsb9olyaPOY3GBXB1TyFEkw7Dt
+JSS1eb7LpGHb5HaDDgczSuJH9W63Fldi0r9HqOOLeeP+qNpcVcQOsxFQS55c7jcrEy2HocGICXN
si8It01CRLE3jTtwb/kinaxPY58AiBJ5Qj29LvR7j9JWJ/LfDCVK0/Fe5Lmi5slcl8CijwRaXAFJ
hpV67uPz7L4tWZjVftgGysfIy30UuevkV9rcgZZSFn7mwAAZyPTuxCzhCkpTamjj/IJxAh0XRqBU
UqOsWu6Z3aPWY2wcdjDJ1dbsTo7274+XBPxsN8bh6DS8Sd4fdmlwMmkUpB2iJQWLVNMPPSL8bqBH
Urh4m0xL4ZbjbdUl9Y0/Pqx6ovMJyel4+cAX5VWWbiXaj0tBJaYCyuTYv6a8ziYcCAR22lyg6A0h
IWGufKFJLAmPiUWz8/FFUegQJSzhcTlvAWUgWcj3UCFOgwjZsp2lA6tT38Ta72xrI5pfgRBekKjf
INrTOvE6VbdYVB1kPZtEkq0G/AomjFWNdxEpM6KZNSmGf0ZiRVG8WzZJoroASvtEAVJRkpT1mXf6
DS6T63JS2GkF8MlKi8ceFJSMbjkiy1Vgf2VtmYflGddLFJcKdb2ZgZgZ2yadIL2LsULqwYaMvaqx
NmnJPLJ1DaW8YbLWtQePV7XxBnKe0tYjHa4irmN+Qm5V8WP2iEJl5Ai+IMHRIXfxAqcRhTmvIZdu
mUV9wlOj8NjKi1pVYf0MDtL5l+7g8i4rNuv3dA3Nv7ZFEmHSwoYM4x6cpKTsY8s4kyBpt2PBehHo
B0yokcBo/QT9+uuWAzleCAG2jFvhRK8ih/i7SZU7ALccT4OJ4oTZ/ZqZC09M7j50OxxydMvR37PU
m01P7m3BI53tbjme9cCjm7Ra/tVipyRYjgbyLqcn5DcgYskeafdZBALOmG0owMaBsDFk+yc3zqAy
GwmGR/FdOGMx7YyaknnP5+sJA2t8rK9c3rLMqzh5CEs1h9LHdH/XJwD9ZVNaX3eaoJLm+QhGcl9J
/jqNQiR+SEMj0ycJq3jTmV6PC1gfRT2wxebWPPXAlBb774iNhAoH6Kc6D/T9kvoLu7hItSvUAbET
5KqL9G7WF1Hq3Rx307iUdWLPP9pCgven7T6RQo0LJ5uiPj0GHuVQq4pZSPg+otA8oSREXBexHaU8
T+FPg7rxN6j8onMq/qOqtgKe9PeYIbAVJO53lsJkYeCjZa5HQVKpZUGGTjhEiRIKK26bbI05b5EI
7QvKsfoOov61GhTT96BTQp377wbZlfeWyxAjQVi5fMTToXI7nQaLYqtSR6v/T44RY2bFkQkt/4rF
uIU64xEG2yIVhYoZT1BwC4Vez3nMlRJaW8XzcneD89QNTqk3PusDl1dxJAtARwoPW7TMSVBo7Sog
rzbfLUD9LXIuCuG/K4GttT80yBBP8GWfCVQ4ivYQjrkc5kv/YOg/7yP9sx3MHXz2uIZVqY4KVr3l
l/M6J/DY463Qrs327y+SbWE8jIUADXe9fU5Eh5EinXq0RFEGxGPd3YFdnq860Hi0e+TqrbCV99Vo
F2J3dvD1X9vHxtabIGcIjhVQaF0qNouvKSMWr7z2bGLuHrRulFES3BvITfupIozZlmZiuaPc3Sug
7U+i/n6Cseez8CT0e8FNCJ6P3V2WmPPzpv2mQhupo2NO5FOe/Dfjt4UA804AbiMPocQwsVKt7ZBR
+1ZTsuwiZ2zII8D8AZTkK3WhO9mimFHrGH7AEHNqa5XflW0XKVK9mFhsR6cyME40i7UXPmUeHThA
5qGm9j5+RqdHfd8veCW6F+ZIBi43UUHCt0lHSzCtaq0lfhTzHTbL2HRBy8oX02HpNtpjd3FluVmX
sjbM6MouhetR2rPGfHYfXK9HmZKuI80oNFDCG8VYIb9l+iLEjYuShJA1/B813hfXOizUjIzZPe5w
tHOobtmrtpLwvIr1pX+3/cnuFfzv7SK3FEMYWH7VvmVk9G96JE97a1V4T5kOdpyacSLpmT01gtMP
hP+TsAAOEHdrtii6QWH84BvFdcxcfUU4DvejdDnvxHGVfDkKj/Wn31TxETB6aYaZUP88Tx6Vi4rY
AIOmky29mwujJLnk2ucWq5C0QrlVGX+TtRhN1HkdYGcdPuwUmcwZNlOOPgH1mdiKA1V8EFj2XK4u
Atid/9Q6mKh/BZfKSTq23V1uY4RyNazo0AltZhkVYTJliyI4/nodhdq+XAawlQtkZ8lls6CYl39r
zp8M8x5IbHuV4nNcdvp0rHiFubiuBQDMeaDtmHyHtK6pbFCYbeSR64XlkorLfUD6VQ3azh1gAc7B
gPhdY99UzQb+7HLIYiVqPHiMHsZ5hEpefAsb8pFdwPUk0yr8/z4htIE5X010+yd+jwhyBIyoz7bi
n0/hh/PhPX8HW1R1/1ry1GnU+rUeyu9QpcyWV3pcO/mVDay+xrjdH7RFKiUkT0g9lLzMsDKzpnzL
ryYoBpraJf6Al5BTTF8I+jlmiy7GBI5+XpABtn/UANzWvFfb3TB9cf8d18DpDxmWz0PUS1FhuQ21
El2XCrp44BaFkuknICTJ/m2LY8dX6hhmNAZANTztKffjJ2P99w03gi4pxb5UBWsTBlgMLK9AnnVW
bMEKc5/0aDx8WA0f08eSGO1fU88SbM1CAn6d+7PgiG7I8cKdYGDsIUbxTjukJtXkFGquqMd2A2U8
x4z+lwJuFbW7svXTnOQwykV0Dv8R5pVVoX5s+wu9YzEUGDvaQa3/bqIfikwEM4K8/Qlgh/sPGzlf
Oew+gHoT4F4YdTtY+VplT5tl01cqvPuBGzLOnieq72p7ijHKeQGQLt/odoIsRItjGeHjqGH3A5XI
skcX5W3nYQRufxHbDYL+OP30VSEQSJg5kHcyXE0zZsmqAuGzXMIrUaKreydbJM7RfFgc9vh8bPGt
z0b8/LzYc3HuCEBnbt/VUJxXvOLFkCmzPxBn9nHa74T1h9R+Nt+80GPIt9g68gcxRAqGqFiyIByv
dIlxgmbPNFGwqsDoXyAUwLPHnwG1111OEcBz9eZS0rZFt7TnbANUDh/MUCpM1vDQedQLf1yTve9g
c3weprp2qJ7vX7we7mo3Lau7Rtr5c9TdxVoBdUWIspv3ZOZ/ajOebWnOI3MrCG5NhFh3WNRTJMil
POCGsGeJe+xe2ZAV5UsrT878rW1gEx4z3JjMrgFxkS6UavdxTmDfjHY1YTUt7IMinxcshKk4jsyd
r6mWgrk8SFuueOSOZ11S10744cdTZMF28u2nAw0Jh5uj66Mu8mWcz1k4Zert/fqyCp7H5Q/tNdtS
aUp9PbD0+mkzOKe29qkxDLDxdk5Lw5eKcRikS9/1qbU2P7pFQBOKA1+56YseVSLd95D5X2nUC4oD
GLxjsfFVm3o5mO5kPJHQ6wA/uRzNXKG/rC65YznYwvBfbO1pflBFHqpNL3p2CEJ5iYZvYZyDeYKK
pS3pfZjkWrSlSMTkbWLNA/A4v3TgM6fzjESbnox1r8I0TNJuEGS1vdp+ufgY9Qk+boi2ruTFM7Ct
AFQYmCdSrJPsNavHWIzq0EfCAP/IQMKGpn2Vcm77KHY6qtXEVpclGfizVmc4I8aCRCvJDo+ax6GH
yYL8S0o3NJxTBESSGtKwopIt7B/Sj705NPllpKfwx945+2Fk41IiDX+k1xjQH6QMgfVs/DIX6P1Q
smDnW0zn9SmQ6Cwhldvy60gEhLqNG8ibodY3MMp2AJSYJTYjl5iNu8vTOH0GKo4M7ueFi8LdUgrw
VEYMOzKmBOZbONb6TQ2NjWt0jvp6bYAmjghWXzeZ1r5uy6RFIfbF6UiYX4rnTvprpWliJZTSFTgU
3l5QJZxzAArqvNh1zhk4mQT5HGg432ghBJed/N86nvFeiU32Xaf56tOcG/HFCn1EnYiNLSofoFE6
6jdBF9i7z+yPgJMhhWuB81awCnodOuKc4Vq9kVNJeRpdyt+k2UZ/qQkYbXk9a4tjhGi89M45Wf8A
D1MgcjG2srrJM5K1vP7PbwMpOMwTowRPxB2m/xF3ZAAJ6BaggL3g87D3WXkqmkvlQDWNY05fy758
7en9HhT6di1siljAHuTzBFw3PxKW4zjeH2ujlnf2TE2rEbyj/fCHugBnMQtZSbM5qUce/jLGJIiI
Qol1OT7LxnntRAOAGdZMyliEv6qhjbtxcRR87Avhhq9aL0U7p1OyfzLirubBhNCDks1sksQOQymj
pLDkGoXkDk6MDFKtV+YUY47Adk9MNaUFw69dzDZU2u+ez4BPtnGFPAMiFsqDsebnTsGXfnAm2aCn
blt7xij4J5Z5gsCTwihpZQoQyIwLjMHwUHKHbKDve51Gr4KTAc46IQDnz/A8XTynceg2vQuzp4/D
NgV/PqDDN2RhAUjNPr/JFcEM9wzj4lR2ewznSZryoaHDmjOwkTXhoQzehbewEz5/jqKeqVKDSL+i
p63e7Mq+m0uv1avwRe6+02cJbn8u0CG+5C+8WCvD3UHsJ6aqv5nQvuyNAE7js0M7eggNp7qLkxya
Vski2fPtbWffthVpa+sJ5KJIowFhOvFvIE2g9UOvMJ3+MFN+VUr7HBuf+1YeoWd/TbT2/CUiWN4T
ZukOAd1USYRIIYzMADtl5A/jXD1Jxq2dBVPA1chUU82yMgMDiRKpeYMK31zBsj18UqpTpe+UKh6c
n3RxYcdabckvbDoWR+3Yi4sPExUzPILKhxiQMErGnTuaIxZDnxWP3uwJcqrEHvOSAJyQJI1cjCEf
rR1bVwm4/QUxiJpe3kVd/Z9vBC/m5ZUAtGoE0yVUQ16liUNVZAKSO9sKMtxJ6buutN4Ya2/SPN7H
XzVn6BMKYUTvMG3ackylfWfttna0EzlmK8KysLEOdkHtx82AMokJfRC7iXmzqjLMCLrFsOm2M9TC
PYojbphibJAQi1RM0mYPBAoxb12EBXRyJeNvVrf/+BrbbTnsuVr3JTitGeXoP/Al0nhxkywHE2dR
FMMFH8shovZSNk4PlsJPJ39SecOH3JmcKUsEUQ6WTNNgxU/J5Q+DQJ95dLWG+ioAiLnHlrTQt4Pj
lEmR0rVwAyhrKefpQMVMMoaoSe4Su4CmPNuO7srI3PGSrhK6fcuaiXv29EAl+kcxfgcEMjhE0Auv
LWL8/tsh/K1NCZ7BmMNy
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
