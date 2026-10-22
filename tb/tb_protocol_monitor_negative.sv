`timescale 1ns/1ps

// Negative test: deliberately violate AW channel stability while stalled.
// The expected outcome is a $fatal from axi4lite_protocol_monitor.
module tb_protocol_monitor_negative;
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
    repeat (2) @(negedge aclk);
    aresetn = 1;
    @(negedge aclk);
    awvalid = 1;
    awaddr = 32'h0000_0008;
    awready = 0; // Address is stalled.
    @(negedge aclk);
    awvalid = 0; // Deliberate violation: VALID drops before handshake.
    @(negedge aclk);
    $display("ERROR: monitor failed to catch injected AW violation");
    $finish;
  end

  initial begin
    #200;
    $fatal(1, "ERROR: negative test timed out");
  end
endmodule
