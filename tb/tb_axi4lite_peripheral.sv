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
  integer random_iterations = 20;

  // Portable functional-coverage counters (compatible with Icarus Verilog).
  integer cov_read_control = 0, cov_read_status = 0, cov_read_scratch = 0;
  integer cov_read_version = 0, cov_read_unmapped = 0;
  integer cov_write_control = 0, cov_write_status = 0, cov_write_scratch = 0;
  integer cov_write_unmapped = 0;
  integer cov_strobe_zero = 0, cov_strobe_full = 0, cov_strobe_partial = 0;
  integer cov_aw_first = 0, cov_w_first = 0;
  integer cov_read_decerr = 0, cov_write_decerr = 0;
  integer cov_read_stall = 0, cov_write_stall = 0;

  // Independent reference model: the scoreboard's expected register state.
  logic [31:0] model_control = 32'h0000_0000;
  logic [31:0] model_scratch = 32'h0000_0000;
  logic [31:0] model_read_data;
  integer lane;
  integer byte_lane;

  function automatic logic [31:0] model_value(input logic [31:0] addr);
    case (addr)
      32'h00: model_value = model_control;
      32'h04: model_value = 32'h0000_0001;
      32'h08: model_value = model_scratch;
      32'h0C: model_value = 32'h0001_0000;
      default: model_value = 32'h0000_0000;
    endcase
  endfunction

  task automatic model_write(input logic [31:0] addr,
                             input logic [31:0] data,
                             input logic [3:0] strb);
    integer b;
    begin
      case (addr)
        32'h00: for (b = 0; b < 4; b = b + 1)
          if (strb[b]) model_control[b*8 +: 8] = data[b*8 +: 8];
        32'h08: for (b = 0; b < 4; b = b + 1)
          if (strb[b]) model_scratch[b*8 +: 8] = data[b*8 +: 8];
        default: ; // Read-only and unmapped registers do not change.
      endcase
    end
  endtask

  // Shared protocol monitor is also exercised by a dedicated negative test.
  axi4lite_protocol_monitor protocol_monitor (
    .aclk(aclk), .aresetn(aresetn),
    .s_axi_awvalid(s_axi_awvalid), .s_axi_awaddr(s_axi_awaddr), .s_axi_awready(s_axi_awready),
    .s_axi_wvalid(s_axi_wvalid), .s_axi_wdata(s_axi_wdata), .s_axi_wstrb(s_axi_wstrb), .s_axi_wready(s_axi_wready),
    .s_axi_arvalid(s_axi_arvalid), .s_axi_araddr(s_axi_araddr), .s_axi_arready(s_axi_arready),
    .s_axi_bvalid(s_axi_bvalid), .s_axi_bresp(s_axi_bresp), .s_axi_bready(s_axi_bready),
    .s_axi_rvalid(s_axi_rvalid), .s_axi_rdata(s_axi_rdata), .s_axi_rresp(s_axi_rresp), .s_axi_rready(s_axi_rready)
  );

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
      if (expected_resp == 2'b00) model_write(addr, data, strb);
      case (addr)
        32'h00: cov_write_control = cov_write_control + 1;
        32'h04: cov_write_status = cov_write_status + 1;
        32'h08: cov_write_scratch = cov_write_scratch + 1;
        default: cov_write_unmapped = cov_write_unmapped + 1;
      endcase
      if (strb == 4'h0) cov_strobe_zero = cov_strobe_zero + 1;
      else if (strb == 4'hF) cov_strobe_full = cov_strobe_full + 1;
      else cov_strobe_partial = cov_strobe_partial + 1;
      if (data_first) cov_w_first = cov_w_first + 1;
      else cov_aw_first = cov_aw_first + 1;
      if (expected_resp == 2'b11) cov_write_decerr = cov_write_decerr + 1;
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
      model_read_data = model_value(addr);
      if (s_axi_rdata !== model_read_data)
        $fatal(1, "SCOREBOARD mismatch addr=%h model=%h DUT=%h", addr, model_read_data, s_axi_rdata);
      case (addr)
        32'h00: cov_read_control = cov_read_control + 1;
        32'h04: cov_read_status = cov_read_status + 1;
        32'h08: cov_read_scratch = cov_read_scratch + 1;
        32'h0C: cov_read_version = cov_read_version + 1;
        default: cov_read_unmapped = cov_read_unmapped + 1;
      endcase
      if (expected_resp == 2'b11) cov_read_decerr = cov_read_decerr + 1;
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
      cov_read_stall = cov_read_stall + 1;
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
      if (expected_resp == 2'b00) model_write(addr, data, strb);
      cov_write_stall = cov_write_stall + 1;
      checks = checks + 1;
      @(negedge aclk);
      s_axi_bready = 1'b1;
      @(posedge aclk);
      @(negedge aclk);
      s_axi_bready = 1'b0;
    end
  endtask

  integer seed = 32'h4D415256;
  logic [31:0] rand_data;
  logic [3:0] rand_strb;
  logic [31:0] rand_addr;

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
    // Writes to both read-only registers must be accepted but have no effect.
    write_tx(32'h0C, 32'hDEAD_C0DE, 4'hF, 1, 2'b00);
    read_tx(32'h0C, 32'h0001_0000, 2'b00);
    read_tx(32'h10, 32'h0000_0000, 2'b11);
    write_tx(32'h10, 32'hCAFE_BABE, 4'hF, 0, 2'b11);

    // Exercise each individual byte lane, then all-zero WSTRB.
    write_tx(32'h08, 32'h1122_3344, 4'hF, 0, 2'b00);
    for (byte_lane = 0; byte_lane < 4; byte_lane = byte_lane + 1) begin
      write_tx(32'h08, 32'hA1B2_C3D4, (4'b0001 << byte_lane), byte_lane[0], 2'b00);
      case (byte_lane)
        0: read_tx(32'h08, 32'h1122_33D4, 2'b00);
        1: read_tx(32'h08, 32'h1122_C3D4, 2'b00);
        2: read_tx(32'h08, 32'h11B2_C3D4, 2'b00);
        3: read_tx(32'h08, 32'hA1B2_C3D4, 2'b00);
      endcase
    end
    write_tx(32'h08, 32'hFFFF_FFFF, 4'h0, 1, 2'b00);
    // A zero strobe must leave every byte unchanged.
    read_tx(32'h08, 32'hA1B2_C3D4, 2'b00);

    // Verify that response VALID and payload remain stable under backpressure.
    write_stall_tx(32'h08, 32'hA5A5_5A5A, 4'hF, 2'b00);
    read_stall_tx(32'h08, 32'hA5A5_5A5A, 2'b00);
    read_stall_tx(32'h10, 32'h0000_0000, 2'b11);

    // Reproducible pseudo-random register traffic, checked against the model.
    for (integer n = 0; n < random_iterations; n = n + 1) begin
      rand_addr = (($urandom(seed) & 1) == 0) ? 32'h00 : 32'h08;
      rand_data = $urandom(seed);
      rand_strb = $urandom(seed);
      write_tx(rand_addr, rand_data, rand_strb, (n % 2), 2'b00);
      read_tx(rand_addr, model_value(rand_addr), 2'b00);
      // Cross-check the other writable register too after every write.
      if (rand_addr == 32'h00)
        read_tx(32'h08, model_value(32'h08), 2'b00);
      else
        read_tx(32'h00, model_value(32'h00), 2'b00);
    end

    // Reset during idle, then confirm writable state returns to reset values.
    @(negedge aclk); aresetn = 1'b0;
    model_control = 0; model_scratch = 0;
    repeat (2) @(posedge aclk);
    @(negedge aclk); aresetn = 1'b1;
    read_tx(32'h00, 32'h0000_0000, 2'b00);
    read_tx(32'h08, 32'h0000_0000, 2'b00);

    $display("\n--- FUNCTIONAL COVERAGE COUNTERS ---");
    $display("Read addresses: CONTROL=%0d STATUS=%0d SCRATCH=%0d VERSION=%0d UNMAPPED=%0d",
      cov_read_control, cov_read_status, cov_read_scratch, cov_read_version, cov_read_unmapped);
    $display("Write addresses: CONTROL=%0d STATUS=%0d SCRATCH=%0d UNMAPPED=%0d",
      cov_write_control, cov_write_status, cov_write_scratch, cov_write_unmapped);
    $display("WSTRB classes: zero=%0d full=%0d partial=%0d",
      cov_strobe_zero, cov_strobe_full, cov_strobe_partial);
    $display("Write ordering: AW-first=%0d W-first=%0d", cov_aw_first, cov_w_first);
    $display("DECERR responses: reads=%0d writes=%0d", cov_read_decerr, cov_write_decerr);
    $display("Backpressure tests: read=%0d write=%0d", cov_read_stall, cov_write_stall);
    $display("PASS: %0d checks completed (including %0d pseudo-random writes)", checks, random_iterations);
    $finish;
  end

  initial begin
    #100000;
    $fatal(1, "TIMEOUT: testbench did not finish");
  end
endmodule
