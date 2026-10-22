# Verification Plan

## Directed scenarios
- Reset values of CONTROL, STATUS, and VERSION.
- Full-word write/readback of CONTROL.
- Partial byte write using WSTRB, including each individual byte lane and zero WSTRB (which must leave the register unchanged).
- Write address before write data and write data before write address.
- Full-word write/readback of SCRATCH.
- Write to read-only STATUS and VERSION followed by readback; values must remain unchanged.
- Read and write to an unmapped address; expect DECERR.
- Hold BREADY low for multiple cycles and check BVALID/BRESP stability.
- Hold RREADY low for multiple cycles and check RVALID/RDATA/RRESP stability, for both OKAY and DECERR responses.

## Scoreboard and pseudo-random regression
The testbench maintains an independent reference model for CONTROL and SCRATCH, applies byte strobes to model writes, and compares read data against the model. A fixed seed makes the pseudo-random register-write regression reproducible. The regression currently chooses between the two writable registers, varies write data and WSTRB, alternates AW-first/W-first sequencing, and reads back both the written and other writable register.

## Portable functional coverage counters
The Icarus-compatible testbench prints counters for read/write address categories, zero/full/partial WSTRB classes, AW-first versus W-first writes, DECERR responses, and read/write backpressure tests. These are transaction counters rather than SystemVerilog covergroups; they show exercised scenarios but do not establish protocol completeness. An idle reset regression checks that CONTROL and SCRATCH return to zero.

## Pass criteria
The simulation must complete without `$fatal`, and the testbench must print a PASS summary. Each read checks RRESP and RDATA against both the directed expectation and the reference model; each write checks BRESP. Response-stall tests check response VALID and payload stability.

## Protocol monitor and assertions
The shared module `tb/axi4lite_protocol_monitor.sv` checks AW/W/AR VALID persistence and payload stability, plus B/R response stability while stalled. The regression script runs five parameterized negative tests: AWVALID drops, WDATA changes, ARVALID drops, BRESP changes, and RDATA changes while their channels are stalled. Each test passes only when the monitor emits the corresponding expected protocol failure. `tb/axi4lite_assertions.sv` separately contains example concurrent SVA properties; the run script does not compile that file because concurrent SVA support differs across simulators.

## Known gaps / future work
- Constrained-random transactions and coverage closure.
- Randomized backpressure and longer randomized stall durations.
- Reset while BVALID is stalled, then verify response clearing and writable-register reset.
- Reset while RVALID is stalled, then verify response clearing.
- Reset after accepting AW but before W; verify the stale address cannot pair with post-reset write data.
- UVM agent, sequencer, monitor, scoreboard, and sequences.
- Formal protocol checks and integration with an AXI VIP.
- Randomized backpressure and broader constrained-random traffic remain to be added.

## Reset corner-case regression
`tb/tb_reset_corner_cases.sv` separately checks reset while write and read responses are stalled, confirms response VALID clears, checks CONTROL returns to its reset value, and verifies a pre-reset AW cannot pair with post-reset W data. The top-level script runs this regression after the functional and protocol-negative tests.


## Randomized stress regression
`tb/tb_randomized_stress.sv` performs 50 reproducible writes to CONTROL/SCRATCH with randomized AW/W arrival delays, AW-first/W-first ordering, WSTRB patterns, and B/R response backpressure. Each write is followed by readback of both writable registers against an independent reference model. The script runs this test after the functional, protocol-negative, and reset regressions.
