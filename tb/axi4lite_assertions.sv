`timescale 1ns/1ps

// Bind or instantiate this checker in a simulator with concurrent SVA support.
module axi4lite_assertions (
  input logic aclk, aresetn,
  input logic awvalid, awready,
  input logic wvalid, wready,
  input logic bvalid, bready,
  input logic arvalid, arready,
  input logic rvalid, rready
);
  default clocking cb @(posedge aclk); endclocking
  default disable iff (!aresetn);

  property p_bvalid_stable_when_stalled;
    bvalid && !bready |=> bvalid;
  endproperty
  assert property (p_bvalid_stable_when_stalled)
    else $error("BVALID dropped while BREADY was low");

  property p_rvalid_stable_when_stalled;
    rvalid && !rready |=> rvalid;
  endproperty
  assert property (p_rvalid_stable_when_stalled)
    else $error("RVALID dropped while RREADY was low");

  property p_write_address_valid_held_until_handshake;
    awvalid && !awready |=> awvalid;
  endproperty
  assert property (p_write_address_valid_held_until_handshake)
    else $error("AWVALID dropped before handshake");

  property p_write_data_valid_held_until_handshake;
    wvalid && !wready |=> wvalid;
  endproperty
  assert property (p_write_data_valid_held_until_handshake)
    else $error("WVALID dropped before handshake");

  property p_read_address_valid_held_until_handshake;
    arvalid && !arready |=> arvalid;
  endproperty
  assert property (p_read_address_valid_held_until_handshake)
    else $error("ARVALID dropped before handshake");
endmodule
