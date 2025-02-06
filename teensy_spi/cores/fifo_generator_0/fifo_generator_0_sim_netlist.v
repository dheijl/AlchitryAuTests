// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Feb  5 20:47:18 2025
// Host        : DannysLMDE running 64-bit LMDE 6 (faye)
// Command     : write_verilog -force -mode funcsim
//               /home/danny/alchitry/teensy_spi/cores/fifo_generator_0/fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module fifo_generator_0
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
  fifo_generator_0_fifo_generator_v13_2_10 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray
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
module fifo_generator_0_xpm_cdc_gray__2
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_generator_0_xpm_cdc_single
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
module fifo_generator_0_xpm_cdc_single__2
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
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_generator_0_xpm_cdc_sync_rst
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
module fifo_generator_0_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 112688)
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
