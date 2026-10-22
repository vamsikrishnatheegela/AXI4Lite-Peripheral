# Verification Plan

## Directed scenarios
- Reset values of CONTROL, STATUS, and VERSION.
- Full-word write/readback of CONTROL.
- Partial byte write using WSTRB.
- Write address before write data and write data before write address.
- Full-word write/readback of SCRATCH.
- Write to read-only STATUS followed by readback.
- Read and write to an unmapped address; expect DECERR.
- Hold BREADY low for multiple cycles and check BVALID/BRESP stability.
- Hold RREADY low for multiple cycles and check RVALID/RDATA/RRESP stability, for both OKAY and DECERR responses.

## Scoreboard and pseudo-random regression
The testbench maintains an independent reference model for CONTROL and SCRATCH, applies byte strobes to model writes, and compares read data against the model. A fixed seed makes the pseudo-random register-write regression reproducible. The regression currently chooses between the two writable registers, varies write data and WSTRB, alternates AW-first/W-first sequencing, and reads back both the written and other writable register.

## Portable functional coverage counters\nThe Icarus-compatible testbench prints counters for read/write address categories, zero/full/partial WSTRB classes, AW-first versus W-first writes, DECERR responses, and read/write backpressure tests. These are transaction counters rather than SystemVerilog covergroups; they show exercised scenarios but do not establish protocol completeness. An idle reset regression checks that CONTROL and SCRATCH return to zero.\n\n## Pass criteria
The simulation must complete without `$fatal`, and the testbench must print a PASS summary. Each read checks RRESP and RDATA against both the directed expectation and the reference model; each write checks BRESP. Response-stall tests check response VALID and payload stability.

## Assertions
`tb/axi4lite_assertions.sv` contains example concurrent assertions for response stability under backpressure and VALID persistence. They are provided as a separate checker because concurrent SVA support differs across simulators.

## Known gaps / future work
- Constrained-random transactions and coverage closure.
- Randomized backpressure and longer randomized stall durations.
- Reset during an in-flight transaction.
- UVM agent, sequencer, monitor, scoreboard, and sequences.
- Formal protocol checks and integration with an AXI VIP.