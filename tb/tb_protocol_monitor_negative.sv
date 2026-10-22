`timescale 1ns/1ps

// Parameterized negative tests for all five AXI4-Lite channels.
// Each run deliberately changes VALID or its payload while stalled.
// The expected outcome is a $fatal from axi4lite_protocol_monitor.
module tb_protocol_monitor_negative;
  integer violation = 0;
  logic aclk = 0;
  logic aresetn = 0;
  logic awvalid = 0;
  logic [31:0] awaddr = 0;
  logic awready = 0;
  logic wvalid = 0;
  logic [31:0] wdata = 0;
  logic [3:0] wstrb = 4'hF;
  logic wready = 0;
  logic arvalid = 0;
  logic [31:0] araddr = 0;
  logic arready = 0;
  logic bvalid = 0;
  logic [1:0] bresp = 2'b00;
  logic bready = 0;
  logic rvalid = 0;
  logic [31:0] rdata = 0;
  logic [1:0] rresp = 2'b00;
  logic rready = 0;

  always #5 aclk = ~aclk;

  axi4lite_protocol_monitor monitor (
    .aclk(aclk), .aresetn(aresetn),
    .s_axi_awvalid(awvalid), .s_axi_awaddr(awaddr), .s_axi_awready(awready),
    .s_axi_wvalid(wvalid), .s_axi_wdata(wdata), .s_axi_wstrb(wstrb), .s_axi_wready(wready),
    .s_axi_arvalid(arvalid), .s_axi_araddr(araddr), .s_axi_arready(arready),
    .s_axi_bvalid(bvalid), .s_axi_bresp(bresp), .s_axi_bready(bready),
    .s_axi_rvalid(rvalid), .s_axi_rdata(rdata), .s_axi_rresp(rresp), .s_axi_rready(rready)
  );

  initial begin
    if (!$value$plusargs("VIOLATION=%d", violation)) violation = 0;
    repeat (2) @(negedge aclk);
    aresetn = 1;
    @(negedge aclk);
    // Assert the selected channel while READY is low.
    case (violation)
      0: begin awvalid = 1; awaddr = 32'h8; awready = 0; end
      1: begin wvalid = 1; wdata = 32'h1234; wstrb = 4'hF; wready = 0; end
      2: begin arvalid = 1; araddr = 32'h8; arready = 0; end
      3: begin bvalid = 1; bresp = 2'b00; bready = 0; end
      4: begin rvalid = 1; rdata = 32'h1234; rresp = 2'b00; rready = 0; end
      default: $fatal(1, "ERROR: invalid VIOLATION parameter %0d", violation);
    endcase
    @(negedge aclk);
    // Break the stability rule before a handshake occurs.
    case (violation)
      0: awvalid = 0;
      1: wdata = 32'h5678;
      2: arvalid = 0;
      3: bresp = 2'b10;
      4: rdata = 32'h5678;
    endcase
    @(negedge aclk);
    $display("ERROR: monitor failed to catch injected violation %0d", violation);
    $finish;
  end

  initial begin
    #200;
    $fatal(1, "ERROR: negative test timed out");
  end
endmodule
