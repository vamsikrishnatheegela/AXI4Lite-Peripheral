`timescale 1ns/1ps

// Deterministic-seed randomized stress: independent AW/W timing, randomized
// response backpressure, byte strobes, and a small reference model.
module tb_randomized_stress;
  logic aclk = 0, aresetn = 0;
  logic [31:0] s_axi_awaddr = 0;
  logic s_axi_awvalid = 0;
  wire s_axi_awready;
  logic [31:0] s_axi_wdata = 0;
  logic [3:0] s_axi_wstrb = 0;
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

  logic [31:0] model_control = 0, model_scratch = 0;
  integer seed = 32'h4D52564C;
  integer checks = 0;
  integer n, b, aw_delay, w_delay, b_delay, r_delay;
  logic [31:0] addr, data, expected;
  logic [3:0] strb;
  logic data_first;

  always #5 aclk = ~aclk;
  axi4lite_peripheral dut (.*);

  task automatic write_random(input logic [31:0] wa,
                              input logic [31:0] wd,
                              input logic [3:0] ws,
                              input bit w_first,
                              input integer aw_wait,
                              input integer w_wait,
                              input integer b_wait);
    begin
      @(negedge aclk);
      s_axi_awvalid = 0; s_axi_wvalid = 0; s_axi_bready = 0;
      if (w_first) begin
        repeat (w_wait) @(negedge aclk);
        s_axi_wdata = wd; s_axi_wstrb = ws; s_axi_wvalid = 1;
        do @(posedge aclk); while (!s_axi_wready);
        @(negedge aclk); s_axi_wvalid = 0;
        repeat (aw_wait) @(negedge aclk);
        s_axi_awaddr = wa; s_axi_awvalid = 1;
        do @(posedge aclk); while (!s_axi_awready);
        @(negedge aclk); s_axi_awvalid = 0;
      end else begin
        repeat (aw_wait) @(negedge aclk);
        s_axi_awaddr = wa; s_axi_awvalid = 1;
        do @(posedge aclk); while (!s_axi_awready);
        @(negedge aclk); s_axi_awvalid = 0;
        repeat (w_wait) @(negedge aclk);
        s_axi_wdata = wd; s_axi_wstrb = ws; s_axi_wvalid = 1;
        do @(posedge aclk); while (!s_axi_wready);
        @(negedge aclk); s_axi_wvalid = 0;
      end
      do @(posedge aclk); while (!s_axi_bvalid);
      if (s_axi_bresp !== 2'b00) $fatal(1, "STRESS: unexpected BRESP");
      repeat (b_wait) @(negedge aclk);
      @(negedge aclk); s_axi_bready = 1;
      do @(posedge aclk); while (!s_axi_bvalid);
      @(negedge aclk); s_axi_bready = 0;

      if (wa == 32'h00) begin
        for (integer k=0; k<4; k=k+1)
          if (ws[k]) model_control[k*8 +: 8] = wd[k*8 +: 8];
      end else begin
        for (integer k=0; k<4; k=k+1)
          if (ws[k]) model_scratch[k*8 +: 8] = wd[k*8 +: 8];
      end
      checks = checks + 1;
    end
  endtask

  task automatic read_random(input logic [31:0] ra, input integer r_wait);
    begin
      @(negedge aclk); s_axi_araddr = ra; s_axi_arvalid = 1; s_axi_rready = 0;
      do @(posedge aclk); while (!s_axi_arready);
      @(negedge aclk); s_axi_arvalid = 0;
      do @(posedge aclk); while (!s_axi_rvalid);
      case (ra)
        32'h00: expected = model_control;
        32'h08: expected = model_scratch;
        default: expected = 0;
      endcase
      if (s_axi_rresp !== 2'b00 || s_axi_rdata !== expected)
        $fatal(1, "STRESS: read mismatch addr=%h expected=%h got=%h resp=%b",
               ra, expected, s_axi_rdata, s_axi_rresp);
      repeat (r_wait) @(negedge aclk);
      @(negedge aclk); s_axi_rready = 1;
      do @(posedge aclk); while (!s_axi_rvalid);
      @(negedge aclk); s_axi_rready = 0;
      checks = checks + 1;
    end
  endtask

  initial begin
    repeat (3) @(posedge aclk);
    @(negedge aclk); aresetn = 1;
    for (n=0; n<50; n=n+1) begin
      addr = (($urandom(seed) & 1) == 0) ? 32'h00 : 32'h08;
      data = $urandom(seed);
      strb = $urandom(seed);
      data_first = (n % 2);
      aw_delay = $urandom(seed) % 4;
      w_delay = $urandom(seed) % 4;
      b_delay = $urandom(seed) % 5;
      r_delay = $urandom(seed) % 5;
      write_random(addr, data, strb, data_first, aw_delay, w_delay, b_delay);
      read_random(addr, r_delay);
      read_random(addr == 32'h00 ? 32'h08 : 32'h00, r_delay);
    end
    $display("PASS: randomized stress completed %0d checks across 50 writes with randomized channel delays/backpressure", checks);
    $finish;
  end

  initial begin
    #100000;
    $fatal(1, "TIMEOUT: randomized stress testbench did not finish");
  end
endmodule
