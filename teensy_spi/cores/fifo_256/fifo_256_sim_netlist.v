// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Feb  5 20:47:18 2025
// Host        : DannysLMDE running 64-bit LMDE 6 (faye)
// Command     : write_verilog -force -mode funcsim -rename_top fifo_256 -prefix
//               fifo_256_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module fifo_256
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
  fifo_256_fifo_generator_v13_2_10 U0
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
module fifo_256_xpm_cdc_gray
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
module fifo_256_xpm_cdc_gray__2
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
module fifo_256_xpm_cdc_single
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
module fifo_256_xpm_cdc_single__2
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
module fifo_256_xpm_cdc_sync_rst
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
module fifo_256_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 111472)
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
