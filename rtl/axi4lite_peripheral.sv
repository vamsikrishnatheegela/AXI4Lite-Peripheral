`timescale 1ns/1ps

module axi4lite_peripheral #(
    parameter int ADDR_WIDTH = 32,
    parameter int DATA_WIDTH = 32
) (
    input  logic                    aclk,
    input  logic                    aresetn,
    input  logic [ADDR_WIDTH-1:0]   s_axi_awaddr,
    input  logic                    s_axi_awvalid,
    output logic                    s_axi_awready,
    input  logic [DATA_WIDTH-1:0]   s_axi_wdata,
    input  logic [DATA_WIDTH/8-1:0] s_axi_wstrb,
    input  logic                    s_axi_wvalid,
    output logic                    s_axi_wready,
    output logic [1:0]              s_axi_bresp,
    output logic                    s_axi_bvalid,
    input  logic                    s_axi_bready,
    input  logic [ADDR_WIDTH-1:0]   s_axi_araddr,
    input  logic                    s_axi_arvalid,
    output logic                    s_axi_arready,
    output logic [DATA_WIDTH-1:0]   s_axi_rdata,
    output logic [1:0]              s_axi_rresp,
    output logic                    s_axi_rvalid,
    input  logic                    s_axi_rready
);
    localparam logic [1:0] RESP_OKAY = 2'b00;
    localparam logic [1:0] RESP_DECERR = 2'b11;
    localparam logic [ADDR_WIDTH-1:0] ADDR_CONTROL = 'h00;
    localparam logic [ADDR_WIDTH-1:0] ADDR_STATUS  = 'h04;
    localparam logic [ADDR_WIDTH-1:0] ADDR_SCRATCH = 'h08;
    localparam logic [ADDR_WIDTH-1:0] ADDR_VERSION = 'h0C;

    logic [DATA_WIDTH-1:0] control_reg, scratch_reg;
    logic aw_pending, w_pending;
    logic [ADDR_WIDTH-1:0] awaddr_q;
    logic [DATA_WIDTH-1:0] wdata_q;
    logic [DATA_WIDTH/8-1:0] wstrb_q;
    logic [ADDR_WIDTH-1:0] effective_awaddr;
    logic [DATA_WIDTH-1:0] effective_wdata;
    logic [DATA_WIDTH/8-1:0] effective_wstrb;
    logic have_aw, have_w;
    integer i;

    assign s_axi_awready = aresetn && !aw_pending && !s_axi_bvalid;
    assign s_axi_wready  = aresetn && !w_pending  && !s_axi_bvalid;
    assign s_axi_arready = aresetn && !s_axi_rvalid;

    always_comb begin
        have_aw = aw_pending || (s_axi_awvalid && s_axi_awready);
        have_w  = w_pending  || (s_axi_wvalid  && s_axi_wready);
        effective_awaddr = aw_pending ? awaddr_q : s_axi_awaddr;
        effective_wdata  = w_pending  ? wdata_q  : s_axi_wdata;
        effective_wstrb  = w_pending  ? wstrb_q  : s_axi_wstrb;
    end

    always_ff @(posedge aclk) begin
        if (!aresetn) begin
            control_reg <= '0;
            scratch_reg <= '0;
            aw_pending <= 1'b0;
            w_pending <= 1'b0;
            awaddr_q <= '0;
            wdata_q <= '0;
            wstrb_q <= '0;
            s_axi_bvalid <= 1'b0;
            s_axi_bresp <= RESP_OKAY;
            s_axi_rvalid <= 1'b0;
            s_axi_rdata <= '0;
            s_axi_rresp <= RESP_OKAY;
        end else begin
            if (s_axi_bvalid && s_axi_bready) s_axi_bvalid <= 1'b0;
            if (s_axi_rvalid && s_axi_rready) s_axi_rvalid <= 1'b0;

            if (s_axi_awvalid && s_axi_awready) begin
                awaddr_q <= s_axi_awaddr;
                aw_pending <= 1'b1;
            end
            if (s_axi_wvalid && s_axi_wready) begin
                wdata_q <= s_axi_wdata;
                wstrb_q <= s_axi_wstrb;
                w_pending <= 1'b1;
            end

            if (have_aw && have_w && !s_axi_bvalid) begin
                s_axi_bvalid <= 1'b1;
                s_axi_bresp <= RESP_OKAY;
                case (effective_awaddr)
                    ADDR_CONTROL: begin
                        for (i = 0; i < DATA_WIDTH/8; i = i + 1)
                            control_reg[i*8 +: 8] <= effective_wdata[i*8 +: 8]; // MUTATION: ignores WSTRB
                    end
                    ADDR_SCRATCH: begin
                        for (i = 0; i < DATA_WIDTH/8; i = i + 1)
                            scratch_reg[i*8 +: 8] <= effective_wdata[i*8 +: 8]; // MUTATION: ignores WSTRB
                    end
                    ADDR_STATUS, ADDR_VERSION: begin
                        // Read-only registers: ignore writes and return OKAY.
                    end
                    default: s_axi_bresp <= RESP_DECERR;
                endcase
                aw_pending <= 1'b0;
                w_pending <= 1'b0;
            end

            if (s_axi_arvalid && s_axi_arready) begin
                s_axi_rvalid <= 1'b1;
                case (s_axi_araddr)
                    ADDR_CONTROL: begin s_axi_rdata <= control_reg; s_axi_rresp <= RESP_OKAY; end
                    ADDR_STATUS:  begin s_axi_rdata <= {{(DATA_WIDTH-1){1'b0}},1'b1}; s_axi_rresp <= RESP_OKAY; end
                    ADDR_SCRATCH: begin s_axi_rdata <= scratch_reg; s_axi_rresp <= RESP_OKAY; end
                    ADDR_VERSION: begin s_axi_rdata <= 32'h0001_0000; s_axi_rresp <= RESP_OKAY; end
                    default:      begin s_axi_rdata <= '0; s_axi_rresp <= RESP_DECERR; end
                endcase
            end
        end
    end
endmodule
