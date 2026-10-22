`timescale 1ns/1ps

module tb_axi4lite_peripheral;
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

  task automatic write_tx(input logic [31:0] addr, input logic [31:0] data,
                          input logic [3:0] strb, input bit data_first,
                          input logic [1:0] expected_resp);
    bit aw_done, w_done;
    begin
      aw_done = 0; w_done = 0;
      @(negedge aclk);
      s_axi_awaddr = addr; s_axi_wdata = data; s_axi_wstrb = strb;
      if (data_first) begin s_axi_wvalid = 1; s_axi_awvalid = 0; end
      else begin s_axi_awvalid = 1; s_axi_wvalid = 0; end
      while (!aw_done || !w_done) begin
        @(posedge aclk);
        if (s_axi_awvalid && s_axi_awready) aw_done = 1;
        if (s_axi_wvalid && s_axi_wready) w_done = 1;
        @(negedge aclk);
        if (!aw_done && (!data_first || w_done)) s_axi_awvalid = 1;
        if (!w_done && (data_first || aw_done)) s_axi_wvalid = 1;
        if (aw_done) s_axi_awvalid = 0;
        if (w_done) s_axi_wvalid = 0;
      end
      s_axi_bready = 1;
      do @(posedge aclk); while (!s_axi_bvalid);
      if (s_axi_bresp !== expected_resp) $fatal(1, "WRITE response mismatch addr=%h expected=%b got=%b", addr, expected_resp, s_axi_bresp);
      checks = checks + 1;
      @(negedge aclk); s_axi_bready = 0;
    end
  endtask

  task automatic read_tx(input logic [31:0] addr, input logic [31:0] expected_data,
                         input logic [1:0] expected_resp);
    begin
      @(negedge aclk); s_axi_araddr = addr; s_axi_arvalid = 1;
      do @(posedge aclk); while (!s_axi_arready);
      @(negedge aclk); s_axi_arvalid = 0; s_axi_rready = 1;
      do @(posedge aclk); while (!s_axi_rvalid);
      if (s_axi_rresp !== expected_resp) $fatal(1, "READ response mismatch addr=%h expected=%b got=%b", addr, expected_resp, s_axi_rresp);
      if (s_axi_rdata !== expected_data) $fatal(1, "READ data mismatch addr=%h expected=%h got=%h", addr, expected_data, s_axi_rdata);
      checks = checks + 1;
      @(negedge aclk); s_axi_rready = 0;
    end
  endtask

  task automatic read_stall_tx(input logic [31:0] addr,
                               input logic [31:0] expected_data,
                               input logic [1:0] expected_resp);
    integer stall_cycles;
    begin
      @(negedge aclk);
      s_axi_araddr = addr;
      s_axi_arvalid = 1'b1;
      s_axi_rready = 1'b0;
      do @(posedge aclk); while (!s_axi_arready);
      @(negedge aclk);
      s_axi_arvalid = 1'b0;
      // Keep RREADY low to apply backpressure to the DUT.
      do @(posedge aclk); while (!s_axi_rvalid);
      for (stall_cycles = 0; stall_cycles < 3; stall_cycles = stall_cycles + 1) begin
        if (s_axi_rvalid !== 1'b1 ||
            s_axi_rdata !== expected_data ||
            s_axi_rresp !== expected_resp)
          $fatal(1, "READ response changed while stalled at addr=%h", addr);
        @(posedge aclk);
      end
      checks = checks + 1;
      @(negedge aclk);
      s_axi_rready = 1'b1;
      @(posedge aclk);
      @(negedge aclk);
      s_axi_rready = 1'b0;
    end
  endtask

  task automatic write_stall_tx(input logic [31:0] addr,
                                input logic [31:0] data,
                                input logic [3:0] strb,
                                input logic [1:0] expected_resp);
    integer stall_cycles;
    bit aw_done, w_done;
    begin
      aw_done = 0;
      w_done = 0;
      @(negedge aclk);
      s_axi_awaddr = addr;
      s_axi_wdata = data;
      s_axi_wstrb = strb;
      s_axi_awvalid = 1'b1;
      s_axi_wvalid = 1'b1;
      s_axi_bready = 1'b0;
      while (!aw_done || !w_done) begin
        @(posedge aclk);
        if (s_axi_awvalid && s_axi_awready) aw_done = 1;
        if (s_axi_wvalid && s_axi_wready) w_done = 1;
        @(negedge aclk);
        if (aw_done) s_axi_awvalid = 1'b0;
        if (w_done) s_axi_wvalid = 1'b0;
      end
      do @(posedge aclk); while (!s_axi_bvalid);
      for (stall_cycles = 0; stall_cycles < 3; stall_cycles = stall_cycles + 1) begin
        if (s_axi_bvalid !== 1'b1 || s_axi_bresp !== expected_resp)
          $fatal(1, "WRITE response changed while stalled at addr=%h", addr);
        @(posedge aclk);
      end
      checks = checks + 1;
      @(negedge aclk);
      s_axi_bready = 1'b1;
      @(posedge aclk);
      @(negedge aclk);
      s_axi_bready = 1'b0;
    end
  endtask

  initial begin
    repeat (3) @(posedge aclk);
    @(negedge aclk); aresetn = 1;
    read_tx(32'h00, 32'h0000_0000, 2'b00);
    read_tx(32'h04, 32'h0000_0001, 2'b00);
    read_tx(32'h0C, 32'h0001_0000, 2'b00);
    write_tx(32'h00, 32'h1234_5678, 4'hF, 0, 2'b00);
    read_tx(32'h00, 32'h1234_5678, 2'b00);
    write_tx(32'h00, 32'h00AA_0000, 4'b0100, 1, 2'b00);
    read_tx(32'h00, 32'h12AA_5678, 2'b00);
    write_tx(32'h08, 32'hDEAD_BEEF, 4'hF, 1, 2'b00);
    read_tx(32'h08, 32'hDEAD_BEEF, 2'b00);
    write_tx(32'h04, 32'hFFFF_FFFF, 4'hF, 0, 2'b00);
    read_tx(32'h04, 32'h0000_0001, 2'b00);
    read_tx(32'h10, 32'h0000_0000, 2'b11);
    write_tx(32'h10, 32'hCAFE_BABE, 4'hF, 0, 2'b11);

    // Verify that response VALID and payload remain stable under backpressure.
    write_stall_tx(32'h08, 32'hA5A5_5A5A, 4'hF, 2'b00);
    read_stall_tx(32'h08, 32'hA5A5_5A5A, 2'b00);
    read_stall_tx(32'h10, 32'h0000_0000, 2'b11);

    $display("PASS: %0d transaction checks completed", checks);
    $finish;
  end

  initial begin
    #100000;
    $fatal(1, "TIMEOUT: testbench did not finish");
  end
endmodule
