// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Sat Feb  8 15:31:05 2025
// Host        : DannysLMDE running 64-bit LMDE 6 (faye)
// Command     : write_verilog -force -mode funcsim /home/danny/alchitry/teensy_spi/cores/fifo_256/fifo_256_sim_netlist.v
// Design      : fifo_256
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_256,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
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
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 108464)
`pragma protect data_block
TtUSGViVweYoOmDmnDMe+y3U0Q9f7+sl2Wej0qaGyf6mx0+YC7IzenGSF/KTN6fueKdgnkYJ2mW8
Shxy3gZ4wgIavdS95KJoXyfBTSyB5uTA2TJJWcBH+yIxdVcXuejXV1Lh9Uy8LEmMWBPGYops+1bm
d6dRPBXut6qFpetqP2j4oMXLg5klnnVOtOnzrP++XrRghrllVL9nYTt6OubSObpHk2WlyxyL5mz8
f25en9c0p1jaFEwhTxZUa2DwwURIICss3LxmebnhA9XOMPitZOp8GOhrEhuV+tWAQY64zVeQsKtS
m6QV7ZGxgfvFGSSmE6mP6vdER5HRFFG3qswUm9ntVKixwqyy8CbMnjOOCASVDi/qB7WWv/q9E6lf
NGuaoEMwhMpv8JDN93x5HyibAnE5nlochz9slSRMq4HFaJUT1lFn2tUTldhYjRHAlFDFic6IKx84
zGnCDjtGZc8eAEqr8SMgwiKcTmg3Bt89k8SxF/TMMVR69RWf6E1NZ31zIT+kiO6yl3Ag285f+tBg
oLnBHLxtnapBgJ1Lr5fQlqKLKkH/LkgWQF5W/0e/ud06xJSGbBwz95L0XokisKsbumwzPPJqFVOn
kEAtuLdPZp00MjuL6/qQvQ+3xDvYnw60MTG9tV+OGxtAfd20Lmi+ltE24o0iGtcZGcHlNqFni9+Q
eJcImDX0OK2sAugOD60hY+0qbUUMLqrqAZmj13sGc6b/uPn5FJBIgFr3a3dgIYQP9OcserfXGgZ3
00H24Fiw7c7ODsFEPDKgcMh06bIcGtxNeDQBLCLOKhHEWbjDDG0dMq6WQcNXk6PtcetD5kd8e4Ul
FLCm53O/tf1G5TfFiP533SAx6jCWdpjxfdp/9rusv11sqlIaAnEHq8EeOVJC4q6wBrsgjhrH1kQN
kh40KwzwxKT98TZlQzLbWovoog5qFIeDPMcDzc/ezjqdltED4kwF9hS2x+uOEqfiZb/MuZTXuOTX
8tqNhH7RHB+moUA6X3fEXmVWdQTwdRO8TO3b3QUXr1ibpG5fqmLuotrh4FgbES+D/5DbqaxApf7t
MGPJoLKHrwrg4R4DuGL+9lhm8c7F1vUBSa9cIdBJ7rrcTCrmWJbqEpqpadwcztZyzj04TikbSg5I
SeUOh85grqPwC2SDi0Dgi+3ADtvm2mkT+UlGWn4i4LMGaxI9X6fuRr5tVHvyUnvC5+AexdNfUTcd
TLqQeA5QdFw92iFz1lFYybVhfrYyIlKJM0WCdKUuPS6ice5ZGuy7Xa0CTuCLxrr8pTVDz3DHX0pk
3/RZ9Jrpxw7CWPXgVHg7htl8sJstiylx5Qrd8faKIxfkaJIkw/PRQFr75eBdjW4yeg8UtOtYEQ2k
Eca4nx1unDBTvbxbA3R0JJ+J9atV5thQ47OaTeJ5xGupcLtbxGS8akP4YPoBw2TYSkaGeqvJSRoF
rAWcKitKwKTRnW2jbgRifQ+RbzFsdloMG9WKJclZ1HxH5vvJYoLTPkWiMEjpQ0Ys5t9NnQ25V4sY
/cxqSI3wisR4p7KXrBZIr4KvVRWMjkXD0b903tz3EX5QfHwEsbDHzDEj05AGUYaKSkl31JHE8APo
3bVjuTdX5eG0mQYl6fiBpWC9KR/bVidan9wH1Ce6Tw5w49TPLn2ekbey1CpJe1XIuKbGfei1+e2b
HvlSRUg45HIvOih2ttV25MWDV+4jonGHgfvytwgipcAcNNE9JazVlxUmEoPao02ciLAVNr2xbskz
Buhmc8rgWGbllHvmp8YH6ER6OWKWIdeZRYgbq6jy9E7N9S2OTyfoh29fy9maRuP/tUJ4FrbMFgSX
P/8dhTk9sXxPkGLjNRLh90CXuDH9Pspo5zvw2V7z/pgBS70BpFzLKmuB0cYhhoi5pT2eQX4ew7DQ
m0CbuKOLn05IvuDcD7ELN42i2hhTVJeFxYzT/oIihlecpaIuh0Zh9SzSvWL8kI+HHfeB38t+dkEU
0PG+Xddn6fZz5mDRlCUNmQdLcEzx8Z1qZAOjK3X7JSrYsHi2I9A7dPSTunrQ3FdKx8nU8t8ppWsw
vnxPzXJBTXl+9SqUd9FvHXQSIG6g06p+f5uWLLQ3dqlRCpgpbatqRx07VNrQRfdxsbfewISjJDs3
kFdr2Wnye6/wsn3W2mhTLVCDe/OB6hQz0vKiX31wbqTsOa3caOd7m44fLBTzqxlQkGTQaB58XRlQ
5ETv4fAsYASYfpMUC68jArcCt2TD9e3SjziQayLlPkRKmyXL7XrNL+eqFTdimo3MondnGDd+d9we
1C5V3DlDAURsyxYrFpAdlY2y9WH8ndhcDcPJAjihNMLybqPY2fLcjYydH5qt+OEaeRTar6iG/GlV
aOojES8HDhQXbne0tko9UWgBB4g5nmaE0lTPHoIwqaoG56jouGSJ/Lmj1VFrpqsqOc2ULYOG3Dyx
qa2d3O/J+S/UqZpRDx4K5cEDXSnulW/NWHjiwL5ZiqQ+sROI0UpkRkQDrWXB8Wv9oET7VDMrnz3W
Erw87WWj0RLU39OMsgYgO63v04s2696KAJirv9HjxUcifTxrMRWlgTSzjTRw8SRDAO0EweW6xjrr
dp0MBsBwPY5nv+QeE/1t0rMv2a8qD+ztuA07J7jAOx8z1cpye+aN0trQ4zo5nWJAVJBF+oB1BptM
6Um3bzl7XTBsoUsVim+yWg2YqLXEAMA6MsQ7IcDyIqJSQvkoafa39RZ1c1LsL9nMshmYh4D2BvZQ
Clmll3aKU/pUstDT/iPAgSnInzbTjplwU++u6TT3w7+Nz00FyC4W6+1rAF91QZRGZIFy3At1IHQY
xvtcdhSMyE5exuB6eQFxvmvJPVCsJAh/rBzR8PA8NYz+xA7wkg0b8TsAgKvTg9SFTUpIdjaQpToo
uLnSVGWhsQ4vLW3wzHNVY9CbHfdt4inJmDUfYMBEzl1k1ER56wbJ/jAVrxBO7+E9nKkYZzujb1ix
ugK3B/jQlWXO5+35kYjybX67LwNIhnRI+H+dPn7gRVz8G32xtEtE4w0mu1X0nI03OQzYG0jJF51w
+LNvDm34P9vLHRePL0tUsWGHLkBvl6SGU3TVoNlapx277RObZcNSlYaco8WyhMHcMHpy30xT98eB
xOCCXMv91i4W6snWrscG1XuwKbaRkzzDKfji43yuLWXsKvR9q1B1dBjmCSNygs1UQQb01rFz6I56
hNF3HUUlvzrK2xz7OnbEM/sH++KxYkG8hfYfmuwq8Bz8fbzoB6dGH+NzjtwA+tGfe5Mc43l95lf4
ryLsqt2NX9Ii4ff8bfRSnl3b3qm/+P6idDrdDSACwm+nseTJ0RLXj15/tQlotkh9VyRJaNdsV13B
KCXg++9kBOYan7Wf+YrYDqz3dVnkkBRsiXnq7AreMXQrYod5UkyjYgSKL4jnE1Vi4/Y/xyAyklh/
FFtyKLO4JEoP9g0k80Cjsvki6xgpf4xePbuD+N8l14Bp1uqA5RiaWv6yS/3J6Jxj9VnLNcgUwxX0
xT4hoMwVpxP/JJJUECY7gt/e3C+4pluLZtmYRT6mdbnylQJXHk5+ZdvvEJp6zpbtNIGm3pj5C7Fx
Hd/YX5n034ioNFVVeofGEcf+YHDxVkKI3+Q+z4coPFQyqnd4DnXCmg5JJ6kQ+TiutxqlzPymKN67
KG4OEM+hd/PweCYv/QNjnhyubQmVKwGQHsShCMOG6m+bXSgb3yiSfYvc1AtEsyhJrTCH05gWS32S
JRk1yNaoGs6/OYqBiewJJT6tsTOjIlOiA19EiTSpQjw4HXIzz7NwsAGRW+wz/mpNhXvWqaKB9C3i
rzY1MNW+Gxt42GnljAX2ogknYQzvSBpxnbnpQj1r80no/iPYRaiGpC7iL7Cxsq0rArL73iHxTLjX
jbuIMse0nKb0TMbXCs+3ALPcX/Y4aLxAYLF92tc1yZ4ixeAzn1LCwcND0NQaSHNe0wqjvj2YJkme
KLf9lp41CePvJ6lya4lBQG/+qw00uE2k6NlHlYY3Wme/QwzByI2QegzqeqyMNenntg+dMaiSyTSx
d5PdJXUKJ5Ku1/IrbRKjSvAZv0nKZ/6vqZYAnUztHB6qKNsfuVw/zc0uPyu3pO2+1I+to98ZlSWl
AiRLXcN1Mev3xh2kkOtEnfyXzpHchY4XAUylwGPePGkTVFSO/Sx/6WnavhlVut8zH51NXyGMmuJv
ROGITqp1LlCwxW//DHR8gojROR086kbvGC//TpM0mZQMto6J7xaN5XNyZ80oWQhUx9MdJRuj/udY
sX3zzA3lehPFz2Ijsvh9DFI1ZqTcOnwh7B+A7OJPjRufJuPrAovf2TPc9jUXvBJssxhsYAmeH7P3
SOGh2lgFsMO36zQWaGRUA7jftC7fSQo3B+BLap2VBEKkCnee4QjXeNRAbg+z/0p2K1JcPmh8M0p5
K6niqErImcOFbKcpumSXU53jwj/k6/EDYrl0l6ajKWskS1olfYib4V/2J0kC7nwLmAj+1y0w2tRd
vjOM0Hhmhr148Xi08FfDCNjGY1ldyF8RgCgLubxO9LGLmeX949DZ1NabgUfYbP4cVLbZ0UsUgENK
iajzfk4e00VrsJ206J1jJluZ3+WxXrJLUYQFaIe6zALEmFkKqDKyn93x7y6tWCITCd9JyXrJ7+An
oCkqzlFeigBMXgvSwY64hzYYTmJnp6FeUY8d2d9x0RFGdFYFYl/jKVcTfRd3CCwMFzUSNoZh1R29
tuY3bP3NjrBHIs2bTZdRK62b2FZLb9mM45D6v1tlrX2dLrwzm8YHh2NofWrnh8Gf+M/1f+X+Z7pb
7UL5rE/Q7D5fv9cdvvphiQ2e1UgHy4ybKdfKi2xnGQrPHov1UGb1O7BXdVLepL5RxDIHMAUorWhj
7XE+BHI3gugUcwHzip22YP9z3Y/y1eNR9FElznbXgZSIefrcRkBkEaqJ51DwjVMSCJFM8RQbFI7U
GXm7+tEbrmQTZ2XrzA7F2sUlHRG7QvdlQqnKlemzg9OOtlg65fbbEi7h/+heOY5DkTqXjN/zdhyr
pMKbvT5e34DIjwrnFJuye223cnqGqiRjPk4wPFHy+0cQHnGVj0HKxrC0hByZW1ZAjkeIS4BU5mK0
nt+rzZeaJnw9uRZeHm0FifiojPyHf4R2ezB8U2CE9viu8KrMSpC3LkKrp57+paUHRBcr30hiEQ6B
ghSxctfSjZfUPjDwNVxt35NxmK6t9jzrgXZMXLGAK9TWWVhjZCvrEa8PTByyPVF9GZZ9Tr7ln/KI
zXV/SjGvuQ8jcyCEzDzhHwJSQ5Ow2lrt8LN27BmgQl7hNoTAv06PW3dYaUo685qpLazQqcJ9Vk08
XwzogRnH+gvGjPFOywdYswfESg4i7Lf70AZ1G8l+29GG7GOuXizqG6ICS4E624bJouy9f3TUTJ6t
GRKJJtO36OU+wno+1OkR4UlWPTGFWlq3Tnph3oQwZXt6EXZ1UMuHxYuoTPlSBy1jzD7kOfhfPzxm
bA2rN9l9w2fClz3/qcxtjdw70M5wW3vgGEtbbRvH53ffUbUNauPS7+PSPvQXOmRq3kVUuQ0+qnpe
N/mYCCNM9ewZdSLRXdof0OHDt1tKQFYgp6ZYMMo0SDEboLzcwiOgijDyMr2byHFG8KwKGNR2I/+0
F71nfue0zuqOK5Sjn61GOlyoDE2grHBNK5KqIWTHB04sfNwHdNK/vNnYBxKyL4FiPMdelu83TDEF
V0ayhAeW8xYgGyN4hlDO0QHrjF26/cTMWucpLbTBekaSiTMzdMclJKW5vU8JOJ9xVw/c6uNcY3cO
cyuDxrSwkgbkOZC9qmXG4e3AGBsPrm78NZdiwZYQFYG9wBOp3pAhf3To4zL6c082Cp2GYv6FFOt8
g3bwbnPoDGCYpgsmjhshRqeJqGSv/oF1ff9Ut9gp1p8XS52XFN7d5dRII7ro+8CzaAVMI7xd6LFH
nvqvLeHwvyPwtzHHens/YUm+kTPq53KuO0yDCBxPTlBS8Cj7ZK3JWk+zBRREt/L2g3XnvMob2dGS
Uui5coQq4AM9CTT4roo4tMtp04yXa60n3ZXoKcTmgpRknNJjn/ExwdTbaAQKMkr47Zy3Cb8ayAta
tlAsYTtSzAtt8gXhLh7aSNcB0iKBsupZu+NIMytbvIZlubJVnUn9LrkqptHydZMGpwkwnY+KRJUf
MEvGqfswsaaj3U/t86iu6ncSpNMb5PYO7jxlDI5BwkM13/4O0/yraRibJZ03J/63u6/oed+sFZsc
rgObcFMfdDkcOYZBv/UYpffuN8gA+EBVaSIp6EF1uI44GznwtbKjgMTX5ieQErGRZPjBbfhzgXVX
mKMURiBML0VW3JvD7huHdp//6fyP8wFEqY3N46ZSwW1JLRUpQweMwXvYVKUBJsFj/Hc+hbmE+rP9
0KejCE70FRcSp4cTNEWO1huqhrpqYr0teZVUX8ohdLabU6g1W+zgCOVzJSvxOuU+tvrCiFfOhVGc
kqM37WIdpG3GEn/XVikI7FrtKQX+iBfMbDb49TuVSfUtCfZuoiprk9h+2NTZhlYQJCZQ9qnF9RTB
0TFp8Ar2uaYUz5e2ydPUL4gB698kHO7l8CATvZcMK8rx+6fpKiA7qZUs/IVMB7Oo5w6IHnDIxLm1
6I933vIIYmE38OC6M2OnO74fAd9d5lYDl6YolIbcMziG58uHLx7ZdHDOvyrWpMrw9jUqfjKx7Qzz
fDowWS9Hz5wrRhI7UjpizirrUk/hpplml3IOgJuf4kPXOc9p1SFVvNzVVOwtx0sfANyVNL0oUTlJ
0VS1IoeiOtopEkbOWG/vrOctVRzcvVg3jBScXj4BsryJ2OR6gn1t0Cs/kCxort4IST9Jx7swrD8Q
+cw4rRyDDhLr/1h05Ve2U45WFFX0nU9dWfSawKPzilycM6qxJi4r9hXxqts+yxMx7abA6w7BXuij
TxBtEEMSBPc4FQIOL9eoKS2ooRHTVB69sfoHyyVa01Cgei2DZ3tZev6x+zlIPAYBu2K570Xkst0Z
mKIezGoKofqEXYvz7wsiNjwkIS58FkGOT5vjXNQrSpbnnduZyzDXdN/hA1qQqps3D17/0IB5QDPU
ugIFDASNX7b6UxjSVT3qp8Z4Zoj/hD2gqm3Yd1db/05aEZHYzMFitwSZGnFS0oJ6Y7raY+c6ZAW1
zQ0+C6CjYfJtAuRxiKFfwhfpxQapnCvhK78AN3Q/MhmUAI/RxqwJzl5ZWRRy8CAM/+nWNIbq1TC6
1Zf9UFR2TB65HCjVscfahusYhnO5t2nhSPgnoTjvKd6eciIpwXRTfHT03vuYrsq8rX8n4Bvncdxt
WVhdqk9jxTxLiRwcEwcxYaa8rGRlayzXjAGkedg3FJGUxpqDf/OA7EhM0j9KzqJEm+PP/yoVppcH
prkWxvOo8FhsUYU7XoQvo9nV3Ua6domixneOmMLHW/pCbNOSnzvrngjf+gQ/eDoZ1UXovVbhYFXz
W+EZ3jZIl6mo1XNHTR/+XdUsjHSzKJFK41C2h+rR0Fp6jsrfVmrYzFvrg//nahw+8+mBa6mOJdUz
IfTERWGAamJ8Y2DoPFikFgMxuj8zIiR+lbOZuL4UmssX5dYa0euAmxyW4Evviy4UJPayZ2FS7/P6
bZ0M+ZA3Q9W2FdbmGDwG44ASFyqhmI7WVca91EcViyJTM/7LkP+YNYwzxlZIqh6WTuwOZ5mv9y9q
9i+CZmKfi8Aakk4P/FrjkzsM7LZCHlmSt+MXUQ1mmWHHViTJP46kLL1nLIIDv56YvX/dYjkGjPVa
kLkQSjwpO5Vimvqm8c9qAToWyBIjVuvYerGlDVrrsC3zo4fnJdnidia/dYRkzkoUAfG+Q2jWkn3r
Ok6Dv/BJtpmz6fEozY9uZiJrcymrzbDzDGJ5GFVRNengL0MUk89faWwGJV+gdlb2xwMwbreysWpK
6CMyyW7DbrKCVn4znsgHpkKxlCF/nuGHa/07v4sMyxSOeJM3iTZpV/8be5yzrUQ7l4cxIahgorj6
QzuDJubioxLr31fNq04CfcEwL88QMXh24rwSKfYvcH3D0Hyf4xpzKDUIao8fLx8Mg/NJEVMIRHui
WS28j7cJ81bjXTWGB9aJGu4z10bs7pcT4HRTsn3rIu0pQMICvFNCF2RdlHLGyINx9t9f8vnSLkx+
jNHgLWIWFs5uHYaSpzDtj2vF8gDIWmrQ2e3Y74MqoG4HLQZABtYv+XezO9LARxovtc1JyzWjsHRS
SKf1RZqbYg/mrOx1+zvPsEmw3rb8/obOCrcOgYUbINMIlCXTKi5ygIK1jSwbj9h64MNRg5oyR2uM
DSklCL3zl6D9Z29qtrQ74XPNub7YB3Z/hkb5p4GiyKkOgpe4dGWecMhtneAc7JvR22+wpi4W8+jG
57hO76vrtucon97etvL0rAnFb7p3MjI8fo1v/6DgTZdwavAkQuaMNPb4lfrrZ6Xt4sU4LfDLuP43
W+feyv7/RGP9bfK3H5IHdq1G7pr9E/X2Sd9OJrPD5PUh8LYqMA9bmNagoY2eKh+2XhAf7/k51ujR
SG8Lm+ccmzJDcGb8D4fXJKnO24Z0v+OYDrdUgXBO0slNhRbXyH6MiUHMsfOkUeRPqvChBu0eJfe0
sILjWpnwQ8c1FQ7sq4pDgJPbY2IrysVyNpC+k+nBjTi9bKF4Ta2v1+u4NJSXZvzdUDUgIvbsNrFS
DcDVMtmWIG2b1d9FWnqb+RfNPAUELhxCuECcU6xQrnZXSN28EUjerLPWdYQ5A3A+KAr+YPEVGl2u
riItiFfzHtFBR4TkKeK60Hpbc8uep+JQy/ej9ZeJVyBLrG0fEV1nA/EsoSZREZQ6eeQUiad3QrVO
geqxSfhmNNDhUugcGwH+EAf0ThQ55BB9MBxfR6CXNR33elTLOXXBVsPKhde2vc2E8m+iI60SNzdt
eingfpVM9ccQyNa5xMe/+/jy/2UdAyOcBzcRMKTSZjoAsRmhJZa5jKLX5Oap4NjmdRXxlXS6fc2a
AXiVSronCGnMjrs3v3bY586l3NG+tFbYdeDRkQvYHP3n8DuL/kWciAuQvk/YxwtoL8IhXrTPruWN
V5U43ukZQdRdEShZHbUEzv55YFoU8CC68GeWRXkpJ+9KHY63+IT9rZ0I9eNbEuHbPOnLmvYPsm0o
7zeZIhLeRIzhWLwziG6kksNecjuCgjy41zba4FybFpLjFsTBVvEszKBTKA8sET8G7wrBtAGDxXUk
TkGKm4exM89zs0kdS7T4e86pJOCLpnWoC27jQQH3Y2heCkgS2VxCiA5IyWGPdNthVMjzaf2YVJi/
YUSXLM5sJejlLwkqUwaRkDdmrHNtE07mahJuVChB4cFrrnQsud5KXWfiFro6/tKjza1MZkMnuYNT
c4naBwxYbBV+32q40eL0NfF2XJG4V9ESfp8Czs4RRmeITqum8o8FQVCxcIDzjLZBIiM/EDQxJvEq
KZAa/RpiRL1cZAdAG+GJD/r47r7QN1t2pefDKm//Dk9Qbz1sjvubvIBN+EnILqBDjqkcdGGAtdpf
O8vTC//3jLPUdSfrrF+vAmGmoioHWefJB7hB0uUYhkH+0MKpIu0cEgBlcVIWjNm05C7xQSFvAKWH
FU/U1gmwEC3zjAnWuvZJqS+8ZZ32oIJhrlk/EFfZOMglRP1phQvBqyN+oQRkIHL5oAVvCstZcgud
/b2nRY0GU/Qal3CNTTSFoh7/z93M5YRw7JYSWvcEB7v4CFIanryAaj3+H9f/cTYptxhJkRZhAbXE
QUPlEY3+jNiDSFFsAL6c1NJ/IUq/E7PWFwY7unKCLSZyZBeZQcJLPuvT6d4YDxLo3XRqakhL/3t5
8erXeJOuBAwQN8GHzR5PDehNvlWk5vlIB0CMHaUj0aosSEnBfU6Rel0kzb9v9spOCBvYVMWuDt1o
R955rnHHDW+BYkg5nhLn4iKgb6DsQ84koRberhLulZPoamYMg8MM3qc3pXTgFguqbqx/1rUR2/J/
PCv/kqYCV8ao2zs1/E/oLww8R6Nkf/C+1ADCkn1YOe3L9DrDDnQS2n97fYzfRYtkHG5gietgoKQb
2c5PQcq3Rw3l04R/xoRH2fF2j8bCmzuKQhPEs+xGuoAGpHSXy1UeyrWMBd0y8CubzyDE9s//knRI
CU3gO6FQiYxgcMtdS4LRPWaOT3QhVD99AhC23Sloj9UQ7BX26jF/mp+sqmfhY2UQvPeyFGWH+EPj
jNw7GC/6Rve7JO5dCffGlo9e5AX6qBmxFp6Nh6WvecukT9OIpl37MywPlWEjBGE21W0GJE0oRe7H
gnxOTH3ZdjPWeqzCIjKF2He8n87VbcCPbEzZh9Idfeen7I8ytHj19iSce7h5sylxg3Q39lkgXsMw
MLUN/vRQVb2OxDLP0saVekNcSc4J8sOlRpXdOkTmx4t7VfP8Nazersiz5VlpTnJPi2WDDWcSznoT
hiHeNYjjskpm5saqxpwtMyUkCX81w8Crn2NrB2OBlN6bOWQja19PBY0d8/NIsAM8IBD6NR1VDQwr
5sGUPxa95M04woS1U30Elz4ubQgbIZFJ2puBUFIRfcrKo1GBfokNfN02cDHQ/jXqXXDez94W2rBs
eptm+jvxFh4WQFCLAgIfqr10c5fFwV+KS0d0Ci1wnXjLv+EhyNrBz8t4anucLMa/rNaMWPXqI0Ss
IAEHtjd1pywja4LUJE45u/npt6q/ETbHGERSZFaA+zpdpN8yLNKmwxH0FNK3mg4LOv2gcEFjtFWR
XSwrJrpDVhNk7epS0bSETyJQRW0QoN+08DZLTM44QtN/Ix920DPtNYmlnSy24zcKJl+AQOQoCqYx
SzhxfjuKD+DQ08tKC4M+StXLg813RSMOHb4Yb+qHNZFsKfwwGJSU7qlyUSrLOAEmiQ5KU9ohxpzh
3pEM8leTWEqPSHm5dPpYFycD0eMJtS4XAHzgBlKzQfAoF6J15wKcFDTInK9/FpSdJUiMvLmtqZLm
Zb9PprpR1mL5r4muotQ4tPCefn0iNAo5v5PefFBQfq531YF7y7UQSKR20YhiBC1MKKdcq7JcrKoG
oCEzcOrqLmHifMXuOpBOP0WAm2es9W0PJItl46KBNpx99LXPKpk7oRKr8E5p0baeQ1or8SuG7nn4
NXrikktiTSQNZkDDA2amSjw8ZEPXi7dQzQXmOqBgheu4gs91onswTdeTDHhL3HkMV8qAbiw4XMnE
0gW1eveJ/lAmQFAMHxnFbYBIB7wROj915UnjOQau7t2oJLCcPlnwR3qo5KWfFbgA5j6hCd4Ob5pB
OHXIp6dgDBXMAJ+3UwZLJpVyHEEnazkkwn26qBmNPvN6exXlFTnnV7hyo4WHR2ENZnJ1vDykWv7Y
2Z7hZya5WvN4EoLc6By/AEOlhCOiYBpnN5wUMvBvZXkPD0HZeyMnTH97yaJVIeZrMmDARml1XUcN
P3ve4xmwQOg4wyN9+eXpbEfqYVad1STv3M+NBRl52KSFzFAHhml4ev3N/7NwaIlzN+aWSocuuHZ1
VT8K9/WKvLFOlTDtXo1/BJd2ERcLpxH6f4GZG056OqGjmIeocyNnza2DI8Yxv/tJ3qQw2dDR0vcp
E7pvxkD/NGmp2xZAXXccvmxmU4Q9mR61ul4539Qtyn68qD+mXZ2UfWUKEkfT+JerT5qviL7cU/aR
9xeZzDJQYjbMrpLsy0SkZFzkGXcVwt7uVq9Wg1UdKvpmsx7aQ8JvMRJBSxDSZEoI1OvAQ5zRcL+n
Z1QdTw52xi+qUsYYOuGCp7ohWJsGiWgTF4FlqKZv1ejXveUIeql2OkAaKdf2kkVthhvHCzrC2+MC
LMd9908BcPpaSTZNGW7w59jPWAcTFLiztjrE/X+yxiRxWYCddrI4qaNcfijmDILpa3t2Bt8tebHn
dINSoHMOcJJ0UY0kEuhUPT3ps5aBRiqtCYC+wjYCd2E4Se8NcF3a2eJRYZyPHZKq/Y2mYNYQ9h5u
4E0DHplp3anqN6L2GEKDKIqyFXtsWZaXhY3OQkGC+o7z8LF6Ne1WCxIyyeC9BRClRmtgH88tD8/T
ge1CCsxepqbSUGyRnr16LnY05Dq+8upRKVUZFKk0FTlF1PwKflrf7X0UFWuIPnuKFFyxuat00Lb9
j7yNIi5WPT6T9oORD7LFTUb7Xa8tExm1fk8rxQ1rojJyesjFuzQ2n10pOXuGvg1QHyOK36hgQKgE
sW8GrecQxcbBNOkmBGE+EX/Qaq1L5Pd5Iwoe1SEOX98aptcaC6rVMvEcmoBPQQ67phTkv1cEJKmW
JcjD6IHSNyCUs7s3jrOIizmIHdT/eQ4xOCFpx1VvPj2qF3vmDikJ7ysTCNria/whmefe/4w3VnTm
0lRXzk09jeT6VVpNjSuCNyK7Iz/AsTMCCSFu+ZEq7eiPLUdmRHUQVWYMI/bB4oUMGSATucz0Ug06
tSLDAzO61qzPXjrE633GCGZLMMcLmNyWnxD8DemqF7oIuLK+tr6h82W7ritxaVvnuE91tSxqbhQt
NmsG01OIZ9mWoExD0fZpd+dWvMx4eBFy/Gz5mf55qCuOB/QxXQrX+4dArwh9kZBnv7VjcPxvkzDf
HIw1lLd+9xodEILvAF7Jt/Rh902CLbwoRiBBHt8iDk/WE0MNsdQJhmkgp72L4NmDmR7zDLMZL2Ph
ZjCroRmbnYAD3wYPr3zhDc0BJI1c0kSLUT8/0skMkfdZFlF/fCgIkVlF4sZXi+Y7B3HX2nOAxDr/
3iN++9so4Cvugnna5sblAx541sx+9Wcba8VvYvg/FOsRjfbGcBSpUcKnia/hGXXZsWAd9Gqn+XRD
1F3rHHJ43gysifxQNjUMn8pooetX9GDw/aXiY70q4x88XamAmWmvAWL5zf+6zlc0G/Q0aRd8oz+E
3IEtwUoulpghuiVB6TRPVGbaWkTxwnjPjYTN5msKjljRnS5ATPtTYneGuG4BmgK40ZpC8EXP4q7b
gqS6zT6EsK5lltzBSSfm9WoruedfiQjBqoqR3wO05on/ZChvs+5fOG8f93lhBxt55HK/6+EfadhO
fJ+GDskdeZdJKodwkCQl+5l0JzcXi4vwXQugtyuOy1m4tgj+tpEve75+tXASaHUbr6yLnAI8vpLS
LnVeFNsQjfwe28oTs8HyEj5NqmBRk0dDud5IP4QzDEjcdrwyht7SJ4gNUcmhtf/v+H2cndoc+kyD
hM+QjY9V82qf3bTdwYJHa/4Nc2R0nZBcbXvEadsiqo/aXmgkBoDjIKOVRpUKm45eoLERrfg3+qQf
48GdkD2yrhvmTw44M+43VghZAZuR7gRnmRuMAeNxSqdmI9fV/PpVRDn6aK/MTEMaThT6Bak8/M4H
BbMCFBrbj8lbzm/W0RnZLMX0dlawNzFlQCH6Wa/fgKt/TxoAo2a1xZuHXlR8w06X3RNZO8NLf4LS
Vuw+IP1uXsm5IXSo99JmWcRHYF89uH0FLYpXpktu7RQ/uuTxVyKB10w7vcCtbEOSJ3+N6g0XGzkL
Hl9+Oo2jgKn1OMai3QybgaVMkOetrHoGMccDdh7ruTibFhUQfT/yCrVWw7tiPPysLQZXtfEDQlKF
/9LM1We70Qn5M36P1iA5d8fxhSui5EA63f9TSBi10L1EBCNZp2uKKOCPM3//e9vImWad++9QOK4/
tMIAbp3Y2dPR2/tYw2o6O//oZwqAKePiUSxx4Q0/ik6y0rCpnyIgW8lmo8pGxXA8eWGcKmREIsYL
x4o3a97Kas87Wt6i+3JYBcusoHdbw+4tsyj0C4A88TK5V2wfpQxPvsYcO4TWVyB2bupB4CpmcNe7
NybgNYVQYcpUBEMcXQ3w4GvjrguWwxSq1c3VnfzN+Ashnf477TKojuJ16i3SFtAFR4HqjIAsnV4j
bPJ1XnTRvOxVLdgGgbL/gxF0DjTQvo9LZpmKKdFydD5xZom73iOxwova0GkzuVdQc5DQPvjrr5mV
k/7hkjYh3GVrqL5tCXh/gknfSmZX9rdfE+uhOaMjdglwebPpXx/jaAI08vR/68sz3jKp8xKzS0Jr
BPQYOP28kGRmbaPM5PgOUnSNh/YDrG4RhFXnXGDYs57A+D8a8kQwzPd/+dET56kRFkdvpnq0cTP3
rLyaE290e2mP6ENXyyfND3RfcRIM3LjSPhN11+yOGUpE6ijl5MfFxpjwu1PupXDt6vNNiy+MNj8j
ycZizOGiw5JReYtapux+cUMJhYU+iiSySXr4LC8LdG3ID4RGWCAbM4R8nIKqkenz2u0Up+binrls
baLvRyHJbCUhpXVTFIcMe3x3Ud52TY4aEtfLeReZIkB+3Dnu96KJhOiRRDsagMhtG2js/9DePWCr
HBAJZwtuvjKz+/dfAmjWv3H7dKWv7/cadsTHQ4CbM7M9mmXwIKljuxIVK4Kz/EZZzxxq8Lqwfg1q
Khu/nMWtS757dSumPRDTsJB0LIrWj8RX9uU02VMHiLiz9jxhpqFGW1yTsU8Kvo8rSduxf7nBO8oJ
LncEf90/xWiyNG+aKx3MuY5NHTxH4VI7j7e0sjnHgVvC/wyYz7KB/AuK57pMXb7CsKyOCm/LOrNp
5oVc2GT8im6y8LeoR4YffRrhhOB+xJ0RrnudZILWsL3wuEGL6VPkM6o50u4imN2c3x5qG7LbQVo8
fraR4Xl9LQuddR7422kpnlFKRRtY9Fzx4ClwdLOdc2ERSFdMWanhpuDrmo31FDupC3tHeURxXGyw
uNq36mtkLuQbghO4hqFAOIzJ+T9Zfra0WL3o0GwKJ1U3q1uzBQ7EPBSo+LMyZRDf/w97AjhCnk/y
GkO5/HGKK48U0C27orNViPRUNeScBg3l4PudsiKAvHGGwQhnwxlrIOPaxSTKWC4vPjBC3LEsacVB
QBYJqlUDF3gfIrlyeVbGCD2u8Sz/pzOXLTJnUvwcYzd0JG3PeG+ZJKfLPagI8f2McEaBU4v11gYa
+DUQGb4nelWtcY07LYb4ymPVPpJv/kyidhZ8ldvZBIj+geuyIPg/ppaz2seuKauzOge18C2SQHgU
WwxW2Q9GdZHL9fom3qwP6RbCum8nbSCTh0gnPY0tK/qAKfJ6+vwOeaOldE+PIfGW7DaU5ELvwCCv
583u1EaE+Pi6PokpHJ3Brcwbxd1A+IR//ll8yuBb9r5GBnjFktCskTu3EqeKrj0ifux0rG6cNq5m
XT1X6fsvV9YypZ//q/7GBrLzzs4MdHtDy8aGPbIEp4FZCR00aliYn/hO5VxfJOa/c+Asqag6yCed
oAZsjXqhxG3vArFDQ/50hFqnw5S2XEu5sQm5c4uzFvTQ9NvDg8WsfO0pfDoz4h2fBeJfn+B1MNTU
nAGHgrxzr4npq4XwfmmND7ibMwSDrzhpEAGpN4a7Z7GOYJ+Exy261ofrqvrzM0dgTXwc54jI2yRr
ct7c5dm04mEUw82K0rjplaNo54z/Xus8owTikYv2u3mLW8y+23CzpWwR2+gE12XPHDKejZyZXLJP
eTv9MFWT2Nc0nguhPHBBKNx3bEOJnriq1F6C8MFIB0do+P1EOBwyypztQBgxCjOFaPEkT6a0PdF8
XxsHXgZuUu99dkdn5Sb5BHYVCHAejuPzXlGYsOKzA55+HRHchSadaVWpTAIFGmhpovEo6546W+CN
cOgW4cf1UIUih0kfTauB3gAi7iHIvDS93xUQE97W2eJV/KBipnxtVeOnZK0Z2fFqk5Y4BCn1DbQ2
ljaN9a7xcNKrTRmbFIR0SArTJazgU6fu6jue+57xpoNZiUnIf82l+MqHFon7RUy/BkSFExKWMwIh
4507r8vayZp2EFRuq7XdtZb8am++4ez9RF5jE3Wx9dRcctplCGZIkjpb5I87WaBmQNj+cDYaF9R1
U9U9CzU48qzrT+VUKfzPhYdc7U5iJQfJcbE1oCrUTQXTYHqMxoQ115fNK7BBXp6wYuebWZvIBUKE
n+kMG66q4nfH2V43ay5uyyVtVOc+cuRTkZ1xE53Fwi2EbkHr3PnvQXLF5ONSFSyR1gqtALKsuf2/
6EhVHHopWRaZpLs0AVdDkNU+MUOBuMbLGHFSzCiSgFarlYamQPVkRQI0YB/hq5W0cpm1er2qBZ9B
vONEvVdAZwbkSKsE+l3eOWng9RXQhIeYGPv2Js6yQGzWeHepsmNxFHLmYaVNHiRqiDD/Jhg7dPag
rW99UbC9im6BiIRoXwMYEY/0L3DH0tbE4fngNN1QJTnc+fsVI1Bdnf29l0DWlOLCPoEqlMiJfhJu
s8tJucWqYAZk5/2NVNkr/gXhJGLteVG02sO7M3yYV9ISEN7XmlhS0o3zon491senkGiUmKso+6Z1
NYcOjCaG1pcI7sjqEBzvgZfIL3GX4oSaND+CVkmnV9zs9zsbXEddpJ7JXjXLNK5aTwEhk4/Kiths
W8D2yalYGbCHyI8RpghEX04cGA5OoIxZd6mjY2u91JHAvB+bFXaCDKCZteYKj2LjA4cI95BbZHAp
i3qBhUP/KDCVBQ0fEdNrmT5yGq36/+RiQl+jcxYv4DUeVaQmfV4JC3qhOqaYMoDBUC/OcNjbWzpV
+6eFVK+Jkl0LbYVzPSZmvxNbgBIohwb7jAzZNKb3PSZvAAgE312t+phHzD63bHbL4DUg/UEn8Vfa
vp0wQhNx6YU9DhPsdCJMYbXCkhM+boZ+fy/AI782/mMBTJaea5L7WxyqI7L3Hlw3IBwdVOP5VCbI
DyYQgtbvcjW+yxcLRGbhYO4P6v6dyz0+/+Gs7IyTkjWPUAa+EG3EEv17kw6N8u/fWfg6dFP4URkD
m+sLN7IUdcdDmickdV0IOU3I0p6r1nVAo8yZHZahFGybJE4Qlev070N3ZAoRrfpVgSRthwBRM6Jy
POkJBZwQLCWqY/MZP/DEH+TcQeqNJAO1jpvZhBE+BrzQwqjmJ8rjh+nGzghCjbfFHwsv4G0QOi7M
Jms1YR7sNBXe7Wj4lM8duGsT1g2qV3TNfrw4ejOviWgRltVa8dogISYXmIiAB0isBFMtUvCRAYQ2
oECevbBLfbOKcL7s65nxuJJWpg3LCMu6cm/EfYg900QXfGeyeUdXxzL6wXj8CzJF8AP3bSj0WP/s
YXqb04QbmCmfNLrr9SViYKRMt4Gu008hbTIasOcgr77dEKTMsuzeDrxpspsRW5wCflPjSVz2azNL
93tXwbIgScmA9ejdZqww2ebgtqmlr974yXnX4t9gp3Oln66l1hFBQsjOcPp2XV2l6jQ4TivXVuUl
ZrE/ynpm8nDksqQEeAr4AgboyBgPEuwyUY1XGt8tBSQByYPeh+1C+DRMsmyRfzBfSZ9xE8c9/ZhI
62bVxxoTO4Tx0eBJThQ3SZBEd/qjJ84FMpAOBxsyBNQNW9RcowOB3VsTWC/4/O1ofWW52Uzvi8iX
D25h+xf2s1XFwDBpNlvfpalNNfN2cYNfMESpUBwy0Z/HSbCp3CJUOQIVVlL01MbyRW5rmWU67EO3
SDi4ywavvceBSny/AA18d19iSoXd8R/uIxvSOL0zOvIbwoUDtKeuHN1CLmvOGripsLssA/osYSmG
tztTxr74oREWzGsrvhfg7FHAnf1CBCrkS5MEWNoBWqNQxCzvHO+ACAqwHeslyxncX1LN5kxXQZoH
5WLHumRv+rP628A5IezVeOf/SLb8IVopTz3X3MLisoMWXW4rVFiSEg7uW7NqoT9liPi6mFZfyEkO
dJYgaz9c5qjfD+5qIgHux5fyKby/hktDM4eNJvePVurL3T8sbJmgZR2WJv1H9dJwZvKe2t+dtAGO
M06aYlUWhbGgv9iTP6p/1u+f/n+SBy1s1yjiutUJ68PYkwqvccREkd4UUz41qLdPYPUCyjr4yPx6
HlrKcZjsaRmfW7c/TbjXw2IPMrpbt8vLQKcZUWB5Nby4pDg4qpOJiUK73h5WBTTB36V8ioRvXOzi
zVmm3GM7NJgC/LZKDG/GnV+wR54xbrIjG+wugKrIc9jaGxI2OElf3ssgOe8auhENnHcRJpcnth67
z8AFl2sSTE+F+ppa0TKexb7b8CXZy1m2UsHM9prPvJIgGlhw/G6ZW2rnkfvFoqxs6LnYWXNqwY16
0pOpPMshvPwr9FKKN1LIRMwM0dy65P/ex4ydUKCGxks+/ZOS/pnP3vbSZ3Q8OjUcGTPcqlNSEBIX
/XQ7g789P1RdDWYq/A5WB6uTX+c9j6r4thIa6fog1jQ00GWycVez0rGTBbDdRRNWIoIpIyzoaWPj
K94sTCN5ljhKmHqX/N9Ds7rzJOuLIK3+kThGYGBjvoCpzshMe3z8F3PiyNfG+2yqsMRrKlqGZPvb
vQgMN8BHk+HoyiGKGvBJSFsbJO/Ibv+zgj1B9I+J2bjiklfJNsQ3nWB+Fp0US29p41gq40WSQmEW
OM6kxRdGl/nRltADZR6yndlJ39QRCBXH6rYEgSKAyuQt3hlgOTyBXqBMS+Uja5qZ8l6Wglc6fZwi
tjzbErjcPWA/bCVjfWGfPNh4dVPrl9uRsx5nqnT7LSjrU9rcT7aa9thMkHSMw6FAS9tpIY/eYcey
alDstf1N+0Vd/UYkXb3eikIQLyLrgxH8AdJdcuWftN6vwtaxkQqOlajJ0tfc220k+GvJjdBgWZRJ
e/+I76/aIEOb8ZeRhsxnRI29ihBO2t//kWPp3cUC3V7TlCAO6d4Pduiz/LS2huJtSECNliI0b5hd
CXsNNLv53s5uF7CpiN4B6kGEhv8BL7Yu+FFbvFdLCGJDJy3ZjeooJ1MHOT4thRg5002N1Q8/vTpp
AItk2ydOxDxpUwSq4qa3dgekcW69Ynz5SN0O9/bdHJezKEH4t3Mc3KG3Y5IH2GiWZgYH2J7gIfUx
8bBMUey4axluxaufA0RLGSUQ02qneYXqZvkmlrG+qzW+detlloPPmnMyZG/FahrJPxMjvMAv8mLH
wetgBLXIzHz8O9mGoL2qmHvZRUuQIG3qTvZZMmXjnTbIC3UqLiaGJe0YpB8qwQcK3ebrXHkAVG4n
U/Y9kz4gjSD6PhETwddPavl+Mh3T6ltGK9XlBwd3SJvisSnq7fmb7gQhCLa+UlM00+PpTc70jtUP
gq+3xYaJhiLU0XlKTM9tOG9BmXVn1PgEBZzslGRuHpfZJ+MS/9Idn4vYjInnHEzysAgHDedosEvZ
8GljCcVpnMWhUvEyquYR8nuJGkN72GV9Q4DHreYjUnvz62FOY13vvqRZqmpIqgNueliHODQWgQMI
0kd1KNkJUkYhbr941lvHSjSpOsW1aYpSekVCsc7NGFUu1DBCvGIyihRsGKs+Fphi/v8xFVOiUjs4
kR1lJShnrGf1GoIMw5Fmi5jZEJj2cyc6uCy9COcENfTYBNMM0Mxmu2M7UT8aylPpb3YQg3YbWbEu
OEHpTnX2nFGrEU2vGczwW+ovIgTsZapmf0GaSewyEWDyROL8RiEeEs4gEKtaxgkO+8457TAKsKGu
iHuAg1S1ZSU8yW/Pcnm+HXoDqWtw8MJwcHc8B0EZXxn/NlBwNHcryel971O0TBYj+43QiYD+xpdO
iTnJTeiBYXIeaRatzkr07en0SLRpbGyqvafwUIRQgnMsGe4dqqJ04eocTUY5aPYAj2ZI8KCcwD7G
r13ybEsL7bcgnyRPsjPAch/atQHrMpJajfZoUbAOPOZpuz+piin5o899msGAa5aLxPtkSic8CMuY
6D2/En0RUonZ4XDjmkt8S8dFXfIC9ROCkhg29ZsJRnYAi8Fwq1LouyhXYwvFVUh1SgeUQsHuZeS/
DoZ/9pNevpnf2J3+uyg3RiCAgSO7vheLqzSkFYHRHFnDTj9jXfyan/XGbwBHUrhf063tm+rIiCoP
xm2id7501zPrP1GSRDMOEn7LXrmOwd6EtGRBQ1+iWPkva1j2UWtvFQgq/TMtmGdYrvq2esdQuBPK
bZ3v32KsIV69AbOuSfN77dSBhXbsQRAqMk/Ota3AnV6LuxAjcQvchgvMOTVCUF+fDSpxvCBHpd34
hQk69S9AT0pjFRVCNUeEzPKGLICCjeSVcX3HNrBKCDphd2AkIKfBaJjBbMFNIkKH4RSLrGRSK4Cb
A2QIL/WD/N55WxpQ6N/uxLGb2ODc39oKheAY0cTgkMJ80cVF2sNQ6U+rMhcNKxponKbfcHPJ87ef
KSKTBwZOnAv5T8FSV6jQRrjqnJMh9jCLhN7R2FmqpO0+SUHEGNkzuyYntOVbCeZidDtJnuHyO1nV
fnW7APKn0+Uea5nuJi01jJQAcee4xojYODtgcfZcu+JJbb72ZTO8ReLKdJT/BgE3a93MezzTTXf8
sPkV6YLlKFiQglNbiUypvi/4uDm9ArsEdpkwWE+5oZ0vSKKq8v9ywzORPQRSj4NNfOl53QG2vfZ5
vMNpkJBxr/1SA7SvLUOCNySiv8nK5VwTWOqEqMi0G57D1EMP+HnyXrEaht3+Ke5tAKwZPqYT6M5+
bNlnHRSXuy/ABUf1Sp+VsLFrsKe5mPo+jxfSJra2eBl4b157I4EufTIxKZ/d+VH0BtLEp4B2QqYA
XpGLp9uwo87wPj1SjGtPSDbfp/OS7izRr9K2BtIpEQ3+PsJvi7MTSoTemxDHz2NCdzgwXlDGXD9j
uayFx3j6EXTiLJ++WEwrC8BWz0BcqsrbZzc94KHYpxE/e2BajPi5L8NYXEiY/sjjBWp3Qqc0m51G
EewMcGpffc2QCQoW4pqhrZ+jh2Z3BMEXk+j15LLjUqrVy7YzJjS/jbSacmRJIWTxHpSL7kX/j1Aj
RpxjfC5dVrr5o0zawGhAPlh4/SklzCe32flac/DADB+u9qwvE1Y+RDkyZZyg/qutKtDtEg4/613z
Kk0+MaxU5EROCfK0004f9+9b6x7ZPmzYQnxeWVmtg0Nw2nl8SH8PTE94O9jqufvsXuZbuCa5GQdh
Lx+KygG0mXg7IPxZi8zQBIXKeKRtQ4IpShsIFRnzvGH8r/PT7CgN1Xe5Cpaq1L7/az9XF8rWbfb4
qYgqAPJwff93HcWfQ+pYCi+a0cJkVBZJb/HnYzTJaAHr6KYfTZkHtWX1fTfq/WB5QC4ySRP/lQGd
jI7rQpCyVDA0QCQ8kM5S+yDOC8Y2uQMZj4Qga5svrv/aTN+fGN2yP+qEsgnTEV7egfTwfvKPFy2D
/y1tnnHVBFTT+H0ojekUcVY1ZxGjvpq4MFj5lbzQEKhBfNEB9Ae4Qq//WEnRjFz8ZwRvUmdkYFMo
hb9jTrzPUwfPrrM//wyAZtJK6y2hFflL/S+3R/VB/hXL/bxxJS5LD9RL9eOOV9R1Bj9HHz/6FAN9
9tuwSosG8ONGN7ObGIaTCkJ3QnoyuAvpxuJYz5ntWR2teO8vohjNQc3u54OL+jFxLzv3jTo7RE2w
vNysgRY65aaPSm6BQOLPB6IJlgcil4SdIPhlAIDm3INz/a/QqNHUA7PX01qHF5X0nukT8EHKvzkA
jVHMhnm7OcgISu8UUGzICUiqYGGiVqXzShm7C/xgSySQ0Co0QT2ldXVlTbiAJ0NW7ZyQF75Twboa
2kfg5/0WhjwnOoswFA4vWXe4dxOJCCEoCHcxwJRP4pCtkzACWNz9R7erXaqM3UrWwHlwHttEc3OE
FttjnbfSWOK766htwIk67uAnhQTX9GJe1mlcvzZume8ltFoQZBJfCyMQUigBtOdmRFs2E2xPk9cB
Q4ov3GD8iZAIT9b1mjDAH4Q86eaK+G8jg4b2H0Ana1w9yXJuwMTZWjPuUp+hpqzMktTUDWypr2J0
Hj3i+uhOfAO3fk6jyTaG/ZXSD0/O3lfjJ9wcMcW66s0En0jZLrj1+QffPW6AK5s27ybf7v2cypni
KHGE6kN1/Lyzic3tva7ssCrkImAX3MggfVIA89MAGYVyv7oDNNdV87hbASK7IyHktuyz2GpeyEx9
WRHSwCnE45PCCyR5TP7jzZUvPZlxkwJtixJtS5BEeQwex9nhs49io02qHPh5CJuIAfhRI6clnrg5
VvlfVYMBew4h5iECtXI5K3xa4OQ0yvRzL+XXrRu81+eC96hbaLbncRs3O+Bd5YcJun5aIhOdIbMH
bDFWGnWQEhO6jtE6Kq/2Bw2Jbbt+8HCpxLUE7xlWVAWjyv/2OaWunWRfs3F1FU1jOAs7KQAs/1fV
VeYRkTRPN05s2Gr824lCHbfDtacOvx4Rt7Z9D9atoyqwQDZqKX7jDc7q2uHASwH7gqxkE0/y8iwD
bjgRaRkXDO/AYIFRaghW/nBSgdleSoR8ujYVavOmmRtbhydLsaPXXZGkSDMsiZzZRKmbGyomkD2j
9VDW2mU5IY8AsLoKZURT2raCdvnqEPAPEgDSk6aRF25cljZ/HDk3dtNwUDFj9UpxhM21ud6RTLs8
pFVJ9+7Vs2x+4cfsZ4WL9f/AGoKjI5pbKfeVewgPSQCDPjbbnvvZjWFg+HEXv0mg4cNK8XaejRwD
jcWXBe1KPlhy7q50di2LxE3TzloHeRdTfTzdfVQ27d3zWKfClEcssS2dPhbyXr926Z04Z7FwtWu1
APhe/LuuTT11opi9q5cTCkt3J+J6xVW7M1VLKcdZtduQNE4/6WHNKHTjUJzlx+n51T9+GCo8DVxP
OKdJCybwbjgeXTx/GrQtmzEfM2clmTxdycko/ERrfeNxa8bw4NxOtHm/d3zM0p+YB0dJiB02F0iC
hefSn5K8WKkL7HpKm2jd4udnKY/ObIKK0RVmhJm37AmpvTDjKx+JwMHTqWSlrwDN3ifebXfXnZ/U
leesJFKiG26KToDnJinmAHFvzsOba2F//fSLZ1CK3aWIzmur80/jTCRb0kN/EmLet/VtLIrPKyzK
cDrRg90J4uuU7dvia/bKcAa2r2nfsoOtn0maXNYWHnhE1IMo+OTpYa9i6wlfdS0jlMxNAgDdrrNy
lcmin6mo5zFY93Zo+tKpMjW8TdNsqDo0SjI8zJueTXMJ+woZM2YN68gqKyE/LF9jDhzGf95Ehfwa
yFGlCYXm6JlwEXvyBxzGQcgdwIA0KmTN0LhwCGriEUMVcq63W+pITf1Yq7U7DzlyYdTbQq/qeuQh
AGWma6UWQEG/NuS1hv7BwtIv2VOyJnFfaNF+vy6Gc5eihBi9BSQ3xSpuGTZyDLfOG65doyMGipI5
xginGmPoFDYYSxtWnyionRoS8cXtwIZI5Omog4Ay3ZIraWRAQxahIeEIKzuNJr0pglVM59761kVl
aZfVxDf2vSj3ogLBHE+ABEUV0erET9f97aCnClKv1OLzpWhkI3bGCAqwYfLL3Alf6kfAtMynExh+
fWl8UosqQqWciZAI+Jl+sKMqowRA18mX7hCptD1Mc8QbbxqcXtQYoqCF+MTf1ZOcErPRmd3zBpSm
xgN37BuazXJl8vsH6VYwCz5sVk2Tz1rrO7MZN/KGo5R2HQpaDCSY6FETCnq85i/7sKoy49LTbcxz
i4W36mxbIiILHYPxq4dLUCGz++pvb2MjiyVaM9uwT3Bk2nSIgYfr5UvQQD0NlwkCcxOetKCA66nI
Ad2GmZKv/LoVBPYp5kxW+UkxQhmV17yelXxGBUkQ/e6uGbzGzhUthMP76CfoY3khanAuOE5ElUgp
0jbklEVVWS/I7dq5AL2gyqn0rOpLP4DU915s2ki8DxZxz9koVLa4fSibIOBElP1s7KCdqV9sYA2U
3AxqzNxYuDcnWRVTuIvMB6lGzUY70lqMsBix+ssQED4fI7JlBk7MRLvY18NSa4EEVr/7US2BOJaM
RLs5xbu5VvUED+7FM0H/8fd1nyJn0D5oGi/U10vAiLR8DmkSwBu/EYOHHxzPq1YC2RIRHK9guEMM
kuUoqYjrMpnNQryyIhzwjyRWjHUikdJPiJkJgb9zrk3LsARIs8aQXr9ATbTYy1HgOSVsWDmfHbrR
adg9Es3Yq1DefsiNHo4unBMSkhrJEK/NGgT40qhM1Hd8CT8/q5Y2cTxXdlOxP+ApnTxGKfTSYwBT
zYtyCCUQji2wZsDb/Xxb/N2meEGg9kSUKEI9wqGBcQ1ZWICHEbI+g0hVALG2vIh4u5rx0amIztt3
SlFtiYfe/rK8KKvnPe9KwJb/nP3IS5GApAaYC31sCDg840S0XSPrawC7YE1omx/VuW458TF6OC4R
ShmNZjBUF/hG2myjMyDweiH99qRRYDR/An6EhHfm3MkxZdiVOCx99d5LgdIwBthI8X5LrP8iiZtK
QLoNi3RqM+HTnAA1aWrRN97vIy1Bfxi5xm29rXuMq7lyykDl/5p6dm7KHDtkm5gDsBoGc8BYsAw3
Heq2I60gPEnvKGKGYBnas2zQ3DuqnWNLMZizzOmyHRTVEpgyvyQ8LPDWH7R83XWmy9hw8xTTaVDM
MLA8tug2DaHcCEtnVP0m8ZENDm4W8eZ8uR5UNY+aq4Nh6qir/TeIwhHb9mqmacv/gYk5lDeFT1O7
G5SGFG905u1J2yw3BFKnpG/qoEFQWici6ufCr3JFOCGy3LbTt8Mni1J+ojdrAe1gTmPpP/bWSKfC
Kyw3oJ6MqAUGrAgLyNQHZ0ZpVCyAeGQr3wsOlTeGtq3ljPJRsbTE+4GGBWfc4d0La3WP6f7yUXH2
KeZW5xbEzMGRSYr0y/X+X0nVTW46Trc8F1J82e4SoU+j8ZgWgy/yd/Gb/HHD7TBgOv03+ttR1lO0
qRRp+nAtTSQ+eN09oNE0jcMcumrU/wLUsmTKR6zmSIijgXAm+fzdLWZQihS9Kf77U9YAkQV9dfTX
N6ygOXD+g4HuAO9AXgdyC4O58Knx9TIsO4JzYPxxas2DyOEArcRPSCj0nNZbgUVVVMurtX/MkeiR
g1sUVNEKJTj7MwahPG16fPcTkmX1v/2bgq/c2J8RAeXUVTgTaVIKU97lTmymTEPwKMbGtOqqArn5
DC2YMvW15JpL/l0TDN1e5mWmKQ6iWJpJSSmu702mVwhJYx0QIN5BsTffwZxTcIbfJqLV5pAPF45b
oYFJ7UN7Q/yqbWehcR6pxSVsIGpEwqccNkEC0u16EaLVvYvqZZYVeiPwHwiyj9qnBIl8XW/Kto8t
KdlvihefjBM/E9NwxNnzGcGBRvYBbISnGX+/2/biBKYX1DswJejJev3H3b9k9OTmtwsjOzk9TIoH
aFXXVCIMKuPLxfUaVdMjYOhY+0fOZ3jS0OGJQlZTI6Evy+mwbVpBFZ1SJB4ApSDT2OUCw9eBv+l0
zwGeX7sPhcvS/jDeEaRj2PLCU0F7VaEGLQqDnPfPfZz7I648CC6grqv1M4mMN13y+4tl7VcPBjjx
PRHxvufjfl5YjtEmgXx6Ycf+p/iFSWFeDo/n7LDjDtZMpDvwkgvLmu39VUijHOTjeGPHqPudpwqn
BZXsVXk4twa3SA9TyAG+AIdYjMElHDJzAUQ6gfUwZX2xsGowTmiIJaf1JFUP2biwV8P06jwvODBP
72HxkWHcNGMOS1lSQC6pJp8l2YsVqkfzdvM8s1ntpZHBuTK8F7x44tiqaO+b+gvHxjNPbNHen9qm
DqyJCgLZYhgfns2IqbXrKlp/zpw85PJ/npEeK97ArwzlGO12FH2H1EbHtXg7ldvNHbOP4jE9pq8S
IhusdOW/ND0B5ifeOSqbg9U0b+7aMBA18ylyUCJMsr9VA3hl4Wl5CdWuMzFO/O5bShibI/JDqKYP
AkVifpRiynBrdDg7SodJFDfosiKzr//OHbZgT5JsmSSoyi0O3y+kLThguYurhNuLiqoiYQJphcl5
E+0vSAwvYfm9oy5baZGgpIo4rERruaLlR+S26nYyra/L6Lsg78EiTpLyxJ2m86TH3onVyk7Q2qSj
4FRDVQyR6jucoENGjp4+fQP+wrNwqaizGSeZzNn3tbE+Yl6AI0zd8Sc1mejYg/VQo1dldgfQeE2x
BkqUFdzs1o2EgE9MMFbXBEza7gKAIveuR9fcRtRLcQtg92OdhkiXhpQG4R6jf3kCjIBpLhnYR0qb
MOcsrjpIxu0mItS1VzfADL9v4HOPQFo7CRFNtIDfFrpyIoy9r/+NVFIdTXDTQToFEJJv0nzyN7aS
lMrXcSKZ7byE59owR+WCoc7fhN9iUS/flAU+BF4V/+CGBUS1A6pf9zwY6mdPjX/1NZ12PN0k9dhu
OTZ7rsfp40OQ7GBs6DcA6GYNZG+I0yVi6Wf6GB/shgXEN6zO3Y2IKCvBiUr/sS5yP4xZSCdOmn2E
e60salHEpJ8BTyIHuEANhoB4CvRDHjiFk81BNCo+tmYKWn7Os74pa2x+YHhrGufRoKMAfrEwhBiA
P+khD3oufrkGyMfpxIQ9RhQDTLfe3B3ZegwzHAipKQjGDOQfHY1w0firsh8VWkA1cVopjE8QftJb
zno4UjvHDQw2bKTaKckNX2uUMu1Q3cQ54J2ONOUeWutkwZTAImoe0l/V6T3D7Zl0XtWtRjsn7rFU
W5vPd8rrsLEHutQ5U1HgSxzDdpP7Mfe2FqrzdnwvlmfODCkwhimeTzYH964Xglf+QI9PNKGUvb1M
Ns/H8wpZXtEhbyIzlFVWv2MqjyDy0tHCarRCYXIDHGKHAdPvs5qj6kHWmhdpp9XvKeuUr+HPvcYd
xYG2GOeKyNwIJ+u7ypRSGwKDoQytPqhBvxf+7AG+oNpQ5mk6x/RcLxDSYY5UAQt2PKBpw8iYXiZl
L6bPr5MxKqEA1l9sxiC6CBcNzrpwh2+cpZxAl8K5FnZuKMvPQI05NdCLM9YNY9rORKqehu36yb1k
D+QY3npaDgXM3MZOyIeupjjt/DW4opU519U4HYLT20bMSIbwKmbF24AFdNAwVUs4pTqHgq1w8lMa
azCnalNcrDsyloBdK0n9/p0A7puuefzJsY3lHwF7ICfdVRKgJrHJ3jSxQhD37IRQLxjgdUDjtTEj
7TKhdEo3AKASKI/AKXLeouIu7b84DY4dUUqdDZV/eeurVTegfPwMGJBXVPDUeXnb6D59rTXMPcFz
jHPozb5Zm8iNQm2jOzLsSgwNMJQ3vx0gBy3gg82jOohFaZZv4ZeJgMdpu0Xd3KN/ZULZ8L5ZZ60l
kg34E2Y3/WbvU0s9olARAOAIvN4y3MHr2Tv/RrHa1/KHmx6Ze7hieRogBfOsDdx+4b6rUipVT2tl
rCc0NWVJcuVixghNx40nISUMkodVd4pvqtQsHAeJVu1FrIL9MKFkGjr+YgDHaM73L5I/2vc1tEPK
U7XjpZczSSGq9tp8PoeWz+tvLAspxqccwFEfeJD4g/RMjqCeF7zmtx3cEwFZDXrjNb9K/Fdbxvt9
NJcrhlZagy/aIXgc+H62g54/wb60vaVCQdHwoCD7Krrn+//AxygpKPU7XcHqENqMB9DRFQTUvw37
7U6Y5JXXSyJrXinsB1cuVqE+l3jN+r56YI9hYIct759x8u1+xz781qeQpYw51T7SqFI/y1qyK76Q
2qrF7pl2Ot2COL88lAnyhqsN19yL1MfirZfEJSDlbt0k4iYo9ObWphrdOWm7tLfiDbMXYZjFQcij
lnALPGNKL2pSWMTZDXAbXcUXMqXbu6fBuQsqUoI4uCUeWB8B5FfQdCbQmJYGCbcp2bXGW8uR2CwN
YG9tEbWh+WdplCZ19ubVqyCtcMxPFg83D6WYM1HFhy7+M1GBitXvU8L771klhKIcEJa2vAEAz+F8
51ZJ1V/tCBLCCfykOa4wuHHoFz/ILRs7SnJhu8VC8GiqWppMyYVZVzp7+Sl0qScGPGFOLAfXGPKs
8TnpBTTuLg6iOWKO62kx8oFBhn9Q49t3jPVzCaQtwa+5LAImZ/PitaVl/XIyw1Di0B1jKb2lL1yc
Mu6+cfdMj14GCmsl9SgHCfeLEfOyCOaCt0rA7zlI8BhCSXn7wGKypDYIx1CBSP+BgKBLoOFtAjSn
I7abQeR2YiX9ZQ+TGpFRaxy7HnkJYy9rULHKZoeV/HuGD3Uu/FEaBLi9X1xD23u/S1Wyp1Y1l+Dt
8J4H55pIxjg3kSq8ifYm9/mBqaMytnrMWITxDV5H2Zp4S2KYpKWUKe1m+P5fm+ZMmWMjJQzb0uRO
sjdhsMcUr8CxhJpeEQD6tAGITzbgGUVtD8XzSOuPIfNlHUDwU+i/sLEMwjsC16Sm/IcMtNAT66Vg
x/u+cTXxmNQdkImHJi/kkHG8ZKs2ttToY1zNTxnWhS26SIaWU2xVW063U4MbnMDZbf3pexsea4pq
+cCOP6LF0wWk1d8WXp7VAK2gx+MwO9tFxpfFeEBMuVb8S70UqSUWyhod5lSm18+kfpNzZ6GoasEV
I+qiacRKxsk4jz1VGYempMydDk2VVvg8GfOlfR8hLAcWXPIeEQZOIsZh/kNxeYE5pznutOabkxB1
PLJYBmbSU4Iz5LQCylD0+BNk4+TVQbVGV8ZYkusPzygYWuQisF/k/MsSPDxka079LjVZEQSegFmU
y+Sk2RFXJ6OlnF2Wz4Gx3HiVdvzIpyWX52iZIahsg53FjMSR8/2AxeE35ZEW6gpm0sUt1KApFL2x
rz2tXl/4RcjEaGXYYobfdrTLVus2wtifboPj+vDek25KMm7Nu1Vaby5C7TPVY7n6IdJKDDRm6DXw
q3CWCBysidXS9Y/hDnGg9WSAsy/d9HNs4xUVjJfp+YPiESkJYT306XnyjVtvIAxszKFLA7h99ppz
tDRYiVIP3UPUqXIVVJ+VwEm0nC7Gikv7od+vRRuzWiWqHExhsu10NdyXbfL7HcfB8j56a3b1hdvJ
L1xBXESC2r29d88NoeddOzDqv+fpuXf73AhAAVlFIgnruy0ewEivcRM6IaPoQefAaCQfxAP/4Ivl
Ax36LcgvFtkw5/Z9foUwevFeT9OZC8lhAhq00fozStKaRwp0iQsVU/5/jRu1leekt9HpOHBtsmI+
Lndm3ZqNnVcwfVIhOEoSZiK/5wwPKshJaG02No0osocKjVSDPvg8qayFSXztvh7IZ14jw2E42jKp
5e7a9+M2s+FMJHrVdbWKIc5HQt/r3akEUVXcJp+IWl3kVKtpqggg/Uh7rGlc8UWR5wqQPJPZfckm
DaqM+er7TUE7KnhnJwTyHjBhaoxtcPu2793G9rW/C9oecJToFZjGf3GmQyJrn7GSnp85i9ONEUny
el78mZqHPa73Q16OXWW4cV4xumJWlKLNTLJFFMzJEKIo10QG3cRzV3MBhnFZfq+MEqJAxEteNCKu
oXHkwzeT75TA6bU0sN2jJq4IPLCDYeNLW1wnjbF/KaHskRE1YqLLvwZs2mtcVyXQpfbtSK96PP5s
WI80p2qU+Q0ulgXzfc0pXgEXXJgQLZCF8tVBHXvLDqS5Q7dEifDklQKpcn34z+3krzOdpiQZt19L
HIp0OAgeFO06oZYQKjQUu0YGqwDr5VPu/gNP5eV2wakevGdAex55gVLqnJlOXkhj2UD4Vj2GGv3A
T6Zv+eTiwH597yly2X5RExwFfEnWU6Nj715dDgygVkQdI0Ii0Rs4yvzEIrn5T8CESCebqC5RBFYk
YLxZhUoSLTgBI6UCwG/R1AC+gaaqIWyzXpolZ3vd3qYcmnqKd4PLrwrgEjKQc4hrwYRb+dYjh2hi
/ycQVijZk2EbakUEBWTRIl3BGRUVTd3J8Ygy90Cmlo89Isxxa1SInAgpNiFp0n6e6fDkqVMAqy09
L3VTKaV2CtCN/XrL7rqV5q1oiwRgovuONXsbD0Q5/wTHxz4hlY491BxCI0/XfZu8tR58s1s3hMXD
3JloatRTRQ+wZ1ZFRIxSWVng+Ts7V/W7VdaqZfgvMbbQz/DzTVTeE1ABk8RAX8aNH8TQ1VQn09m8
G3pNBAdJk8yDJHgsjvzYb8fEiqazRM1cGQ23Jvc6NqRubmjaC9ywE6Rr5knyiXlRYXkkqClZK3R6
IGmIGWMxRRMEfHCF42qVdblLYPP06/JkRgxwz8Pe2hU2VG8DAezWie2fNq2uVuq5D3jLQB0E7X/a
81IE0yecm8qWheo9LQJwXPjj5xRpE/nDfzkkSVCKWpfillAUS79vwMMypP8sBHiJsy0h6iloXfM5
bIT0nPHcf762lAHpXmZf13l7qnbBh4cuWMb7827dzSDgw6p3SAGn9fSOOK0dt+CsLcNgAhD2auci
esruI0Tlw5q0Hbs7CqLAKKK/XI/xzjjac4uAKXx3RGhLSQy8clWlLG22lsE304GG67+SWy+nhYTp
iLCp1lXbucWJwWFM8rWAO2sUDKtzoH+hTE0Jn4JNFbvkySoqeqGGmKKL45+ePGmOM46jxZQUoPio
J6WJKyvfmUlAFMOIsOPx+wJMp1J9DmtK/xdJsLoK5RiNiqMQJq5SckxHrrvWNCKmEXnmDnSYFevo
W0KxSAxaOl55savz4BR5SVKYlsYub4kgrvD/CPqTX7YALDJhH+8eXHTChOzsZbetnFcJvl1tzHLH
aYMUEtlL/gFU1Hn+wFUHgfKOMsfa7wFW0aXhKfXNGr4sV1uuOtK7F4Z36uFCujI0hlFQF04L5yOk
glyP5jsdZyUOaZy0248FXP+/KMw4m2lIZ7eMMyg6aeCIadumv5I/0svV80H8nROFikz472iowKBk
v22uTGW/S13Yf/K3RJoC/HXKOKee+9umJ44dJwDX0J/AQHaFxscR867HljU9FwF0HFIRUPnFg51M
c1yYq6dgkAafA1q+3A0syLEDFlkV/K99cHQfJTX4be7oZ3ReVM0QNwI8EFhYNmX/UTb7vNhNfkhp
DGcPETrGFmeLW66+JKLHmkkFZqYH7QuAc8aTVlXAZtrYU7yTCRDcR4Uwd0XfkHNUuR5K4loKaluT
+XPhkpZeu6i1m4oZjmPEG0aPvLVx2aTQMVdgrxptvQgWHUP2M4y7x+r8qYncFEAgl+tOOByxaFM2
0V5N7A/afth/bo02Bk3p3t3G4R/JM+4XvwyqxI5odTsoTRN88CZAqOKU4NehfK+5gujsQXQQFxdt
FID+Qe1urW8y8h8taGBLkAYMEg/wPdEgLbKD98rMXm+TQf/d/qqwe2GhQCMuMaAOggvQP9p/ZtPg
NzLAcFTE6ickXiAlZzOKHQuhFETFXhGL6RSTuxk1Yx2AqW8y8wb1IkXMLG7VJUtj/ewqISZbtB9d
nSEgPg7lTT4DuTda3juMK0jU8T2KJyytZejA2jJ4uKrpQjVIWIvYD9O7ca7ySB625v64omaBxpmR
H7e2f1wDi0T0Shb5mH8ZZbHkq9E+dl3IA//MbxPC1IrU7saBYy3eeCG8vHbLp8H0B3tZqxogg8wW
x2F9TcdER3NHUOWnsN/fCx6TFCbxeFpAW/o8FcAYXw3fIW7pjEF8Bfduq5VvtkMoyFE/E7czNoXq
GyeWJuhlhL3KmFhyj5/tt4pyuwdzrA1NKGXdjOCuMLS/EqyWCdFDwkogWkBl7SQLetM3EKss8EpQ
4h/8roSRS4o9F6Jcbt1/lw30arg72L/9KzaHtaPT0E3jhOQOvD6Naw9KjoY5jLI9SOxRm0zzTDyo
EHIX49jUQXsAV9Irpe/fBGjTCyiN8TlTm3BbC5HDkt03g6dab+Wn8ZKfbm7c4pPlRo6u+E0NjSkv
b+kCtGMjagOrhxyfvdxzcn6mnU7WjJXlpivQ3XjyN/09K+K/z0i1D/0i4N+fX752DfHt1D1YWg/G
5UTC/bAoAtRmq6dGRQbJPT4YDe07582BHo+bdUiayGfJNYp98ivTCGm3WGm5DpfYGgV6DoZyeLGJ
qfQ5a0qbnWEGda5l5eXX+f9cRr2XWA+WN4btZSuSfvigsT43ZIVUFvAqH5oEZ3yraCjBBf0DDgmt
T7JBrenh1l3nCYTIFKJPBh1mDldNJbq+/7boyeS+1nwblibC3PIhIBuQnT1GxLjjIBSDWuC88d9p
4Ve7hB9vAq20plqI1onr4+1xI+HZkIbC6bDzixsHaBApkgvyAgMSQLjrw+Dhx+emZuPdXbCXDydt
Wcm34Ggc93NUlwTNLEk2MVf/U0gkxWFufnD4Llg0zkbEF1j4ySGvh3alqOYrIUE7uGhAVRMlITVA
1Hiho26JH3KZNYbSNXHgdf8CMitw1witCAoRldK+CWe9gJCzM332DvlLQ/QuVGD449ZHUHe+SGLl
D5ZKhyhBN0X5ov9mgD+JD2ERNu5WUIHOPK6183frC5JGSXRPZlzqsOIiguZQPPuIuZg8EMcNgX99
F1pL+emsWM2a9h2kCkSedjPCPH0nZjFs8y3aAKn9IAw8e+El0U4jWwVIW3vfo2JiEq5584BJnGlp
YN40sX7bOR0jc/Gy66VrysJQpc2QZBzG5O9UkUoJmRIBeDV+jaKY6xL6ODb9IKLUJ8mxs+wr6Fd4
fbx07hTp4eIg1vVEKswQe97NLp+E/9YeO9kY8Q7oRtPBj0Q3KLunbyxwrUg69ZRRsHsy81rwkNOl
COfWIdZoj6q6h0Fa20tMyn3xwekRAeqTg5yibLhKKXGByXfdtqwXWOUvjqKbIw8AEtXaDcvp0VBc
OsVUwMQDgjTbEgcblABhDKPQgmYvUVhuW8+HtEcA5DHTLJSsDSVuZSNbpcGXAeaaSbNMa3ovpPoo
VUlO8mInshucImRm9O7moVRW7EHVmIDPIxT9WoNIKpDLa9qSlL0k96Jb5QnUMXLTcBbsOL7aIqoH
bcX3aHXLi/yUmOKsN4N5eG0GE/wA3TrjMlO0nhWdRLBr4d4hiWXg3E3cV8v4F1PECI05NlSlDbYs
mOb/QUhWqJjkD498QvDBbeQw+YRRivGBP2UuuON//STKUtiTLGIrY0pW5A/iSYItFnm/KPgnf2n2
z2A9fZ3vws5osdFxMbB17xoBfl0UCkompo9BWqlfWRIKiuERIovCBgEQuAew7PPpfZyWJO72Uq5K
ILqoEDV5wsKhc7DnAEd1GAgiHDLO63j0M376ByDdviXSkj6VdbfNUtOazp+qS8c7pHzUxMBvn2KR
EHvAktZiHRGGTaU9BE7oUmSHndM5W21qPAXxN1SwjFXmZVethx8oyrxWDfl0RoagwncTL2i63Bqc
l1VcIvWXSnbVbEhWOhy4ayCG+Plvw81XoQh3fZWyiJHY/rfogfzYoupmbrqA8UADjWmk03+5fi45
Su73zi5MPtMsquRQS0Glh2w5ebAFU4iWzCoBI1hZMJ4/FMdEWE1V5NnI/xQcmW5R4HJvIy2SzWN5
NBkkoZGjcS2TPsgw5cSCxDHldRUKWGy9fS5IMg+Ifv+XQ6v8kwgwOAmopUSrFORF2qwjFTo+PsqD
g0UTUnetXERAtJd9AtIQ0XfdMrGB4bFPdiRfn5hoy8P1C24a7tM/oeEYbKB5Fi4esvX4miuQayhr
pazJ5SEJUuJwCDk4LXIo4e9F4sJvxlt3G2olfUc3IhrkMwIs/WjCFkGEzsCwUmE3FrKrJ71D1CjC
62fm1H6MsNje7u66JAHykMm7MartuFfklTEHQy/J2fQnPlnyU0Ykuq2Qi91gmFFRQQHLBCgk9bg9
Y8BgB2mi2CvuBt/qL6BD2y0EGxmm8NQ2MWkSTDBHyaC5F4PwW/ZanfZBkYxknifQ4pvedRxX83WL
4hgTFXUNrAmkTbiCKQjePMNug6mXPXVatN3Fu46DFyWkAhU303F9Mf7wgbSFuDdDFtNw169nbu49
3xh1DXUFftfJFjn+68lwvirR6nfLIqe7hN5OFrduZzesN4cPXDcJWPfZkFPaKaYQ78cOD4e5NYtu
TkssJGQXCd1CyakC9nRc7jvsiGHJIf3AhV97+zIq/csbp3GAZdjKSqp9Pos+NSGLfheFggGBgpuT
zGvUcYmHANfknwW6GjoQhefrXQcM1XBc5sG8ATNV5EWOEundvoWhYCET6+Jt4kjtAp5ASCM05oUq
ttJtzdxCU0+6AvVw1Ledk7NelYwMEEJrLwWwQL7C1+ttRVjtqMRgKorihsn0VtfnDoXm8BW9y4W2
JcYVVorN8qpUitj62j0bNYtJ/bVTW+nXVTn03hjIcBVVs3XxRWl7vQtgiZpUb7muCPAE+r8EhS8G
qC9i2Xho1HyHtDeuBL1/kkN6jxBPhdTlSLfWcCo2mD1oPJbLwjzzeUqzhbqc1DF42qvwPb5BPjaj
BcaJ0rbKfehLw5zQQ9iMPDUuv5b4D1CRtGKVDI2FurFbMC9lCLHkYWSOdCLPAr+ub+1M725mpzWO
y02S2A4VJDSTl7FVB6bP/pgLeV2z1Kcv7XJxjmx7iAY8DTg+j+Q/mQuOY9psO0qWBT6Bi/tkUWST
NjiH7nYAtuZrqTzcEOZ03vMNzwsK2l4PLmC0fN09IDHtQTBOT5/1yf7cxQLnngFYFdNzS1cRZEhh
wX2n8zPODv6gvF2HxHUgIGjqf2XolFhqqWvO1sCBcyNk77DfiIi28SjonBtpPCd+0nDDDPzb3wef
aeFBJb6RhXfT2UwtgiaVeF5UCd3pEKcPCEHhR60d606+DydLZG2eBmpDehve6BiuIB1yz2IFyEyJ
c1IpcVHzbb0IZ+F+Laf+R8cx85AQbKgX9m8n9H15Ahj38gHbZD2liwp0820ZKS0ZJl5XQ0PsXQBX
mK+i+KqCWP2pt9+H4N7idMztwCcj2DtpmpfgNqeWNWS2xsLxU+fpD8Wwpl97t4eaZUwurBQx4MZ0
MrpoYfXJ3oUG+NH0A7Nr/inHW0EDCW5y7caBfYluxchQDaNetXCc4pSKJELnbJQ2jqUufQsBVD7z
mWTNhjelVtXga9Li0LtSzN/V85Z9O1ujsZsDcif2urztYbXVTYLdapPDGxWGFqbwMKmR6l1Vfga1
Cg5AYIsem4kaN0MEzY70zeKTb0xAER/KihpkXMZpxxSC19JskOpgDWRyu1ONGkqC3kBAghK8+j9j
XrqezVa+e/GXApnzyoZW+Bcee8PdZec6/6EheiuG5zKxByi2+4qZarCgmtb/eCw3FWFEilAadYMq
zZ2VIMRotuhtvEXWQvMqSVrIrrz74DFGuE0kT/C4Yh01ADH78sPl3gUTELbBk82MnMCWiWBIbcNZ
EQEXxQE5QzNgyS7zCHbUx8x0EGcTgLXJ0wvTN4dPrp2rbpXUwZdkP1NFHPqs+QhbjKkS5xbvAI90
5h3GVkI45qyj7Lggm6GLe2lNPNCn8Gi67bYha0L1WZ5RU3d/FQkWLtkIQAUJypOlU2d644vZ2gQs
40n/3axaHMAIR6axgLHeiLFad4qSTb3+LwOEUc/81+UGaYsdXNbf/xJ/R2o+gmKtqKODArz3Z0+Q
THCKEpG4veCwC+upWUJA/oiEEBWShv2T3Y0SXXsiLOIPw2xlc8TGY3a3GFFp88kk8d691cwiFkBK
ptLxoN44JGsA7mrghjZbtY4jmWLcR1levGm9HunQDdjNeUv+ZcOt5N6WyRlQEO+CfrnG6ARQZkwn
4XG0+3wCUcA5MtM2t2BplGa1JlmgWUFBeu71sDRpDlT0CBw4GPG1EuMe7GCp8/hv+cyK7JTObw51
fZHlAD4VxzSD8qgRuspgj8ps3EICSEUS93G9RXcoR1UrHzwulmd4BFnzVKy0hht+AUjieIcgDdte
ZHEUODVBoJYf8MEaHKY1fNfT482atdjr2Lh8g1a2Wrv+HPCFWiTliIw9Wh71RP+F//kikIe6NP6J
kreXYJDBNpwzpV+A9/xJKbZ51K4/MaZYc1lNzLritfWcWRtXPfevi4jAA86mIzi3IXVBI9mPi58a
f1/6oyeyTmy280GTSh8sT3kjhGcJF8wG+1DNyOq2AdFimPgicZPJLPLjoEK+rCZjkpWaiqVAZ6/E
tKDTDvsDppwstyCXosaJG8nRjeoScG6mkAZkGmLqZPkVQWIBvd/kQ6Ry+DMoFLHQoQXgGklwzCC0
ymsWhg5d9uohmHCaJSjFWMVrylrbJR9qFGMNyzmiLwyDDwOdM9BDz5c8f5dGPQKzsMRxIskY4rio
eibifeVz9Pncl81SxpyXkXoDFjY786d/SCuV9ghEfT1iXLVQIKAT/kou5suUc9LfP0I9+L/Hy9/U
eiHVBq/XR+tlpftN3sSTHlYWyxQIFW4Uhc5DFavagD6C7VXa4I0PA25BZ6eB9pfQMHdi0T2ebs0n
tEcT0HeJbsjm5P6hRMFAa51KTL5jggd4U3kzeYCRIcWHstg4Dv0ZQPPHced6lT3kd2nca8OC642K
PK52h4r98m1YY6pM2hEu8BAJ1AYLWHUUVw3VnWK28Q8hb/qDU7c1KUUTBqIwoJRgkLG1WvJBGhlc
1zJzdiSAd9A9ahYMIpKPUexk3EXjW/BO2JeV1vf4LYgwVJYm/LcVpVR4Aw/X5dflR+fb4i914wv4
D0wH9uSbFljD9I/YxQP+x9YNt7fhLsKDwRPvDj9xhHxyoSrmA8RbHlWe7drMj9Psr1sho+CzEMk/
ZcijkNyyWpiHxIo5tgiqrjcbSzs/MNyZ3TlAU8spqw9tK6+2npxdms3j/pvQHcIeXCd6QnhvxBY4
87njGAV4hSUiygc61h8T+pTpHk1xEWKD9kUB0nFCA1Ry3qglwRnOzdvGSUN5Mbklv7LccoHEWnXZ
u+U1bgXmxgWo/Ak58+EwVGEkDa8je3Qt7YZFVeDKtsRa9v5D0YGhMI1xXPvtoEqYEgY2zJDFDdhH
nmusxoNPUYDLAWvyCRrKlozNU3gVitPT44YRRwktk27NRXgc1tdtWNdAUYMDvF8EYh7Ax/cL2X1Z
GDl7JE6b/R8hRzfDh/ChQUEa570n4USBvIGiWF4VQZZswSaNVuPP+gAfD6qkL9iEvwXntkDumsqI
aSp+stS0YEhGzt95R90t+pY04LEN4UwgKwjOzXYPmLyBMQI+TZf+jrR0cfAkaumVA1zdAZ5bpOzk
G7GlOdBiffLT2HP7lM7qwYwFRcoS5bww18J+ecJQmy0evURvcABvOm7TO3PX+h3NmUXrLKniplpe
nK62FGjaPQU/4i6wBhYO8i/GvIlHtXrkkzRqiix6VHuHsCRS1mgv2B1ftAlrf0Op01W0S0j76Uq0
cf9BojDogVi2BViU9w1fcuvW9JKL8rVlRJfoh9XpzH3PQ9VjhFd9jNPMlbaUhjYTCTKBK/uyeIkj
ycq7tkVxn9xHLXG/TOUG15CBRGmLxJ9W5VTCTGu72XCgFEcz60SE/SsSWAj7GACwQ6v07e2Sju8g
YszC0U3t1KPsDNwSzKWvOrtnlR9yZ9yt79zJeIGgGpTp6QjPdzLuLibMm3Nrk7s6AwKcQ1mryQbb
j9LrfbthJYkVz0Grtp28Lb7PRWLjWmv9FOhWpcG+S7+XcOfM+ZcyHDQ+DgpDjdVDPTDsy1BNxY4q
Rs/9KzLEUqToW4Lxwx2ES9z/UXT+1N4S8v2UTR28Ir4JDCdLEXuZQW/joHWQbq1EKtlsLZu8I0UO
xYpzXK6VaVwK2D79H+DX6VCgDZwbMs0pK8EHO+jM3H7xEHYrAltI+ZQpmu4FZwzHpSh6uHLum4e0
ZtVV9FVIJmHRve0FnptUXev7NVj9Pilyvc4z9W5cR6KwYBi5GNuhDkIdxbQm+lyEeynSSOf1+QAJ
oufCVB1TDKQYXMvdOP3NTCvS9cUGUckpIh1Ron1npRpWI1wPIgqmZKroIhzoELum98MhjpkrM0LW
Rm4/MY4IC5rW3je8ggC5IKyQ8zeCHjHJywu2x2rFuTlUu3o8V1ss+b4PdyCZXPFCCUQ1vzrzaYJT
vlTF+d8ETg+aJf4gYOn+Z06VA9Ehic7ttd0h9MXgra1S6b3bjUg6pOUJP1oZMHx+4pp35lK+XaTj
ZtxZluFnE6OO9qEHEVB0P7pQcB/V3ZHOIwRkP7KQMCYCJZwokEXCBPolGSeL1EMpF/Twa5cUZeg+
wHH0eBbjx6LTAjkCp3I5WotWnsr3hHbZNQZ+jes3ScOo581BBWAubYMVnK0x8ouGe4xD/IQOLabe
1/OcN3280rGy2cSLkJRzXyGkq3+CvfDp7QFI3crdSHFBwHez55V2sqW8WvcijodcQAcH/fh4KXX2
ODIiMC1mLmUqLL+kxl3+89nUa+T01FzUw+tq0oJ1m/ecUk8oy7iFtmACKDHg/+/jTfxX8MRT4IKP
ZRTJ4VRRbVxDjvtdzgWOA2AUk6Q9pkZ2kuVCdoslDJdUXYJN/NHeTWENnIaxszu3G5F1M8Y5Ms/I
wFXSKjo5J4tAUu/cjKbaNPdehXGPqOfOyEVNYoZtz7jXwaj0YUpKMf5e9u/u0w3ublYtRQnPRFwP
hqG/Ln4t+RYxUFZj9hxN796EJsoyBC2GWoq2XkqtPmUqQsSjZa+QqWNNbK76sGHbtj9sFMm68pgr
C6w0Z2eoL1srE674U2EJVy/hJklutLMTuph8vitNiUETya2a/DwE3gUAJlolaiBfsncnFw3c9sL1
RR1Brwo5cJMHVtqbpj+OElZamzyuP97IVEnVNG4/5QVN1fPzQehpV/qNYWw80agf86PAL0b4Bsuh
dISQeGjNd64508MQwjFwIx7qqTRMcH0lCTalK6WtbKhli3ETOlTBOfkmCCvHoSb7qwMAIFSDuQcB
Iz6a3Na3l8P3NDm8AaaIJVqo2LtkX9QvoFjjkTGAC4UGq9m3MRUwKBuHqKKH7qFYIpgY2vQxuUpT
okPA2CFyBOqyrqZSNzL8eSwTqYaHq3WpdTMsoIAjyo3q/pZfrfoeNNgrhmXWYfG2eodan/yfnCl9
/EevizG4rN7OmddqYc3Qtk+Zvo+RpC13u5DCMLN66rqeFGh8TBmaB0D+6EGtjEcA9ltRsOyQUuDp
jSkE/81kDktsL+zG+vZh0K14kGvYz71BvdBDVQX81AEbFYnZ+syiYAA/6BcDQAndrTF9ezRF9utu
vTFE+qMq183Ceja6ApHjKFNao1OLDBgt1iJ9zB1Ue9a0lVX70RMdlM9Gj0FoEZ5VbILLUfAX9S3P
N/06xJzjCYF5mpVKsYFghn8BWF2jS/KKHuKHTEWYxmdKVyIEZdDfqw5BUhaJGlf9jHYFQGnf57Uy
Zy3iyj8K0fLofCimd5WdSfzbjv0dzlbazSpgeO/WkNR3Hytuqi/AHbAFyLxt2UXL/9AzbHBdjHfv
le4mugQb+S4btATjpGl9OY54Ut+zAsfgTt/dEJCd2/H6T0YIAQkIAnRiWzustiCkaurTsMiJ3sO/
NvCfzZ+sOa+8AFx7MBHnrJyjWyO2cRTaRvHkdRSfgks1eSBo0T7sjUNv7OOZFC2iLtetNuaNAPmH
uPmM/zdsIRiZVfvMuLYEck/XNDAdd5vHgZVO3CXiZ2nt4xJx9Pg9ihINZFwpZ9IxXpEH5Q0uUwQP
mZ7702zN2RApRQqCbLD54jUniZTnb9k/c8u1ZW+D3ax+7iLyLQOZKCsecZsze8jT9HSrplmMGtCO
lWOgdMK9+xFPvrkPUKwQ63Q9SYCl6KkOmKAIYZqjxDXoKNg4bk9q6uMFa5dLVmcS76gQL5Pn4pY0
49XvuGVy2l4y/sbUklgjXDKbS/RLqQCh5Ys+Qjs3f+GlV31JZn1p7m8sCMoxez8Y5Zcc1dERbvGO
va7Wu7E0PrZ4eHGLpAQGIyFuSbI2kLT/lJMv9tWMfX6RkViH1ceHL5gTtSEyQf0OBDZf/v0kgrdp
ngDq/myxtYX9msCvt78HLGvTtSJAMNDOi8/N34qKrT11KAkNv2uVliXe+KljcwMdha+ZbPZP+8v2
IAelSgY0+bs9btYXtzj5dV5jcbpR951B3xrhpqZ/qzavbuGovtb3Xe0U2LmvXcHWMAeiuONO1a8r
Mi1NGY7R3uwU9ntUH8N75hldNngTqOc4iwy0VPsQvS3tI6YOlhaEPHNeJ2YQRfYRMn+nEfQUlQRY
IE9k0RWxwFmB20r86euPELiKlg7uQRH2yyQG2Vl33H3kyooT2XLOOxDAS1KQ4wvA6KOyetsdgCWA
2Ce5RMwzK7ZAucRME9d7YiqwkoMj9CzYWGLwQXY0kaWeIvB6wLruCIeYdp8avN6puzB8jr7z/EkL
PWJXqIagGAom9AjF1iFVc559qoqziz3YJ5moDecUR33nYS/JKqIO29Ne9bkic5M0WlfXQotB5kh+
8TyPnD3ij5OULJWVj2S10QBVp27WOOHIGtyS+bDm4GbDgYvrVBegBU5JFm0luIVoVBbVU21k7VGK
7twRJtSdZ5/87n0uwMvYqWLc28bvwkWXixsCnHpbUdmEfYDwNYD976XMOitnnb+ULD5eWE55Vixd
/xAyAaxXXfOwCQ9JD7nVfUxoB9VWxKo9jBv+IKPoLVbABmGimBsggTagt4ZiT/unIZsvMk7QO5hH
ZEq61eFmJtHRXDYysr374M6d6js4lqtWOCpV4Ed8KwkWSehtkfKpzEMOMOV/ZVyAQ9gfxIdalhb/
O8FJVW1fY0HGZpQSMAXiZ5SGbVWz33T6J+cfi8ksb5WTvAQTSBaZhqh+U96Wsw6O6DX/j0tTWNNs
nL+4HHMOcL0NuKvTEqrA84bny9s5ZPyNF4fAPAanPqrCFvQUsocLrA7g092M7q4oQApxLcWG+wmx
TIMqxoGG2+yI32UxOP5CPJUyLnL6z2vlHyesp/2JAJOAbiAParwzPQTlVTQ3Vy8yLR5EKRjiUcyc
n9B0lnyCyD1gBu3qFnjfpe6tamIVzS/UGkn+0l75l9WZ7VCrHDv4dPW8HEClYQF0JT49qs5GPlZD
gn7vwNxMJ9QN/ibjTZk0FwGhsSpQkoU09Yno7MuTUPQ0+MQclNyXlgqXfNicaHPPj/+1NxEW96d/
BSO6VDkUjfoDoCRd4UF+LGTT4lR5B2aKiZh4RWxSRZVoaRwpPxvaspQajsmF9YJKX7eK5K8VvEFR
3FsE2IRCdqXyca8oW7w8a+c5t0GUNiUqqjYrjhWBjH7IfrVvHyzaTC+m2nrXJ2+1JBUygoL+AWOo
dBMyHKOQXeVODARzOjWmrcPQmcxzx2vwlwiUF2yLQw63mt/K1p7rB60H27PDwy8IYmjWNQc1ayam
eFye7/NPyOlkkd1EV15bZTw48W8u+9qqoT7V1L04seLDxMZHusCtbr1lZV6NNYvZ42UkMxrboL9j
n8LkNCW9YE6G+tuZBJcIKprJrHMps/oJIC5jtg7rCe9Y1RsQ4mo2JQEdTiY/9PMwUbkiY6rwe5i2
l1S4bV97iZ+bbBrmZUEcOYooU9Y4hedsoiORfw7k84JTqoLLJ2e88be1F4PDb18661NSACmx503+
XWV+no8z2yb5TX8kzItWEDoBtgFnM0o8HUiWkVu5CfJNe182Q832WDcCLG65GypqL8470M0Dx4TE
B9FTGzSkNpd9WfLokMGe6Pd3T49Uz4FmvXctEXSKC86iFD0J5bbkHTYmZjxQs3EG3qO/htZ+yimE
vfhF22YJEa8OHf8Ffx4zNm3Chx8Ujbpp3Rt17KaToH7FQbbqJtCnVMvpyKwnjF/FML3RQm00b4kY
H6rskQYhB1+v1It0P2hdZ0S3Sjpq1Z3aDGbi2t2lEngbYVSa8Gs651rQzhXBLIBNkKGYCXJiRVMp
aopBQFt//uSWC4Yc88NgdbSyunuIJ/Mp1V4ZABr0lVOQAKBYguLPcLCRC1igR6LSk8E+PQRFuCqJ
L7voeg1+ZrjUqNEjqv1CVeWg8nDffpfxZxYXm7FD2XlbcILZNRGfQ4MwJX6TEOkV7TkD0hj0bt32
pP/1Q9DB+KG2E4xXwEKPYUfhXV6QOpDEgY1a+vJRdjOLmdsxXGDkqVm8jke9CMdo+iGmjaHDECWN
oYc4SElKir9ZRRqdTTXtKokQIgP6TuDkuWrDFpepr/87wh27EG2+v/k6ywxeKJGU/8l32zL0ncoo
agtM6R+73BlNsTTJ4rXbfzS8SwPaMqSO+92FxiLkZSXM7VREA7Bp6HPvETJaxakhtmzeI0qXG+Ew
ux3zuAYBx2539edL2ChvvsafV20jKVYFFAp5Y2etNOyVQkmKkA3HMWOiMfDMxRmaBsdT1bqiNaLg
STH1um8LJ81e7zcK2iGrhmYsPX3qexs6dauPZYIosHl/TNr4yzwogu06Jv84t0XGZnkYwmJgeRvB
v4+vkhcAcixBoMnuPIbGrkVtUez09VlxwF+3HPCDJerO+9/tD+smi/chAHC91i9Pjqxy909Y0uBC
YLBkXlRYdgjz5/7avgP2C+cfOn77viKRMtt7JEhEdybWyM6iC9StSv8J+GziV9JT7nzieGC/z8Zv
A84SYq0CMO6ehu5lwWMEv/V7XbrOwOpyKkFoCNKuvNt5ghfU5OQVBXA9kLwBymgj2DqQDuBEaj0L
zarIWQk8bege1lu3d5K/rD7FhiK3gIbf3qfHQdAjxKT3FgAkG7iWwM22EiOUZluvsw8yvBpBhyDl
v7EGNwF/PxBcpqXRxvo+hjGgHOwv3+T6k0C2QxYKnE+ntP8DAlG91aBILxuXN2ybpTHnG6Auwx+0
Tl9LUi1a7wHw5Q5RC/LT9nGQgVfNRdP/bqf/DDWPODFaO9YR/yIpkMU/JfnpSL8TE6LWbQclfxOD
BLAJRRdbwyajxHYw6NPdkGlKBl9n/ZSzsxBcIH6RafjBPBRkgrDslw5edGw8qzgDogsft83IROKe
p3J4GJn+yBid3TTEKhYlhO451AzhCdqFMahM0kiSD7yc6l4tu1TNh2hh9nmqiI7iER3FVzHPgtTa
Fljx8Voi4QjhTxvq8+xlSSYhFpfCZQ/B7fioOb4Ppoa3X26iwq14Za+VegjJ3i7swgWZinmdC6bv
Dk8MyHtBptclN75hP4/ARLnEAqEyaK1CZ5cDXdMA757zuOLCAPIa82ZSAyxpYr6/L5nC9fwzr7V7
IzKW6yHmIjJ8swty1Wfg/t7qE1B4CZWQvLkPq693/h6v3HexHLgxrwYPo2ODYGBW4S2sWDEJ9+FJ
Xe4C+cndoUaunW1mwd0c/LNl56BbuXjwVyhuMVvMPmokHwybNG3coMgY7uDBrmCK6HN1hOeoVEkH
nLKvymwfqWFRHjo2jOD37eGO8xU7vk90nt4KoXUprFGfOn3DcDJ3xqjx1c25vlIhx23dY2EQaXj7
vq6BVlWLOXuuoXT9VqDnb3riZ2Ygf/WoS/a2uzEw0bVzjKIY/WZ/uVH6W2FtroMG7tS1rmFk+VMq
QHyFelwOp1FqKM+vcckZ4UPwWjNEofo2Kba97PpPMqelS+BK//aJbbstfkZVVaZ7tNdZQTIjNSXT
YNXC6a0HCx9IBC5xvro7PlFYxwKpVa1ByEULbcssXDPRqx98N7DyaC6Uuvy5W32F52rasB5F7wHq
zGoCz0/pv4yLbqLrZ6Bu2cEEA1+jAiy2+vC7mVojkqV7a5f3T1EEkoN1iQxLtgivzvHiL4PRoYKA
BtcCEfiuZo8qJJOBVJistE0eCDb9vSsFKDeIU/Rn+ctiN9TsNNimJbH7Pdyoo1qqXmh48vODzDSG
09fCvHW0mPTnLG3LtOMLdTKfX2U+MbvST1dXb5ZWUd4iZ3u15zTCbrkwpYo6ZRjv529/A37bU/M+
Ij4L2Zylp2c+0i4ksCoaXtGlMU9mqvLibJ2Dn92NC0rTXN8wHAIzGsXJveZOHjazSmgAb4xz750f
NgMTFoR5sfJtUPUQ8rayx6Z3vnkB1cfOqW9VpDxFL9cd9FZ8vPmsI5xYJQAL3X0tivpFFbShGaHi
xxI+YVwHLchWAhoH0OSbKsyvaX/0w4wBGTi2Ym04GEq66Qr002AjlK/QuoiI0+i2Yiby4xvl8OnL
0qpRk8FCi5ARJ3WW4sWal6twLmnKLXt2JOaeAf2cG81go6BpMZV5J9ANTZfCpheNoOFri+0Y0geo
Lbl6p47w2LMbYvXeIZsc/TNtUH7ZAcq14O8QLJ1LVlfH5vNnOpPHwM94c5U1lUHhcAU9p9/fpJVE
+JSWjM+ujT5gVgrn2S18r9PZ1HbBSFOM0IVyjDH+asyolEuomQgO1tyz0ZSQpNSmz0lEnbbQ2Ure
rYIfpCE57Y7Sc+2lu9w8V5/qX4Jh9n3m5HiO08Hlh57NXH84Yg9bBS6MRd/uPsimBpYblNVuNqOV
cbFo6t7DOa6G1kRTVInvykQXRoeV3FL+6qqueyvcjoUxsrZvHg/aFnSabq7Kc9TQEHE2S3orrm6y
bWAZL4zWo8VyloOcOEQTdVzfmj7uySoVF4HPeikWRIH2jdynFLqL3YlrYl0rs3b+laMoUECuVJQ/
v1VeSX9c8Qvm0CI59CDrkwPJWxEjxu0yjLqMJAKw0sKlXnwXWtoR4W0SlopfCiYxRvWOXMIqBJVT
Yrqn3nt/3xi7NHF2aYLbV3qu0zNzOUKp9Cv3j4xD50kVQr1snyF6SWqkaSZSF1xmDPCDvq7wrHom
oRgpBeJ7UeKE1BwIuJJ5wpAwTxeBY6tPHKvbU8ZsXwom5eokPUDdQLMTIQMsZ8yjSAj7Mc5ZfndL
LSh//kd0lH3v3ITTHbkU57gb/MGMaJ2fvx8H/acG/uI/pvCnO0bRAKTn3eZjJ2XY+gv0hi+nzmLq
x82+TAVgtfvLleED3/iIDe4k+bv9gw3+q5NMGaljAzUjklMzp/SXO4911p4w4wfsap5/Jxlp5fiM
b1H9dX3BoJTE3NEznJNNL2TwwV5ZaI8xpKyWri4m1CVU5QR4AaiTHwJcSptGrlJjSkRYlUh/pZzs
V2XujWbVaHgzE65CF+Gb++RJvsvGh04uaRee5Yl0Gp/imMKb62vvoxqhAyAWbHfVMqzuC2oaXiNW
SnkMajcsCHAXWZRUmf/42yU1QBAqBJZwXgN/+pYsqJfaD5TzNLUCxW+6cLeVX1Ct9IizlkJ6HDsV
KXlHTuGLjm17BXdSjy/SqN4DIQHY38N6YI0pmVjzy/G7c/x9n+aYcPSwsi6jYTF2FlS+29mLB8d0
y9OIrJXEa/2bQtoPehG99i3afThmuHNM7ubs1nT1kYEozFnxr5WRLfXno7rHcPdYvVBjzRXQRXJ2
KZey+5m2HkwtbRaL1YYAFMHCwDeLJlK2wQa/AxCgHQfHLEIyesWlsO/70p9UDRg0J+VsNLmxerTN
BpPAbmjD2iECZ6Dk4kDZpmuKoi9RiVAqPhuzlOJO8QkYdLFb19UjeODfvLl6VnT/3XaRoTKMTInJ
Nvt2Nged+Q2pJRV659Pg6zI29Dkpo1Gp3hQVhMwp0Jw2FJDhjIRCI0PjBHojS73r2vSs9GwKyJFo
WyE2gxZDSiWUVWQyRa6+0L6LGsXUQH1DCP4HEEFplbSygt56ngmrGPRydtfYhZTZ2lTdrjV3sVRx
gcnyBxVfPBgSuHP0gLewSxtcV3qQb0OuI1psQHYU4y9e0YrWWj59gsY3hV6UQTv696wIOFbk4suz
HORwx6kFP/H7WEi+UXqQNKcfuqgfy/KFueZWHNoYRmU2kDQ8JDNnhGV+R9u6r2s5MfpqZ4C0Hihf
N1my2vPo6mdczeXFzyHyH90JBfk0EQpxWWdhN9b2zmmBS1iFfBegLvBwExJNYla5YHJY+f3RsgQj
G2yx7b808j7Mg5JiQHoufL9I1xutg5F1SYH+96MESOYthXHeaGDkIXpKs1VKIvv+lhdNvFq0u6Ti
XESkCQ0EEI8iIzp6E7zQcbcJn627tZDUmCUrkYmuva6f2my0OKIO+H7AQuhGT23QfWDn889UKOq2
FUQyoKdzGftRCZETQRnwK3Z8E0aQ+hdAYQKZX1ELCb8BBfQ74cvrex861g3HzBNq2du+Yb5X807h
vS3/Rt0WofDLXKgBM/PVuL50fG4x08AnI+2AAMUn/hCgdPDesyQbMR5h6f2TlKDbBOJLiV7l/vdZ
fPMhnGBCbKLiJMy/ACSGiFPt+OCVrWPdCimtUOn5DmkmsKaylEIEPQlyiETbg2xQsQlz3Mikn+cF
6YzR/HIWNImXt0NGqnTpQj5+mzk2bpQMy6Jpx5xsjkt1DOPao0hWAlhjsoY6VKE9U6ZwLrbq0mgs
CacRJPqJuWwYvC08I5OtIgAza4IIRJyHyprW2NyfElKBrZQDFf2PfMIUMWqOeLknabDkGP/l0gVu
wjRBERiGrluWPBEleBmTMs7Hw/o+Qfd6fjTfeebs3F0T9EkX3eWAbPn4D1K91uqtWstPlSnV47G7
p/oMb2NlrkcWLs8snK3gTepuFGcaGxs5wd+WZaHPn2Ml6PuHIStDYm8kA+mvnf+w93AJsjVnyd8g
maeJPKCmCfGG7NEyTywutxLlURGGp6S8o9Q4RQ5ujFPQ0c7OFyu+yNXLxL+QnIePz2MKy/A2+2id
560KhI/cqHM+ZMgfI8GLgvveVFMfeQJ595wsYybjapmhmj8MENl/e9Roqfq27+9LMYnf/rJY+TG4
HWcj/bpE8sayKyorVHcvomaCpCBfvvknp1YhvVAITGzFJqs91F3jnWIaYr2q3cqN563x1kxUo2Bp
AM1niPEu3H5tHF776RE595eBN6yfzmTzW2D+c4fe3L/wAZZuJ17xBqZGKpHJojrxRyuDDSx8CkpT
CEONV1r5nkMjyaw/pdvbwv/xzkoxVVF1pUf4NaK7kN6/FUiSOB76JPAdLnPvWY5KqakYHcGHdvh1
38/bAGSTGadaFBziTITSnEk9N3/QnVi72NB4h52rYU9EKRJc6kWE+I2mTqqJ61sCMfKojzYtGGFT
qP39BRykb60ld8wUeuRRANTQQnSxBALwPCnYNGptLtTBaMUuUlckJWUq05Q8VYQOcB+VyuIPVBMM
BybBzUUio4cKAB1hEPP9TpB+JufmQZ6EzQKhawic1fCnN88q3njM3MuDHf87o6ghH7wYog7r4j/x
vbkGyaMHQbEvcQTuEBLSz7h0wCTw3jJg7hDxl/TbiSa1gaecFXThGHdMmdgFK/M8CEHksuK2zR2y
iKvAFxIHhZqOzpKYT0yjLLNYfoo78+S7tiZR8KW6D8IXNPVr6oaJz6pcVg4llTpcpsB+FcAWDYoP
skIoW9Fwr8bfubmCxpKS2QSu3f26qNsssjGaQ1YIjkGpT2+VSX7TSjS8ZLOwVYi8TCOYx+0zRPdO
MTqWez6LtZ1volRs6VBxOk9FzcNzITANVfTwsq5YqQSAUqdbVscn1pJ2DJozWjCMPdd9Nb96sKve
LnZGdKS2AZ6M5OgSYaBlUF0SmpIX69oVP8v7IUBWgpemKu4KFJD5WSECYuU3uzAUuRb0/5B2D0zB
BB63s6+lkPDLrHYtvYOWz3SD5dWLmUh3hNwB0/RfrQVZWJfRLG5OgGpm5FSyBA7BDPhJ4/zIR0Wf
uQpsvipuKcphv7nbx/lfe5KG1U95BnCKCKJK6t/hlfDfcqZjzeFaQG7FezH9z9E3XTsD02jCCWcx
+md7LDpy63TERM5m7kkJ1hJTIOqVLI5VdFIqGAhpitay+DNPZVp6DybZxEr7QrrfbStViF4OfNHj
uoeUmvEA1WxiaejAeVJGqQmtlCZMUlelnO0ZUFT3clBd7nL6ek12UYGnja6/cschOHVVAkWxQTdU
W4vfcRJAolSdNFR7C07agRVtqFew9kFiXIKj8xKcZljUJyzSKPKiKds7Q6cNA4KSBntfviJexPId
Ak8L83iOT7+qzBp4uLU4XexnkbeCdpxg0fm1RCRTk+okE6qRfpmwizSLbIm5TzjLJA6I64w0HMJZ
NhDIt+dmzKvdy1YEAjX6PcXBq6tAy8tVpcrNV38VQo/dbtdgvJ0BN3tqqoeq53pnvFLeDHO+poB4
7AlNkVQrMaQSyiJaz2uS7R95SRthk4WPugsb+wvtqE3U9MF2iKxNHyfe4ZWOI3NzEGoYcuQXdU6K
R3aVExFQ2fc/xC7D+rjFe7WcreyN44abuArSV1iBljSg1qaTG3z9qZzPSuLbNxKc+bQbKF0sWSB1
vMSyASGRzPstDo5WuiFEd5oHVYSz0HqCCfZTZi3h6CVPA9F5rH1EhnAyDnknauiKxKhs2Zqk9Raj
SdcpckHPjsCXQTNKN31+F84gL9Uv1leUQX/0g8HxvfywLdCzn5AAVyo0DD9aikAlTSV/QPY3LWB2
OQwv9hbHaAAwgHZI2uNUZKlCew7/Gt/4KrqnMOJKzSVCWnTA+cq3zhRXHbonxr+wFXaQ4+hIOBHR
TabpnhoHP4763qu15DgLw2YybwvDZY3CTiof5E20+bdR9rdpkk82YQB36/hKn1cikTwxOVkq1hbW
vWNQuI6Es1WZyBNL99A89jDvD6XzgJz4ud6UBiID1NzFGXzSJJcDlUjQed7iJFRz7sBtjhnXzLLK
0HWQTuxnT1MKKNQxZjY9ZGC5gveZVdxAhhTuCy+Bow0jF4F7AICsYbHAy11bieMEvUX+eB+wc7Sp
woCzs/n9kJb/Xcl3HlnSvH4tGVBmLKChzOq2SjLbJQwqhkOZUPPnv5AtuaEjBG2Xd3iUl6fKbSqc
DyMZPGOPWtAiCiw+e6CCJuiRiYYNu/l6EwvPCwClzcB+LIoDEjRI1nwPtZWcnljkY/E17bdb6K13
twhINFoEFB9WafT4yKvumGP2Y3sB62purlJX8W34sCqHdre7xII5CUoRBR3u1uITFr8KKFKcbXo8
dYst+iRt3UWQV9pAQXEo12I/Ob0aJj1L0K33IlgsgEOQWEH8bBDSN1MuxXSMWTlfSW6ykw9oWjmZ
x1MSFxwi5PpPXNX13T8a2RvPpRbuM+UBSF07eCKezhhoUyc6BdeqqV21ELfVmnu+9WaK80/s5wcW
CCZqkzsUSxMXScGt1Jnynyg4XW63TAk+ys2/pR2mqms0kVwHKtS8W82ieY+XJRL4lKYsxPW5sXbu
hBf6HKWg6H/WI4HvdKvkgCtBmynZ86XZuY4oOm/hqrFy8oRsx6u3Ip3ksryYCxNXyrSTaxD/j9PC
7GxiQ5WRVpQl+vXpWanfTkvtA+/lWFGtJYvUeEROez10qzQHSX2UKJQw/R96ZOzncauWPBVgu4ob
QnLCsH5oF21sO5NE5LN4MDRlzKPfAECc8OPom2wMT/4r9GkVuDgbVO7lRrUSZD6hE7usSmabHePd
NFpJ1ehlDr+CQ01i0P3ZshRLwp/tA1NDyytPhi231n01aEsTopfYi5a/M9E/aWjfBKWPO4dBCkI2
EPLwpKMTe723sKu0gJwz/mHzdI7WvbCcJk52gAxfTvnEj7x1oNvgk7mHaUiSKRxYbPLiPvyXNhGO
a7dwjrZV+WLdKzoKIeHZEFIY68XTeXttEYoDiS3pUydeqU22aobPaDxbwSD8w6LxxFKNiI7mBMhi
4nlDPTFcaoSIuTT8YXHZeyIm9f9Us3hDt/8QQkAhM6n1PuNcy2FSm4h3FHyvq9LCYKOdHWFa7Zqy
2nDmLMenZQoy9Tl2BDpMN8GFyck9n5zzBnwZIGwDWzA5lgzmZFvlUnS/2EpJCPg04pjb62uyuVzP
orSl6Hgix8XgfyhXdbl8Jeo7R7BBvP3ni65MSjLHc0Yrx05Rp9a+1hi10CwEwqZVgHH8RUoaVojq
pCh4x1vmrkEyNEWRH9hdujqqjz+hDBCRRnV3Wftt8tfaHhQO/UR4am3pO53aUyaZjtp6PRVLniWW
sogTXkwlomhWMOJzssZBd3V91QvmKFvwtmkkpj1uWnA/QpT99LlyBDiv8YI/QHvRwY9uQ4PTdR4d
M3yz4gKygf+lB792eTrZEKTyIBDk7gdXBUWfP6QpuvHGd9doFsjP+Y7iOhFvV+HG6AoJDMrdn/LC
yRIFtdxVaAnadAej6ohV24ioqbYuXc7HKAyk7IaNpv+6AXdrnSGsLBq2nTbuxArvsLzXztfFTTef
1E+ncM2nUsvIxTJJoRVzkHlDSFXK4+uarbut9+eTiJ/s9/CyxpipSbIPNukPnnK3nvtcV+OyLWnI
W/4F11h+WYCP9ZLkqG3CyF3wGLmDYNPwDITj/tCy6glO6GVXi5OFXIfam3E9HeZ+s7qKZzK4iJ0G
g+FqrTf2ldOxNP/ebMiDqkmdovWHyiEs0+UhOexqDeQP3171C3FEpuarweE89UmsEnH1bRAnpq9r
b5oFCLp9HTdiwqMMsu4fFvAYPw5Vk9tcW/glF3Bi2alh/Irwj8HDLwTSB0WHtEdvdsYm2W55I3Xy
dDE4IOW9hn3mwpD2uIVg97JZtBepoYcpLCD1W8Y8j+jlCNyjspzDd8ZwfP1oaTx+/9CoDpIAtr99
QFhTZvZq0eb+RQf5HbY5exe1ugOXvJmVyqbsMKgUCYiDqzqprvSr4/hfbRyKDr5yzrj8lj+s217G
Az9FD5hAhj7M3droM26Yx3TmBlLKuT9QmpPh5/AaqbGvVt2l7nYkQ5Zdi4Oao9Pbpqj5eLZ0577n
yFzXvpglo5SgxZYP7POV0VObexvuuKErTOYVD0r49FY2Qm6FyuvV3kF/qz+iYBG4EvPhChl/WOUP
y0hHtXFRJZPvzIE+16gtzUhzfl2WUqGxZMjbZZhdwMXoNdUunEwVE6woCxpTQLpk4AMaRz5Zpx14
LG/OybAUXG/28G1AlHvpApyZzAaXUrV14Bc14TSB7iSlXCmEsbI7a69M6hpYqTJA+5HXBiV7TOGD
qy924Sr5D3c00mZrrGBD2HhtJi1DRkzH0JhKFYTZLKots63LKM2j4Tw5GNhRznCVut8RdJgPn9Ht
QM0nTsogSXaEgsgZg8/uNo+/diMQD12jtCuOpz0rc1FO4nc2NhZzfTUGS42+d0KVOD5SUdQfeTCQ
poF29oS+cC2rI18rC1BbsiYhxU8oNnytIofEoJL526Rt+ZRtsU7aUPp08TKhr2UqD225yVPPIRQA
dN+1nMUrpn7iIQHjQ78KCliZ3A1KH+wgFImMiaQ1TUNSxg139oIrd9RrSA/rsqMu3MczDhsqPTmM
h8Wqk6qmTHpKU6XQ6J0/B81u2fRCn/5/YZVqQDEMTnJt86ebE3PpEX4LehjXY372Ij1xs/U8SaCD
gjGi0CwsR6y6YnIuFrC99kmYgd8ZtcrIxavfAGRtnLL/W+Jg1Yk4483LQurMOEjwvy9UfXFII2W0
TxqM2GaTnovbWEE20RldrDbAc5f1f+twQwjcTQBTigFSggkSCWCr2af0Z3J0Bhc+ThlrykeNt+yE
mc4/bZaEl21TTMccdG65XhhZqNla9/lvr8KJJgBSvyCaCseokHBK2vU5u8nrIUd8X7PYNeINOtof
L5rtXXIICgZRhLLmq/+atjG5oUsLgK4753u0DlZr/zj/totdvajgWuVQ//z9EcFgJA9dkYFkGAI3
Zm7vgEh1uu0bQIeQiGsC/WiRou1tmTm7sPpFI1lFeSuXw6MlyhBD5ln14bBUNsixt7gtyO8lbM1T
zQbywx7rtPD8rNX30dnWL2D6YumIROpwZFXotVy8hKwY3/lte5gErPh/gCW56/fUFfNVMfPt70H/
h4ixOFtalyK+xYdPpCa0kM3MSWkkrgGT0Vpo58DvqZ+tRefSi7aawWbT+0yLy1duHUFS30MEGxa3
1/OudyNqtxWFM2EPdDnFqZuk/kXPwAcc6RobGsgdq+IfV/mCCsGIuLBE32JialHRIrbHDNhHXBtj
x3mrolkRk72eFW7A0cOtRee6onZYGLSwtwxAHVEyjYWpgTeHbkWBjbGEygfNHin/JeXD8Lyn9VjM
OJmCkc3C2N1EL2shsRpghUi/5PIfTp79CvByJlir8hy68EPWj+Z4PrhcjXXklt59mgEZFNlMtK4I
d0WH4he5tsQaHsIuww12AROnbmMHzd/QMyXAqEDh5X7NoV89mXFNwC7p+cOiCsis0tYNSiScV8zD
l47Q9LHmVRBvGo2zoZJDORiQOOgGog9TGeDo4wF4QfxDxDw85QmETXCY+vP1sjVly62y3kgBL19e
AkMyH8g2BPak7y/slz1tdmHAnDsOqc5HgD5FYC21oFSx9X254YlB7txF8LDJSevBzvURY0Ew5wOb
6KggYKtTwRQOb4Spv2wA6TYEeiybzx8GOpfndqd53QQBEFO0uFjAhGIAsl2MB/Bz7LegQH3nQ25Q
L6aO0WFnExWR0Y0czNKXaQjo6GCP6ACeCcV3f6l/bLFRKV2+fmZdm3i8GEfnNZ8VI53iNPLt4+Cc
qjfbad1FZ4yTYaIjkCOdL2Ht2wckV10T4zkCnO2AxsI1EOYCNFEeGHBdFT0kpLCAaOV7lFyn5sZk
ihaiq3ZEiDNTY4nKbxp1YeDVi4O/EL3FzdnYFbRogidSYrflFnRBRRK7GZYiE69q01IRi/T5nykA
udGdssVqJY8IySaZLwrssb+ms3rLvOOgMxxG74JEM7B+dh1k6canOos/4/ZowAk1InAqnplJcmvB
3wKmFNCyUiuu7ww2PNijCCINVYLGLMrKJa+90gezyjaQvGyJS7o84ptlWb4GPfwuyvv3cN1uM5Av
aF4lemo+3UucZs0FL+l3uZHDZZ2hqnWucl5GPxfW9H1SK4/tEEgKN/L5nChKJU4qt2pMNwvE9dTH
lFjhnI/3CK2R7XmQ4KG1sr/dFpgeDvvRN1/8543kHwnoFzg+c3ldXcleqX5OWKvBIrcLSDwJFVYk
FTIIU6zUlagG2Jig8W36k33PbZs6s0C54D+RIz7zMxYCsswI8CyAlKzNQZvwrx6hyZBZUnaYfk/L
icrYFh3VPNKeLzRPxB9qr/qc6mcClCZjqJPSS/Gizu80BNlmgWfELL4KoZlyum4LyA3EpeDiNrg/
2x9sBLILazkc3FAW5FxMtm1rnGyGLkm4I/zVNFk5B/smU5Bw2mC5kee7gw6UTkdaWgoFwHtITRNi
8d86siNs8trmnLpv8SOVT7Id5nOJspP8wEh6Ovj3waSEF2+a/o+rZ1l5CRF6zMANQk12DFQqSKTU
VKE8Bj4DNR1HeZOXVVNGrqb9CiBxN7ztUWF1d3ywJNDwuFywsUz6uNEzKS1NEOGi3t5c41VIlnYj
fkz+TD4/tejakVTX5t95UtBSHfHNUUqPmoKOZsSFrxt4YjsaRVy2H3llyoQTz9HzV++/DlhX+khF
r4MgRVNZrRORj8EWSvtoHHBy9QJiPzmKx4cQOCLJOHOlsBAzd2hCgsMXAxULGIULinUBMciv2u2e
P1+n9QS3njdo8FdtigSYJfeBOZ7db1V2xLm3FCvVocmE/fPl6fQAnJV2cH+QhON4DIA4r2SbPUA6
J+8jjDceflr7APsXysAnANeArdCKE4TOlZDVpfO8dmxbWvuwjCINu6e8/PwLuRhzrAF43X8TNKT5
Uyxbb06pqvUk/xkgWEPwuXeLsVariwgjROkVC42hoeNjrX1cu0T0S5CjjzOEN07tcurLofhqn1Fj
q4Ni3HaqUkYSQufKmkDiSwl3tonIgY2B36KA5Lp352sQKjro4/5n3YPwHIP0EXnW+/GFCVVfrtCd
A+wJxcWEceoWhjXTOiyXYu7BPzWmhLUu127JGFEtB2sk1L7N6Jmas+CDWNR6lXdEGqL5iZkxSogv
n9KFfiJ5OGl1JWIeK6SzbRZgdDRqqwuAQK8WQRGCfQj3ku9wGq84Q3nJxd5xZLy8/nQTdeCBxe/h
ITUTvYjVR2poIKhwsGyIkdsFn0Alht89GlYc1kl8dq7NgZyDCihDnH82tJByn4mX2O9pDwf/YyVp
9Vn0B3aKCSGGnhagawfy9qraUtsMnW3Gul9A8gLvfJBy43eOVTg9c6DkSONZHFuXEH2FYb3IjwQ0
NzgCrOm41VI9WTd0GWyp7HejoyeMZTHfBaFh+ZA1QTS3ThS0xDTu26MjZU/pIN8KOsWEJYhhb7TE
OsWzfa7nwNAGugzeSNyBUfZM35kVtvmZENcYImaDu1vO16AoAGjVBIDd5xawk6u0ubDyp5MX8Bhu
uMFgcQN5zRrY447bOFjRkCNCJoXYpGpJCNy9WJURJe5p65gUC69QKLP2MFAb2ZXyX1lmj8VSaJkm
Mz7fqSSdYjxjgK1Ss5POQqqUQFfe2ZOZX4TSoLX6lrnmpwVdY50hJiB2xb4PLXpiCTe8HHpGuNL8
c/vNY72V6I8+s+Ro3f5rPmdGyyatgaYkF5gTeQGWL02+K1EO43vg5yw4qEDL6Cq/41kjIjvAa/85
RMQoBGb/5wopCKIFyxJFEnLUI0fkRpM75WL7tOpRyPmSXiZGrnZZwwE8/yhXdbBXrocvgtzjDfYg
tHD2CUxwSqs6VRVaeXuHssaAP1/mlwhfbZqBFRvO18dNN7sstklnkWuZIOZ3F751vPiqXnJqEDux
+7TIVWFRSZWXvD5GVhFthycMa7SdVnZR8Y5yOTR1/MpK0txSCOp5oIFn2IWu3vfv68+gFnrlN8nB
s8Y1cN0tEYyiXTxuqw3hFHdI+6rCacn1muon49MQ+aqdaAHwDqMi3lJJLssrh7QdCRUQtCpMTjw5
6lRe3xVSuXo+FNhslna36tB+o0yurEZy4OZut+5suURR/J43CwopKlOz/ZDmylLD/BAHWNp11Fcl
H8fhsR2c2kJTD8b7KcmBoZj9SAWuBkJEi77KQ6u9jVMyVAuygtTzsce8fcy+kMtiQ3BgZsMzI/MT
V9m6PDzmkRzPkh+EwEkYzeYsk4u9U0LBYXIvKa/b9S8HG8VYd4Y6SUAekcF94OekQQ2wYxykRM1T
VIRvb2TBp1IApyOdNizPeWfTKwuNOqpuorHMyoLDw0fILdvafI+Iz7fjJztelLMYzm7skQHM21TM
3XHBbP5ni20kvbAv9yyqe5bH9NVlJhmYblTyFbU+FUV/glCHkZDDPmgX4YELc3rtdKWglLZeT1ta
zkNQmWfGCxqvu45UYgY+vN2CexeMnHr5o+3CvhIdmSyfO+0b/xLlT3cz8/0zGtIp+QpGzl4SPNXk
lsZEBBzpj/u2zhlcGMNed35TG27GcfyZTEfZmhHZLc0qMxTrxbjTvRj1mA7/sSHkfz8jpz9o08rU
8VFl6UEyoTO3DZ6+zWdxGQpsPEtrrPPZu4g5lczkv5oM8suIdpBMEVJV7dbT+cmajpVIk8fb18io
p/YlhN+/ev2Coz5okD9wlIFTisTkWUIcEJbzI9ofSu3oI+aJed75YHTgL7hnWdfZS6BWYD3WZK4H
jZTi3TqhXo8hxE4FPyAs68IbOitrib03wFB0kIyxDCRX9fRESK51+ltAIeLNDPEXTjqf6sBgbsmr
wzq5XHg1afCq2dpcVYJ7DtcxQQoLjSJCtHQKhoOgv/wfyvHfeX24IHhTv+EhUQeZInTecTgKyaIQ
NPN7u/pFlBFf11OT0NQUnAiUeZELpfwdDVlLozV5l+Y8Zsi9B4m/hQ7QY5gsqpcRKoDf+HmvqYqb
TuddTCkuWVXnRxtcnM/ckEy90WrXk7A15cgUNxc82RBYqPQa6IK2r8bfZ6lWyLeqxcSzCKc27uqy
KaSImtIxYyH5tRFchGAfQNs+SKwXKLPH6gn5UHXg2AbUCY+y5LB7uo2QDmZNqCfu0wgNJeQqDTEg
whjPsLa8CRDlplPeSC3/hnklojOWKNIUg9cG52cBE9QlQTj+VC/mu1aIhCxICTWSmdlB1aCBTT3R
4ZQVL+TX9BPQmyZQnQbGevOlyEIXa44ZcDfN9q7pluwIyhv/wSjO4GmtGhGNkQFkYf22uBpeZs6i
IkbyMQnSLQ1pBOEcXLkbRywjGRun6fCzbDyVYf+sFOvWtT4vbHO+jc0hBpo+xKi/taBjy5Wkb3kq
zQbGIo5pR+jDzAMGtKmy9gWWr4yHUma0VfmolfR4kM95jKtl3PZM1n0uTGZyZ9+ZxJ0nZLL0Ml3h
tfUxbuBF1Smsm7hXLppW4KX91gJFPB84qylBcuF4M1IWzTTd1eQH946Qc7YGZfohbwg2RDoxx4at
t3vCOmU+R1PuwVmsRuo3wWmizAgdFh0j38D4T2M1JjRObec7edCuhUfS0MGuDHW9cRNB0W0VtNPC
xoW+/vOHZEgW9ke/uZi7KotbIT21j9Vj8jHcO4k9COts4XkazzihVPenNE1qibanK8fY7SHugBf9
7ZPHWkcW2GyVyjmvvL4CQ0453H4PRQuvPgeqyTLGVtSpN1sl8lA66/C+MCBb48XI485DFDz7OZf9
9EycvrP5rS9BIoWmHlXr2RbbWJmabtp1JECRXSd7iC9DcFRODs1rg/h0OmgIDw5iEEDuVjwczE7E
bJ+OPpZ/zAbkHwY5p4XZDRLHbAl2axbaTzQ7qhkTugVopgaoVPVnxtCmfR57ykvRIEt0uwytOqOL
1lrgvdJRXtwgL5JONwMwzoqF8BBCxG2mSpjd/QtVwBjrRvYSivGMBfDTW/XKBJDhlvKQ9+3OT5Ck
hRuPUsF6ILK+bFQfgrDYpOsVTw9HHh7zXU7aA0scOye/oFbVF4w08E+39hFAGAdIDjJqBCP+W2aN
yqoDrXC+jr2Bc9GhMuY9YFLWvrA4HbAB0T79PX3FkbvxtqSpM7sQt1//12HYicmVMbOoaY8Hg8AI
iamosiSH7JgHoUWLtfNL5yHJR0X0sjO+Bki/Us+/M+t48SHt+s9qwJxqDzZ4g4d4P4wXxOZTBc3t
zjlrDex+TzGqEJlmoml/oHxA5bkk6As+GDnY4zSbl+TkbhOGV/16BTA6NNmWN/G3fDUrP6HVACUX
cno31QPqJeno5/e4p1vs1v+Msmsn7hyvnu8Wo7Bn2idzoUhgg7Q0AY64Pm6p92TGJqEYOCXKWG2I
SkZcSuk+WxrsBZUH2IbmrjYqyGrX2wAxjIy8fiNSH63Iy7Ypu6BI1RSbLtXyn+CdC7jqNneptg2b
9flBRbxaY+D+zfXfvOfV+IU9TxSCXpBAtiJlUJQhdhCRVJudlAIuvLty98jmZVPFHE4IRVASAZYp
5T56fw3GQcU+v41w+ikYVgq6TCUSa5YdhxG+PiewuA1ExDDo5gz1LLQC2G0CifVEguciRVNm/Vf3
pyhD8rC9w3fJxjDXz797Q3yXLvxN2DRy226mfuSJZw2vJ2kt15jKMa61QzJoFEurbcddMcemk4dm
P3NbY7penrFmh5ILuwCvmSit9rG7U6tM/CWcBNPiFcrj1lEvVLS09VMx/wqb5WLsrLzKUf0Qj8aj
oJ+Vw2mIJL4KCJ9DWGASqLdONShawJsicd+OLNqFI7WnTfl1yprCEQ3QJmByl0fhdFJSdio3UFkr
Fh5gAbTDnvQYrBmWiANPYAhENenEh07XgrS1zIoqjw+1CdmCHa1oQbWPgbz0DdfX+7JZtWmdrmJB
0BT4OSZ63O0JmqRM/56/RD1Cdx91DCkutUmoIH5GbU0BBTKWmsY4bTlN07glfN8YWIDFBnKWhLZm
7/pxPtj89LFIBCfDRCLdxyQeK5HHfh4nRyJjRqEKTEhJAHAoLK6Tr2D8y0piKvSfI4C7kb8RMxaE
DYeK70ZvIADCQ9if6Rcc7Dlh+KhPYkFKh+ly8jwJSTSd7vcuSNeSFFOMN9jcQO65GKmpz9ybeAue
tGtWPn6n4Y0XEeTAxdG1376Q6d0iwxBf6+5MwpdZXPMdFkfCKoQ7L39Xl8sXkDvaMS4k3MIaN8WZ
QR9WZZe77wl0XXin8DLlWEaPAFM21yFV4qdibDJFs5OHLxFLRmoJDQs736JTyuq4NZxYMtQfmwXQ
61+odDXHuf71BTpvKGSKGIuU/9Nc3awMLp56oP+fBTZf154KHDnUd38TvzfX+mZ68lK8w4fBcHll
rPZ6hnSfJZXX6queX5RTfhdqwWi7McJxdYuuwKbQWszK46nEYHhJF7f42dphNeAUC3V3ZmcRaRPc
TGY7xYgaRKHB+GPo0Pv1+NLygr6417g34wA914UdQ0KYRKH+IxE1n9yNAoEBTgLcE016n6oNqOML
77P+p39GFMvjrDBJ99vzun50rD1tLxspU1QSHqqyB0sXvHd7IMBvaCOt4aZID7T6CozkkIonHD2z
rjfloWFTMDxVZ2F+r9SJBzhj9CvOuqh46nFayRwfnbpVpWr5a3iYDlVKM5beMvRrdYHtq1ZZeRbL
f5Q9wlLoiU0HONcxLLVXZ4sAQ3Wohr9ZcQwYk1Vid+/XJIqlSWxbIMBnsfzdiANbkeNHaRU9t4yo
hSMSeVngbs2PnYTtHCiT58pSuDqsWXf8N7Op71SYydx+IbrNfSpf6msaEI+PsbUhoOuKos4byPan
LG5u82cPiAXzu6JMufOPV2s9u0crSvr0ZmmouLzfanLQo44YKxzRfRBblbP93v7ORh8Q4eAokFR0
6nquEfRus4cHPGGaRb9CFevjATyknz1QamT1RwWSmiPBrKJycbMiTpavJ+zQNz0BkNyr/GeaiYnb
nTanIhwJxqZutXKsNqdrNh3+x/jIBx3KDneiZyQSU5ELgWWrct0C1swpKg9xx6ZHHgHcDbj0a9c1
0okGf5iU1g7zbrA7AUH8eaJKy5Y4rhRfhnWluADPKTp0RTOAJ6RAnAd1NQVztIiH57mdRdhbUt4R
zXV6FwXiHNMgL7E6Unx3CJG2L5z5+jtA4k+Hg8zZysXziNSaNbSSw+A8BE8myv3v0Glws+VyOrRz
5TDSi2FCcdFYNSdU+pI7mblncs3Ekhs4TEhrGHR0DcDCFiY0PJ6GojkA8DpLpcdVzdpyBZwfvr42
DzInvM0vA4wT0Fn1F7kx0j4UgOa3g8LsLDbMzw0QO2EP/7x95L+T1BIPrBKMfd8tsgLtZHEIFKjQ
nBD9cpe4Vn0S2ONxa9DlfhzRQLyFudpr1RMMyGwHJ8w09Zs+tjL457o6Vx11YNr4cGu/oaB0bCDY
x5I4E1DeRuRubzL3gZepEJu3IPKCLVRYHVslVCcwhDbQbvXDFxviTBiwrgQZ/3ZP3iziXCBoLzZC
+4PvP6i+xHIMBUqF/UYsTdBlU6IXo8yTQFo2unn/M2iHG6PVA78dE0S2znBIm671YOjcAW8jUz95
1uvPHLEOHHYqAqbkb9mVoBrjeHREEpke0303hU4CHhuC5CUTwQwdzaPV91bL9od2i3DFFUsIr95m
vBxm2AOBq6VIDrL8t97Snq5kt/o/LrTA3obhhSnZcG5wj7uSWJM66vUcwJ4W1hIJpFwWCMkuZNSM
KzeeTHxW7U0PK2JqjwBJNsY1e0TksSuYqaAfFKSMfNzXMlhnHTkeHVIXb0f+dohmCkCLfysEN0pc
s2NerFvI/ibGgfh2Uoho5fHDzpb2VzyRTOyeeJaEsaf63xujhyIMMKoio02zip2jPIlFtU5fBpOP
JXLuFh4I07VKXTgIzAM8X2Q98LYm0dcwjKsMEEY+CDTnbPja0MtPaZf3cDBxsRGlJaSkINA1NmE4
c0LIf+ClFjxAREf8PEnEYzBi5wj6vYlxmCP880HIsfVSuTgCSvVVEqkDVLlbpi35tLLiPRb+HWPA
CePmMJAd3HAyH1ZpnsduPvijcT6FkI5rQWCuu6DeVhPozhAyZdtl7DEPxRbQzQCCXW8zcGkUdHD9
EqJNnjNdk6JsOfqX3vpUi04eCnl/9TMn4oX+dY7IBJlw5y6XVedFLp9Pe/SN4SenIduu71DO9oVS
Egwdu7D8xVp3csv5jt9qlUIrbZRyjOZt/+S8zONbycaNX1bUBR1mMD0wNrrEty5b2KP63Mh9oob8
+TLhJNtuosBw/ePymv0yhZ8sUX4zn8JBsuOgXD/QoevqSZTU69SF8j2FaxwJVVZyYy5GX1Uv48cM
84y9CgUgibLiwLvjLQtkEo/KP2MkWnFEzcGrVUfo2oy5s9rNYeyEyCOZp/rPgA2Uag+ZXepqVoII
KS5TL7DytS2qYzG2hh0RubQYEfLx0n8OPAucXKjxG1x8F03db49umjqBHQHEs6Ny4jZ5sdL2Ecst
vz23XYOZTOrIElrfpnUxY47BDlGtAKd25GajqdxuZuKbCvRhZs8PN/oMiCpGqhGHDPN5u0PN3RnF
XTRFGnVaE5qyeqZNIftVE9iIhw5SgHeL8IutqHcUmfbX4mF7uG0wMhOoq1tAil/lCBpxCe5K1qtn
/jS+KHYXHfTxiIm2i9uodU34PILHGcQra1LSoip5Uf/SZEexlfIF1n7HZU8OcwUsS08dk64N/u6c
kCHLGnPQ7QOTaXDeGMYTNRim1OMKgGTKtmge3eTPRAiIbyxyY/wLPlWmu/uGeDg7JsBnuBQMloK5
8TKTXTSRSF+PbXTve8/0zGEm8L42RsP4J6L6XWsop437+fBFQHZtxFJH+64GhpTqCsYhgPJ2y+9o
E6OKYFJDq0kKaLFpRbh9vuQbLJG1kTF9OxeIx8MqRY1CmPXR53reHyo0BunrsxVPuUJlIfU48BqQ
of3U6mSFmOxopseXge6fz+rhh2sEvT3RFXh/ElZx+VUkiPvqcEF244Z/pgXaGO+rbZx30Xm4jpIW
Jik/WeI4K+LLL1RPkp+oOYSa2kTHQeSEah0xDS1TBXQnPd8QYWfa1XFhiIuKu33I4ybdgIR8+5P2
cTqdpymOO4CoTME+1PuVHqb7X0sYl9M/Vr/ldUpaI3+l6x2WPKaYC55YUtN80sAVv0KVWwwXYDL5
IURr4dRnN5bozeVaWJpfDGhqMhYv8MXY4db5S78h9Ex+K5htvi4AAn2/TM0s9MuNcbDGx4lJSgSm
9kBt/IkHPgFXP6nKPcKbpajP95DUReqsNiGEBZr8LryKdCNfYcBYbawzNM9WfTqgHFA0wYXKdvcu
oUD9CsOqt0+xsPC23u6pXAuUJDqaBY5lhBFlNXUpza/KwqSQB75R0P7JuuAk9sEdFMshybX5aY59
LDwF+eI49F47N2Q6xihLJqCEMMnSf2IAO8OaWqxHy5WZRNe5QbPTc0TltjAZUDvg3yqwi/MckhjP
Jj7mtCzCVgEXsxT1Xkm8DEjE02kW8S0X02831vtaOkoSwLrjm3nq7UE11KDBuCz17hC7kFRG0IFN
KlBgqIAHvrNW73YiyRCf8MZQFR19A5txGmmC49kBT9GEK1zcvTFt76ktuhngY+N7dLbD3c3WqkSF
+7k7yfNGK5+WL75eeDWEHMcB641nhCyVuWCL/nPtekAgjEADPylW1pi8H6QdKGFrIeYZ/dKbwpra
nrHHPBrMnDmuuCU6SgCgBwMVe8iSNgj08kxaSlA6+OJ3eXjQakeVKG69KuLneYlyOJfmHyKB7LLC
Ho2383dFSz1QrY/9dvuV+6rD+TOgRVmDlWMl03z6CxhG8IlqxL9YC3wdEw0zE7td+LDFw+jyM5Y/
w6yxTU1VCyDhaMhxXgtbdaBwWeOCHwzUEjBspJlpjJ7uwXsIpXY0zJUUnbwEhTyxEcl82dXwCRs1
ff8RsuUM+fQumPTNmYFKn9LxnJFMqWVmC0vvTmkb0N2mEWzwLdXYKESGPov8P4e2yG26h6MCAVgP
4Z8+LxGEEoDWi1gZuwL5GLdygaQNfc2CoXwHmhUcmm2/VtqQ0R1T1wUCnWsZ0GWYMFZHV7NLa/Y7
N/6qk8MyyqS266m5YeWO9V0uLLQUaIV6Yp2+MIsLTFF0jW70CwqK8KE8Dbpu8WcmTLR0M7infCNl
nfE9+yXqxP1Qh5KeNT7qtC9xDuy0hsfZwEnFB7pWNvUI7EKBp7U8n7hyV8LNr5OgzTDfJkszkqri
z59Eqkmvv5sgBaUGbHD62N3xcExIIkMZzwqFFa+rQ99BtFRWdb9f5hiY3MCe88a9uCCEra2Mva4t
+Wu7SasEUUrfeBpZvJ5nsjeI6S543LqHqMXdLA+oyGTw7dyXAU3aLvQvYGhQEGn3Ov8FInIZ9ORZ
QDC6GPLQ4fyNBV+VY1rVFOZrKSVQdgveXDrDUUo12wrlXLyQFYMuX3fFT60kad8OKD5BQhAProBP
JNE1KRch0EmGBElMKhaQ1HrRlk8+QVOS2p2mpLH4sEfzHnTDvFwTkX6o1HGPwb8rMZKIHR9AMCt/
MdelhZVKxMisHd4bcwN+HAur6eBFhOfK+8xP5tosUg7EF0tA7bpLbAziRYzkDOR1TJvXBZWNBoxw
59fxPqog7ADqD0VhXYIHzFtp2WjRA+RHKQL1/8JC83Igzvo8JIfYTDGBM1o/R6d+PLFHOU1Gv/zB
J0TBx30PlftPaGZRqOs6u0fDrn//y9AJN+oBNHpM6289+FMqMjFVJHX0kg/ADzA4SkntgSkpiq5u
MTk06KBU4+wasCg/TOHvQpSRc0TrDZR1sp6+YMJCF6ZJ2+79ybjdj3uMYXN2O+s4zljzZSVDRKiR
JYEZQjV1b3Vbe3Mrf8K9+l0DGP0GHMdzadzpkGEsvYYKBYy0gDvsacyhxiAOyYe5W92Q0YyZbeg1
UGz74E6eJsniEUt0aMrHfwiSKGaqVugdxWh947lgwycBfbsXGrO4nh1dgcFa8OoRrZhGhPWwrWhU
cbdIqa//nXAlA3TcDoq8fkf16deK7eyy46Yb65pRD1Pv1JRt2PRCQik+iwY/djmdLRaItEgvPxQk
pc0gZ6Vn/pvTNT9rIusWkSKM59+Kzlh00o2Lr1ZFyBxHyZuPfLFwYigiv+3Rz3rlciwFibXOyxEg
FCsDMympIBA9gLGudmOuT7bDIO2Ixm+Ko+0GXc5pn+W8JQFyuzNxm/ibiw9W3SPTpScvcNxbgyNw
Qde6AzZ8u4MKdvRL6KsSqG9WYT2k+3uORJRP/hLP72jtQbEITrfa8UfBbYRxGi/FBd9S2EibcBtK
lpKiW0Q6RtKA1djFW2xEYzQ6u8DVVaXkBAseXZsNtJp0bvUgUJioCAYfz+jizuomu2xljxMf2rWK
J6MMDBVzG5LSZhgXZSucisgLnC5B8Nu1zV7GzdjWtDP0pylUuHxbBj3mp2XfOq1oGC/tM0o+vANf
hSHecd4ZPDknTb2f9ODW3/SbjEloI1R3kezaHrx2CH8Nz0Nvl88Mvu1/hMoRt30GzRr9GwwDmxfM
giVCv8wPW3aE08oAwXDtQ8jm53yutgoYZ98nw62LrmNimZpSvs/ByjYjTep1P74I9MhUdlXr1X/J
1x+1rk12fGeskTQ2XsN1ymf9DcVNTkGmBOErmVx79X9cPDM3AaXk4K2N8nd/skZpHRAqf1ZEXnRv
7WOl8rxyaCGQhvJIfFuB9Z3No+SyGbaZjfREO2vJL85yT11MWFv0xw7HNaWx2JVi2DSl7qUgCXMX
x9jA/iQFUnAl5QncxT6DR1qUNV2NEyFGRYsu2EXqt4CYEjX4CyXs3vEmQoS8/miUc4WQ4+fEzLfa
yrgrGHu4BGHYm+MU0unpVz0c7jOwjlCiW0qw49ZHEc5OiPbCJxtFfpzKoiUcawNF7DtEzXbeHXa9
PSHCEzk1Tbju0VTmcY9fOLhxENrTVdNl7y9iF3Q7otgBPyi9M0duBH+9B+xoNob7GBGXfbWE13Sw
6XKAxMMKAJ4/fZIT/CI19DRBSPhKjeGDaO9m4rZ9C61++Ka/mGLjrpf2s5adG9A+wCnHeeljnz+/
zVb8gPN+ZFBf6F0cTOAg6LTse8VoiOyukSDPk1aeVxeYKJd5j0ZjkhqGUapWTvn53bRUZXlOP0Bc
FKg/GfxZMfJkfMl3xi8z6ZyyrOvnoNKgkejwCVIy9m3XIOler/RVb3ROTtAV2Ez6Ns9hZiv/oStX
DKth/ZTJaeClmJVp8KoGebe4ieUrKY7r4xnMNrxJrJkwPpVZ6pblkcRKfq1wp2IYn8aldX0OkQD+
iNBKn+fX+chSXzIn2SlFAi+iVNfa5gBFOGYo2xigDbtQsUN0eUJr2hdaQPWw8374rf069n6oG6NH
UecTSeGiX0tOKp9XawNz+7Hs+jZMkLLJsZudK7mizCVZtF0kFvEKkYg1Yqo6lX5GT5Edj/2hBKdr
BPNMborfyWeE8AxgXguxXfD2mImLZ0x8roxYA4tUzkWqeH3lmmuoUCzZao2F3oM3CM46/APKG0TE
uobZkHgAtcY5zeUcRdzeULJv9AFk60Ty7JLtUw78fPFLmFtNt6dI34wxeH3Ebbrh3dx3M+wSxjED
PuQpyWwZt0RS3BIltFI9whgfXNtk5Jn5Ps/TVbSZTmJPNcfapHP+OD4fXlPVN+xcbu7zlSaHPv+G
v8t5x2kvuxEwFXUGK+1ol4jAEXB83xJ7cA//lv/jGy1bCZ4EcailAZDWN28rb5rJB2NjskOKBBPN
X2LIplgVTSaP4IUzuZI4t79UZip+5D48fsLE7ryWc6+qIfjL0XgZScnVPjDC4bcBTolSAaWQmmJ3
BruOCJFpM8VZ8lzAb7U8UPRqAzRmxi5iDVbalBe68/c8t4F47+DNxvpQkNaClC02TLanBHL9f2Sc
77ktqg7xtPW+cp7f5gNhoidH7uVSrHgGu1skNWV5oSmlfynvtRChNrUBu7zqN+7oQfDnVBazjMMD
WTEVLyDArxa9cZKcJO5p6FJWE1JB5Ziv6I3Vw7n6bp67ALS/FSm0hQwgDqrNCoOd9xnCOiQ5ZXL3
6QXInEtwN4Utx1NlthY2vuSLmu4QiCOEZN4KuTVEnB87lEPnnI8vzsAGHJKyvLXUI7cAP9lI3IEG
bUcfVgIAsn58UgV6ZgCMmw1feWGph9JSiCQl5hEJsycGfUIOv2uw7ra2icazCpz5lUmee3h+kZN7
2X0w6BDHe8urI2zk9HTmzYCems1lnliiAW4YLyDJMw+SkT767aGDfhXUGF1NXR951cGcPAh3YiTY
Ox3OwnYojAgIweRYTy82AaAz3dC+Iv+V85lFh8pN8/uIX0a11mE53VgwEb0kp4zlBJccTYgXKCa8
jITUeE8eAtYd37DkP+bN00QBJz/sJw5wBrSBeA8nb0Pj3tWzQs/h9/z2lxA9Z09Cci/okzsDQbq1
5Yejdw33afsujJSoueTTBepC2cmrh/NuTmKs7jDWdV9nNmWy421th6vbUhOfPVeSCEJIeE50R9ND
Vmwd89/M0P+s5JbeIkGVpe/2mf0O45BsYhEeal2BGcfzu1IoCsr9JbY0OI6j9jE8liZRA5ekYqJG
jdQjkY0/SSpEXWxeARGhF/6Ve6im+nA0GK4QmkeikM9njjUHydq4v0PyXI5vrKtxy2tWsocdAPws
XKuNHMCJzgcpJvFVsH8jGjO5fNX7N0D1o3x5JgFWtTfBIz28tVJ/GQ6ushm2o8Ipbx57hXvbsRFA
oaEnRqW+OdceZLto3BpnplfverO5yaazafvhJ6DjiNhT4uZ+auG00dIsAMixkuazR+dEWVubkJZ9
1bxlJlq2yG+eVotrUy1KNpEEzucyWrKsaVVBZkRwsPcvQdGBku67NRvVM491xWUIhn7fw/H78ZHl
J0KsMa/VVYdl2iMyTqqPUWOD5jrs7BtKnhZEZV2tsdiXsT3YeiKYzx/8GIUxm8fiOgjJoTCYCRCG
Gf82cX55jZUgHJiWKAA7zajom5BFOJiTJbL8i3VQx4BezHaccnOZxa2fqyBSEopPXlZ5FPfgWqMM
vdwN+zUaPlX0wm3UR6nHJJkkbc4u/579IrzuiAxG0qs2pOdWKj1YQyo+AU0lo3myO9TbNi8LDSGT
pK0m6nN8BF+xWxtPnIGxJv3lPIflawxOKs87xXRFW6Ak/zjwdojaK5vhZhMw4odu0PPzy4w6hL7E
fW1sIBGIzMko0ToTVqm0XhQpgxKRA1F7EfbZeipxq8sbJSUz8s7II3x75S1IwjXXT41v+Aewu0Gy
pMJxTuWlRKl+fjPC8hk9cm6MUmvUjWZdQZCrjXzUMfY5g7yNW9q4/u3a1ClN05wWNj5AiZ/xyNO+
Z5l2Hk+6pHVUOZGNU/S0SRJtmHKaIwaW3mdQuPi0/WiwX9fHmUtwJoIAz5tGc5wwXAtUlTX6BpTi
BtEtnXIPKWb6+26g9cfGuG/qUNvhtO5/OBE4AjOGpXBipCQl9LyHrqhKx4oS1x48a6h+PtCPk4oN
PA4r70fdL+xOF8EdpJAER5CaJIVsdUZOAYjKixYACiL5zk6BF3k+oppBBDhSQyV7oFPYdPohM1Ly
/m4Fp8UYmOIE6yl7HyFr1i/htGFHT5lWJBuudKCQ+IgunByYSEf0DIjru8SPuIzWdHLKRzA5UIs1
5ZB1ornvhcVkZH4++BBKHvQuB5j3CJaYaatksPjW1W21pmUvw60pUh9MnRsBC1UlF6N6J2pCK/Ug
01K63iv1Gl1NOph0XDfx1i3PRhPNxrePd5WCu8wUdp2Hp/9E8WYITH2j+RJuGs3+hhVGla7JsrrM
ASxE3vw1M1pQOnHtWaEWA/dEMfwzDhBO/GTwY5h11TZAUTX3cIEzgx2SS0gJwET7SPitg0A4xEFp
2Dq4Qoa/QLoNvxYB56y/12mRcW1L/Y/eEmpcjNPA5N7qHG/Bv9ecjnjW/N8PzAuXFpc1+mxLsuwM
v+a3my/bbGRD68WwcjwrI8ctuXbI8DnNefRLlyCDQM2+I5UMLdY8FZErZYHsxEiL0CRUdcuRzaqR
+0CdnQNqSw5gPAItIYaT2HWBRckOL+OITj7EV0/fmQ95s0QwIfGnhL+AAuezvskr9sAtSW2SpFZs
yS8ljV6OGP7Uo+L7EIX9ClMazdOWa/gDdxyOWlpYW/MQemoLlBU/CkEyNaHDlKZyH0rrJy5X0ZKb
vxATSoTujUNWeEBOXKGt0c77XRbastcvV7U29ivIFJX2b8FNl2YsikdrhuylZGEbcSwK0I7TlUV8
oI3yEZUYvnvRvcli7iXQA1DHgzcz6v7zJvttT7ULrQjPGQenDcx4mRzPnw3J1GBEKBjH0FoDOktp
2LIr9BQtpO5IdOkONbpT4WPv8Lgp6H/0wQv9jnY0nOeF0Oun78f6nFYYnFyeE9U4vEKOStIipl9W
0SC9c9Tjzq/H+7tfLHT+kLnd24VxkThf70gTd4uKMEDWe0/KLffOTAavQ+Dsb5NmFVLxJik5GXcs
W8derlAGDXINSuGI/98QwFyEAze5H04qm66dbi1GGQV0XfW4PIIz4R4ASGIcUP8E/DKkVYOO+SX3
xO47eS74Vg3995+xwhzuKDTAfD2L7+cTTLuwv27qOhyaRbsMjS8Cl6QktMMzBb8TXqd9COYC8sJ3
hqq/eFcjrGVhREzm1uO5Wcbr6gSjSbM9QB8ZQuBcebGMwgFpJfJtrV0xBOc2RjdeW065MfJUCYTA
aiN0IGso3EbLAwrZywtxlJGBqlxB8l+3mXQsm9aJAZ4f3FYMbGh0FpVku55CoZUI+p27UlOjvAi7
6dJhQz+6tSPeGioEheoWCb2sXU1cShu590/vN5fPxZCtLU6jKwvqAkfXxBjIiT8AO4VlIBSiUUE/
CBHUkljLy8imSiKMhm7Otf1+ioWbdjRSsy6Juu1Ct6ZPMEGEOUgOlq7qCa1YOjHo5RnO1yTsvJMK
Eop5bDe4tFUDLNqjQx4Wa/BX64NbSFli2c0Z9X+BO4pGN+B8zXYuRcsZa73zUsZOlzI0scqxF9yo
FTHQEYsv37eQjNLewG2R/I99W1GIl4hHabNSYX2qvSviutlid+hBjOEg6FSEMOh5NtFHclGPyIoY
dXs8MMu2nbv/Vm0T1untHWSbvIU2fKFARRAcoauGfWejBfXeIxuPbf3zg/j+UNQ7QNYRagbHCoJx
VAXjrNcjMXx6aDkE8QTXl3qeJ3UjyrXmdmKw3ngm3yqC0KyZ7GRAtpJr8VFlWbpZ4K+Wmkh/Ia09
tuSbce8BHv2uMEuFuWwlChZWLvAr0MRSYpYWsaAUpyVK/mHptl1tne7/Z4ccYo/yqV6KCvNBKAfu
V+yjdmVpboXzwujjZYIuyLLP4RIBe7dgzeuFLuBS8ObzNG5jeUNrvmlY6jrVR6njNqrGtAxbXQSJ
etIqkgm2r5VXjC4uyH0SeFPfFXUdglKh083PmTbWNyjvqkAxGIaZsLL5CtxOvlo5xWqwEGgGx0wM
RTDmLMhv0DGqbQ2PTXw/qeJfc6OAx9kFatBVihCQ0bV+ldqSrJS1BXwZRDUd7YzHTZS7oObla2JG
AH3JyKusoS4L3M8rx/IAVaAfueFIKW/E1iqvHDTIDwWWxQSSoKOfmjAsjFACi/hgeU38bO6dCM33
6pVsttWhaOyt63Y7U8eGe+HI95JJDBl3L4ugWrHdRuuGAugoUEuz286r6ugFyHXwPQq8T7wlBQtT
sA67FTig3LRz1PSWihrzc9FJFL3FLcKw5I9eAXbj0TgP3mDGU/SzSXuypvqznQlA6JwddtZDl0yx
VSmVslXL0emq7l+dq2Z6JG478N7QDe2BG5jLrW8IWZcnVV4Dtsl2SWa6M+0t2aOznEBfdu9Jlu+D
s2RpTxAmYGBaCZFDpg0W5Sa0/EcazHtYYew+LLFaqwRfxeNlYbHuHUgurdiTKVSiGDnGIZKZrVWE
jr8kYIMWvaJOwe1E/azyKspHWT1/I+7ynID6yMjwBFK0EvLZCD9emfECtM1Fo0t1//GKT3ATcp/y
UkZ9QAodSQsvAUhuX7VFw8gcH20GzSsSw3CoqoO4M4ZC5FpZwEAmtg6bmZvdyB43zyh3a8UG1qZT
xbVKZQLCmsWWcQ2mmum6uvYmW/wJ5+pxVMdZ/7+j1UOSJxY2r0H8VDqT37dqEqTXdcA6yp/sYZWr
+msc1Vjk2JqBDjPD9g+aDZ8+j3RSTQID/p4KjIKnQbR/2/8z1Pj7C1EfKF7x+yhJNfW9BYgCwkOR
aa7iy78gm6MjE+bbcvjUhnmMHTKuJ5hxo+kwg/IHYU+fuNghzlGoPl3xYsYr+NBtq/JQlCZCt7K4
MopWFY12bhjxc9A5/bM60wxTjY5uALFssgBK0ATvDwY5zd730iSE8ScpinboilfK6dMubKbohGBo
q9BcaIqAi7DTq9suWYi0jB4fr1o05mcZxz5wkUgzCkrTuNZZtMHjbUDh8LQSLAX5AtR7/fnOtF51
hwDWlCUVu3H89tMUt/1GdexzJdCkQmgf+UyFkDswFkdLOrfiqtmFb9x/xxHAmAQkC/e0lHTW6VAr
a+NpCP+0EiLDCsQdkAo8mdo0XMFLOGGxH5HtR8SdlejvM6X2GTU9JyAxX0hrWxtMi/LvVtQXcKf3
ahlOJ+m1hzGaXsmeb8f0Euty4oiQZHgbj2bvAao+FaOZZXFKav2iRaTZNw9l0g/Epq4K64f4IDFN
nwOKmB3FAyYGEJU5jDSB7ZBnvBkoJ1S/pFoMYxbodzWfXqeBmW+CwpPQlgRrqvNpYoW+3/jm6z4A
xV0CqtzmAc7i6I2wV2O7JsWrrBJQopVm1By7DChngveJ5T0OAqYQCdYvksgLzhcNqAdqwaDawMb8
NfrK1W9ypFdpMkTkrc6/a0qqEERDDL7PZPeqp8j5tG2gmlnpgZhGLTTpogtnDUaPIriH0IZlFGlB
u+h12KTyXOEzCq/UktFsz3da6Lvx7UU3w8lpBRUo1wArcY03FHdgaS1CTPZFcWqTuw5Dozr+bsHa
2Z9pMu1jP3YvN+Ay8g7ga5DpwqckTv5oOG3NLbsmwSn6C/BKSZ8/fSx2+urjPAt+LWk2zr4k3yjQ
23qVXDIHI2a0NtAntJTMcU+GoAp47DHO8QydSiv/TgDF+6NMVjO2ydTY4Y/DMFDc4fUk9nW8SgIv
lnDmBZEEXgk4KFpMLNfJS/rzMTD8w3VOo+CW4QcdMUvMZa+MN4GVO9+GUrxLuw3ncDpU/olcMo2m
1HcOoy+elQzvllKyL8d7y5FMTyf6J0hfuEMziTtr3Ho8LJqHvt5bG3siPPROd86Fsxp5Gw5FAash
6lCtBf5Db8Ec20C1M6FqX4Yeu3OYhCNoqL/2+BPpvB1WTiE6HN8YoE2ZLHVdZmK0X5Z89HpeCJui
d406qWPIFSd9WpFuT9XBi9WS75wurO/cEv11OCFQPRBrUxOFQUTkRxxDfq3NNVLW6TXLsJVeD7AV
IiPW9OBpMR2fRzD23tiQPAvoXd+g/iDjWiip0s5+l/XaagJPcjQp2XV92KBqJn3/Wl2nniZdFEQb
OqBksppbjwF38xAJpKjePDPfhb6W/WaGvpGD0p/Egdm/UqbPszw9VIKwOXWwCnv9zBj51Yo4t9Ap
W5Ezz+I6mjwXyaANUl1cZ5Iu7KgqyOTMAR3qIns5/SjVaGWujmkOk+44j9OMDsSrTWujgdzYfoiE
eP/eiWtGN1ThtuIDLrKwNW6LTjMnvXpxZ4fvenHleQ2b218GPo7MHhNh5svU2ZATfhxHhRy4BHhE
zh0djVaMCBOqsphpw1/q+YXQuvr3xbwqiIa9I8M1J/nNdjAnZuzeT8XrRbKcjtO9lAH/K2icIK65
tdErAeNM4FdKtxj1XReCb2SGzvVdTq4GP6Xm6L8cUB819iAYlnP7oxxvNf39v6Dm4Zd7vsCLK2pJ
uwylSCR4rhXxfqvq/x1xq5xouBgR9bpJ156XNU+fDsnm/rlcRrj7QG7iGvcgbN9Hovprvv509F12
qnlM6zeM2ksX0C/31/D15sKhWGyRTADp1ce4AynTlo3Ugk5CSsu5vsyN3VlKK41jEeGKMuGY8wEv
FjsyODMppcxxsfi757hRvlqC+dtqnqb9glWqstYiGJ1MCk3xoE28YQelcfxqurd/BaLuFgxdmA/R
gsKSvDGZNKdgdVU5p513VlS5m+0Xp3iZsDPK0fJKtH4hOOiD9xiRzReu9ttk8+jPLUyFcdKpF8Al
GDh1bBj/Vodklz6F5xD+czuAXqAPfNLTzAqBI10cDxDRdy7DhmkL8QInLvJOuFzEDpnA3wNko0Sc
LmgN0pfm7c3O1EKw0gOjibKCeNEy8pOUWxvyeLhqXdy9HWLxxgeUqaWn6BmIzTMdaj8vo60ZFyIP
S7YpCLUmTHN2ytuWqg6lJZ5VhdUKsgl/osY8dd9HJqXQmBkQrDBo46mukNfkZIwntUWlIM/HJxyS
HgiSjQFLOI9QyFBsbD/KXvitw/adg3xyrAaVvrxxys/8jKXhCTUoyhYT67J94oyeKRBsfkAOiU6M
ZFCTFyqiNNYQPvV5smGj7AQzDuEY3JBIcct0rMFY0PII7wwT7fgiEDyN6LeVpKrTRBjBrC0iEN3V
IzYXJtmpwsPUPsdgwaB1vGJSkjJe4syxf6taIKfoCvJ9YWxVMQmhuz6OaHRut4ShOkomFnkebKSH
S+QYPTNQeXoKZnllABRidvZLPt2SFB7tRULxGEFbzQatewwR86ISR1q7Uf7kF2Cw7+RrkEzSoN0y
LwpgGQoTTXfsKKlZevR1Ggh3e5o+4SbO4m5ixiLYUrpIcWDfqXPO2dctz9B4X1LuHlyLmSDjCW8p
p6qERPVN6V1SsBMaM6QWL1Wa/CmzYRy4dMMsH9+ACNKV1cAZ9eGy2UQRPoG0yop4NZm5Z6CI3IwO
d3ZP3H2nXE7h5VDfVwBedqkhbSvUCJgMEdCV5ccxNRZpEeUvC3y7WIOPg9sL8qOZ44Ck9sPgFpPx
WHji/zrfQgVoWgjU71ipp1x+MPkZ6ZFLph6DKm45Ax9GcD+XD74/JPao7vUvSGjqOZVIuSd4Mj2E
PwL9swhksh/fVIVSRA0OVjg1G2shqVs9iiMc25lcQIloiAhJlUX9P+6dTOwjJqTt7LxlPqpeSunm
lodx27lRyhm7QAvOTllkeCDhOxd/HlMC/Ytd1WCJInJDSp/Gl37UTGki+eR40T7qAF+VBxua78Uj
9Rynu8VlDv3B9IxlTsqBMBmy3LyzAghw7s1LZ4k+xbMVxGxnw3kTlwsSUFD4dYGQKyyXomfCrDS+
WX1XJvmG0RlGLU806qkkX7H7J6XnqK90jGFEBqaZnUx0jveUtecCDTg0Ixq2uNHhTYJhkn+Uikbl
TmUVFb2RHhC0c32Pfk23pB34Y9ZG0m9/nCRiOL2eQuznYhHu97yRUtCf20ekaLO7jD9mzOypv1x/
5C9UyqhSbnfWcGOEr/pAM5Xtao9F0uUhVDG+VPTuckRdQKEf5n3h5dwn4wl23G8fyN9/JxnO8LYT
SLeU94tvjz/UsBCr1Zph+CYbTMDFLJonpHEM6PCMvN+tTnNYOv5mMVbUblI8A/P/02TFEvUxqQ6P
CbCuCHRN46X7oIC5Pozp4GZE6peBkvK767GG+eUsqUbytkNcvyr0sJckIZxGlxJLeydA1bN9ygrp
y+LerWQ99wjiAprwl+C11tQqInC7fzsLLR5Jpr4zPnIhf2MN3/vACZcSxyCmvn4oHS8CIS79Fprl
XolJnHazVwoFiJrGvqxuk5yrhEl6Q1Kaz4cGnh2awxlK+FYWoYfnJG5R1nYHOxcvto6IUxyhRnFK
1AqwX2bR80bYtLHP/Sqks12cEyC4xLVPrLN30NrGN7Yb/Hl9lpLuuIUfhJ1aNHIgvhXZYef+vDd4
ENNtC2CuE30Okg27Imku5oOBUk8f1HHdjr/sHb0hP9Dpt/n0C9yY9rPRCTJMhs+mwFeOpY7oLCkH
UC3cXXxnvZ5DpOzjwVWtWnxFGn7cBCfldocIO5wvN6Fylbealy7S7f070596nKaMKscI0g1J2lcr
vEe5EJ+tYEtJmcYgmSvN0pqW5u+fwJoTEPaEUzZLz317JmBF2MJlvP6VnzqPjy4eQOTKTRaCXsEN
KS9AIyuxyKw1TJdeJ5VXNUAoR2vkn1bvqfGdxLUI2eIl+yowdMDUhsg8or/IuzMC7RAybqdC2B0q
d8nupuMPXbTAayM/spkh76brEcuw9/p9Bdo07oT3vrIuuNmuJGgVDchsv8dKzcbtyFUxJ/vEwpjt
Z0eSBeuDi8vLEvFalonkbBJ7BqyC4EIVFYMTVB3SuxY8+C1Bfq7Mbwa6GGGfrc4mZ00awlEGtPRI
PGhZJUaoUB6WjjnjChGtwW1ObzZfT6UXVZYToT7cl0hfAa46j+X2sWxAEexVGowdhv4LyquiCJPz
YzEWLNC5w59/1sgq1pTSLGZD4A7a5Xn9VciNp52RxJqAybMRnuOGlDCnx6/qmJXmFaRXEOLsT40u
6lZwPWSEJ7VEArhfxtA/3JpjIGulBnWKZtt7fEFv8uud0O0ErxT2iCBdAR7NPTEMloskEI5STjdV
nVjOcA2ICkUPCj8aw1weJBEOQRpVW3wJgwWADB04ydmeFWEVaKFoBM91mXZqh/IgXThjo8TdTByI
lAHmROsr6tTK8uG6fQ08NKvlgEii7CiyZ1q287hWdG2v7OvqwM5ecJt+/vm/B/Zvj0GtHbonyh25
xQue0I56QByV0crFocKRaMWDu+7ZcA3hrKQyuB0BOiu1bOuNjLLqVwFtErY6hpUzy5YpwUjwMv1a
eCNH/lUCfhfOHTxbPkIMXYeAZmsDlgLIUJFuqcqEbFi5IUjZdRvxI5x7iwsbppOo6Q0EUb4wodJ+
HflPRrI9rf3Wm+ls+amSSNnilVzxZNhlqjh4cWatzmZxonKEPvO0xtveyYRUxWut8KITRN862REQ
nU54qn2BK5bLA/3KP7OJuki339Jxy7A74qguo0FH3h2z8gI4G2IeuRQH8ckWN61xdI9fRmDK8bps
ev3q5UgbaEXMcmLezvgrEekoUlDdXtwNnTzIaI8UqRt2pG5fgdb1Gl1Dgtj7CPc6MsULyDixNoVQ
CR3GYbZknXTX8WeNIzPyOjkDM5/9ahcCpXKpZcLvHwXgWDbkjlRRzODZZqCdqsvB1hCTQ8tCZRe8
MIb9/Dd83ZHhamzqoarxgvODC0+4JvJ9BAO3FDuuwwQTU2c3FOfgJQQJGhxgIT6mzCiguF42MZ4F
/zJsSLszLXHdKq5eceThZquHyFH/KlvR0o4SpCamPwvlb6nfsFJ8uB8eaYeRDGPXkP+0ETHbTP3X
sJ6fvNAuEW1tfi7X/jUlPnl+YTdkhA+eqVhaZnxxP40PDAGp7ZrrbfFJfDMJNPQ3bGGJ0+TqGjih
8yMJrKT4oxJvJLSvVeOmoWTLr/23eYsuykfhBSkS9tIk3XTEMpJSJa/VTlcQoF0dEygxnPMhSYEy
ehr2qj7/fQxSn1zGgM6OqcgJkMU+M4z8CJhdFec6YtiNAhfGgdPeGJNwVIP5AT60mHc4vr5v4CAC
bdxUz14b/LNYfSFFH0yPoG+fO+WibcSUTIkULK6uH1g8+Xdr8FImHA4KfgxuNTofE1y47IRhbyZj
IQHKLh/HpopozXALIxAehIoSQBRJqtY6hj+V89IpUMwCe9nYBSU8NrRIJeZ/Ptfme0AltwqTb4OU
mNSjYpEDLztUZQExpbH9IfFKghCfYu7QuAKlnmwmTV9OIUIqBnfjl67J9Cn0Eb1gPgZDOqfump/C
Rdd1as3IB70xQQVwVc9FbaRzM/GkXd3DB3mPzxdoPLRsXpu9rLDPMs4+9pcLJHhaRAxnkPR4n8TK
AebXLTHA3+7WcPJYbBIECAGLAsYx8yEvYKIP2/NpFyrHI+0LeaA47n5SlI0mzUNLc1WFGcs/PP+8
mlxl/kL+s9HoXP9vRG0k7RjhCXPHJKvB8t5w3l3dEJYzebtVpx3D/xr/bKRsrJ+7uXb9RiK9rDyK
r28oVMjK/DGqotNz9OBkuB5dV1mL3bKL38FyYWDPBnRDuyzvfRFcSlTEj3be9yqMexuXPV95+mO3
X+xrnVDIZZllegrombNZ7hDID1ppgulsBQUDON2+CncNg1EAU69r8OxB9Y8G8/OnFIdIucNesOYh
D1tmqab4NWkBZU9LdhnPYZwQsN+V9xhpHj9dofXiZzZM3XHjoDT2GmTKbVyofQa9cdN16xBUB1k9
ob3QHDhTSO1vSeFOj24W/+gz99mXHyFcYXMP3Eb9v6wYz/EEejIJJtRMapaZEPUom7S+nzliS3UR
/EOPaIiAJBj27N8k+38Vqekox9tYZOd1eDsECpJJrLVx3xz7u7I4SDw79x0PVMf3gxMGAOHOX4nP
XeV0qhTXEqWX7N1O3d35Bd+0RSvHfjylpKb76AIAcVgNHQInxIfYuN8Ni6gqR81QF5E+5cM/xSGc
H0iUAGYmG7qDNV0SXR4dVvAei0FaAlvXY+gcD1Ql7HrvCxheYDX2WwYp0r8/jsxl/0crebYrf+Y+
Vf6a+rr2i3Puo+f9AO7qvNYktMNk+JhYnDwHt1G3gx7oeTxGFPCdAGGpz67vDmYN3CVuyxQQsNRa
+lCq+QNa9O3nTkDzRb6KvPAPFpIb8o+qWSUdYyeftMYbyHKFEahpGODC4v3LAebTLvgZY5sLjXug
2C27G/a+X9cdAJeVaA9YksSJK3SBgmxV5bh9bmm8cDoWTEERsiuW2qPIiWdSHBcZQDhTDh6GwjaB
/LH7WA3KqRyg+hFL/U1P8XMi9XCp6c5GNlcDiFHLX5B7EkRiDUGx2H/7ELc8Y8duPVWy1kpSoy3r
+WB8JfROGhInCVc90sUlgIQJ8llMPcOK4WjOunLVJ5pxiyUnrbWIi5Vbsx6H+uhNrkH5irKfDOWK
O/w2xSMjk0C7d0fTnmPxKW2+AdlHpBJcx35tH1kWFTr2ZBwTcSjC6RlEuCkWjLbcG7OkYhCtv/yj
9dROy2fD9JJa3JUYf2Hc0JLjm7VpED/xYwhAUoUg/AbhI8kPh+M0U7KY70VUwZ9g44XLdmYMKM9C
Oq7tHyqIDpdCuy9znxggFWBgLW5lRoN4uuHXdY9mRh1k6SdtKP57Xn5CE/sfTH9rpt8ifoPwiupA
24tSCFyG0qQ6Qly7wLAHJbL813yCpq7EN3xKZUNAdYfuMOWp6UjvBSpaP9CC9iuoD+CoqgV9a+AA
xFOPCt7l4ZgeyZ73BaqkhZbeIaJ12uWio0rlOVyezxfEXSaWcrCh7Xn0FzKKiqOiT+tpePv0I2yF
J4a3kluAV3GYFpDo1uMhX9kH/3XWus7ZrSwT8HFjcxKE7vIu9MjWI19RBKvx89EmHaq0QX9TIzyG
SM7EE+UIZeKJCDrOt4/yt9jsTAY/D6gN9LARUe9jlOeZfSr/0PQuqBItgqyflMcrKyXWDEwHIb+k
Dj1D90+ut7mhnbS6vc8WKmbAlpCpcwtJgjd4NPQ+00lK71+DhxIMRnDzkz0qFSNlnImNLgIa+KLi
WcDsolnaK4i/D8jlSbKlairvR2avg2tDRkT5Y90FAvx43Dh2RRRsiyRZoUaBlVdJS/CHAlZ/LXuy
YcWR+XhhMjmigaPQOAtdylXrgMi5F9YOapa+cb27FvI96yEf3h1Ab9T+78K3+DATzD8erPznkv7o
BM+XVGqKIIZE5gC9NQdOVeCn5CVZ3WbooQkRYjrO/OnITL44VDF5PWGZrzD78XBpiiP4Fb3JdnC9
t/lU2YbHMHTBa9Q5TP+i7V8mV3yZD51b+/+3puCPhvgCHNyH1oPNT+roGbuAZlFinSa4dDCYO8Ar
L6WqZwVCYA6XccaEUmomUkwRRJ6EYwYJ6mpMdqrQKeAbI9nhs6dkpL83BYmuHUCeMAVFBcFo24Fq
yNVJYKaJn/UpkGyrN4/q12LIMgzvMvRA5tZ3KBdy9GdYsWq6McdMd9QlWdkQ00ZFy/enJ3MFj69c
X7l+0BF0nWhswrY61KhiRnd7dfn5xqFRKH7MG5OLWdOxqyjfEXrLZyKcHLtUMx2V+Wt87Lagu+jU
2BhKudkNPgHc4goDRPWUgKKNGDt23WpBP8vUzY6IWB943Gg/CG156Rus3aGQDvCwVC5hn+Os41+U
k0jAfAllCjRtW2bMv085hCWwWI/+TNGpDbO601cbs8rfRUFGHqqXO1UMVyOjUm/2k1Zwu+KhqziG
4THuNQvYh5v1MLb4aMMq+2iAf2+4sZ8ndfLKSK0bVscVAlORSy5UHzcKP4dskMjGA/pzhd7DlaVj
hVbYM0VswA29WmKCuH2nQ6hvlwazyEAh8lFDZlNOr2LJtK0HFNpZ/IHGzVtb0ph73m/dTRxqLbre
iKOhxLjHtivzN+JvB62yTYgG6qhy1X7KZXc3hY/aOtGFsloQHD/ccu82Xecwj6qq/4PSCT7jLwG8
CYlsOmo/WIsohBn34CpHxLTXfBttgBPHOXRY+MWcmKvtgFOJJnFicnlccLjQHD+bzx0iyCVrsG4U
vsrIALc5fSBOQ4mNhp+LR2V8ppIA9XIM1VpMcLvdF8m7joK1TiK3/oUvJYRUqBGJcM8J+m+uB4t8
yyUmw795eOTjaV1yTM8ec0gWWbxQ6I5rqbVXFSDJKJRO6AyxbmRy2KlokGuHBc7WgiQjsfabpfaa
VvJp1AXAYB1yfnjeUmK8KQgnr4uvCqRbtDqAQHMKOqyfdlNdM7Mpnu01xKI6MqWqHO/Lj7j/Eu2C
wCwVOk7MFY0u7fXXT5nMAeyVEsT3XA6izpBhb/go0MwOM+8SvsTc459oL06obaowizCc9rcpvjoH
P5hm/NGcSm1/B3llUKNKykRHxIggFfXCQBswQS3+fPC+cvPWbEd8JHQqwLBxN/VO3FY48xaQSTKy
vgplgbM0hnd4GyFEweJysOvHtpUQrWLizdZkWjljsJzIPotM4h5JB/dp5z60kW/KCIPrQ8DUAwN+
D6FkAU0VH4jAkVxwYCWNS8XEwSTmXAWyd4/mrCTFC4TNDBNblA2eUOBp9pltgdgYCGwe7U0aVw7x
Mek9xCXvbBZu85NLIw7lULDx9p+qPfBwK5esXDyh5NYRMLLzMhJo6JeNPGhlhITh3yMi8Bei8V7E
pb13HfMOCptgCi49SFypWqjiCQIBVSjZR7h9TRogaNlxiywRnQQ18IUiJhIzB0S1EffzP41udPh0
Gl89ZFCeGqVblX/7ZCt0Fhh/87nGR3zVqeZCOzHONiemxkq3NFjIxEi59QfGklF7mTjTVJba6j0Y
buBvv2triK574GbgK7b3SMRM93TUnBALbrpqIU60SeVln/Qp+DICyR29qp96tOIH9i5tRmvuBQ/Y
pAN1USkMzXkTeYJ9GsUEDsLcapMf+PTkfkwrWaL5gGnZwiiZx6abE2rAXKUPJ4F0o34N/IBYDNgb
8DPzTptRnA6Vk2Xm0bUJM6TexpxND+KxiTgY9bqVtCMnCQuHxxDCipbUgSVwG7Vu+U7OlsSx/1Ta
zFPMUR8sIFQsYJ7Hr2x6wH2hYyogWlSrvT6zILoorxpWPnqDwn/5vRlmlVQZfpIRGzEpDpfXI+Xf
3YIGfaG4ftV/ZQQdDfLSTPXRAXXVPmO4G/UryPgudIPusCYP3iavYiqmDYoW5Jyr3UArptPWiYL7
pGRohMBc6sO5ujfQNEDKGWGaFIlGxvtTk4UpGrqxEUk4aoJGRz6RzyzP2LVra+8mZhodV8HGQhHu
Pve2w1kVu9dog9CEZeYiOMugUZ2uH3K0WKOlVfrY01t2z/o3OIWgbnDEDiPL/VapHdq7p/4wa6rz
Pr5WoAZ9Z9aqrzPX/OZYrHEOwvj+NDdaLBTZzaeo8mwqVqiSd3+ZU5hApzdG1CRDs3J18ychiYoy
pvnNfT+BWL2oQKHhK7hT7UIwaC4/o94u/meTcxA+8CRzQ616q7eHqbKbnmgfcWzqhH15MOfI9HXk
1ACJMYG9P+y4qPtZVPSqIAQXhYdgiyZpBIUCSAKtt0P6ypnfw/T7/5KKy9tAp4vxHpqvG5ZxnVzL
1hl+vFJSz5zTQ6maLaM7fx6oiZqAIANvcboTMoSHCiFJ0IDsv0CG3lOgFbHoA37kAD3mQb2KOkB7
Jb3S4EIO0HGWiIe8AhEXPShOxGyjaZ5gTRVoJ/HMpN7Xw3xvrYGdmher68Gs3Dww9zax5WpcFdCQ
iIuMTf3LQ0MPft2JiS0AE5ycbIVMDVRfbmtZnf936y2CPA4mmV8lgL6XrQQSwtORBv5xxU0/IDAl
0EM1Tyq2dvada7zsaYzfItFIzzsR3qJZvq4yp5OZex/o1b7B40ag1Ma5I/v/+CR607yNpOnY7e0K
BzGntwMq9A0pLdz/kfBv4qQajAevmfSjQOAKtQ/todbX5ZZrwyV+8mp4hS9EhEh+ghs8YIjddLa3
qf9pc1R+CrlkjLFm5oO/NWf5uKPDgqTJyYgchBSFhzrgqx8zEi6X8NtY4PzWadmIibwzf9WnHaVl
ZcdRAAA3rxJTOKCknMRhaz4J/+TPEsG4alq6X9z1rfkpex0+9r4N+E6fBpDkslPZuRgTp+JRY54P
4pgJUgsOgQedMsMCeaWwy0nmU+Mb0ABL4qVY+/nSMSPVwngCerKd+e0+KetcZG50hzdZTbePnm1U
H5ioYX41c2yLHa+gopXR8u3Shsc9isBTZa/r1OqsjodKZQIP5DjCqDBfqojrCTMQoa7ZNMD+zNCG
qTHCqVDclfQW68xUyyVMgPuELKPm9rGEyfgMu644RaibqPkq+6nwuKR8zs9VawUyy9kSYCMh+c1V
kGF4JyYQDcW5Lt5do5F2pGdCav/z2kCskQkURUbr7aFHaHLgfe9I89YHvWQl8GvrMtbrM0/QLFeR
P+HGSRC6FpcrDJvJiahZM6GBlXzt2n5uzAcfsTnPu6jy5yQW579dDsgPCvSfbr+RsdylJ4dF+oSZ
vRoBRVluxSys03QPPnFgUcyW9yUDOyaJubvm6R/q/z8Fqi9ldQGInarHb8Sbf/ghUY6/qE4QyEnm
zWQs/hoM5nC9UZV9AKHAnp84sAHR54d1OGtAJpB6nFmFFskuUQFHNpnuu7h09ED12ZE+QNcUXUDH
wYJ+tIUN4ghogK/ao0lsVgBosQcRCX+wN32HJhNgJEb1zQ9O+/auNhFWfS2p5vyGJqR6l8ygt9DE
0vnAc1lqjGUE9zn7/x1RzhiBOOpsu3uTk+e119aveMc5tKyceCBOUF5tGr8kLBJ1Nyb84Nu+ZEuG
9VURdjXPo85Yj3L4DpLqy29s2Wn3b/YkxPHRu3o8CPUWBY81vnSDtnZNdq8ksFnga15aE6SAqDyu
U1zYLbRL2gbOLjBthdNJRKQUgNEoeMbg7i9iEQuPslWMmG9/wtaiJw339Us8tfPT1N/ctAERAuao
6EUPkJ/AtB0tkttrqmZsRvfuOVe//Q4QHKq/RS1USK8R0Z4+/b24JamLD42XDBo/5ziZwrZ/ouUE
F9yzqHtekc2FFcG14TZu1715UyOl2wS9muAhi4Sb7TVDHR4gwGogs2Zhe3/if6Q7UQk6T2/Y/GPB
1JmH+eFZ0VtESgDdOQEzm+a39CPkayq0vCciyoB9oV0kFgf+di66siNboVQucZBiO/JFFZmolddJ
u8+mO2u6H7O1Czd9BtCPrVqDTqDZzmBOiv9ltYXcmEFIo7SyoPWtUU1HKgzT1sP6PveoodN/RL1F
dWcEgvXwrguZrwOQ6NjOP2AODIP/aAGeFEm+Qv+DG00IP4dZSym5/NnBpeLUmLis5Bj4MTdm/8pN
KCcpHCkvzHzueRjfueQxSvvEVuCFltHwIuTwCTToPQbL/13W8bkRBdprKv3HcupMHp/2kkCq3vIG
sCGWFLd5wUZl25fWY4Xq4B/730iTZccji8xDhvwtqdWQzwFnjeZrw5g1nHOwbZJc7dVagW03+dih
XYJGoduwqISeo3+9pRLPnPbwrRyMuyvWjV1rVs05c94RdLWpdpaXQWQMhYjJ9+D5TFeN04fZIzYx
vDfph/4cFKvVduAZy1GUCF6JwdhWR00pWbWFgD7Sy6s+/cRx9Rkh5rqguVjiknETQD/mDMVG1Km5
syMaFbeZu/F3k9Mpmmcw6wyK9N7woCjuyAdjoCLm6ueoVLBpTsb+e7xumGbqZQ0WzdPpNtofIaWC
e+tLoiyF+YYyLHcVRPJ7CCy1UBn/tnaRUz3zVDF8/1HrJaHMLSuTd8urtG0s3Ed869VrAfQP5yoO
ErwaZp1PJvH4vMdZmEcJckPGnYMlLzq9MXhaBhkjrWevxc8Hc1edOk7SAPSxbdVFA4r5l0YSv6lZ
83ukg9bR37c9k1lOPSA3mvVB+4csKmUsD4s1/T1efJBkearaggpQ4R/2nxy0MlrUILwYdp4nyHWC
CDNr+rJiaexdErwJRd+4kae2dUD30th0+Sb2Kph93PvxfuSdsYCNTjje+LYHilehOeWpT8JyCupf
23KYBCRXgfamBUi1aDAWDErbXIRL+nJTTAX11LPFAzG8wtIXHAL+OFr+brznB74gO8xXYAJLv9ic
vwzczP5aWMuB3Yky9ppoaynaC0QHn4S2kynEqimRk/mxBnW/w/GMrETteoReX032ANWFNxsFKDyF
ZS4yIlGlqxrSAEfVGNfqyCKe+zgA2vD8xt3ksouTKIqc1j3xsyWSuyjFrgpI5SSUBFH6OQoaSV+p
a3dgmySpOFX/zQcUKLGI2D91t+3gtkYc3bsuui49QcTEfH3m5GWBZHlKOfJZffKHj8nSKyQs4cnh
h03nQtjPhACLdHHPYwYD91KlNv6ZTZrF5GMq+J//TickO51Sj0hONuo6smvstd8aQqU+NBzdlhK4
ebiR6nieMzfPv9jPqRDeiwkkXok4Fei9xK8XherRiQU053W6svskSeM3xDSp+PwZQkQcwWT0s/Z2
X1IMGIDyxfvx26azaXQb5UweSFTrgAwQ+WaTcDgo9cpOn0VumzfI2I+ScDFCNinSvwKde8dWZD8r
YMaBuMk1aNnT1F4dM8ExGGnLeWXq7yZe2XaGoh1aBT17SWoqVlwZYBacb8/Hfo2prZAuS78/61hC
pTrjdVYJke/7Up3pRqyfk/T+Ky+c8IHM6Sv29KeCokPI02aOgq+aObWuZueVUxKxqQkolceR9iH3
qdTkS7oXRDcwYKzXM36bB8aSX560wC96988PlK1DLDsUcZaYHL2a3zIjpTsUwhqVroJ/J3H3xz8J
e0X9TfmfFqzNC823a9ithTQ+B6Ep3srIpd8JyMDQ93qNnL21qcPmj9rkQRjHsJeIlAbG4fa+ecN7
XrdYG3k82xwU+2NK/cukCK0qA7qRDB8pJIoRg/DpkJOpiaueP0zJAuuBiolBj3dvK0GEfJmn+q13
Q5rigrW76ffl5NQCg3uHHsXQPoRFnLxBiyW0Wamq2xAoH9F7WhpiaZ2I6i53UlFTsoDXc959aiOa
yIq3JvpjQ+CTjiKIl12EkHcZ2AzIy2v9rDDCgvWLtRDg5kyrf2cbXPWxnb4CDTH6xuOadIgPfigB
GH+BhkodS/fmGcsysZJk7cJNxPu9zi0ZlDhH+REoO8SEQ5ohIT/FRhcMkXft8/WWc8Wn6pxwjPwL
TMb3zbW4lMNgUoHJ2qrJO11pS/Y/Qpsp0te2+5B8sXU/LWlB9W9QbogWohP2hhF+V9AxMs8bRbXO
VLZ+QpvICuidDFo5A7qksFXCrUgZyAhHK0QOZUbKOIJMaMjlGe+uYY1MeCeKb7QxDdSHMfvTcIzL
XClOPgMA+vezZsGskpFbBh9DteLxsk35orPJRNNmymmI5GbfgwBHzDAyEem4SFCtrKluLtr9JqvU
VM0KMCD3zhCMbASuL1nfGOlNqU5fyp5RtaBLXp+ih9UgF3fvtJGlotKRukDjt/sIEaouKBoiHJ1L
UKKP2A5fjnBNvdXAYYJnwStPTcs1oUMSIxhKzpMFbsTWZ6F9bALBo5NjR/+BQEz8erRTAs8J8LHW
DV6s/ZY3grGYrZXlSCvhozpPPNZbVR7UaODAOAN64j57AlFUVPxU26xnnb7IVSCfJgqLEgRTq1vp
TJSSXcZZ2FJ92M+bkGBL5B9JW9+cw2THhweDRikRIznAgFhz9urXgEDnSOvxsF9iQGh3IDlzFrnh
jz/2jagBaalokVj7KMNajBx6Dm01I7qY0LN1uV1XPrvHhZnlTq1qlQMdGaNQ+MGMyY59TY5BNuoX
HFPNWMJr+FzXrSkRzDCgdGv0kxU+30bNVGr443N+OaRhYVWC0/NkDdZrPQaM9M/vU/ITsedxhANd
gg6zYE9NflqLGtuvLr9VuRXJJ2Wa88wkOoBkt2BdYuktpVDoeRypIzibKcsqsRS6Crod/5h9GWJf
LZtA7G01ir9HwHF/Xuz0PwOPwRmZqrZ6B6gdMf4xdeELEW+4Cs1PwbyMhMdmsG7dqFT7mu58L4vv
vJq5ygDqlYEIQGp0D7ojBIfRIxFYjoYgWedDSOMT0wMX1n2f/l5POEs91o3gTeJGzIvv4XmZFdeE
zmh0xL3uYRVp/u0qxvOS0vY2/olaMh8zIb1rOhDZjmwQjeCEzByhgxRkTzxSsPA1inw3gwJlO0Ob
qXVPjnTDhRe7s3N8bTFsGie+WqBqUci/PCQQw9BDlcIxJSZ4ZluGuqZ565QaVN/3xWm7wZrc+MRY
qJP0Mo+QKnO6lHVRJJoUZ74o3iL9DtlMXBtQ+reBFcy5I2TpDro/n8PoNDQKIYvx8o5GquwSql0A
Ps+PWvTg12Li+enpLpZR5S88PIw/rrfXb76KV53DdEvdQUekZFA5tGq684TJIMqCIQmywA+BuRK1
qdrVtqBvgnvO8YOXpAEiS2aaeF2JwnVfKREYwbuXYggqRDegcjG37vTr6kc4zIbw4gvSJM3gjXWG
Ci+7gt8OaD9LfXGvLibG7dep3d5nU+z2e4JbS8NJ+dnI3VFzTirJxf/4ACG/a5u9JbURbzDXHlfu
ASCbBOXmOZEFcB8MuLC9SSqHSsSPrkubn4otHflUmwn8/MXkD58SNPJCpzklaa1GkTPj+8pwNmwY
+zr/91w/62surCacuD8Q5yICLz+8KgfwqwpmmzN+EIcyDvm7iVneR+IZIOxKBNhUVDWEtxsbD6au
1vPnMJ8w92kDgxuliRB7P3iX/AXsyno3VL2d8pbcNxwRUzsQvfZi6yzrznI6z3l3HfSYEV77cH/V
0g1F0gDtyLTqEdqOGM1QD+ZoYKznwTgcs4ZdPk4b/1VKPpuKxARCLgflKdMG0cR/45Z66gU4ENii
c0axqSlToj+5rbVpPb4O59j5jLeEL5BOy9tkYSOSUG/joXpQsnFwU/VWMIm1bXKKZ/U9aShEnwqg
lPW4qCi/KEp4mqofT3wnej4uKJPqVPvaOZW9nYMBAJVXNWdaaXIB1ZiS1AJOsGJenN0Nc0GtCVJi
/75SwSNyRcFYqTgMz04MpTSgM1hdDZ5/oyz55CKm4v6G1R0+YzQJkiWgh+IY6XLsklBEXYRrPK1Q
pZNz2QZ8D62A70Ps88NmsEk8GwzcD8iOK1kFam7TtB2R+T/sIsKjzK2tMyf7x+Qfwtj/qf9GG4y7
0ZYtY0w1KquPjjQEvIZR1YkqoFenULB4XSQghO8xOqfvvf/5PNT6R0COxqNBN60R5sk5D/K8mIGJ
g2fYRtgWh+ZZLNdLCcP93q9QoJzgXPhIN8avG5DcH5YEU3oMTPo0pCMj6vDAgZJ1m2xv64fVO7ig
9BSUbzQOU1HDxdIeM0KwRTupllQGuRNE70qUdoROQZQmsn8POFMXyz9Zdj7vTWuEW52FIYnBXskl
DEV15XZKDXja6D4zwS84urwciHC9RAM/OuC6jxHVE2gVLoPUTRCS5DwoWmZ+N6fJLJgorS3+xv03
Zr+uWKkLzSXWwGp/dKK8TPd9isuBBQuDGG/JiM1ucEUjAFtw4RPaTn3riEnhwH+uSw+kIKMWm20p
FH6TEwmPLfOQSXewSwB9EBL9eKodqr16sOtJz5s1+jz977P8FwGojtwYiAuxhkPOdECXAOElH44a
jlpUHLWR2HlAmGK3yyUISzgx4DIG6fT0irq0PyIGUAVxhBdta4JmM1WjxJ90uvhw25c80wf476yc
JqZMRaQGimbz2kdi174CWr2Oc1gC0Y0SSnsdFdT1G/vQAGd7XI8XKn6NZWWZcSdjJEnqYkOpBilu
nv/1Fek1hWoeA4MZQO4EVWOmVNhmEEMOdLjf1qYdrcZS4p0zFmTx3hf0XWYtXiEWMdhls/0Y5y0i
hrcY3zy9f3snUaHHK/YTsDAH7qh3nxulVrLzF2OVMvAuqfgjSl0Qwupt07zRGfxroKel8qJvbJPw
k3FMCj/hMKKOYiNckGb+u9U/tmqHnGi0QqEZpw40FPJOeDK5nnATBJlBIdi5VpfqN0+KnbcEKkTy
YJ/dooYLRAxQKDKI/+tRVQ4P87dBBEMkz0VXekD07XJAAG2sYdZqfcHDsjFgtz6HhcoYbaIqB38Y
sH8YZFZagcOizHcxizmCMW6NMuqHNWXnU8ZfZCOEazEXHslVJ7YhoUQiKVnTVFQOcjvklVuw60Jr
ir3aCw3noG914+f+INotw2kwDHthvIh4JE5HnbD2CytBmTyoJ42W2AP4HS5YoMzaWZGkZzeERI/z
mPgXR67YRVfJbH1gfGV9uzmzLZJXvVJBwXw/kfJkRj0eXDRvm6BN2+/fRak5PwfrhjNHl7+s15xN
2CSCWllNNgbJdUmiIrt/AvHS99ZQ2T7QbLTq/Xkdfm0W9m7+ogOLZyRLk2DxJpFVefKCLBUf0TGf
8iP9o/M4KzHQuyIobNlxQq/byiab3UUf5GdYOptVgCexH2yTQWnhWGrJyeMwIszmWgdDR5cSBCMA
zfjFYP1c8eb/PixPzGzECy5SmME4GjifrtKpUaS29t+aVU3at9ud+8KW6zaO08Zq7AxkMkugR3d4
S7w3JzVVrnZ0uXwQRxI+rDpxBq9v64Pr/FdGf79imMsp0ixUmQDEoC5ZPULvpvmukQmlbrBT8H0N
lRXi/IQuaWFzZVx1I1oEcvY0793BBc2o9oVCNjV5Y9qUjyXhF7gFnbzoTA5MnE9suUtblcUA3VlL
sc4cmP+AyrsRVNPxcdALRz6wo8sywBYm6pwo2htO+yiLVKUEFtkZUE9Ajz9oTgMBJ15Og3AcbCVK
4kyrk5lukPgukivmnEF3aIp0OQagMFn7QbtTbrkdkNkVItQZ21Q4+gZLoU1HljdcmPVRtx05zp9i
/a0yFv1mVLaZiZpfrgwN82K3MLm0h9JRSaWCUCE4KHYFw+/2z+5c1zSW+9F1r2G/RDA/Wo/+NmdQ
wYViGEOZqKbW0NVZrcQ28vb9sCQNm+8kXs0hFK6pLwk+DgoMV2QiOLhpXs1tE+ybnvek9zmWtzOm
0mwOJjGfcYDD9u+XZJ/aQvngRZ0Mi6vrDpXpgCTJ48ZwdtoWGxUk3hHjTrQ766dGIXGhWP7jno85
ZuMcSfIYROMZObcxqYJACq5oar26WEW4XQ6HQFPM10+sT6Q2x11xVzOw2RTd5jx9Akd/p32nw7DY
svK05f7T9ue9PSir9AUpcUZjRCCIUPnAM/GqJa4n4aiWIW4zELdERUkWaSb9EPacjD/N87u3+TpY
lpnnC9KjPOvZxVJ1mGyxrF1KFPJOkHsHwjc1U1V7tx82pDibfqRuYfCrjTaeAidRECHEkxxkcoyh
Vw3GpRHZg0hw3KHGlH4Ko1vk6QLAHzJfJ77j45rkJyDBAPVnLZuqXcE5GeLh/iI+HXgSlvkdOtRM
FCrt7ql2Q+uJR+AZA/XDRBSJ+f8A8zP7VqhQ1q803RrYACP7zNWLO7ePyiBEtCn40k95Wi+4CZ3l
2IS4XMVXRRGsX1zTJcQZFbkSjTx9Vt5OyiOpyRJmUVkBj/7pvnhZU80tcqluPwizQi3m/W3o9IpW
HNVqbIZJ0+yZoh55PUxpk/5qzCFjTcjxWpjaUVx+P2mrawIPEge5Qo92RbvR5E0HQrt9Hj/+B3vE
Egzln5TQ4liqWwi+NYG9nx8kvUbuWCw4Idf14BtH7GAOat/hGgUaE/paAm/dSiHovh8r5YvzftZD
CiAc+W1B305MkImf4q6bRhEzwaj81Thw2E1GuzTKWIdpcubJDY59SuOltV3pTomGjigAX/6sMTG8
OhwMjwoE/rJopcmQjYImz18L1Ivw5PTVsTC4UNdsD4i+X9XJzw3KpqCKLr3M5humnfPUPBK9mvrT
EWwg4XUqJbs5YfQlcpHJlC0211RwgUYz8J3S+9ylu9YrB/Q+qbGlQaAAsfrPUnM8H1abEDEmrKfh
O8sNpNPCSVsapYp0ANJWimO0diFY4ZG1jpXYhEjbUNElkMrsPd88qfErDXzUoGJRvg/1fUj45s/0
+ASuOurikm97z488//DilP28ngDQKPtkTMyzqweQNlJXXIdduJSh8L9TBV7xzJw1ODXTat9zzQ0h
ISUpW/MkZB9RjprfI2arx5A1YIFjK+Rp6hFjRQlzGjyM8Xa/maQUKTz8Ae5UAYOd+uX2WooFqF7D
kKxRR/jCQloiv0/prSOidgUtuB9GUpKINbiWKAEmGK/3F2w1fdKhFhv95ZbTDUvIwwfNKlmheU3y
W5lxNaLHstV3AStTWAoC7rBjZ2W2csJkYUGWIaGSN2peLTWdldzvnFbqBtEcv4ek2kXoQWbD+ISl
0sSQL4w+bbs0XD9/th+ahhQVtPB3XueG7lneMGNHxNDGJJ6TmsaX47pfOOwwayBJcJ1ynZRkKpbC
WBP4Q4fJQ0s9MJ7aGz+DhvEP/h+fvpYZaKyH6Xcu2oX4hu8B3hmQezGpzK5sLnsUWyqWj7uvVx5c
fOSFl0abZfnTPur0UHeuVKh3oRbK/S8pbG9HO6yFFDSoUKE2kYBHF3anv/VbqJLUsLQuMZcL1aGT
PZFJs9yPaQfvyoV2SJtakSwg0/f9vd9Gd0a4sihY1WGMLU6YTOM1Q8n4Gc+W7KScnlkRWkxQ7RDN
zBemJ4OVnjMk4fLxSK6Ow4p9yi/uZIPpayRSkoKjMYDUOFFpIxyc0saeGKtEGS4yOE9buYW2TZI5
CG66hZOfDlASKfPi2CbZrGrFrThCxjUnFrsiXyVgGlPRinK9Jzh++J++7JdOLXkYyTTmDuZQiK0N
KmDGQWP5TsB1dQ81p0v0ocm1ggToUQOZp67wbUJCqsTAqhE0KlFFCDMLIp8uO1oG0Akt/6k/JEuH
nVgwzMqkRhVawBBdTnX7GlGXjKXsRQE3nXR/TpWX7emlOn+YmagT4gfHWjp3BZDrYTDWpwef0ooH
2+pDfY4GX7xTklk02NUneqMbtaaolzG83MsWKYN/A/U0Am1UUjbxRZtt1ayIoMKbVGmuc7Oa8Mko
gBI3s+hGiUBOVZXfIhuD0wl5s+8eE+GyKIVbOIh+BaiA814qa+k/zJ/ceoQVPBKpStSNjKJHku00
vQ41KHPL3ASpbbjKq4PgUS5RktWswuoO82EsFh1eONbkx5M6eqDf+4iATfnIo4zcIp/HEZ2WAZqW
GU3c572UjADZDVFh1RETNnKsRbIu3eQf9loSZ3LOkbUJQIJ+KmS4B56ZIZguY5xmSBTis+W7ppsT
734KHoBAbB26eI67L2BGA8d68W7KcVRIqMM3gsUMR9ltST6rSsqMaSQGu11Mf70+mU/kJx7Z0I+d
FhEBru/nvbkD0B9gO2TnZrmZlhZQ/0bgxo6iUGGmu6ZahY7Fdq60uS7emIpPJfZJnc4paHSk+nNi
TswFVMPpA/d979cN//M/Iu4J1Lpuam7q41Ptu3BSa+DCJlGGw5vUxz2zwEHguwV+5BYusTh0ifU4
B2I8hnjawU59oDdO2eu9WlF3r6ZSHjxNgFGXCZMLWdaM2nmcNs93a9ojmHTDSC6aoF+Gu1EFo23H
hNmooQD20nDwrjcRGDhbgGCPzMG5ukU+p2bVzc5sN905gZE2853owzXtH1jEWU/+0k1GMYzicDcA
ZRNq0Lp69VUsaoL86WtfPJ4C5MwMiI2SNiLoQxeLIvmyVxO3IP2sQCBSBq3zhk7H6Ub7ieJcZr3g
g8Je6+azSfDFO/+qqxKvCnyS7QEaaj8mbQ2KU/+Xtl98R5cCI2iud8XR2Ba+M53brVUQsezKEIoH
PWXtMjh9e9Z41PqfskCPQ53RSevHUdndAxMUoU2txxbsR1e9Ucq+Q/aODA8wDW45hFXYAcntapYm
N30XGzBmGA/MQ2CMClEGKY5Oqui9B1wanE8mnrYq9r+F6jLmAzqzDM4zsfQBuprl8hKm9+FgOUh8
TsPQ4mFR+G8V+a3jqhd+8hLn6NgIutvyBuqYSy/7v6zDomeolO3ua611D7oKHTF8foYTS9mTCr4t
AJjsexH0A29PYj5vDEE199wI6KiciMnBjKRqgW9ML8HQRpxPcopHSh9LnAePmQMuA4Vrjgp+3hCW
s3qLziByhl72mXXXEefPlLNtqsgVEsCwvHsapcjtQj9aDtBZQzDgbTCrLoO8H3ZOwA4Wj2EsKG6o
R/XOfihLqZYEpsJYen4nwq+rTim+iN6i+GvTxn9i5lAkg6nOA5BhGxpwvV8wSsP0eDpPsHh4Dg9z
5z48Zi4/vLH3GREkSqR9n4mMiA70c4tCiLLCQsznoC7NBr2HX13MaF08eRMzC2CCBOvsX/yuShQS
OpJ3OcF8jleFfT0/vHjB5vkJjnzZAyKajT6BUQ4BDht3wsRO7vQn+ZaJJJKFJMGK46qremQf1R/T
xTDP8zs5IO8m+z6B2P4A0czw+O1zEylcoz3AKXLhjaQ76JbGYoz1rkeZL215njQQRCvYuGr+Hgtb
FRCcXRGZkew32nxuYY2ElC3dK9Nrn93B+jSECCkC7ohYGKu3dp4AflTtyT2nIQKtWZTZtbmp1m4N
SdpLG8D4HslL+/zwBlVI6VEHKRNnmD4nbkg6hPGrsLO45Heq8ANnHsCf2BehBcKG7z4uOAqtBQ0B
hAJGM8aNMyOltpOSZ1M5V7E6sk9BkTVtnrxXk8VflHA8uXEUc169+OF3gYiZkBE39TK4ucYjpf4Z
hADI0d2sKuxdpV3fAuP/Mw9puE8dtc3lpZ26X14djdesAsQMme8Y8TNYUyWo3Gapsp8ki9GnGSPy
YcYEBaZBhMKuer5YPBQG2syHd9X9FNfZq7u6PJu+WooALx8+8Lkaqt2UENNpxLzUhM43Bx/din6N
q2Q6i0+KODjGMaJJdYtivMKoOpZl0nLcICpAKRhOne7SFi/Dx3hy2OFdQsSmTgki4x85qQlJ2xgE
I6vbhbNKxfXrdTQeBUztybUC5OAIg36R9FLN1mAEd/WHPowIdezmnF+pvFI257bq6ZidiMgJbqmz
L3x9KVPUdO2QepW8dcyd19E4UbNcaT9Fp0ehHLsgOs0/6JS4dpi8f/4paXlfsI5QiQ3PEgPpvAOq
lUemTty7aOf1yUwOJeju7JD6Z65KzoJS4UT1nAvvSDI5tgHMUBZ9R7HagTUszBvvehWbYRg1F/1S
pbii4/lQHONkBqMpyJPhsENS9Xt5noIixw2+SP/j8fA20u9mfcaDsPKxQe0JlC/FjdHxkHjd81Oi
sefOlHLcYUqoFQFRGy+wL5q6u9d3e1qGog0XEBIpMqNaEjUif1PmUYXFFY0PpDEDFQ3u0N3YZRqt
u3xYlMaajENJKME/jTv9v+Rs+u6CRLboaVMzH3GmsRdAyXiHvIo1JDv1aZckC6/2hL8mKNCw7v9I
KYtmnp3VVQG7jMT3FXDFhkcy47SWOzi6/pndJh7r8JqNKC+efDzZvuH4G4nRCu47tPx4ji7dzlNf
Od2h4LpWwXNcBJnYJkBGcDlPcGZaB+78OTzLg12aTZIxVL2myep5CxPWYdJteOodrJ7hoOWz0pb2
KUQcCSL/WnaNKWG1QpOrHO6X7ItDH7GouqjqnvJROqWywfgoLqvd+JufHiYiXsylVFxQWlDIfYru
eVrJShfbjQ2tx9/H9i1aTQU5mqvWRIJGjME4WMtPFUwR27vobADKRjQQnGiXGgflnZzhiedQl9Ss
o92Oa0Hjw0bgnHDVCMwC4b+Dj/RHwO58Xt8vqBYtbW3F8e4wETKOZoD6/nciMJ4Egq+0o/Ny5km/
x20tKijUPZLJ6NX6ihZMaN0V0MsSJDB8u2FmYQx/Z0Dzk8Q4x/S+PXkX1WEqJtI5mqmciHu1aMRU
KOFlmhS4jHdUEB1ySn179/maOn1HxtoRaaCi0abPewpOM03ekoOj72Ir2vSUM2iSnJl6aSi4fWR1
0fxaHnUR/Yl7zrGTl9vNm9IvKq3G+GsXdwy63ijB9XEH3sM6KCjB7m84aKWT6OUBXcFT2XmOkY33
RDoanuaYozWyCHbCFc8kMPjsRV8Zp5s6SqukKBeGcXKkYxXyxmmzRtyTRpHEWsits1nMh3fLuSx/
xwLQqi8tJ9qiwf8fAdvGVyZLydu6rKLV7FknFOlU2bSGTH/IaOaaJVPCkm0SnP3VJoSQRcTl6m8J
7R6P+YjCxd59hoRAz6uqA4wyc3908iF4npCuuhv8qbYafBI92fm04dHLV9CgACEGH28qGaaoPDDJ
VU+S0orJX1haiOCQstlHUTgro8EHsepA2ghMgxF7swvURH6hoqVMl6Wt8jqRbjcPONpaDtzV2qUi
L3TwRt+R9Ya40N8APIhsknu6ma/jKUQgq8CvGqPuw+50i1jFIx/ULYkTX5hFS7RsBXgYii7RevdJ
gRYnTC7/Qw1fj/cHVtBO79kzrD4uW/9G813Yhb/w3PFL1PUUyqOqB+LN/LTHWk9nJgSy3askq2pz
dwfIxlDSsLM1V3SJrJ0lX/h2/rLkP3LcPsXOdLu6A5Lf7X1b5KC8XpaMPSvTXhf1WtNukuH1IYS8
yLVQXo0401CnvXJRap4n51Y71ZbM/tR5//IJAIL2BYs5D/tymyVQswoCExAQZjhyZ581TS1xhBph
fXtAYm8Nb3vhx44te+nC/UQyO5om4dvgG7Y7Xcr2FrkmQmeehx0/BaeeKYwpfx+swC1uX6ikFV1I
OWFLn6chdlMUygpwv/a4cwXDmlBojhrsVbgMUF7D27qk/0QB0VXEYS+9ec7c4AoX0J6QHKZ4pqFN
yiWn7ZMwsqhEm8o5n1tEtYd27U6hOTDt+vtC4jU3CaHch8V1FI/JnUs3Tokhef6HKp4PI33y3ORp
YIFIBk3XrzOYO9irt0hvEVSeLDNUgCO0WU2idSD1kMmwLK5gq+lsjf4eZArBxh5DwYXMOC0bqNNF
8LTHLz70n9lQi8VxMh5/BeBqlWwN92MukMojHKLdpXWvfp5GMU3diSqlqshNvi83aNJ2kePWLdKp
EsZh40fRdakd6lslz7nMe2dhgo05cM/1/7sc2G64S4DS+cCGiC21e5f+K5ZyaXQDwqIQC5D7ldhq
3ZM4mhhgd2lzZa+H7HS4aPkbIWGbAZT7pTe0xrghOYwv5jalg5rWkStbVroeC6szGytz+Joc+s0k
1dmuypDEFXCtouC9ip7n5bdI8FvSV50xw06jM5FWET1ggIXKsSyB9frCb5L5+wlnXg1YegbnSR9F
mpg2hKkD1cuEGT6G2tZeauS0p6sS0MWJNSbrTMS3tKAnh4CDt7nIjsbR/MxUfX3jSfwVMO0EQkrC
wnvlXVUYQ4KQP/lLGqjzYpJahlDGOsXoK9jpCLUnHyIuT+HUr4ARjYyiWB0CihTa2ln9mZs2Sz5E
67zGNcFUUAagNWvbRRyp9uHC1n4Zrm9i61c0bu4nRzthefyRGWHsVnkXxsnD1IL9l9AvoHWnw2N3
vhDp+rYWA/xivw236A8L4Yn8XqhDmIeMgWMIeo9zlSqFVX19cnNt2ifYPxHiqciCQOSdLKU1A9i7
ZzkWPM9utV565pdOHhyoJKs/B+wcOZyE93S/0Z0zSkgkrGNgbzSVCQrEOaxIOMw5Raq2jFO1Ez0m
TsNeVcafrpL0HXMgHuCME7IgkTATHy08AXChvUlOyDSDLKJpl6lhoxFSCwE6cJDuqzg2hrAE4xy3
eRwUv5NVt+/bIXA9pOVUISNPlNOzbbeg8xRJ5A7CVYE3CyZ1iIbpYf3RRT6isgaE2SUWCA3htgpl
G4XGi3DR6a3xdOUaWbhXNiLCZFDECHIbQC2zQN34RYrgo7kQyhSIcqkcqd5GhaK8e9i22+uAQBPI
koE84J2UtLWvl8aa0FiMCHTVc6aGH+gRMxH7dLnTGegGBTL6qi6i8jkFnM5ZR8EVgk6XYlfPkjLe
nMLeFxTtzHSu7h/M/CDldCyh0AmLaWEPY+5+NidBzQ0r98kxR++uU7tOi6BaamKTSTPyjhOgpHQ2
5ORxH52i+0g4+qyftzz6cY9cuMtcEcUJzG5OkRGPFlokBntqLlkq11Au1AN4HhzR5Qu/nc1C7zBa
Vx0qez9ZIJ1J8AP9zwjENrbFZj22nbNPXt3Hfs5Zo1eJao0Pantjy75zBAk8qecga+aotFE+0vzw
8kdoK6Hm3vXkRe5gmTvs3bBU8NQ9UWTimpDj5JzXK7OySYK5cl3N/aYwwzm7U1CWzZT0UrWhI2RD
RNsv/gxj1JD4lt9We2723RcMsNiA7elxeTjvmTZQhcNSSSbqWYVY/YZKvQOoMahHAXE9/Pka4HwP
5ER5tihZDk0g8T+Ns30fFr2ZDycj9Ukg8Bq+OihdgoarJ96a09du5GdaQbxn0HPNnCtuwWuTuvF3
N2nu5VJtx+Eu3IvmylipZc1j1Lutv6ffxfAu+cA2nadkVLAulO7SCP1jD/D6Tzdx3mJXkJY9oUln
RCbVXkBkv3htnNPKvxB1nV+YiMpfCAbVv+8RyAgjxvzYDgkQYIcTDi8mAjZG8pIpr2fJbOmTgwfs
IxN64FnJJBJc60MIa2yueHVerKVl5Py3mzblhf4RqpkYq1EtmU+PFLAwb7j9h3nU87ta22tHvJhU
BdkmHcOj6yUiktFtqpaPLAqMHyIigAqVQq2i7GnKh+cfxRKMTWPixRYtGt9Z4H+WBO2tF0IzQsDH
MQ7fWHd59dZ9cKv9rFxWXha8+3RLxQQsbDCG6fL+u7M4VDHDazQJ0mpzwdkhCV1gNQRvC0f3LaXq
n7pScGSzZNP5L3HeqTtJ/D9GTxy6u8MivBj8NrDTj9/ItJ0oWkFikAMZdNCQ1v8osZwgmPKrPRUg
nquJs527eB47fLbz/MeCHtzfIkBg/P/vZwHvySDNXVr2A4av5R4bJ90SSkA4rjE2PwyLYjL5jU7n
aWaSQY2D/xL9wk/97pL3WWGPjtme8omTZ6sUJDHrkd2PtwFEhl9iXRF20Iv0BYoKbbIf/Z20piDK
TazIQG9FZDKW3s5RsxhiOcih6FavDCCIY/e+sQVg/SHVIFlH2kXXePa2DBivALEUIURurWYXnoBO
RbsOXr9FMfa+yqVnnlUh6gskNO0deTfCarMOIN4/4xJgqo2nUISgrnl+NYvYDH6UGX+ImUuFzAqA
R9e3zXltcH3SX1/5DhAuPdLMfotvIDJKDzUkAIA/M61Fo/8iZOs0mJy8Y28bEyUjwfns7AMNOSK4
Ndjn24gtKqrB099XEndpdHPPTAKlbmTRsLFKCUU9RMmwwLH6BpoH3MU+WAZMhONDYvOGhpjBfLFg
kPI4c/PT5H4MTEkkP0yDnaMm6oZUwbBi90HjKsd2ZgloGenn75tNgoQUaIFxQdCo8hmPdxW9u1az
PFvkTJ70ASrMiueg+/sMWcgtVAJLTFSxuAfNKrC3ejJnmGf2++2x37dUb8qgoT6Mz0s1BWsxof1Y
GfgjRlBwfFaltnWHVo8Sh6aQlmTQGuQKE7V9IPOzI0bMHNozxXhHAX3AxgMKCy9IB5at5Ghk+sVE
sjJwzdBckzukRgAr3fTNlI0S64Y1i5BPhYSSqXHO+lj79WpejNU92n6n34HajsIc6KAA0gQJaRmT
/XaKfmK6kSC9cdeX1x8I5hWagu7ODX3eY6/a0tnVW2sHYamosXsO0xTFea9zBrm+Oiwe/tOZq9Zc
AEnnupU/O58W+EM96GavkQ84j6c/pHPWTxyQeSgNeQ4VBBdKbysLhz4wNn4xYEKRr7kYxXZ7fwbe
MFyUpebRUglsDX0PqwImVLyWfhET7fKiVv2aJNJz1pzEa8hqFSVLGmuQSZJinln9xhfdeglaTd3n
LoRFBNEczy4tJPuo+oOAmoztb3sabJii4R6rPmVBx3CzFd/qiBH65v/kzU62EREMlHQcOJRECBzT
hXL6b4kmSocwM5LYQvSk861wJy20NuNNyJs5CrYIBucxUCAx2jhkuqZzVB2G6WlpqtlFOTJCpeOO
xo+AaJNQzPzAw6RcIhqXGd1WQEXgqa8ptwgu2hl5bVwaE6w73OzPFEhfXwukV6pbX0vqbST5NTPj
/FVAaJ95VuKifkYTlC/QKdgKj3QrAcVvQYp+TWAgbYwrtB9+IcHjDuPeiBoK+r8lJ2c/yvuRQzfq
piqPIj/CVwaSKeCFBB9CFughKNH3fGtL27mKQyavUYbnOXVq3y3EUFu/H6PsZS6HxB/jmlBVAL1u
9/Ns7NT/WWkB5irdcxuZO6u+qNGxjtkJwMbN46ahziFzCWt0keGLQimE/I7m5jrp8xHLzR3PaXGY
eisplcL9ZyM/8f0rp5geFEr5oLg/E4Zi36AWKTWrCISgcoR1/URr1Ojl8eEPZDdPelNX00DMDiYC
KwgNzjZj9Ow5dDU9eVLFEIRH1uat5AtGAA1fjffHpWLAVVQeRYcYHz4H6OZsQyhSYLyRIK7BSc91
/lDVPa0d5YJBUX+OsEGvAy7dAZrNPA0+QHae1I9CziFffOi4Ds7lR67UHaDIPLZTqNMDLvKNx51I
t7WQ9sFu54i46hnbcSssxzMhN3KXIakJ7WfqxPu8l+tuhh4gEmOEgPRPCv+rO7FhQ35FZhA0I8J5
crcWKfukqyD5nEHDkeJy8kOfAv898TPQeOuOpNj5wQiExddDve/EHtkvUWyEVlwKK4lP5++oyLc7
31zBaWvyDBEfgE70kGX3CdiIzSx7Q0D5S5ZgUNX0vZst2u36UZneHqfQOAtAUybLOo1P/lAAPPkQ
BSn5VylqRfQnnz+uvAoOFoGJM04A4CsjHbUofEvs/jqZdLNhZ5BzfYE8Uu3ERX3akyHUzSokvOOY
Mgn6ce+sD7y3l0+VSpB0lfu/lPzcDRbUpUzMkDkAFU8nb2r7p0109fWzjvSTr7Er24ZvLvHL70h2
n7rF7IiKxMAD3vFhAwqLwipk74N9fD857FeawinIeq3FztxxpIz0z2l80Thp3WNvCoXhrjq7WP+5
ZUd/ISwiF66ShGVurAp055d90wmlHJR2iM4t2uQ/dubzCQjiXItWqCMAJOsqR2oL6sip8b/fCED9
T4jYYxl2ccZp/AB0bNQYHqYEqN/7/rPlmeA2JMOjToD6mtzkXfgXU6FJWdAGBT5zXwYZrKH6lFAw
kWGF00YFLRXovc78u2tAu1L7rJevQ/eVUtUixwobxIyQT9Wh1zdJiquPdV6P49AaR98t0kjL0hhb
wLy52q65zGjFVQa+DMvwCNrSmdyQKkB/35QhXUzpFPu9ausr6qxrtKiPcsGnuUae2gSgntDiFH+z
ZPN8xISwbel1ImyQDEg360a8ogHAOwV1sDVuTwoxagthrON9ch2pX6htPofVbz4+Kvt91IMZjxnJ
Jp/C4hFwlpds87xJgixhnTmooHiO3cVwO1TfVp1c5uClB8nFX58Wun1ZIBSt/lbYda6Xn2LLFlFl
x316FfDk7GyMoQxq9f8Hlr1JrM9XNZl3XKuxTAdXikt15WQIylb9JFgIvvEapdnP570saXioUH7I
vsEqXKUkcg43WmEIqll/kHEe/8rkXqjOMFAkpytExLg1AFdw+q4q/ZNCIaosSDBb4Kqj1BE5dnIX
R1tQ6Xfs2ZINGueXakD1cYiVM0kFbsGhDgPguXjx1lEepYqM72WYYtnbLfDzh0mWTdc7IY8fOcFn
KPQ2tjKIyUmneZxow+7k/bxI6eZ9YagL+eN9Nv2p6HDm01rHoKNcvoLxppUAVbnNGOM5gxxV0TAC
CaPowFrNBcyICO/YXJGK2+MvRdQ6po0iGZZ9LZvnSa1j7mFeyFT/X6QvxLkcBskujUFbufyf3Qhh
ZShznCYYtJCTZ+ECmwzXEEo7dRGeiT8dNnwEnfk9KEfSWeftT6AOaZXVhdKHCW5XDDWnrt6lZhxC
fW3T2c8786zkH0Ugncjce3UD5/ZRAX9y5/9Jj7e5DbbjPcKVCcPJKoJ5Nl8YIF8Q+8oAwlAw8hG8
tVnlZ5UmNZAQypxarMzAK4DahELrgTWyif/LsznCm0gDGv48b55Sjei/w3xWDt4/kFN130og0Fyk
OQay3I/Pqjffu8vS0k4yNvkiN+ITP4swteifYAgEGG7aL/egHaovt7ajhU0YGESviQvDLs/aYaiW
Yagan0N2Ny+KkGKtGCIbn8JO7PS+Rr87rbGbIf/IvqTUWqkOftIH0r1dJiH37PEQ4BQNd04eVu47
mO4vC+8jPGyLYozVCO3zmrkwPX1QMXcllJGGIXagKv66lxkcuz9EP5+JryYFozhpcss9GdtAn5/G
McQWy4JHTJ//7u4tVLNabXxQ0lzYWX2Q2z8GVaMU8hisVrKjqKq6Q/zNDPDLnsMMDxO5fvIl+P1t
jpQ4C1fC7Fi0LvhEJ5GWT1RNifLOuodya6eVwNRdCldw7MIdj+dgH5exLX+zvDWF0Z6NR2rX3kcB
EtIOxvXuMpmJisFDZZ2hEGPi/V7mXfUgCR8iDrijS9t8mzc5fC4JKoztu8rTgHX8arxZbe2SX/Os
b+4RtNgB9D1a9ho3JeCfpio1k1uiMe6RXp1QdHTs+fmnKfmAM6r6uLCXipUS7ydp9sRbNXYmXgV5
PiX/45n5SdJyAPLS1pO5786TlUL65SHPDbzXjGjd1WRPMZ2MHEC6a2kpCKVr3Zeis+aqG5653iRy
/yTm/Gh2jtp/skZcupIc85PofwUlr7tIoDwi56++BItJklmeZs9+T1+tKI6vuzpY72l4evqY7PfL
dz5IguKPAQsNsuCHtJephXB4NyjIszfoqdfPFVGJoe9A3oAEuPronrbfbgYYgB9KioKokS/1rBdh
5Lyhc2jVogLtTmrYISw8iydCAyu50QfMFU0T5AocBJWtbuugUMgR8wl1DouRGkmqUkvc54VTl/1Y
ODnJfE6qv3QXzeIsv3mXYTaMPS/kHJFgIlckOJPif/WdEmEMjWRbymhZoleafqLMWZd40SMHLEc6
xrYopUh1Yt35Y80WzLE3mMBxAZOlBGdmqFxZbeQ2rLfnpQnyIHoqCWwNcNw6se13GZujjyVztwZV
huLN6WEC2xEIUjX+7FDhy62X1tMkozjP8EVD6QCK5odRWM0El24HOvTLtZDEsNiUfyR75AtAUhHt
05dqFwb7qERxzifmo8ugssHDNZXiifahi7zXVAs76wUuEwjrBSK+SUpgCQ0i7m/Ng3w8ZyOPebkX
Y5ioDmf/IasaLfMYM82yLRl3iHAv9jwvfZiqO+OPDg+ai5J7tnmxKkVpuHWNmPram47VFHbEg5gV
63kEiDgPe4HxSezMBRFQ6wO5gthiVYbxeCMp0hxs9Z3n9MJN/6CgKymfNu6Rk0FIVuzyZ9vfca2T
nnE2Awd3VCKwaRBRWUXs2lAxChkJJpey8iX8cxo858sW2xQLX2/zVbTGK9dKKjLl9nLUslLYHXSA
dkf+kOi6E7CwWme0/m35SBFzhMgp48vhnaxY3Rj0KdFVhju3CxmQSyKMRlZ4W84kUqGFwBlX/8SQ
0V6vWuQ0wFrF4AI+f69GJObUU5ncxQt28RZ+oT9eQvIFR3DbYkbeUsdQpcRUxe81YU6yCDhRecg7
zt+pNsXByQ35MrMG3G1Gs6aFAbRmRrfaR8yVFQbCTYlyusno22uI01yaeKA0c0qlyVH4JWW17tpT
p1dj2FKWXyuJVbFyeIfwZWq9ruFw3EazNYPDNH7ZYFPmB+JyP16AdKskY1aX56LLg8WbahMVfxxj
dWYkp3EJAXmEqqd+nUGtQ6LxCQMswgWy1Lu6gW9Is59axTV3IRsABvWu3i0gjoi9sNibPEjgUdHK
JevRm0hJaVxXkP6mQyh9CHLT8QEtfbhhPwOA/woG6JjZfttcFBC6hVyimOtviJbO5uB+ledlLpO9
2VPgzfDPssCOh6JCNE6OPJHCauWafxqFQd9R8Kvi/VZCmuFQ/U+pnRFQoNgXfvkS9hBc5z7AMEk4
j9JBiylljeALCJSLL3qNh+ODacXwY4Ds+f53TfUmr+uBrP3vvpuCbZN42rzEUFMGNM2kA8CynQTS
xkyi1HIOuwVc7ZG6AX0//uMQPcMkby3iFMBNe6rmun5mrqargdr/le/P0thoQK6+DRwP65WjViuc
GRcDkTlfIWPZ+Lw6FXm38+q30X5/MyCiu5+NrRYH2iRthOo+zm6vcWvgUz5XcA+D0qYz0h64Jt3z
3L0CI/9sTxlrjEUJgq+uKCQdnw3UcWm1icFvgMJ+NM3dMD5PAfjLiX+ow8rxNBqsvnxireK4YR2D
W2HY8gfEmnRZEC/74j7V5MbvaHaq6u9h5L+Ssp7YxQ7+7jHqW1UbSsEbHwo9I3aIN+lGdJanwWMF
SGHSQ+0NCuz3oCXm1fZM/npv1cCL4RPEzi/p1GJq7H+3aLPcW4pD8uyYtUG9M+TLDqJcvpRRaZu7
OUin90djNqizxxmP2NzlKFHjplCw5f6FY72ElzMZaSPX03PoBIzfFckF2u/jIt2HLIYKlBdPuL76
PYQagCYSukXnE/IvpFMmTuktDgimo5qLfoHPborS77SNVbEwwFfNyjH+B7h62KXdz+cyDj3Jlo4F
Su5wuy0kD9dF/nlKZk1v9+k5NOWRG9mEHOr51Wf0cdmpWdSW1JLTJD68KzQ1YlCp6WBtZpaRENRk
BMnHALSUpIonTOGvthoJlABq7NVE+3kVGmZIy/gG8i7sSxNBXTRgT4gnCJcMBlN4NfITbQQ2VN9w
L0cifDJG2O1hhVIMWkJq/hmFMN5LA+hOKjY21TXIuxzT0BXEDAkC7VeFasxZpnVVsW9j+WJmLPgQ
w1xqTAVH3nr4/TsdTtMTyiIrdJuyyTjD17+XCdYnz4IoFZuBnhhyYKiSdY60/89eiMR+sA56YoNB
0ZHYYNXRRCHrg9n0wKQcHYND7sUsOjop1nEmNnWmdl52Gl9Ap/GMB+Ktf9VHu2Z5R7xI69ZcqNYP
bsqJNjW7XBkkKihNaN7jca4TehW/0EFQMT+9ymfuvpajyQq1gUOgqbcsRCKQRI2rbPda/08qHq0y
dbFJrf66MJkPKYhD5HkrlR8F4W/ymcVd6vDcifqq6qviTh9F9+UStjCcVoHItbIKX9edD1f8IN6W
62rrD3HBGANxLA62tb0YeSHydXk12EuREwQuMnOylqJFyG4mQQg82vSff7us0FvljrXICQTvA9Mt
KUoaMVQkPmSXESiBVIJp5Opay/uMsmoekPYyRcc20QdaylfXMk/u5g7WU6EnoxutCaCQVVBeAjic
5rOnRIJWgvAg4nNR3fK24shCj+lsA7ubs9ZkikNOc/4eq+FaMaQOf7n7DHkAv/8IKfqHzbxAd1kY
36Xjc6p7jkfbBfE0v+ASZtPLFKuo4rFYx5ACFGupkKjJ7mMhT/jyboy32C4qUm7hMACmc0l/Sdl7
B+AobDpGvKbupBJunV/22jpUNfUncnrQGfGVCJoF1OqacvCjuylBif8YzrDPqs8jcze66TOflmlD
edADz7CcUcE2uUmB3vC8+yGFWnaBhZ7ZJJzpU3QrM9AsjGYoXB37qG/LnORA4sSeGBwjrRlxuJLW
Tuo2PryI4nQ5MTeqMozWQamICQOFs9hPrWCXva1o5TwOcYwQZ4KWMDpeAyiDNeNN2klFQ2jm01Mj
t9Dyyd23vERDB51w5axNG5fbOb3/3u8PSjENLfGdMtgk7Bf5/vsCZWaykRg95tnfprUDlDRQ9uHd
IQPfmU+AUAKdcIe/+dIQEQqL2+SYdBdAFFADjaUZY5Jvj9wkH29xkRkZxL65mL2/EQYfZlOA6EX9
xI514f5tFtYCApvidbh79Y6ajnUhL2QY4H3hQIkDTiKZPHnoPuwoihv+QabC9kpHBUeeVMjkAlvN
zHGKYrmBLYKQXfBxtnCXLjbHTFzlwroJYCquj+JO7nQZhWAczowyO3ceuDGO4VQjVvGS8JlLvUsH
I0F/+AkSU6+3vW8sckNIWNQbNsTRVR/rCxy5nQOiJMMMdxUWifLEC5RJECDy54AZyzPoR2FPyArx
akS9z08ahUWlZpeinYbWg7JMtl/3w33xB9ltesbjOYrMCO/X2zaJN0+EVDG9IrzVrDYnK/cheVXU
9LStcyD1+DzQg4Ju24YfHPTynzN6L9TSTwLtlYhm4LT1ovVo2bsvJQFFBJ0TCdV+IB5pGgNkN0hF
Yc698pTYt0HKDsXvTP65onjzE0rE/n9BhWHeDkQGerMrViJ7JP53TLl/fxqtc8U3EAdHyI7fTKpB
NmvQsTolRwjTNQVXHpKgFlVv2zJxzijBYL7RFRs71DMUBoI9lpeetiMGd+lQoIHfAgpeGPWvAks5
DIIT+8mpcaLcbek3wSu/db2LubWDCOWtyoUoF6fYeykk7I/IAlpaZS3jLLtHhdk/wJPJ3USlcXsC
gQ67PVEBjDfpWn3XccmEixkPbXMqE74cIqe/CDHU8ce9sl7f2bjVtAxmLUuwIs33iH9Ag7frzZVq
WHF2iMNenBdXcPqTBk1gooTC9s7gD8CXsQR4V9HdgbBv6HSqZZ0CeR4XBZUUZfBvuAtko5Yuq4pQ
d9zG4YXSyxMyoddd9Qe5peeJPEBmtWqiLwUcpmPsqSKKcOHgVo+AYnkxK2LMLqKbEdTSbhYUpGGK
y+hn7Uv7+b2dzIWgJEefjSKNrXsnA8VTzWx4P7ws3csmGxM9+cEooWmjCn8jSx532BfO5HXjxJDj
1cW4kLPrfjsVcZeFiIw2N2YbRw9m5+Ba80UXRQmcHHp+DKsMGF0gYz80YnECIXx/VjDYZsfMDU7r
Wj7jD1GzB1h/YYaYmiX++hote6aw5JTTnxfs+8ETSuGWDXdQWd6Hwd8ASLcY5z/0P3LP9sGieysR
bxC9CfRprc9s56QYpiYzeWgthOWtGPmwlT328w/WuzpEPFNC9b6qY6UD3ugfa541IgNm0F2IC+A0
hU3w+dUDgLDdet+zFDua5YX3vNtCZXKW8RardZlOY3ySwTBQTIIBU8QkpHdf0a/Lu9j8PEiKMmSW
7si8Qeb8I/LliCbRWKhOcfnfgv7ZjS5QZ6viRzZXGsIuhq+qJd8U2n2jXEXqQAok5jk4MhbLnP6X
2MB83+x+QFV1OauiujNeyYDtIKpfQDGornkvN34vHTvgCSgf4qh66H3p6b5ikQ5VikgPebemUs8h
lxWRQi+tHCQwgwQtzf1oYvhUmUoeqWGoKYACoQ594+/Ix3//NOrfJdbQCgV588dVTHP+hqaqure/
+IkvKmXWGG5wchzsQ9Fw6aVgScQgFZf1Ioqac4fOgPR56+IV6Sn/d8kHf4kgkuCqA2Xcj/0MlOmo
EWjKsAfibZ+hBRJXxYR2ywr4M9a172azx31ArgqdpOBh171ZDNZeen5KIZO2reztw5WnLTLnugFv
9vsqyhu963HquY7i9IGaxgIhM+nB+/Ce5IomALMt3fuSQbBB7Q2cSZO7p3xHfrjdHaVbrlYSeYVE
u+CRgPIubuwg7EfPTe4gIznYv2un1CgsrbMNvgxsqqQk68H4pTL9OikgqMfM5vTkhuiDwp0s5m73
dwDv4rpoDN8siiFwmDldu/PmZXNuR68XbbLm3lSG6Mkfd//jR493I0EmysbSopvN4H4yJTdLoc3v
XjVSDCz4kON72N9/v0HQ60DUQ7vCgEy0POnk9gg4IyPJomavqWzQW1rgf+UMbhN2qmy25UL2U74W
pL0qEIyf8T2F32HTlKjPQkMkmJyU7hNz/xPdZKW4QcM8E+5SR/+/7Tm+9DxGvRkDDGGh+Z3sbsb7
+GFHd0s8BFwOGzHklwDw8LXWv9UHKS7k+CVDC9IAo7WDAIsNRBZENy4/wQiVNCM7malkpKoGnmL5
/AS7ytMkYGzqCKSCY6074ghE0tOBgZYZWg0FCR6k6FDv3CfziTVcZDjRr4FliASde4cAWADq/PxA
E2xYoongEf71QnmTE7BinLQJAy+fTR0VVaYigPp0KS1aspP7q97sO1bjA2En4ItugqJ7lQ+cUF1A
QhYqsIfqx/XSQFxcHVyW3t90yXsNu5JxJuZ4dEp+K3yBKIZFHxjChWKsNY7EF+k+ksZJBp/jM0BB
Ow1odiQkXL+y/d6/0qtx39N0Hqur/0fSwIqdvo1nj0xnbZEnuEjtUB8XUIrh4+Isw36tplbjD1Rd
+WbcGTHGD/GhKaydyhPz4k1uM2vYEQWHavfqHtFylZzalKPyNOxEALS36aE5wMIg1R2l0kyKsGlT
MQI05ghiaFaVKeUXO1fE3xgaLseueW14+lxuutqnWu8jlf3fqa3m7yofRbQYDhwZM9d6tSQ7UQ0G
5zyraSo1rlVrMiwiaj+73mWnRlww4bPxkhjipjVvx66sNlJ64i4rBInRdFNXc2o3TqDtbO9uWthf
Y4XzD68EDyWU9sjHrgu9cYAKN85vIZDrymB6qv840ksnQlD4D6lpYa5oFac1L/CNBaPdXgkLkhpS
KKyie7jhHPqcFFxX/ETC5JTTmiDrzxx1QGgrd8LwiwDHzBQ+rLkDbdbBlfv7n0pe2S0mVOxpvioz
WZ3QQ30DzrhLIm1CPCqCTtpmvi1vET/oe8H9qJBzZLJI6mK1ZD204bI2Thd7vYuL/a7A/0JydxY5
Md9UgDnS3PjtyNo2d1fKoOLj4XZQtJo3lhwl3IF4QO3CDio77iOE/YP2KCtcrIMpQGCBkjHG3m9H
UjRiNgnu6XeU2D9SSw7DOSUd9AugtKqyocUKpIfng57x2ueG3Zs8CKg6hRhzoldIyaoWZutV0Jb2
Q6bidx00sVG50rRa5anzl5CPSVFV7yri4Xtq90+0CRhbq85D3fYkJ2YjcnE3eEvNc+E9HpgFzldD
loqHpCNcsgL/C71peATgbiYiyx2YHEpIfnTQ2wNyuLAhBIRHUnaCA1F0bZvmNlUHLsqp8yT6DtW4
QDPB2QRnHbcW0znX7QbK1IsBw1c7rv8hhNgcg04tH5ZXqivPFyNlJKzdU1ObfUB1XhAcLVORYGl4
aXWfWIufBZXseFrMqCOHJIpswTfPJu2BGEqeePOFhAX6Tdd25VVVr+gqx3fMDxvAAhAiIG5E5ZUF
+Q6IYM6s/lI/7+efBMbRZbhAWlLHotDoEq8Q3G47UU4q8Bor1c2dyPRGko3PYeiv3B+zCV2I5gF6
7TCSwueQZuj9gOr3+yIgL0+znh0/qySHsv50s3ta+rg9FPe1YKwYZZUKmznHJJ37jmFSzTuI+J46
u1ohaTuedczu0L1rZRCpiBC7jpMsfuWcOLJe/6i9kuufrHO/mMnwrVmh1NGXeOOB4fzmORF/khue
NUgdeoR8Cgsyr9DmvdslmiqNDeTRHb3iMR3MnqQaf1UtEVEqTNfE7kxTIA46zrqOwh4r/zL94rXZ
xsgExj3IRcNDEfMjinSG3yOfbF2RexDYi0k4ZDmv0qndFEHegoSZem2cIZz42pSszmiqu1u/Xgwu
t1xmb4X195ApQXbtr3Yi48hvDu4rShKC3Er9TaRWAUXjlxRdRLMbTOaaIFDby3Ng2PTD62zEQrTH
FNLzZNq8+21Fd46zH/HxHUQyFGNpfPPN1UMDk+g0txCPbCBzz5z39ADtTUKLqwMCb5tY9hFz0IrW
jPhwesQANCE/FNe0rubNty4drvlAXLYZ9JOyQTUdMYQ5ZF6XmnBy1FVPnSJYSLyiGieRSo+0S880
sWA6PTLQhrTnCYCFTq+0hn4633cFvKRnviAox+4lGZWRMtw+epqH9f7OmnBXMws5M8fWuglCHLfj
Rh8DpE4pbE8czQOCDML0ZBZqXfpCzDwj5ODzWfynF1s92uSM2/Iov2je/YM5ScCmNE/mLx/0Hf27
7GbB1bFimerY86Sj9M/fpWVsHjcuHdErjYBhy1Xu6uPh9CqJljd2wTW/bMuDqfWw7fY5upv7/heU
AQEEUVrC5xzjP/QbDH7ldRU+mPLgsW9m9ntsZSJHBvNkwosg/npy/ViUD9pJOOJk7WzarQd+OtF8
PMwqkiKgo+nqRqudeCHj9GsZnLuOG49C4+R6lQrBLKULqtijJE0z/pesG1akBGvauw4UKzATDUc0
9lLIEARo2WLCOQzaILKHyDWpfKExQfqwGx5wd10QCFOFmHBok1Pm2SpUbzLA5/qxA2LYItjv/Vyv
QUP0myt8OPkM0xkOT6gCqsu+YOdukdjbOl+Q0zdVMKBprM9psAXskih2OtHgtQSWmAl90M7McS7P
F/KfptCIUpLhmo6KUQCOgWhcSfqTaXya6nU4kUipDtJ+5Y2CTRmmkWf0gLf8esYzP9DHXAPMZ/Jb
Vxt8vJ2Bi+tkl9WRf+VTYv0Hw+0yAEiHnYf/JcTWcW4GvenFoOwPAXKa0UBcPpoD4nGx/j+8sgxq
Q941Eja2562zKBSpxphzYb8G2WYeyzblxOfWs8jbcmkj63rkkIAWzSWX2iIA1Yjid2yd/v1bqMDm
6t+9ZHPJkJ3bApk+OROjTBr2mUbh5WoH0EjL017h9dOw5hRGFSlS2ErrONvk91fwAtK3nQL7YXjj
gQOUfiGNeS7N3PCZqxje9Hp2cI38XgQyyMp+rzrYKhFRdhdyFbcyHOZJaDCwO3Xl3tGrdkkvCD2g
Mumt7738OaOyRxyL6KRSiIoou0O7dXJhj2pIDZ+29Q8V8WVpyR+Chb6YgrHaKxrXAgrfXDSZCe6W
QhWRniXTRBdrJ3ReaEiBT2oiDRQFtwT9v3zKpFcp5rzuCSR5ODrjve3Ci9brv7IYNAOW7awjVnR/
e4PudZ+Hy1/3RNMwfKCUaBDF45+R3R4wRQEeqdoMsJHW6SgRn8QzpCUQxI7xcDSqaTB7vexwihaU
CYEo5J3hhjqWYoWG7SDvfA9GgIx8MGSHRE7ewDHeGPXJti/u0DyMlZY3i/vTA/d3i2EBVBuZEmCx
rDmsDK3lA1spdc3/j34KWToN9MI0HudTeoHJxHRTW8gL+wXvI31T4q8WE5MybOwJdyrO63gW5d73
ylkc5wLL17a4koIl2x51BXJ59OD/S5NVPYRlOGxPAMN/KRDYitxrOwR8X5IMtOOvyjmvysbcmxWN
XznbyeKlEy+w07NwuuvCeSdVEukM29OoC7VN6lwG/8RPe6rH7TsOx8jPvVuAsBxDojHylC5mHs5q
rjPyQ6cjhV3XPd07cpf2AwASITaWILDGSie3QwX9tFit9+hjif8sYPiEdD3hba0R52mCf84KHg/k
TfuDwLw3zqmCu747iw+qgkUy5y92n4k5Qof/vyVqKCRt6BfE/q5cf9D4Jmvj16ajyDxZhp5EIimD
6jyu8gwf5dHzeeOgMvu0S9Eb/uRbytQWQCzDhiXe61sR9ZV/mYh+t80DnpGfdjgUFsEraX8ydpPn
Aaer3/a9dTzhbxihUPZl+ln5lYGmSB5wrhiwCF8UtLTY5ZEYzRfsx7rfDRuW1g0j8J+KX3gIKlRo
ttUG3pgH/cBqfzcEsCXYRuHElAT6f2qz1wQDm8TzT8sHk7LJH+rsypZHt/rWq9IHbOTLZMUj0TgI
+m8sTIK5+B+7ZzmyM8azIT98rTW5ts/vn7gf5DD1JMaK92bdvCWFTM+djJlyN5KZnEAwKvI68wd7
13Yx6ghfw31n3TzyF7znq85IwJu5P0N/zVWeVN0tx5sjbquEpMMCvoCsmZxBlFjnnYx039fL/LW5
LSTX6qLlOmy8HI4P97T6lV66M6s8RO4llRvaQ6urnr1LSdEJmXwsooHl4tJJ6UZ8vmaYTd5trpYB
jvKf8NLrAsr1F7iAyaYZcLqtIEdjNWACh0RDZaDvNn1qxR467G98/qywvR3w0nFa3JE0BQX/bv23
8MwHMXbHXFCS7iDVq8XnQLqopVKiu5X0sEhRlPPmt5289DOnLnKRvxBxQqPrluQRW14j/aSB0XQr
cJc56zfGPChxez4wcVNQat4iwJPDRJF+kjyRJ5apOShyMJx0FDvDa2938TRrM44Ty16TBw4mexPW
HOUy3tajl2LOJMhnpw07OZhwVjdeQP0RaFy9IjPNuVnVgFAN816K/R7/jjQekpIYT0zMrsNTZ+go
WKuuFYJR4hwg9lFd1L0yjtCx4oM8/JvhfTouP9Tb1absmhyilr6MTLr+3Tr4If0TTxAhz+ahKFML
myGFgx2r0+1ZAhSPZtYcvb2wjkOZRc/VEe0JgaXYF3F8L6/SJ/Nbgg3NsIorM2dMhFzdquVraTmd
BszW71CleuyAgf46G5fDwkCGyeFmTUbtkjYhBI236/JQZOq5BFJK2DlI/O8cwX/oA2M2bMS/WMQj
mxNghi4fk0YDeZHid0eV5zE8EET9lAtXtRbFSsLHsJflpoN0dUifsCYHVdKNF8CUSMn8BulfRGXP
7ESsta5qpAwRSU0NxbAZbmZH17jdpnSJzQOCTN5bS3VvUwIUfKfVdDovNQk/gGOlE98CqD34GHop
F1OIv7gUXtwcqGZ5tbQSp7MwEOhdeIdUEqCqkihncahpqkRzir7AdXCGOE279x+ZTQv+HuQxfEhY
qicNOXPQFIVkOP+GxIG2CYENTgSIU3t+x1bMitOpgLGnNEPZ9AuSMHCs+KxIIujZMsnYLGzGdLme
9aNqZFwK6zVQ3xr7mzpSSp6g5yLn6w+3Un1JoGOeXKxMux17j/vtczFKHMEmWDh0uXm1DV4cOHdw
S9rvSlbTViMkBt4c//hcYYp8Vml4fwpVpzn9AtP2DDkrMC5UsLJQ3UPAlerRl3250hTHc7VTT6Qc
u4647dgVM1f5X7uZ3CTmT22mNKOYu9ILf5dka/jnv0keVPpmVnrQmLKxQwB9uXVlT/go2vhhiMuS
LMuh1JWCG37q4Y73h8uxVuv4HNmUATBni81bke5rlFXyDlmp/2Etnk7k5rlApczuZcP9suAimdm9
PjCiZ7qj7u9Ugn5xU6jn6IKUlzBh5Xxnp4DEow1tMrhaAdcmEX9CNkDT0x0FuXpW10JP3PZfAW62
M28CGgcDrjbV32qr7xCNtds5fmR+V+SsgHefbjLVlb2Aly6L5/wN3TPjqwz+P5bpF4Oyu8KHzSCD
RJV5YQvR/KM2MFAYIHManrOrwk8/9WiOjZFXMQTd8yIcNQ2bNg1B3gyA0ew4Zfqg2NcDYxX0Flgd
NgJqwFnXpQkg7DnxmIwjG2i4Dok7t/jX/Onfj/hMHrqbNfpWfDyFLdVmvYR/q7GZEkkb0Zgne3G8
VLc1C/vVSL5lPrbmIE5qt82ANvewCO9U1EryNIrquMZyP2FoQ9VETSkp8DP378xm2wL0hm/jVke3
iOARnTekjTbClqBTzuNgtk6qLLqFvZPlz0OBCK/ji+ZxHpvlKNSn9fMQoldW0RmR53BMGI9KES1H
SYNY1rO5fePihDHj2XbRL2VEfDk6jJsho5URwYX2Q0V7popxx+ahs5oFgaOlro0RXVN3IBiGsSWC
7OPVKXyzjW27/kEDIHcSfi7Tfc5YJZQUjloACi3zMuDfIWqfC2q0AfQwOMKR1x2sMkoAkaTiES4F
KVIVqMIAYde8r8ycu4Q5RMlF126AhZWtqjr7huJUKzNIclkcBDzqYFP7UnuUPj15pn14gHZ5bkHN
f2vfQWcjkJJqeZd27Vc1zbRn9kBvOvzFO6C7eMo/l/w2jugo45RPKsMw78A9Asff0DB/SeHQsL9i
0e01ITdoWQ+DMxMv/O+hN7yzSVEiKWm1F6brM4v/y0eJDBZ9FMEaHlmqJquFRw6AhogBhh0aSVES
+Z9qY/5mblY6ocsHEhL7RDr+ferck5Bjus8z14XMDpv3ngJX37aHntLzrVTefYMVgTHNel0e2Okh
w/a2vVQC99fpBMrRE6uam0iZxt/Uwvh6hhmr07lpUcHvLZH/0R9naKGHQPKLXPw1xIQdNzG+HGbz
7Rbkz1VBB8kKXQrb9RguPDiCLpphfdoMDMa9aQTYX0KskVoxCR+rOmBoTRO+DifDOsm/RNs40Ipb
LvS+Q9ruiI9qmqbfrnsUCP4fo1LYsMiyQBH3EtZ4u6h02nTYi2XV83ZsMEi9Y86Js5FC1ZxhwIG6
p2QO4PhkQKw2mvgHuGaWEXwSspm/Tn3KY4Fg9jwZI/5m/cyYEsQ0xQn7iw+2ijltpB6YHSuXu7Wu
u7NkNR3LpbKXjJw5yqlsUcI7A9p5cQLpsc3rQaPz0Dbj5/Bamk4KreNP0doi4UmsATlIIg1yxv1c
5eK2J5vl2/UYYAy7US7h6xVrOEniG+nWpep7Rg9B1YHpQ4iNizGSrfCeij1WEhO9MppAEGhqCHjF
SknDGEgTuAyk/AQ8AaXwt7EVmAUUfrWZ40ewE86zOkpU+gz3k3XHr6J3GjZ6m749K7y/Ew2T5FGW
e34zh0Xb0YmV7KgxtghIJ6RGSg8LKC8vZIO2jjO4x9aWnYEypQqU6wN7i/KftPu+77R5q/PncUGH
FeFUQ5GYydbJ7W66d9M3zkAr1MM0knZiasWmCfeZ4VxMruu4kXyWhWEz2R3kjfQfh3iK9oxN4GsN
yfecqvYc4samrCHr1L+SgqHMf1zmE+0RcKMH5IIihJuz/s7VYwLlWHe9DszYBxslymLaz1WG8kJz
BqZtlLLcf0BwZ+t2XVl3Eehl5wkdusSynx5U8JVLrPzvSEkV/2L6fbQPj8xXvfYx3FMbQPgjCIcM
4gK7cGS4RMt9abRTF+W7pKHnOmT29HbeJc8LBE9JCZUir8AonEiIljSvr55MlM0EoWO9CO7vaszn
WcDRBzmOay70ZAWJcJNL8Ry/PJCqDWh8R20ahY/aEU8MTe0K/wrfwxL5v5lJtTt+16Dxg8PAE2Am
rMnQAQYD0ufW15xCD+RBrYPVoyuKKHqOoQ6elE+N+Fmat7LifcjvcIlnUemzRmyZiAlmqHHto0bd
/M3qtXyyvlEvOqJuvb1gpGApTxJiKDLn4x3E+67E2pmiXgkzLONf7drpgiB+KBmaGqRJ6KfiX1tM
bjFgj+XFN2EoPSnpaZWEpjG06lDwKLbK0Vj8VKjt/byk0yWJQE+LqFPysh6znTS1waL10DJRCZ7G
BMMQ+F/ACgrJysQzhN9xEw0740fmV8TchDmUUenG6DhIl/vh3DtXhMwN4CJtd+jtXJatFUzG9YNN
Qw7gDxP2G5n6Z7LwFFE8gFidb/Xmqqh2cuyi3xzerD2sOsLlNGGCbkB766aVCH93DeE8SttzVMx9
rV2NBMrqKfvEzUCRSmBazgwhTsZNDp27m7UqcZdazgskXgvVXsbKXB40mPaN7r8moQ7kPJSfLCNX
u0QwD+FFs4FqHodmcpM54tSdz0UaC3vlRobLghH/wnQixtMKP/ID1fw3hxqNxspYfwudyVzAzG4l
9PBra5N2EuPpH/cUJWa7w811uJ9WLQYkr9sUYT4tW3Vl2GvGUWzmPL3T3Y66C9CCyD3DPxOVvHmZ
fUzXeFeU+l7JDiMaQuMI7i5egv4Gv71yUkskB3wXbB56wYQwY/ABva/c8sKENrRyzIyy0+K1ryzn
OoBcNnjgDIo1E9BxST2m3xGqJynMbNO5gY5C8U0fYEdKdQd4X3HoMecOjG6/lO2TsqRw2yWeoqWy
WPMXG2LDymlGUZrOrHWAkGej1t0EeQAEUB3EeNQLJVIMCzNcyKjRxy0xQx3eOs8ERlSv5QYvZ4PI
zkgEnHQWfAqPfFVVtl2ZF5e4Y0uv2fXP8XiotLu06OoyI4XV2SH4hZKnPaKLZk9QWohEGsUUG9aV
vjPHknBXDfIIRBaRqCDWVrvm+4Lyl2o034XXd+NnvlkEA3EO4MNHjY3/pfroTEMU6lfmT8nMXrEl
u1xk5LSWs/zESBWqKJgIPp3psN1XmzS8ovkRZ4DZrfSzDmhYYfJsPK3Q/Zpm/TekAHh7LCcApU1g
M5jv5gZgcmwD9Q/2EdgOd9RkPQ6DFbbUge6wbvusVj9RYq+bDRNDsTFNFQkBcfswR6SEN4d8rbhj
3mBJegfmk+Gki2FqFpnAlNZS7A46XF9OKlnO8yFtITXxkh+0HGf7V+yV3nok7mALlJtjjaa5WZL2
BXwZm/c5Ql3B+aVvuefnB65el9YXh+7fOzYPBB5FVBCWwWqasxe12ZvsFOWeAQlJzNG6xZGTz+hU
Cgmm8/YJLGhpytd9lNYngEsUq4J2XbDIT6PELTDTcLFbLqLASKKmrcPQCJd+ml3J5nESFA+yEYy1
+oAbnPODKob3Cnj6BEEW/HoN51XrkNsQQ7R6x6Ysf4bnfe1gdcR6CJYmz8d28lIA4EatZlOiEg3q
xb9fYSzZyK696wCYCtgISXIcK+ZKUM3mw2aEUuNrlZsJ32CvIqsdLRPLRVIMN6tVJyA/2yKkxsfr
SXbqkUt7kNVv1EQs5MlZ9vkQqy5XDQheWwG6gvBIDT6+ihqO/5OMJQ5Pi2PKfQr7f49jKHUxfbmY
qcNGA7txsLbYkjtelF0lLrs/ePUM2gTQBEgJ91fzsc04Pi1pVPy/IiK3giYicbPc9evckM0v6ttG
aMven3tIHuAEc9qTH1lmap7d0VZxkwk4NMMY5P0IPEl5TKNyCXLT62mVN84ACHxBdF+pHz9LEmVh
5+ZRae9TDXdefni5qj5kILX2iRIXk3UkjWTTqGFnO7cyU8junqNHUv3a7DmHsFD1KXiNLIvcVIGR
H0qPYCErXxSXehnEv969zqvxcwY6hJ5OoOwPhnOII23gAhZ+GJAvh3lgLwQVUcTl3nnvzLjVDMei
c8sRBwjcEZKUBS+lUIVUo9CAp55XQlczX7yLfnJhhuFaHOK6Le4zMy5NeBRtv14JNClu11+Z7okc
zYqGhaMDkLYSBvAFT8qjxqA4OEbOuqxqEw3Mm7tdpTNKUHK1/arKczTwHt9gIgHD74WdzCwvgJG9
SRVc39DNKe8Ct1StCphOcYdG1NjnzyDHvIKy9I8iCOkj5J1Y37MsaBxhdv7Nsp3fJtcKVftgqP+t
15+SzDsBOZvneO+KZ4VBtE89NErV+/WLnex9gOvNRWIyXjvPD0OSpkktSHdefpq9qZrD2vQeS5yQ
pxhUoMC4d5zVQKIPVeWWtM3TzdKEHMccs4SzE1aurUP+cEZsw7Z7KsYQWA2FZIuCUJr91GI67Rdi
8fRNFSvrr4FQnElj+BJXXSiD6NNiKBe7Ix0wxF5AUlnsKf+UkyAvdYzSClq66UEYanSanrakKN6b
KOQwAJ2zXuCfk1pDqtiU9AlxV1QLbnSXJwdjYlwn/Z4A/blHAwyVQaAk512+hHzIx395I26/wHV5
P028bStjz/8w7ZPCnou2xThiXGPIv7mrF6SaKOIcCPmLEuHMVMt3j3oWXi57D1Uh/GEWO9QRwVqI
PGjOxQPtN7DZL6Peg+XNTPJwQZGgwc+OF0XIvYrp/XA+ezOqIwsLC+cPrZKh2QwYDEXE3zkgNfgV
drmVPVJXE6CRJvXUyKbnrK31KT5uISgwiMadvMgiG4CmPHvhYiIC8NJwcoQkq02dz8cA0pSACNvI
Dv9qw4LFAVMtXpjEjM/mrtB3R+ro+NoYUUTbpswvkB3/ktHQMNbH50Ld9nkZA/fHTCWuTfSIVaXj
9ocAiZOU4h+sMqxI5gWC4khb5u5StSBbBAqzYi23v/h3+qN4cHHYytff9Rtqp7trgM0cx9ec8st6
nNhrrQCqZVvEyD9HGR89v1BGf9fWJmdgZNoscce7siVvXlwevdYksnG8eInDHYKFVmU03IZQZ/nu
r/rMRvuc6LinymB+HTwmo8EPbLndeSPG4Hzq3yfYce8PpF4CIec4ena+wOF7uN3MNS/wScjqNw8K
q0XfOcJ472UoJyBl5ERJgTRYuqpB70jSRcrRrIkbllxG7SqEfLMAJc+AP4NLsK5cjotMrD03gZqH
JmOEQGiF8EPaHVZiJIR+ANvySRx2f+IP6zsuWbk42pf+MeUtO1XmXdXuyFnrNrFkfRZ9HFvZy/C/
av+iXy54IcqMSAH4IFuRQWuyYaVIx12T9LXWRgWTWalf/x/0FKbekuf7Rdo3e5ueenP5qMIIt5/E
0RnXUyc96KT7b+unurk7H8ieUdCYqfaogjrveMSCQFz6YBr4xxD6QYjGyVb6nF1OTNlI2Y1GodVN
AP9XwX7hqfZuGZySurKOCjpSYaRAOQfRKjczOgKReCG2Hb/Ap+QFaH+s7gpUiIaj+CqJtp/Ir3Pr
w2ihmnmrxHKIx8e+wZdxCKZIZsiQE3FIv/2lLxClB8qLFaBNbyVryYRkq41U5f2RUBo6DoOdDsb9
qxwGdeTIlO1tI4HuxBFNCCHH4XK7SyX/Ge1Pnb2eNtXvE/i82i17xxfhSp1VTryHrlMrhedO/y6K
HbTRw/lxIZ0wWZla1yx7+ry0zeypvnIdPtpy2FeOUDlcPF4/V9c7EkaVzPF+9jsAOwbjsgNCeL0F
EOP2KlfSg2Sh4ovRJmDVAElN6Wn2zuJJzkRgyiJq2rlCcYJdI4JwGhzYFm+lziq453K7qDOChDDc
3+FXSTeC9zXrW9kKjMLcwUEl6ala1bFSHaS10E3AKtkYUlL5o1FwysslNtNfgntYr8xlKyvTHB22
j9OPKKdI6+1A0bcoA60dpvwjVZ8iaUqFDTYVymB0zm5M/Pxgh93WD3gSJ22/omaX/dO5e1hwdZs3
vW+PEO2rbQDuL1PnjGgdnVeQAorySbprf6n3TjEmBp+tr7AK7SmeZL6UUJO1EzvghWUVqCEpZISU
2tWhgsMDwX6IJlN09hboq4UCzf3PpPDXX0eocIiGVL0o8eN27V+sfd6m04ZM3dkt31tNyqp/042i
TNUOwzEQ+5I36+HH1stiw1Y57tw9fI7MMS7keafIArvs5K8u/XiJfzCsuPGnuStfzXsY0QYjco2L
g3anHooxF6WE44Eir1IJc3PjiIABqAClK6b2ue3V8J3TBcSReTTN4AK4F9TdYKmwj/e+UX6AHKM0
G1U+DAuR/wlSH3pHI/FcED6mdMLgHUEZVKbs3+2vm14tlz4K80mckhzjM33nAPJgdt7qnZy9tn+r
plRLV7O/gHlCkyIQHn9LVht7coExrGAvhUcXK003iWxqsltRcjyP8mKuuXPM3rKa7my8yGUh20Xw
DdAInUJNa1yNaZUMKiYl4ISr/kIQczOxtoBosPtX7Ts22YPDzaAm9/Qb66HD79tTAhvmdp/WhuH8
tFdvmSYjx6Srtdlzm1DCVFcnvNqdgVyzIFcE0SdqkhlcE2nsNUoP6r6xcgQYG43zc1zA+68E/wtk
xN+FzVy5WhQC5xjEofNejSFkzzBoOdS4yZmK6E6B+GkStYyK5ypv2+v0WWfgaxR6zbWq3o6mRdZL
+UsBmrtyWtyBF3UXODy48I7uOyWrL4hctmJLiesDe4ci52fvHb03wEoaHGAPVS+dZ6KnY1xWu+51
phGorXH/oGmUxM1NcRXlNZKo6UwyLmiWqJ91DiGZk0aZZRVQwu5vqdV7SfKW8J4spGxD7UN1moQ0
pm33J/RdHLP/Z0NeyqxfV6FVUms2NxuPqtjiXRiGL6Ao7+JYpXLRexQQ9+yDSHLFozDNzswC5yWj
KSgI0YNVJzL840gSjkN+Qp6iOtYLHkZ9OvSt08Rc6tUaebO692Uy0AKBTrOX3mCzwcT+Si9EVhn0
JSxii0RGOiIKCtss0JPIbRLULQdUL87Ht4hyp5/68zVTc//DxjG1ioVMYqbq0I/uUa4rjDciBRQN
YQE/Go0u0XhknnelMns074LAsJOg+dTXcc2WCFRVGjt8hAniV9CySI1KY9ZuduE8cwYRtxAKXE+4
zdG0VTGBKETQeCY/PGHkNoCaARut6spg1GImGoYUFjVQyvNQSTkBm/LkkHG99DU7WaaJJEBsLkRm
AO3wxa3u3SEfSHOJj8e+IjU4OKvI8CFlkwfK+8svwUSDqkWJ/UhkA6jacKnmym/1kvRF71py5BN9
/5E6Wag0yiM49AsG0mWAf/7ldf9YeJzLHEgE083yG9UFpym1MrqyTU5WR85/DpOKHVe+rmHRqKRZ
qXHZr5vpPFuaGEd9tW4D5SUcLLS928VnFxtdlvW6Gd5Oxq9WlUKNE910TdDzCgEUJXNNqAQc5qXm
RtfN0IfPyJqORqiLKIGSbVTOLrVQQpaS5tJqoit/+Zgnyha1jB7Mj0bOwVfQ6Wyrm8GowQZaqJ7r
LLxOcv1UXbfxnGIl8EnxttNImvkH47I18frzZvIxISidbo1wuHYQOWdW26f7Ez44fFfcOvo596T1
MmR1dPp82anB0/EPAi8dMUdxYXLcdpUYRRGgnjn5+i6I4+lhYrwWXMuRBhGJ7l4wh/wi06W2BzYT
3fc+Qx96jR2Y7xjrfi6XzhGSPVoc7DToncJ2a4CIRrsRbvN0xONbWmPs5J3nv/bKlutJT2zS4CNj
6PNONkeUzid1EOBz5BkPl7/kdvnJVSNHW/IJndybhIHe9NFSa0gIA9JMdb/4CW1fH5qCT+64ZLNc
zQKL0hjhuqvh0a1x6vcqC5JTgv+ieNvq1SiVFtVB8E9R0xy1/k2NkiXMKXO7137Q5YPx9zlCYF/S
BFscXBRUR2PkYXiONIykWIQU0e+YWakA2JuB6H3kOTW7GbLPK1go8VgevjhU7tdfjjloJsFzzsTQ
W1zlRw43yDgXC3+hzIzBoD0ZYC2mBmRX97i6wFJ31MIAcYdfcz8yu8KO0DrdEB4an3nTNGOEbV2W
cidkxcC0r8LWvws96K8TkW3Kx7S3dS6qXbu1di0DFHlaLlyAxP3iT+AHCLRvS2WEihuAsRCi1xfT
fx4a7Z5MKAHhCcMSJKvJkVz8BbgqdO8/Z9JamJT1aUO/y1YPgKpyG4JLsHBASM3mhxw/E6YB4kbx
TdE+riGS8m4rDqhshNm0z+7Tdemq/krwuPiBM/YtQHp1vA2YAjEg6dqvtwRUBLvveMHUQk/m/UZ/
ndHJQwS0gHXrdFjcF3TuPq6w3/X+3McP6kWSUGfBjd9WgI+RlW7sfa9y8fj9KhIKeWyGyWkf1s/6
aBFYjJU32Fm0jDxIy+4DLiVKiPaEPCwypF6r2gygvKHXq9a4bFAOeEzZT/K21/5v3aEbM6+Tbimc
c6XegFE3n+rERYWE1uA5LVXSEt2J80qcpgVL4nZKyFVBsMvEe7/DsNdIJNkxLkSfHvu9CleYUl9N
mIKd5dnN74n06tes9psWm8AwiQRMmE0U5XFuB3QDqXlDDRhtjx418rvwjvAqKkGBr1eqrWU2NWRN
vJBKLcprRtZ1tf88gWBXI075nzVtWOY+/TNvLuPvp2pjM2T2K2ClPrqAD5bwFj2ndmYeurwZcJmO
6w5YTBCYRwfddWUkzzLQBh1D8eDtIzMhqgdPtkI+K0y9+7ees2ubnjII4qj8yvCsbV6DQUphJ3HM
QyKqMQkWNetZCjt+ncUqS4mLo/PtBbFv97WfcmKeQR1gcG7H3pKv/DfP/VyVoyP9t7XhBWtCynCC
eFPXQ0aRLhzFO1XsY2S2jRkDpOlktAo6tiE8gLZLwtCl99zUzR5yFLmI2YuoMVYWLVskNAPCJo6w
qGIaRfVWaW/bqq7yuaSAkOKoUaD4LpD5jv2Yb0jEXdPn0wce/Xq2uGl4sj6ZM15cTFvrTBT5JHDH
3mE5l4Fv0dsObw3DnkzCmT8Wys6bRcMVRGAbBaqPPyxzSp7Y4iTFrPjYiVENfOjOGYVLd4JvQOyk
f5AMBJjhRsBB4zTyVG/ELScZkYKCeSMMRI8WY2/mD/clc7/S5Eu7JHeT20hPwP+MpWRo5dt8tXyz
cP0jYOfjdIzc+BGXeFneFFdMgfuRTD2d+VJg4fXdvEIZF/QoYPYdclKnDZ5JCDHzglab5flaajKo
olMEJmAAEretd/L+L6jBkmP9IKVRVeZ4DVufPtnkL9+mdKqc6FPCv5WjzXUr65vgen8Wwzab5PYY
vWJ2pjNAFNC8qStmCAPttItTK/P2234RI6mv7MQUSqx83GFLBS/2o+4LSWqKz7e0QYBNxqtjn1Y8
1R/P+uZed6v4ZQjJCs50GAGO1TS1FrjtvK24fIjTAGA4Zd4wI4Wn9xOqLyUV58y9Ef4FAVYkrNbe
Aj00BRC0S4Dr1lUVmvuA5P/haZvX09L88hULx55Wa0mJCxbE9Y1WA1war9E4DP0oDUKDID2oUZqB
gbAnivY8cuJQNfrAur96/A3PleDXPyaQSKJOSC+Oqf1aGRcPNUkOGN2xxtaHd2Ha7Hby0ENbd5FW
ktwIKyMPAXo1MHh2V69/n5tBip2tM+VGvu+wxMd04qQrDCqtna2rpmfeiY5x3gL/I//wXFPQD2yn
dPR/NtmgZ+7I2K2xAiWwxjBQbRp9GvOhjWThJ8tdsAi3Jk18Z8T/8SVEvc35ELopO8PH2XnDob94
yvOUcGcAlSNOheRReXpgrQuq8mYy00V15ouvlla/k/MPoPlnNbxg5ukRqnqLqsJj8w3W3D/w0/Vg
fDjI2TsazOrLZ4B/PgJIfUh1J7bbPzHfGkWRrAoUoFqjgJVLw0Ne/GXkKZNbK45BqBgHN6MU19L8
gjXPktBiZW16p7UDjel+0RO4JTWtuV6HRcfQEeFAIEgkkn3MV81tjppij9LnNeMOufdlAfhVAOjO
UZbeV8hbJQ8x5xtdrZq8Rd3rBJAQKGZg7X+0f54ypa6hwI6iMN9+7+gDremTA6RzI1tdDqL5/G0E
SErReYVlRrymyPGI7y3OFB1XpI9T6hEOZ3kru3O5CSGAFOVV4FjaOt+O+WxK7drO1xYdF1yqA520
zWRRrPomlk4M8WNidn7ramSNt3JRRZa7Xsf7sIEizR34FO3H3WBbWChIgNPbZ8Gj33srgD19/52g
VpQOcoRNAj0ltjxQl8TLx0Lu4jbEZxt+TLq9AYYvF8LOGsm/lHbM3Vu9bzuu7FhaIX6UqguLMCIN
dO+Nzd5T/tqWbn+juh4Rcu3pg/0/08X3KmzUJ2MKl7cRhsy7ItTS8kF+ZtsAbsNmcpjm/eyz/v6F
WlYH9gGm6dSk2MaOgFIkfcqPkDWHjYoNwkzDD4FtSQii248UcYgyX3GIeUtdU/QbK76KIIGCSqFj
Vw5vfS/PywP+5VP1TXNfJFJuvdLSJ8fT944FpQe1bOdPc9VBhWl5hYKzjIXExvNzyS1IH8jNEM3M
pchWpLOCWDjsOZvDmoksZaDtDZYLiViBBFD1cEplkNeYPrx2HHOpyksbmIXcX8H04odbfvdJ8pVJ
cBHAKR8JRBprPvaGJ1XtEujzbhajr5uQicv095R1eBz+9Eq63zA+d60OfgpDR5OJYjAQi7CI7cgI
7uBBtrwaxUnqb+Wsw0PMKzVkk8NFMASuIS23YOrRWnwuITeWPs/V60a5BXa/4L9KcJyuvk4tfll0
DEiJNcq1K0muJyc6G4er/Owp+JYEnDxIXOX/FxN7UG9iSRK013xiLcFBTJZLpl+un6A5b02wUqQU
cZT3Pk9YLks0ffKB9uv6gXTqVnJKlgNNXJQuNLqEMtB6vmfroDKT6nBttfdwlr8FHgqfnsjQY/mo
d03lUox6By1S68lCN3TiJDUgtcFkXtk7EoVZG8S5fwDD90OUYAqXH9xuCOJqJhMlA+zwwMY7ncH1
mby6hNc7F2ESFh6CD5u+7SDUayEFJ5devQdT6U8IKGRfcN4myxvMi6cm1VYWuAtPxc7nirmOLz6d
kObXTISdztj9w6wrEV0sx6f0Ys8dzglswRmJMRKjDosisRcep8aaEBCRmdo0/JbAZOPx8GlFysqy
AOUnijCx+smYTn3T42fjxIyF5MqG1ZrONSvOBYm/NvF3s0upsO/3ujJD9XjbbF+oCtZltUBcIsaf
iTDIEUWKyFo7kt4MpVF8SSeLZprNOWT+4qWB+07F0zY6ZRHslWJ9aLjnFodpWHrGDylTICAp4NTW
sq1jUMN4gejeOHAOhcJ21Wc2uRCewhYgRH5hOGuae3Pt8VYaFfolZfBACEO6lpk/d53O4BLpamOo
xy3vIux9+kSd0HAtFECZx9WXoGnV88DSXYbpCRlSC+N4MNjbruSSklc+OzsixGRkVOxZSV2ccdrR
ucGEcYizJmMKSoGOuglbm6wfCdaySN1UsTfJ9iIP+GnCqCxiPpILx3CO3zsK1C2dwBFu3TMrAl9k
QJRztomKlrXysrEF2MViPs9ISMrlk8LzdGpuf6z8/UTZbAruvtnkHC19mVhQWcz8/YohJCTnqGON
oJdsVCfltQGOlKGe4bprmafNv29y8uXzrBmesZtJnRTbP19sHvsUR9A8+Ojlvm/Zoot1vSFws92B
K91ZHlqFqrrXXv3a1KJ7WwP4DrMZ43CzPfSj10pDAgqnk2M+53H5CXEfdR0x2O2qLCqFyDU4K0gT
2JKzyAgDq6eapc5WXpjxfubeXMIVqD0JVDdX3A71RlWNq45royPW4a82CAFR+zyLlSppzNan9eRW
LLdG+3ATX0Z5UbqXMTNSsp6bH6mbREwtFcT6xx3i2Sqz/BhVtjfzQMpQXH3Z0NhogtWSJogT7Pfr
RTfRMcPpCWKPH2/bqdb60T3Zc88i2XRS17U4AWYbFxfxrzDgnUSLoRAzTzwselIhE1CUwrEcqH4k
L4qFt6tXUfrsjeIU9p1aNOjolR8rxF1iTT9MOkiNeMEskBoMtUtP+9f+SAGrIuDi2ouuGZT0XZUc
365AneTsUDqz1qK/LDkQxqi6ny+TU2Uyu1un+YyTi8baOnv6gUBermgTGRKmYp7lxjwdtDfnoNtE
3Ze5Jr1OcpEgR9zQdeWn2po7khGM9PiArve2MzAu+PyL7yV1jgxsp2yWOlmeVGfVEzzN11bp13ie
giy5yJcjLvVjeWMoLqDnVAIWza/dTM1COmPYIY5abO0fXnA93FirBet2ffRO/7PKBKsI4X/flAuI
RJqDWr1UyBEka2imUM2/p+mkk0vLQ7DEq3b+0GGtjpibSk3liwW0/FqeBRogtE/b//5brPwGpwSt
rfCW4cfk2P2fdpJXGgDCtb3T/cFF39wq6Jw96rDgzTWiKDXSkrkLXTe9Ln2FmCT5cUSw91a0tmMH
U1BFZqDxE+eXK5p11Jd+Lygb0H7Go78I0h3YJQ+TboYJ87IQcQkWHJ2M44q1sdjkuYGS0c5KpqFH
3VXe3kBLlGInA3j2xvKMM5EWs+IZnMl1/ndq3ElXHLvRXEGJDhMj2CFiW7cYf6PPWPqedJnRYacQ
I65gDeFP8zumGG7H+xeXeHj1EdG7UuhBh03pkCB6hnkLyyJ4CgKTOxwg+Qu+GQ828WzCQNmkv7I1
NGGfy77UuMq5Ibn9Px6hlHpAOXDPi7vU1FrT3pQySiWvLWNUcbT9UdfpuZk2uLvINsn9lQxVf1GQ
icQbMZR+thk4mX2HK47noRPLD9cRmmp3TYchlkm5+XwQ6qkP7JT9Ueyh2AxZL1XHunRyNi/mTWTd
D11WbDDQReMO6z5HOR6rzZAKfgZt/N+gYlMu539NM8hLIqBkWmw6cY20j3z7Ug7qocI5AZF+P9rC
0GUqBeiUVJohgl5dy+Xgfxdn1xVbVri9gQzBJeVPAkiGVwx8uM9WoC3V+nJ/TGDuxFmaH98gtSGZ
Y9pxtPy33YykId1ealHZSMBY5mYBoqp+FCziE+ZPNupshxIDhiAueT9QxP8udJYdmQXCEjLE4MxC
ai6jhDBSEPiouH7FnlLUj9NASlpE8DqYqWVzT6umz9L/azYdOY5uR/TgA0AkSM3Lgg2qc0Mq1A/z
SCu1RXA51r2b2WRtHlvtcqQCDm2r67mO4bAzuoiEPWqMFpm2OqdmJJyh5/5563Ss5Db2jfkjks1c
oTsFIxl8ZaWYe02sX7gbDa+tPCoBXWV4oTkNFO3j7kw2noFrtsrPdNG2VDZgSk6qvpPljKrUzgrb
3n6e3HNoIui6UiRlf2q8bPTkWhEC34MCT6OoKg+y8e6sK0sWt59imnrmUxaIuKoZ2H1tGY9vlL+k
RqV3MQ/doq20PPiZD9r+ZSzjAUisfRrpiT60shv7zdoiWXaR//fOaIMK6TQwvD6SMzgcXBSmhvzd
eSiC8rPVEeBkWJP8usPBVHok/uYbgaKFdxw5wGfLcBsse+x/ta3EzmS2yQ8uF2PGlUb3ZPQuJUEb
ebDJ7I0b5VbfkDUh741w7zMa17n1cMFNiLU/9/Wnb44kbm40A0aKgYaisMc4uSRpyL4J8tndj9qu
rCo55cIngVn4d5pn9vYwQdBE1e5c6xtDKA/R4iMXf6XYm87g510wAr8Hucw/wYgT7UwuoUC/FLQR
Rys1k0IuG5EwgmMOFqoOXD/URjnQc1tx+p09QSpP+m1P9cXRITzYt1uDzutlTFn0jgORHvs/CGVQ
/0ViSw48s3f+tn/WNcLzH0btUIFvk1v5ROu08gMGW1rWSmaAGfTeyjaLSiRoH008sKe/W1kEdcJU
C47vWnoKIHbd54WKzntxBvovx3DUtCL6YoEHQs6qo7x0eq+TjMLEEUYZntha7FJHYEwNioYtpWvB
srrUyWDW0KePt6XqlaW+gEHcrXC9abCz7wUIEFgs+KLgQjMAOdtyYuItkTqos5GDJgkhrg4rwW93
cr/7v8iB6Mp1CMBFSiYU745UR88lVzNqUuzBkUsaDIjJsRPXhIiHWxJjpIS3E1xhuUxtvHFUz8tU
trhkIt2QlTHjUMhsNuaE4ddln1pRbxoYUDPJJqho5yhO6qfZXFBWh3nuBsiNJ4+hmQvUwZVixqN1
SuJocvcAaiWNXseDlUsCIVWAujcsT2V7zfy4YC3WbBovIn1QSyFftPJr7UUHztMGC5OKYJC0T1Bz
dbygq77wbgctViHsFu1Ysc7E4mknOW4lnfcxPjt+457gQ0Pwj4nSa1d0Ae1kHsB/d8Cy1GpIwpl1
MhcTYsLtbVcMSyIiIX77rsIe8HQ/Ybx1+QMUPqTMyHlULPDRCWFXmNug7mpxQITdk3YrbV3kir/R
vsUcHDjM5CpNqh3brHj5ajMpDJxjSGLUDVngXeb9nzy+loF9Btz5n3jKjmU1xG7K/Q59Z5SOOZ6J
tsWZTL41qQiJuZScouX6uEUFsSEQ2Rwvd2puqtSr288ktIMx/DTUuX/1n54td6WhaDLfwrlMpN5j
hZgH+0+3pxGewGJFcHR1/XyNYoRCG3DRwvw8zLHWZB/rZuVvInZNEXCnC0BQ94wF7WPg6DFgQ9OE
b4+ysnqT5CdSZgdTC9eaa4VKRNkWNYG1Y1UIzud+7DlNlfmGN4et7oxo9hnnucJotQA6IGQKEeK2
xOBCYKALo42LI/5GIZWf5U3y0lQh7FsCwzKj6ttu7bbP0Nf4yl8rR/OY9WRMtzf11K1zvlU5yV40
MaWlXHUTqEU3INxsXNCg8My2dTz26ZUV6BgLex1t7YbbAVV//mEtMDxP3WHFLKajUh3mxiV0yPxz
igR+FdC7yYqQGl6bgWBb3eYrVyqwwgLWbGUdd5cFFwUBujP9/erOew34wRji5UqpLtrEzafx3cN/
+2EyxLMkVxMkw5VLQPCOdFzfUycDU+9o7E8fsmfU0BWo+dOLpjzugBfy83rViu6xjtXvALB4fx9d
DD13deBtE1Hcb9LF3RVb8xYfuDt1hHzM/4Vy+djFkXldu0s1kgR6KTHeO5dh3ZAHF/dxPIW81BR7
Hwtu1/zT+K90vDKt931A9ath04oVQhLbc3PFhe1GiiQugHXNnzvvjAk5oZEEV3rTgBs7s51DBPdS
k5UF0h/w3OQgVZXMJ2SPFRIf73Yy9ct5U5p4CNWsCACHvHcW+fdkFk5knByK9Bc5z8V160M/4SnX
fRJWrotoezaxZuDhq2xJ8Ka7meqOAbHpSVMxlF0kRppQfqXC8wL0oqwrRjzCpXASVHO3wQmhLH+T
roXtgeQapr22j1um/fD35X2lco8fsoAADbkScw9Abi3t2+6yTr8vc/gkaYlESOqQ3k31flOqGR1W
uFgkmQWcMooWr8evKonpleRS4KK1g3aFWXa/yhD8Dnn0m/N0jcD3wpmcuVMufiOwrFbzEGYmZZqs
rbC6OIdISt3/5KBKEj/dfc0aNON3w/cMiz6TYbBEbM/7vJU+CN8uL5i1foXlltI+0U+np1feBO+0
61ZIugE/r55tfR1tJTRqQO/eMeVyk5cU3cnrtvAk/OP+RwJo8bVu2wuo1aTuDmIL1rhYIH5TMi7M
JbMZFt8tv0HuwIXrUTFKE8iBzet8uTNTSpsbPc+b3OHJteeaVmZbxul62Aiyur8hJaYC1vT08+mX
CNjCm6phUeF4TKG5+lT1tdmhdUciI3zIjiCtK/fFgHh3dyrQrUC1LRNADGOIOKFgCiCo2PoD8MnH
EjCBtHXA/TBlO+CMdbC+tFr0Qgf1WlpL35H6mhVNC6ctq4EowH69urAiQytam82Tsb0UN2uuTfgL
uynlxYxpcEQHFoWrJVZ4u42r1tYHuCSQfmJfQHxsUkF16QccYeQZG0CeBnGSFZ6dcTkPIgBKtlm7
k3umfFMWdyV9BTts59IJjYFkGNOiBD7rAR/zONexHh34W7oK5EZO/UoETAJE3z94aJ4hc6Zznm5x
3clOGpqVyaj7bYXdZjlMvH0/Ktc8vOOZ6iYDnLXwvWjT68xggWPROZNsPEVkG5JddxD7EPqWu+jl
VG/0w7dnTH6dyV0rbXq8K9MKogd8djAdo3DnlnPom8ioS/6yLszbzVDjPhL2Ckpi+c1n5I1A3/4o
aw8+MXodPhn7vjR7um2aUA6LokVOwpXyx/pau6c4fJDXQRzu2WgGFI6L+SQhgO8UJzVIMW0729vV
w8hcSibvLZbN0Js9Y8jOUNvlC5d3FOzyr58zl0DaeQrE9n7Ir0R/HDiKitu2dBB62b8jiY15ehiW
6JF0u0eN5W0fqvzC9xlUtrlaOLYkZmQZ6Efsv85YI1bxBMN7dl/toU2+6NWBWQE0QkZWGi1lJALD
xep9C59EYEtcsInZ42BAzRphZTkY3zdB+VnuQT4gFP9kl4Wz/81iLRN8FXI+UBCwNL9v25weY1g6
dEO6dcpG1QYvCVJxNGuPlh+Z4ZlTfKKh9j+T3rcOD3PtQZ/VwYmcvA4miAja/LM/0gx5MOBsH2zM
1Y1wchGuiRxLV5DGyF5G3fQQuCB6uDcnmBo4qWdZ7efdrUEhwVPinzjALu8zlzH5RXt1HfCJ18yF
N6d37laZJH1lGNNyRd700Tqv8PRqKNrdJxG3eaGBKSvlkksnRH3jiOf4mSGUXBIFfP9UIZlW4Tng
wpTPqgqFDxi9Be+WFHtsQLevEvkGPcYLn/1BNDl8B2VCJXRC3kdPWzQQtYMNaCO+iZqSFVTmU6F7
lzYlM50/5qbBvcefI7yir2sN0KB9nL6KoYVj3QP2hb1giGyd6UT3d6kdACn1Rfqdq8YNTsZZNHJc
XNXmtgJs0JCNa2I2Ik2u8IPmCvMmF+QkyEF6OjoXoKUpVwTD0Y33bySMEBNq8IcZSATshc5QlgaW
59GkB7Mlkrlz0SB5G30U3rmcHN9Obla4a9TXPMrHqkN5BenWBFaeab6aCDPa23ybkT0/nGpW2QPd
VAtTl3n78rd8opKKYtlF01gmGNymBTjB1yhzPdEEvyFaiXlPLFZga+0AWp+2jy/Bsid+odBnk48g
gNhUoI3H7l25qKzft9BRvNxuR+jx3OyROAnPZRiRA6cqu9N0KmL8rNAR1oTWNsXFCqvtQaD7H4eR
iUd3MiuuFbJ4928gRzzSWxiwOsIhmt6dvnBjA19e1JKo40KQBTT18ODCzZfG+oDthMCkxZRWAIKW
xKws9omGtJ13jE/GTreJhRrFJytpr9++GvyVdu9Er9xO+opXcaGW1iwQ3aK/liHl5f7n3PvP9gxQ
xz+CQr23mUBePhifUGIVTICa8gYlYSaISalsql3rErXHQcvg2ZZtdH4bOS3tBG6W7xFHJ/5qophE
MLfe6SNkjA7OSw7LUZzXrNrX62sVLSISUCp86+644510bccvlnuYpRdiB0Jp7EOxGDhEZ7LlaI7q
gUdjQMnrE9Mhb2HVQrOk+tHfpaB9fTCW6KJjUl0RWsM20648ttElBGOSPGZH9FfchpFbRFtY7BsI
G9J5ZCMkmMu6zSxNUR1WZdepuyw//X+PHlqz4SssYJwSj6m/lw+EzupIfyn6EQJNUxJOtJhGvvmH
yOpMphstLK131qlKwbBliv7f9GXO0vX1cxltzq1XA5Y11+OBq8M7inraYVXxDDld3oHAkD7K1x06
S7LFaFFYhVeTBLYdNpj50h4dfBcj0qqSW7HWtihl0UjTs5LaQmSRYh54S+dGcRRNS+6JOiRH7H/q
3mkhZCpphhtTy6iNAqVatRciH7JqcyKNP4ew0WQZRBwryKPeR12h3KxiHxphxAtAdhUam/yfPlf9
qtp7imO4C0ZVoCS7LLLjeuYyGzR0dOnhjs5L/7u9aMrN5wqVSBLa3x/BHqGkpuQeWTFwX+InVsjO
lwJcoNcurAOeWX55i8e3UpxfHQs3uknu94J+khjucp9RutZrGe2N/Z2Z7MCjiEx3Z8fMD3J7acel
tRQcQ3AtTkF+3WV+WJA/rlL5p1b9azw98oDWUnjUhAxPutFThvFMIOGzrzhp4cNQj2p57d9bi8gQ
noYpKxo2eIop/jms1mMgWC3/HpGbqWj5mFIgqAi00xnBkcwFrXcrCxEEo2nJSN1sWHbR9FOqOeCw
bQKXu6s+6I1J22RCQLWf3j/0+snSXE2HOp3XKfQslpduTbv1fSRabsPIHH1cdAXdsACqBR7LyZ//
jgK72qC3S/Ddxef5KODr13XUT8gdxI8f3octEUtDtAyCVScG61PhvAbCCGy9K5jCFLy/Fw21N9zT
0sU/LDY7HCaOvcSdkquGuqcLi86psRJ2o9qs8xLjsNrEaoNhorArPyi9IWb+qC+TjmrEvL/eXLaN
7enAQx7PXtIgRiQ2LKoAoBkNIb4kgBJ0wCmHMLPNQ9cc1MIxBFzlSMIoJ9lmlOpSsDDJ1RsjbHrB
bnejl50eZH7RoeP/TaV5c4gmIdgi8XVxzZM/wos+Lu61fx4j9VmBDdxPRUldw5knd2RWZjJHoyUm
q70qVXZIYn5+ddteoVdH0gdEzQ1iQbrujd0KiIV5KsRpxmBGKj4Wij0iKn0o/JRHMkDl0r+tFaAy
dwM4Jn/r/1Z6fGupqM3ZCcCGTvClgMHxVchzfQShAl7fdkz1ebs4IlSaRNtENVTdX7g5AyrKYSdo
Qk8KbZ1I/7r5qoVZpmyd+9Qxgs986YD4qq+0kLbmnaub+LLjYrfOwI01oKOayJs6HQXhiKT0HfIw
5Ofp0OFIvdRUR2E9a5myJlJRyFONwMfNQ35qGoktsnvIMXzS6crC/KFp/wAStS9arSH0ZTRVkuLe
tQONWGRh4hjX7jxsdRahEUVW/jh1V45i9zCOewE49TxN8eghyE2hI2K7YHg2tWvWck6yUmKQ6nWX
OpaqxiD0rPXlms/cYjxlMy/ZqBjYgY8GxdWm9VbHnziUZD+ktoQ6kfU8fcwo7ipvDWPKoZGufvyJ
uS/sGlAGoEZo9Vnis2bMVo8UlHN3U4wIrSKUVuS5S1K8uRlEvQ5RtPG6Zst+TfbFCHuwTjFPKZKn
trnzGWXvFb9R9ZBP+hiyXYMW14y7sBDFvbe1E/CiVkq/r7zjUTor+76TdlOHmZhI8vNZyJbXjT6W
6n+QABrdZO+Bj95Pvoj/b3ir1n8lpa/g3EfOS3Y3EGI35jTliHZVJyduXJWPN6FLEQt8aKBSib4o
+GBBQOGKy9bSz2QkuCFNnkyL8ed6qzbrWjtRN+3CPWwKeef5oWe29kBalFPHnJ+3GIXaQIV5A3yL
itIcAjT1ET57TfJLZC7yzxqJZZCgUM/qZEBs/wwP8upzWfjERgedOtyjk4Jyr+/8IIvvLjvabwdo
onT+whB2OlVVIsyhCT8TVsGBli991Mk9lBEGxomsNATrp3cNJAmchtOh4SrjL3DHwj6sTbohtTzT
gUhEa8Ne09D0ZIQLuqqOsZXf7eqCa2C/6d+QQ01tghzDCru5lu8AtpIhZsjDn8tc59IZMd9mtfRR
rvfjDW2QhMAxKumpUjKvP4r4OPvqb5rivj1oSNIeaZ4RGTQfDNFqJxwxTKlgStT8wKOxCt2cVPiV
I09KzUJY9DAs6hTvxAYWfl0j8MrwvLQd1gl8GynqdTIzXwToc1c/YTuxOtlc5l2/CvBOSFXiNPMv
D18TEd4dXTlA2MqrE20jmePvokfjRkS9DLhnOyw4p+jgzhFSKfGI+GfnE3FPDdW9rti/FcWLxByn
DYTYAELProgEVQSWnqgdIaY/RoQiivVLQS45ZDMeRnt8l+fIJx1nFGLJR69GRj5NSbWieupKCVcZ
FScIhXPMKySArCG4KnZaICclWXwhSB83gDHbp7Rlo1uZx9kq8Tcodzs3joFiXpw2b8QJ3Z6Fjw2u
hONEc2/9VM9ONuRF2GaTw6TiPCXeavdJN1GmxZwP9uPyjIN5t2cV4eAs5Uvo55XoVabSLXw/v6TZ
ZbU5ZeBtI5hoWgMshvyrIxGFOfIIORYj6ZXN14FP414XQWsY5B2kmJ2KHByLR4ATW/215SQijMS8
OH9ebQHGjxAYoh6ANqnabszso+iV5C+5DweVLFn9/6gVdCbgrfHq30lUy9Nfm5uRgSgW1ds15cOr
NK/NpLfWb0aatwfPnFm8hRrtfdnuEum0xjvzEpF8DKinmr4Ll2o0StbIK9uwwjKDF3vgyZcW3GKu
HCSrXR0WELlKSGdO+tMzqh52cX4UG1IZBw7yeVqAqRYreLa3QYo7MQyVwa/ySq21WF5esDGdmrBs
oWCV7X+WQ/Zu5ZtWs9FkBP/fITNXpL4yicVbC+WD3c74vUigjjVhVZoTKLbFzBvVduhJidk54DLr
1JnpKpdgflegyINRcKeTT2fJOa0I17D0reH2/9681B5iRG2fAJSMOKmrTyA5LzfrUYQ6cXbiJOhv
ZN5m7BZnHOAhtWsV3JwWMUQ0fQiaHZV6p4BUtOEpXdWz6FAvIHEFNZhqBsXKSfzBFetL8UXhDu1D
M9ObU2f2KZfq/WVe9Cxq0TJoJoLWX617GGdwFUrUKBH+2UAwDMRkg1llDMyXKtpOChBjyDBazjRQ
QFA0CqLPE1rk5T5KeiEoVOyqQVumxq1N8Lvhw6K2iaHeRhH3EqcVarBK0j6sxibVLq2LUvT6eZTy
n2D7RO+G05AGgcQhR45LLtr8ATjTHMHDBbd2gk0fMWatT44dzypdsMiC/g/C7fIiDb0WG8mT2BtX
cyevJAD3IMo2RYu2Xb8U029LlWi1BwVjN3AlE6w5dZzJ3eVQ80V9bY0Dlz0mo8Wrv22SCEX58vWM
0nRZR8NlBPB0bRZaN/JdNdFVR2wBJfTUX1xAAXu78E/8iGA16yWkaITaxHYoTuAg+7RSK9gnNMH+
LA761fGw7ylFvEo29h91HGZK1aRUo4PHUXsMZa8DhB/v8cuxkBTf21WWeH7a2XT699i1sB3EraOZ
dRiXS4/BkaCqaM6mzZLLVmhUVXQTV3kvHjdTZgbI7zq3Kvld+alSKIJpT7IJQw3sTF7OuhzYnNLp
CeZ+CafJCZkanmZhZbBxPdFdGsjrG7LpHmmISKwkMJC0uSoubd12J/dVw9M0elw2I1CLpeOi/4QU
oiD82jxUt5fvIb1lDEt2TrtO1PYRILyRsGfMcd+cFkCgiZ03j/13JMmwSB2PRhmkjcAgG5YH0lJc
kqeszX0VfmSjRz0MM8rvXkl6/hneRz9EvizgoIUJ4sghLQRKNCft7P+XzPTmwvo1Sgx71TcoQkGA
j4+CtuGWhqmYwKhawl3ZDl5XyhyrIi9vhd1IP55HXkKPtbMCerFA4rBKYIhiTd60BWxkjf4cTNy9
7kBWOLeR2QOlnFPLyHqe3wk5e8vtIQNwm8uFxVKeuFahPnV1SuLB9IMwS6sewFeK9wpbluJyxSKR
3N54Rfpz7Dk7e9fjxz+WaZmZ4IXmO1LdVcGSRfwW4XOW9qvQ4++L9okpS+C7puPt59g5BpAwm8ns
xmaZ6gYajhXdV5RwH0Kee7WTrd9lA2LYiIcAhTjVgmBRJL2m6cdbutKMLZUf/gljF+R4/7zoYea+
fl0L/fcHubYb9xz39rdotpF0oWjUuaPgUb00JN3XHh0X/mfbA1rf5ywEjxznJuVQ0GOWWtQqkJRe
xEWiEAle3sKRGYlag5J41m2BBIAGDtqOc1vQZmX8TUvg1sr1X5dt77TKnUWYwft9O7Kll5K7oTL8
gQ/Wfs6qQkLazoXqDbaL5F0PBFumcWx3UzVxfPnmSVwVIvZAvqMBMRf1B5bXz+SQXTA4YKYbxomw
53QiX6Ntt/Dp6sw+Uhs5J/LqL0bDrKeax4IzOaoYN/bQWRrULsQjaz7bcPhXoDC6siBdy0+dbKNC
Z9p6J8dk+lUptAV0aQAeyubW2xsUk0otXrctk2rxCtWeoWDcBn1V9nnITsEiUeq7Ahgd5MCh/wbc
lJ6SQL1GpQ7el0EWoiqqKO5p+pWcdDjMMqiMxAb3Kk9qgfS9r/+WqKCDS/Igyw3NulJegg7xkWPg
o7200ew64yhotpRo6j+kLxLNINCXaboNi9uxg8ChwR/h15qFiyP7WqsQ7c1cjNW030Nh29ICg0dL
Nc+scW/6cJAbsQFe6Zpp7MgAK+sF4kM8d016AjXsaFwnPG8r4r+4u4hjwKL9xZ9JmQkG8/SYlpQn
5TQwszsLks84ucvkADW76B0ISi5Iw0ZucKcARrhVToy7c1+9XiJwyDbUSeeYQBrB1vU0IvRyNtZr
9FncG6v6mmx/rd0YeDJ0R28cNeKxWZyDVTqef3b781F5vC2pFMHZLNJZQv80OxDG+XaiPSInoXJT
KDzjeK3LqZF9Z6KQG8szYk55HSZTHP+tPHyIwnO/R1/D/UPiF0I9ciapL+cbP+0hsPBjZil79nnU
m+RXG4QtldEeNs1kQdpm+jFagmHrxvjQU3/yx1j4oe5XMbxxfLsIHEeMgrMe0/8TFdntTWJJbgBO
rtQECmohz0/m2g5Do0tdm6w4aJtXBETzAdQRNVy87+MNq6IlN/QmaWtJrGqvf+3U5I+0sDlaiE1b
abiC5yT0uy/MS4YC4coGioF2IdGguKHFD5PDQo3AP6Ltf369Jxs5lPKSgkRK5l98cPf0myiYSsKV
VASDjincUR/R+NFw+mTk5GSu/Co624jMiYBLu59ELwF3gToM9p20uyXeZzBmIIXBTw8XREJJ5VC2
8qNslwonm+NJ1y56DnEn+fPTZ//QBq9Mt+/40a7Hv3/mNfkXqRtbvZJ57UsP2j6HrfVDCUfxExU9
RAoKsGZKCrvW2s4PDUoaonLdHelTMZU3p4OayD+h980hVAC6+42Zli+5KaG/zSL61xRpl1LC9dAB
hfB30sClp99NZRnnyM5wQBUGgXHvXCWdbYrwP2h52LoBbAUDNoZNecAJXrTu3KAe2I/N9rFL9FDg
mw957ToUe79KKynmpOMM4wnStTCFr9sVWuPWNG/JhI9w/cM7rcDgIHazIrSAOod7RBtgspRC07sP
kzlSySBmqZS3xi1VY0NmDqXh/x02lWxwE0PcDR/MjlXJh0ZcOcHe59YlVR7EFlD2swTSgdfCmkSu
1xUEb4B2fjb6Y/oRqBORnA7fG9OWUGCcup4tIB03xD9/uu85v8fWHtrXkaZ/mFjx3wL2Sya5e03B
3wztHcWgBnR6psLbOyTD81LwI8HBF2dVQGJPiQvOtjgWhp/+WL4dScc2EfIB0SsfXljEZ7Dii7O9
uPFa4XI41ufl0Prm1I/V7dYr/1zv5tJWJARbJ3e/GAte3EHB14AYVv1fmPWcXuZnZGGkwsBHMowh
GAau0yUxIqiJwnM6JjQIEy4ijgERBtmNeBE6ptN6Tf1VaNfqVOqWjVgMFtbCm/bQWRHrxHlW0J6F
J37KCYf7orzgLlE6Rddshoaoacy98o5Vs29sBNL2q83c+iba7i1/AQQLfd0k4xMt04sH0Q/B+/kN
uUyWRNelhQEpjQm2480U7xetocSL4cqRQmSSVrp7AUVcwdYrznM+EbMRS5rfN6a1qPkJ0rAIjkYf
K/leureb6JPYoOqYqqNyODminjV00CM1n8f4RJDc9MMBJr0xBhC9vrTUBB/FxUsmkH7q+dam5ktu
LPCmzx7YiN3LT0csggdj4nkOLYFgt+NpZnsnMbfKubFp6utRpyIw1cSysxQNb2UYGsCij1U4ZsID
6u+PnKxye0BPEq5oebLCJZZvVRPiAISvlAN145QjgOv0j0Pxk/GNHrBEVix3wMezWSeATIYZNzJV
j/By95A2ItM48tezRMFOIrUHlDByemZhr7DYHsZgcI5zdAk5nIfhOCikCxE83rpB1IqJ3ND5vdOv
CcwlwqZs5kA/6IkkBZu96fkpCBT4da8HbNUYcAgaFHZjlia5JHj7eOtw7dv6FcBn4EYdnq4i+4+u
YQXclyb++Zfr8/1pWC01RFBktvZcesF5SSVAcKa3Z+DtxPbkdixej8W3xenLrG0BU74ZtvF7bHDx
4l2J4cP3ILF1mG0kRtt/dnq0kC5KYPVneAC7C9X8PQ0hZEizDcS/+uEA9Ah/cOJCpQbp43zoafNY
f81gkQ+gyQF1iNabBj7GmiSBbQKMUR+9XHUh/E5ojNJxQOdqTvXkoKSTdD4k7Nr4TK2wopHmmTfB
ctN7fqPXgRQSVHxZWW2vKRKY1s8laB9Kx7GRPNsFPwlPXCMsGs8Qjmp973iRkUWbodjYXXpZLiiH
/oqn+9MV0wWzRMKIOGpyk2SGCClR4ylDS+NbpJ761569e1qwN5hNH0LY5bQNTa1sF2ynxGL4OA6E
W2GKywp8y/JLNRa1bOk0ExfVKk+fwF5/riJ9InI7uZC0DZ5RCGrCAzK2+JNUnmyPF9ovCwFqNB0o
+urN1EOPNnDsCbAffMgZp/ALQF750p5KdmamHyVQTnEBjWObc8p2ct+0g4U3EwnTcGM44/FFKvdq
QGC+nbUZHQNFp1gvY89b26wFAzdfVMXg7FMFsmhbU3CWoV7iJDFUOazXzuqBswz3sDka38L34y7x
fwFXU3sXdF0CcJRelnNZOYdIAl3Np0J41F2b9P59Wpb5NPn5NMceCNAhNcl4g+qKiHpYBEumc+Wg
k5t4XVO/lDwZNLVlS432rO6YzcOza+3MLsNJtka6TheTT8A4UMp5zZdl56rbWw3HYEXLdXSOPykc
x2YREWUvgXPJpe4UBhk8P2MolUDxIhJdkP9n9RdaVTITiBzikf1+rbCiAYuMLrhEu57ur41rWKgC
uclln3rHkImBf8SclMlX1hYxNdWkszSSgT4InfPavzShRkmA7QWGoPTHUmpe9qyMhsASLLcJgYkG
54+u4o8AujA280tmNjtVHFmzYkqcqQXONZTgYFUBAO6ucf/0orNTh5+CO+cTxptK3JeEdVjKYYrq
HCXMnEvgj/33k42MV+BWf+k5UtX03VIWqJ2BslEDUxN/rEYufMNY9/zpxQUL78ZYZWfMpb6GH1Dj
tJvK7A6dhWT+jGLfdy1+O7WMBBonLGaJoimSc5m8g/Qp1Q+lHWuluc5o9pUsNCA45cVyv0GeWdvM
d1zKxRCZNUZRFzTW+1E5zvBiU2rOLpZoIe4I2N/dLI4ml/guwyCFnU9c6J0hjIJuZ/A4Kca5LnFs
0E4+DTm3Iw6TDmvYtnE5VthRGJ0NlLViNjTn1Y0vqwnLB0sHjaxTy8I9qhcjxcWuGt7eeRC9k5GK
9RHM5EziHif6BISvkY70EhWYI/h77FD/8RVM51PbgSlzaqWXraRiNjH5mod3HE060FTMhWGkePhz
qI0cqr42XQmsjBMaNYrUpAP7Vc4+UNop4R/rlQ4l1Mngbrv3G4+an2//p+rZ1iKPG6sB9L7d/kwb
vm+QlRVlNPKcwTHBJbRpi0gI9pRLpO9nakvj3QtrgmldJv5BueBCTsD9pYekItNsGavzlUQs7Arx
2o+QhW8DlPEoMRvt67kvnPBr1kJCK/KNIzvOxmKD8O8lOi7mdfbVv+HL72PfAdK6nuaBwTjyxS9S
YzDXBZ2UNw9bFgmLaB1O8z5nvkleosJQCEbyNJG7ntQvLdMw7PLs3EDBmH5Xasri+Z2/uR9IJBPk
GidFy9SC2CQLQ4JPfemHJ2eWhwP+Oz6hSNPKznSKN5Jbwoy6LTSd2vVlJjRdMc3RgVosJ/4Nl/2n
GapIE3ErQE8CHltLtSfgIat999hOZLmpCYgTJZClehNN9rjJhbqHvalhqBdHRKhjS48ajcw+NQzb
PdSJ4UJL342YLThj4oFKKZmNN8usaE2RWICA96fqjRBid9+gI6CsEWMtUzp4j/sU+819BShWFwnL
zCPo8cbpzr3B7UhZ0HnheUsDMwmQGpE02L2SLP+k8+94JrmOqKn4fB5CybK9YTrH9rE877mfW3Ic
NtWjOSfKJo5bqRu3zJrdHyq5A9cSEqICPCjLVigu/1sADxoMAAih5wjcKpPtUfZXtx73QWYHwm1P
jtscRftew0qSscHpdCvTSHzZQomrRgQLu0O2IhS5ut3sK6gh+ue/uiyyb/+ht/5vRVnr7VMFvp6f
Pj6+Lg9EYSitC6/vRQnSM9nooRRQeQHdbsN7H8F/EyYaYNGqBdAgVg3Ao9L7WnewX/870FAMf3CT
fd5Y/8eKzBjKLbQHVHcXI5A1h5Pg4ACzzjecMXFxuu+SJwYcPfO/CPih0qeyzoqAUGDV5OAxSj66
yFZtSvlsEjhGccRWfVzrPdesknbgH5mOi9uGzen9jrFmcouC+MRCH5Lxf8+Wue9j7gkJOnqcYpPq
0keW2KyPQcMfoL3lbcLBsQey7a43Zul+mS5XiRpvpbnkte8LGOV1FrXGoC7T1kZlcpcAxB52kma/
zzqfvOTtqnIwOLI6gIRKFXytZl0ycgBdPVK50DS/ekhsHI5wsAThHG5Sy9E2Pqr5BzCjBuuNPPU4
FfncttusJ3jyBpIQZMlwtAiO60fl5Y+yPPOoAXn5LdYoy/bDtCqx24loaJAUNVcvd62R7lRYUoKf
e1Y5XgsATTJUj+FX1Gs/pJEmNCBdN2MylYlbN+NZ6HrjvbpECgRprXtw+3D+YaiTcQKRGutjyE66
Sw1Tu/Pfisoy9k/mNTMSjLaWmogi08p4GCsfPbiTiVH+YTerevQco3rzkxU/61xy4/3MloAOeJwU
H/vHSBFvD7LzfvimjlmBymIT2rYE2SrbDRWdiv2J48s+xc74QNGm10KJHgWXfc20l2BxdVHsett9
gz2eTCHFWEygQqKzsLSvXoDp+57Yn4nQLowEVoX2QYcU7XejVT570uovXrWfGnVWC1xn2wcTlEOP
KIV8SdXQN+3+wosGNbBCQLwNXlJId7bhkEfS0vr+aiFn4vzcAXaoXwGSNEg2hvtrR6gH+J43TKxt
pSu1y4QGVDVdW2EknEqEp7vZu2WNfEPYHDLXL9pHg0emqWQKU1C/H1AxOIQU9vMlwqI45QieWLFI
oLTrpk8O3M6HDa9fqUpJAAqHH3DyCqGi34peQsDC8xhLs3v7hhMtuitZYfHgNrm489OeUPDYTFUr
tjUraYQa9lg/pmecpHe4LZOczQ4A6MEnHvloeiQ9IO0pQYge+bKoTC107kF+CCjAkOQK12pqE0Z2
f0UR8qhq2Bz7Z160/FXFrTjV6OLdA+zqFgqDEOi2YwnQiX5vSgjZesoQB7wqo6A/6RoqEwScUDYn
6hYFCX3pqCrYC9vNkZpQpTAX0Y3Zpb/HaHg17HOFlN7jVW/gT9S/nwphQJHeaNT9cacWugU6rhz8
pF7YhCSsjICeDTf0e0v2OV7jhb39XbWGTxydfQDkzHDaOYg9gXgWUPw0UpOQq0mq/AcDepTXb/5v
pZ1X28pUjBb6CtcbZspViH8tS0gLIkish6RLPJslavq57qj5UuzDuJeDINO6l4x+3FeVH3AeZ2vb
bY5XqKjjgWTOLa1h4Zvpar/DNaqvloyzMStNSxp5E4o4IysdKSTrfcxNVEKKigCu4FfqIr4GQjvG
4YjQaWC/j72EfTO6rql+4/uwzxt6kMCT3byzGDLoqIMkIL9QYlid70HWFkQT8lZh+MwC9o3NChAe
EhqAYaHYEQyRVv2hT70m/4uLwOeu6h0IpfA6LhbBloa54IAcy6XY+02gLbN+Q3KIaJSj6Yu0YEio
1N2aRKEPDEHlErw91xW6qNl3xb+wk1Ksw07Tm3oe7lIi/J5LxPyu+11j1vXsVXd1ZM8L7vV6sH7z
mg/0IBzUywXxAgJTIEJjUm3NziEwvV9LOGma15NCGhT+Y0yv6UBYXnlzWa8haB7FT1kLKdrp6tLJ
hSNRxKdyQ6CBmomDmEf6eoFhaVmlxjnVi8VftNsX3YCGsEzIJROgnUBhmKt45739GNdW4ZU+V2Ys
wjZN1CL45UHRm3XeSyzsqZCyD9gfZAtbIZaBbSEz0RVAMzW44R4f+KFekSqf9NK4f7KGdTTJpIRT
HC1RpxzWLUdQwmt+TEiKXJEv0+QaI/oOqgam499PwiB4njiYyOfJBhIKbJAhbTIcPFY4X14Iz+iK
p0NYa3tzReah0OEmuXcXzhWge240lFAiuceoAvHzE1HixqaJzP5atmzGPfN6gbq4pJQBEpYP/4KZ
D5IciuNc2urDY24gKg/FaElAm88R3XaYomJCDV6Wdf+1jwEWrpIdMQpG5aOd4KDlHT0MIgWPwZJd
bZsLpy+xtiFeKOKWkGy7tM8XvccBHIpDPeGCmEmB9DLykHEu89s4rVOqypqwgt2tTQ/+HaKF+78i
nsFbcyw2DDEBzmTiajDCXXBEX6zJNu9xVT7ue+VAXnJSBj8dYSa0/9tsPLQI1t+rIhUXJx/a9ku7
jReoHHuyTmckNHFzXRsHhnwG9NUO0BcABMdAFQuNTInKy30IeyIJaX35QDvEvETeTifx7ASnX1Ju
uBmAstHdMiY1TfaDLyTtItgezuBj6P+d+9NMaqPU/Virca62KQlJ8BaQOvNcOSHsV0Z28ETxxAnk
2EGSFeSxttoRstGJqWmthMPa6hAY80w2bcmgzVT5L4k+M0RthOfpW5jPkjBEHYLe6KvVTUX86geX
R53dAArQn/rdjFKs8C8WBe9tMOlKP1BmtawRWFVTcE8nM8VfBbdOrtpUt73Kz3VPFjodXVV+970C
wSdRMzqP4mEPjCqTYL2VDH0c8UTpve74uJK+vVfNIww+P+ZNaXIn9eAr1NiglNvni8TsMX6xMerh
2rTYhhOME84A/rIE5Gnd88wLK8alLVLD/Srq/Tdc95GozGaq+l7qSB2UgsUDQj/B6tClMQn7by8c
XA0RoVBbbZogqkOD4biF0I2pV9EuVEczLatgVlnuZf+YVv/9DmFki/L3oK0ikXhE+yi2cbX0PCHi
DkYVI9k7VKpYAN2JQCjQ7qK5ngJVvoOLclEDNm22IyhrALRBLLGM0/xDpnGWwjH2mI+m4QW0KHiL
EGHxc4B5mTwEw4SVJoMrrLRGEE02gShoCx/sMaQYGBYUqusYEkh0CwGj2g6M1yiVchp8tLSXoPjw
2r0NWzqr5P2h7yGMDUvcSS63joNfkB/PoVrWGJX1VnfMa4eOtMvXfW6nLeaUY7apHEJVIXiy7Dp3
lkt2Ylih6LYaDM7pvAu/dv4rtJ8ZkSQa/m96BOtNRszjWH4g2uuQORvGe1NNczMwGtetjwms8TiZ
cJy02ZYW2JeB1TgB7/cDPYM63469l85T7Sk55hVm11tnab4zzXlVODcM3veOY+W0KQvwYSFHGIDT
C158ENg9PRfI3OjxlIBAIELmiIWQl3NJ/EGIpr3Uk1Tb6pUdi2o1oO7pPv7y2Z1Tiz4g45jviKkw
31+Awj1nRX01D9Ohs450VsW+yEPU0EED/2RgdwSVeC6ncJ4lM4tK2p7/JRFxCkuSUfdvy7oL3GUE
bj5F5JNe4xtB0ORpFBOOTOBFcgtABx90yjI0nE8dLmzOGe648IBAhU5ixsYUSw1v+TxdauOls/NK
Ic4PdLjbswafIRm9Yg2AHvM59kTkYDFTWp6/wfX67keXxIqwIHfwVYWaoCz16Hy9ead8KOgiLQHd
wL0b6CWswqQgLmK+2WyZQk5llqPubDW0V8JqYFbuO/BXsq7uf/ous1oLHR9/BxdGeN0ln/SYOs+U
UjKBNd9oYSKVgL2XFzFQpPDDxb5GR8AjCyb+y2jDYh1Wh6sQrTRkw0dE4FdIH2/W2WUN9UKWpmKA
loOxAa9sHovG1kY2okPvJxVdJ0eSIbygV5BR6+OAm2flHMJduZsC4hitO7W21DQjbiEh5W1gv72K
edCP8StGzndXKC8AUZAqSC5r32lT41FjdrmOWBrsQYOATjY73XCHDesdpmjirbhWS+QtlWyZW9hM
hpRe76I65axnZ6rk3rJuLFyvOg9hVOpBMHMfAY5QTd/MBv9NRAeLFApVthGRp+ev0GE2//sZeDEI
7V0plmpedGg9iI07YBq3IE2k1MnPAj49CJfOjBN0IT9iQ/KF055Ft+PWksBlfnqk9KUBCuB/pFS1
sgYmkD8RIqxs3kzTfasmhyxqrCCO7zKvjF8X2F3mpNl6pEE+lbzOVEYBLSQdjjni4Anz947hrQOQ
VQwzBBTsxvrddQcnRKDH3QZg5ob30NzgsdeJNyyGBEho4W5SBI8JI2olw/ycmkPNE3drNTqvFmmO
tRyQOdBhZF3pRaDrn2EtQ9Z7l4Y/4axh6N+FnVspObN2lhpaCMSiKQ/vlTDjthdpPW8Q0Vb9jPOA
Fu5n+Hw9XOkYlzdJYNr8T05riDovnFgh+2HMfdApwUfvcMUksEjkCKGJvkq+TyPcpPac6X1WgC3A
PeO00dIr+x3mboaUy0VWxThAxcggXPhnaz7uLq8oSI9b0dX2REQLIHYBRMdYtT4v5jfcZG+v8wXT
BZVvPk4SCC+hzkWovoqj3ku2n7QVKdvT0Ao7ZBgIMzFSZmfwHN14wS0a9dS5NEvRCJn5eL5zllp5
qoKR/H21dt6Pv4eZhs1tyPtrFL7N80rt0fmIrkKIhOgetHlFLJ/SSkO8g9kbzUYjti20f1MT96Fp
dukcJKS2dkZaE2Gq0ZXzwXjeKSUE10SmUDcZldzrOl+U8FmOOGumF1FvEZPzN7MH/RRwvE5MQQRQ
37Eg1cNsA5IMUkD8xnOhFItWMPW4wkwF5xDTciCIDkqnDGPzTHyBMav/vr4qs2eLLST1XlCic3j+
f2PRoFDV2PjOrQW1DpAAs8mK/1boVaQ1ePQr9osKUL2Lupn6MMEw+V8puHhneTp7bsYm+gDT5vdL
rqfxSeRbQkpvQMvyXpQjg4s6ykZsMF3KhAEVyBzinZV85Z61kSn1XWvy6z+rWxxmcTVCKKeV+Ztt
flU8nshCIiGuLJuFWqZRz/38db/QwAYvPnzM3FGs87SIVKwu8BYaZaV9gBD2h/Q0GBMvpJ9D23SH
3S72v8yH2h9L/O5p+z/8qS761a/DNc4jnEvsjnaNyfLyr+07vUxfQouGI6zmiS30J+H1/8iaRGSt
iljE65zbdIcjCAOYUXDUpqD9cETbWtztgoEyn5PPYHGNZRH8b2rqqjT7EOUQ0l0iv/jW1sfjh1mj
1/qenZP1CF4KBZ/MjRXrduxF9Qg/Y33OVBk3MqzAd/40wcJ864rUADG344aXelue3Apb6sDxngvG
D6DdmgMI4TAaHRgNVkvHffs7JtjoS43DLbSGomUI9zfAZOC6YzR+AVww0oCzVFlD0zBXtjjESsms
inOTUhMPAlNyCG+DERu2jyayMzUkYNrshiQM4C61s/xrIGDss3Bbt7GiBbfkCvxtNUllmPF9aB9v
miK+PObYGmMI/mBKygGE30aEZaTufprqm4/7+MUUa2/ofQAnhzezDE1hRPmefB7S/lNefu81Q9GX
Fg+L88rxg4lBQnXsDCVBxqnkXfPCWk28MCY1bAHHkq1ETsCZ6/O9Z43FhOdv552R5wnGKMYKQZR5
xoO1BBpkD+RE5b9F+VYDJLX3vkb94L2JxsiYXt6V3EP6+1GgikeWOA+MCZqMtQaTLkSMhQOzNTA3
NDrlRKmce0GH8WaeIDFrrTgaNaZqFnp8SmhrZcTduZK6/CX2hloxpSRh1OchgtoMcKnP9WKacqpq
dIE6VBQ32E3PTbgaNmTEF1hWWMqdGF3cp2RV0YV/+G+jqX2tYzQ1Q/fYAF0K1ZuaWyzK/HjV4QsO
DqCflcp7PoYy8vZpb5SYwETZd2jCd8lCrdyIO2mjM4oc8mA/FP3rpH9Uf4J461m6PH92wIsnz0RH
f78rraKIaMec68GEGarIz/WU5QhAnvqjn+nJekSbax8juZSwGFKqiuKZhktLkPRzUZ23SWw+yj63
tJAUhFeMLBVPajAURgEZPkrMQmDin6dlNtY9jghOWO9LHGftyGtYQ64Duu2OKsVUguXR43Nm54iq
+Twchx4arPjR7+AmxYBTIbrzvl0OSTd9fBubhhbPSB6AIgZw0k/SYUwul4MQcCi63jjka66PDbtM
GP3WXi2CZ2fjrEC2azHJVbjZBvStkOZua5oCZP2YoCg4w3BgF1SsF4kTKWCvG9BnrftznRumj5cJ
pIYjui15n42W2Xi2fismxvee9pU0ZV5uYzCyISftn14FFDIUzZoefKwyv1rp59XaEVVSDuiiOrAn
qlElYXw+2Wskh+B6QK3hDwAibo7tsirAR9Chfr5MeZIjvTYWkRXpOK02dRfacLXLDGuEkqcIK+HZ
0tybzQYV+zjB/04ueeiSAwGGq0HsAN+1NsntA1cHOkw+U4fj3vSrv4dHt+DGxe8nazr6nrmwKm19
ujaPOXQO5hljPShCTzCd8hrV6abXorFELlyyYqSyasuJrcYAv+PEJhjK7Nk2Y/UD9ijRT+oQqK0b
fqag6sfXEO8XlTyqXjV+IWxbo4hc/+RtTWZ7s8br/Ck0pO1g3at0gWS8uB7yLijrRpnx/YqvTcNY
LFJruqOOxZDQ85benyAj/5ncK8eWfnn2LG7MJDlhsW4TkWPE5ndLso+VfCi1n3bHuJ1+9tpiNGna
miOWnZKJEdwN0OSMsEGIiO+sTrCJWloUgmSteFUZ/ljk05Mt0Vm1ONZ5tmdGSP4A3ePA/yS0MWVN
D9BHhWb/F5NATZr5Bj0BPURVTCj33lkAr8rET2j9IVfJED01Je5RDq8PEpzfDkgAhom0gfH381Rq
olUB0dkWkH0q/BIJ+IJSI6XFEp1NFtSjQMCLtYbB+NB04yZC8JlYxAAcheIYhu1lZd9zSsPfGtXP
VZxxM7o0l77mu5uqv/2qXPquLImDccgsw8uG7tbGjL3xNPyS7LpKwcW0EIbQD/n9miuPlplSClG9
VpoDjVE5YPlplT1auEq7PZ78KHsxrJep1Pb9BJ3byDyqqAQFqY3O5jdsRDqlByrgv5odC4/z9j+l
8eSSU9bU8SPnsFci269w/lJT4aB0qIEnAV6XL/wbCSMb6Hp1rchoy45pn2vkCXSELOi+NsTm13Sh
DTimQjLYkwZABelPTVczMLMbWEidgsmo3cwzZReN/D/by0XWWzyNIFtC9lqQufRvRFiV3ccaIJ1J
2tqXUSYuodNqoWf8gW+Wf6uxd7CsdfLW49v4pRzEjj4OG347NwGYMMwxlM1GngnNU96sTLKuv24R
tdZGvDkLS4Z2pWKODQevGyDVoLps9g6tFcfKYgq4EE+us6fYzIHlWv9VR/iBItfgzUKIlFkxpdba
jmt4hFakSTsi3y/0gwuc6IQKiPyN6nDzCObrQmBBevS8dnTKQM02nqLSkh+yxgOP/dJHQLimSpBD
XAVYA06CGTFDWQ8M1HsY+hqYbiFpF4fwcbjuUi1Q92EevJD86nuIZ7I53E2Uy60LL+3v3/LcGRph
GUBJ92dTWVrgpCltiw2PG+0bIb8i/OsjkcpGzwT4Nsr4ZYhO8klLHxxXq7gOVwvS7roi21cUfGLP
qe8a6VU3RML5NeHNEX+/9xGldKG6dXxv5AaYVXhrl0ow9+xSKBra8vqrmLIYmJ+1couxQEK8LZMK
fJjUPmAsa3PjwSo5lo6rn0SrEaf4wti23HnXSLLA9T3T9NVZHGxhNMwmmi0AVvMG38ZtqcvPYq9u
HqMBDQiR4PlxAqAln2pYaIJhnkUxAEmO82/dQuSTHiIW/vjFvT2kEwCpuZ+MdNHsLwmnvLR3jqjm
d+0aZEKo+Yqxgzg1jaoZOV/hhXPjfuZpWJmf63qfe5TxCiFaLhaJNPzWY7y96nglnrD/V/ypi7lO
NEGzdOBck6nk2GcSND+Jf8+FE5gMR2wQHKxdoM/bYFPyKhXl+/8XkOM68gaXXfqxVhAz1JiE5NeI
F/XcH4tJM7sE8wxsBSw1YgxEIJw+DBryEjXRWfI3QMNtjYE0AAQeeoRtbwdxkcGzTFJULjDH1xU4
VJtxIleKuNyxnChC6Y06zVYBzl+UCDDl5SP6T2mAW/lpo7NntZZJA9zr3gjNjBPtSIfRtwcdmviW
MG03k7XCaJML8U6S2P+BhsGN5sSynHBsOWLQriBYrgPa7QjH5eSwRHChRoOLeWp71MVaRePApmLJ
wB4cA3NdtJYtTMDpIjHei3nCmPrsopa7E8tz/KpW2Sw1M4yZJbOS1//dnn2Z/ilMYJ/U1ULd6oBx
jw040fJXiFF9/cTJIH7sFntn6J4ET+T2QYAjl6L4U/a6vd3wtjZA2gfCPKsKH2TUL2uHOVkLbDgb
2XMA3k4GQmq3ypqHRXDkDj/7h7DAA9U39n+0uqaEpSftVC+v1liBlAyoBe6P03pxSjQNpCKl2m9h
8VZygg6iC9FvV2N+3mC1jJVQ9Zkf7YolsX8zVzojKV3E2hVq4naGjFLKvh/pEd7TxHklk64sJjGO
q2MQ6sJCA48nK43G2LGvRzlhY/HSyaEGIx2Xf07zJ7amHZ8eUN94KjcQpCqD8tejUBk5BQ3ms3K4
U6g98xXKR0vPbmPDyesQEYjMzqR66nAvMdAOJpboNa3f+YqKrGtwkmKDrTTJfJqP1Dxz67WmRegA
Z8FHKcZrkVp5gJmouFSzz/UWnhDg22gAZcYjwU45ghFMb/04qtIb6g9GczS/iJeZt8sFUQcDyRNX
8BPhfmD3XXYPR2KbPD0cCxRIooSCMmcoRa+FBRs4BGFNqIN68lfhjT853z5aMPAZUO20HTuR+l3y
8HM7w9qJyCcnJI/CZiKgvLE8R6eUc+C56LlRob+znySPqHVadWLdVsvyNSK1kJLt8AfShx0p8bsu
Et7uBk+3CFeA3ZGaeWX+/DQ6HQjTi2F3z+hEqRk+OjK/v+Lz5jYxjWxr4H2kCyuSVhsCYOaP+rXw
V6jk/NzYqRx+SdKP2kKLjt3/4DrWAj6rlB/nj1fu4BwMX6JnQyNAlEqjaD4ePu6z7tN0ZRkXHgR1
oiuFAvYHr0gM+98wyqQshNvnQCdnMeYvznzc5tpfpqPFNkPLQVldkFRjyYvWy58lY1HaHAmWXDKB
ONazZKCygazYhGyjKKKhMQe4G4+ozwyrs5poCSE3kBeTshHRMyM14JCuj5jq0jhlB7asUdsLBorh
5/+xLKj0f/SiC9qgnpJdV7HmmK3CrlbXN3YpU5W8KSFSg/Oli/7jnNRmW6RgwqK0jiLNPvrRsa/M
tf9U1NgjdR3WLtjP5psznfmqClrA3pSR/VcR19md4HMiBPNIbrbQMrKH+ZXpplMEvVI5cEwOL2xp
iJG9/A6uytvXt2IzfnFoHClhE9UqEZway9gmd7SrBnDuCA+hympoz2llVKFKAeYi9eytnk3JGIu0
Ilv24X+4c+KLl1hN3ZcnO5mb7amqieA+47a7jR0jxWynjpyKlRxYfnf6EWkKFAWDQABbKUJq7koU
GD0t1bHGQf9CoK6zNp9Z1KeEV7XolVysygOmoG4aY093EENZeSYxphE2sZ96Yd5Ty88s1HIV4Adn
mtjfFKiAoHf3rBjTertKBTL7mOgX40w9dgFXPRTr8PMhxxBUlPWuN7+qodinrKZNKsrkZ79hQDbS
qPExEgCP5EA4zZw9lNHuedPysqYdXQ4ktTrhpDlPuAcjOqxebn2mQgxpHjMEdsBtc8fBDK1O7o+U
enB+CkuVjVi4IRzcQzp67vHasxRDtwhFs9Htn08ZRw68xtismJOnQ20SUNTgJa3YMFKQ2/QoDoB1
Ku5Stq9pIxtMNbk9qe4CLAl3i1dbBWohhSl1l6oJtAXsWIv7nxZSqvxKvla7Sy1GSiFNCV7x9Kbh
HTLl/dFIr7bmzEu+4Hk/wY9TTHwO6+TiFQgxgVFgyv+KP5aMAvus/7umTeIany+tal+f3EXM30YF
NpjwdN/bf7QhDao9+/Y/iTvuYwiW495gsCQCMn20oGIF9YKnnsEjEH2qv7IZ//VBXQqhDK95PvR+
s5tfWUCcWkgLeZ4s2hMGXjmHT75lrJgJ6E3fqiihBFhjOfMSOg4+SbB108Zu6MbUaiJli4p+n4J6
3DWVrti90EhoXKezqXa7mSriX13vs2srlmtd6/puFavB+zU+SW9NVlZhC0Ps0CBOG6aKndPisSmJ
CjNYYlea4A7phtQA3NabC3rnvgVHEn+UPknR9DnBMTjpg5Qqs/zYQBNqzuvigIZw0fTjYVlwVhp7
ukBkvht5CvwecTw5lrGC0/EsfZ5nsGD8MH58e0cUnTCqPbT+iL67lxdaZOBdGQ2/3P0EFHg7MWPa
eVsWTSE35seCScyU0CdbM9Zxv4KOqB9lr7+K7mJo5fBoMEy6wG1UlAAimc3FelMD2KWZ6wkkXFIr
cXc5BkU1KVYMGhOQOZKg7B9MOO7imjshZPb6fR+T2fanj2DOmqGpeFnF9JdI5VpGkubIqx3RYIpa
sLw9Wx2A1vuHUI9E16nWE671KFc6TeG0eWemdl4wIgkCs+LlN83bUJYbI8WG6mXOb4nIPPkjWmgh
Y3lovvAlwXsiDUjRmSMJOtiDmZgy9pPrTPAkQ/tppXE2+x2DkdwCRA0LyQNZbZntnIIK1jC+8DLH
jxfYqrkbRp/BSU3r8PB7xXT0bflyHbOgycDkfGRnjYyRh1KgPFUsvkwto5GdJUDvoh7tux/SYJip
LRRlAkLHnvHTv35U5WhYDa0F03k9MwGZYa8qU3xFq9Z79aFYsxODACLYK1uPWmYcrQyp7HbixPcs
d0HEwPIPI6713WTkSNcOWKUlAkrXLJcYyvr4kXwxSmOS8Q6B7MI2wmiszBRI2LIln3fNRgNVpFcZ
pPDxce8AGNXXpK5YEcsDjR+uXV1YxaBRM6BOHi9cHFihV/tXWzIkMLcu9KwVfsf31Y54ernqaAs0
W47AM+nKxLgDHZZ7A6Z8d1Dw28Cc9yCEW93F31IQrOc5wqQ2b95Z8hmQ2seFAMspLXZmrfBWMtbz
Ihals2qZqevTIY3MFeiEquU8e2Un5T9afFgyFrNelXxEZaCI0UeXt9pRMX3/pgmmI1xbaW3ObpRp
xC+VKGSuCy60ZaLfFN+9jDrROHNQqNeOg1dFihZZjehe5U+a4KQ7YClBaZl+f8ENFPvDU3E3XRY3
ztY8ebZnO1wRgflG7a/F2stx/NM1rwtpDH6MZP1+njW1gIcHvmuCXFwcdqNhmefhTsSPyw3WuaIM
Ukhfrp8V4K36AfKKHesd7WI5MiVrS4j1G3xRzQAwNjKBa1+zjKhGMRHUC/YpxhrLve/xmjp0hViX
t55lY7sOIv3rZOO2X+NQDrGaTyUcikmRqcMKmVfGtJZa+ob5r3KLgU28eYW9QA4TuN1Oo5tGhfVj
Vdrm8LcjEU3QDKAB58Ic+f9aUiyG77C1noDlq1I6+Bvh9pqm4SJ8f5/URBkSID85shWDaSY2VSBL
3ysWIJN8o+AAkinnodqr9jrYrtFHYhFrvYfDFq405s+Sc/msGQ3dZISbm5UFLwPZrDxOAlHBhAk2
lZ2uioQVtIdJVeK9vp/63AiAyCWjd/qBRzX5gSDZKaIZ1hv/nqEmDiAEFKoGWXpDc2eb/bIM0Er4
MOiniFXcDBqGnlTN6gGvMmW4WvLYvtQzi0r2pJ69/jwZu7CVHxqKCc/fLbLiwE+jQTIRLWyiwBjz
5QIlyFBlGtLJlz+lMT39pazcyPA/c3VN1hbS+YaUJqp1NayEt3B3/4On+oQwedMjp1uiiv9vB8Fu
YiqmVC78C9ipEIcqUABvL5ZBgN+oittXYZ4QRTPvrbIf3lsIAwKaUrKpQPyNo8Ltf35JpxL/OebW
kIE8VrSkoxBi5P03HBiwcbtQJ+6XQzYedW2yHRsRhEnHadyXBKrP0tJrFsQBFsjX26paHXCVvIkS
WkAMzs2fWPvGRpY8yh1C/XVVrbHvi3M3x7MQclhnDVjl2pGVIhaFy7fx3yC2yWb49+KUx/hOJL/n
06h/OM+5OQ4CXyuJL3ZOdRsxbibtHZ46CIO+qdedE/MF8TSRvJ6HvjH7NMo+eDX1HrpBKBuDn95B
+Odh+oIOt3Yc2eDNMAzv023lsekA1afxmGkuCylWioTBQJuj+gAFu4mvxPJixmSZKb0=
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
