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
