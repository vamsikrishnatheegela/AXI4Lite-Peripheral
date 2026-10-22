`timescale 1ns/1ps

// Reset corner-case regression: reset while write/read responses are stalled,
// and reset after only the write-address channel has been accepted.
module tb_reset_corner_cases;
  logic aclk = 0;
  logic aresetn = 0;
  logic [31:0] s_axi_awaddr = 0;
  logic s_axi_awvalid = 0;
  wire s_axi_awready;
  logic [31:0] s_axi_wdata = 0;
  logic [3:0] s_axi_wstrb = 4'hF;
  logic s_axi_wvalid = 0;
  wire s_axi_wready;
  wire [1:0] s_axi_bresp;
  wire s_axi_bvalid;
  logic s_axi_bready = 0;
  logic [31:0] s_axi_araddr = 0;
  logic s_axi_arvalid = 0;
  wire s_axi_arready;
  wire [31:0] s_axi_rdata;
  wire [1:0] s_axi_rresp;
  wire s_axi_rvalid;
  logic s_axi_rready = 0;

  integer checks = 0;
  always #5 aclk = ~aclk;
  axi4lite_peripheral dut (.*);

  task automatic apply_reset;
    begin
      @(negedge aclk);
      aresetn = 0;
      s_axi_awvalid = 0;
      s_axi_wvalid = 0;
      s_axi_arvalid = 0;
      s_axi_bready = 0;
      s_axi_rready = 0;
      repeat (2) @(posedge aclk);
      @(negedge aclk);
      if (s_axi_bvalid !== 1'b0 || s_axi_rvalid !== 1'b0)
        $fatal(1, "RESET: response VALID not cleared");
      aresetn = 1;
      checks = checks + 1;
    end
  endtask

  task automatic read_control_expect(input logic [31:0] expected);
    begin
      @(negedge aclk);
      s_axi_araddr = 32'h00;
      s_axi_arvalid = 1;
      do @(posedge aclk); while (!s_axi_arready);
      @(negedge aclk);
      s_axi_arvalid = 0;
      s_axi_rready = 1;
      do @(posedge aclk); while (!s_axi_rvalid);
      if (s_axi_rresp !== 2'b00 || s_axi_rdata !== expected)
        $fatal(1, "RESET: CONTROL read expected %h/OKAY, got %h/%b",
               expected, s_axi_rdata, s_axi_rresp);
      @(negedge aclk);
      s_axi_rready = 0;
      checks = checks + 1;
    end
  endtask

  initial begin
    repeat (2) @(posedge aclk);
    @(negedge aclk);
    aresetn = 1;

    // Accept AW and W, then reset while BVALID is held by BREADY=0.
    @(negedge aclk);
    s_axi_awaddr = 32'h00;
    s_axi_awvalid = 1;
    s_axi_wdata = 32'hDEAD_BEEF;
    s_axi_wstrb = 4'hF;
    s_axi_wvalid = 1;
    do @(posedge aclk); while (!(s_axi_awready && s_axi_wready));
    @(negedge aclk);
    s_axi_awvalid = 0;
    s_axi_wvalid = 0;
    do @(posedge aclk); while (!s_axi_bvalid);
    if (s_axi_bresp !== 2'b00) $fatal(1, "RESET: expected OKAY before write-response reset");
    checks = checks + 1;
    apply_reset();
    read_control_expect(32'h0000_0000);

    // Hold a read response, then reset while RVALID=1 and RREADY=0.
    @(negedge aclk);
    s_axi_araddr = 32'h00;
    s_axi_arvalid = 1;
    do @(posedge aclk); while (!s_axi_arready);
    @(negedge aclk);
    s_axi_arvalid = 0;
    do @(posedge aclk); while (!s_axi_rvalid);
    if (s_axi_rdata !== 32'h0000_0000 || s_axi_rresp !== 2'b00)
      $fatal(1, "RESET: unexpected read response before read-response reset");
    checks = checks + 1;
    apply_reset();
    read_control_expect(32'h0000_0000);

    // Accept AW without W, reset, then send W alone. A stale AW must not
    // combine with the post-reset W to create a write response or change state.
    @(negedge aclk);
    s_axi_awaddr = 32'h00;
    s_axi_awvalid = 1;
    do @(posedge aclk); while (!s_axi_awready);
    @(negedge aclk);
    s_axi_awvalid = 0;
    checks = checks + 1;
    apply_reset();

    @(negedge aclk);
    s_axi_wdata = 32'hCAFE_BABE;
    s_axi_wstrb = 4'hF;
    s_axi_wvalid = 1;
    @(posedge aclk);
    @(negedge aclk);
    s_axi_wvalid = 0;
    repeat (2) @(posedge aclk);
    if (s_axi_bvalid !== 1'b0)
      $fatal(1, "RESET: stale AW survived reset and paired with W");
    checks = checks + 1;
    read_control_expect(32'h0000_0000);

    $display("PASS: %0d reset corner-case checks completed", checks);
    $finish;
  end

  initial begin
    #10000;
    $fatal(1, "TIMEOUT: reset corner-case testbench did not finish");
  end
endmodule
