`timescale 1ns/1ps

// Simulator-portable AXI4-Lite stability monitor.
// Checks that VALID and its payload remain stable after a stalled cycle.
module axi4lite_protocol_monitor (
  input logic aclk,
  input logic aresetn,
  input logic s_axi_awvalid,
  input logic [31:0] s_axi_awaddr,
  input logic s_axi_awready,
  input logic s_axi_wvalid,
  input logic [31:0] s_axi_wdata,
  input logic [3:0] s_axi_wstrb,
  input logic s_axi_wready,
  input logic s_axi_arvalid,
  input logic [31:0] s_axi_araddr,
  input logic s_axi_arready,
  input logic s_axi_bvalid,
  input logic [1:0] s_axi_bresp,
  input logic s_axi_bready,
  input logic s_axi_rvalid,
  input logic [31:0] s_axi_rdata,
  input logic [1:0] s_axi_rresp,
  input logic s_axi_rready
);
  logic prev_aw_stall = 0, prev_w_stall = 0, prev_ar_stall = 0;
  logic prev_b_stall = 0, prev_r_stall = 0;
  logic [31:0] prev_awaddr, prev_wdata, prev_araddr, prev_rdata;
  logic [3:0] prev_wstrb;
  logic [1:0] prev_bresp, prev_rresp;

  always @(posedge aclk) begin
    if (!aresetn) begin
      prev_aw_stall <= 0;
      prev_w_stall <= 0;
      prev_ar_stall <= 0;
      prev_b_stall <= 0;
      prev_r_stall <= 0;
    end else begin
      if (prev_aw_stall && (!s_axi_awvalid || s_axi_awaddr !== prev_awaddr))
        $fatal(1, "PROTOCOL: AWVALID/address changed before handshake");
      if (prev_w_stall && (!s_axi_wvalid || s_axi_wdata !== prev_wdata ||
                           s_axi_wstrb !== prev_wstrb))
        $fatal(1, "PROTOCOL: WVALID/data/strobe changed before handshake");
      if (prev_ar_stall && (!s_axi_arvalid || s_axi_araddr !== prev_araddr))
        $fatal(1, "PROTOCOL: ARVALID/address changed before handshake");
      if (prev_b_stall && (!s_axi_bvalid || s_axi_bresp !== prev_bresp))
        $fatal(1, "PROTOCOL: BVALID/BRESP changed while stalled");
      if (prev_r_stall && (!s_axi_rvalid || s_axi_rdata !== prev_rdata ||
                           s_axi_rresp !== prev_rresp))
        $fatal(1, "PROTOCOL: RVALID/RDATA/RRESP changed while stalled");

      prev_aw_stall <= s_axi_awvalid && !s_axi_awready;
      prev_w_stall  <= s_axi_wvalid && !s_axi_wready;
      prev_ar_stall <= s_axi_arvalid && !s_axi_arready;
      prev_b_stall  <= s_axi_bvalid && !s_axi_bready;
      prev_r_stall  <= s_axi_rvalid && !s_axi_rready;
      prev_awaddr <= s_axi_awaddr;
      prev_wdata <= s_axi_wdata;
      prev_wstrb <= s_axi_wstrb;
      prev_araddr <= s_axi_araddr;
      prev_bresp <= s_axi_bresp;
      prev_rdata <= s_axi_rdata;
      prev_rresp <= s_axi_rresp;
    end
  end
endmodule
