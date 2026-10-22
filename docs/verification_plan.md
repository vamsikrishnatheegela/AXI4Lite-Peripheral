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

## Pass criteria
The simulation must complete without `$fatal`, and the testbench must print a PASS summary. Each read checks both RRESP and RDATA; each write checks BRESP.

## Assertions
`tb/axi4lite_assertions.sv` contains example concurrent assertions for response stability under backpressure and VALID persistence. They are provided as a separate checker because concurrent SVA support differs across simulators.

## Known gaps / future work
- Constrained-random transactions and coverage closure.
- Randomized backpressure and longer randomized stall durations.
- Reset during an in-flight transaction.
- UVM agent, sequencer, monitor, scoreboard, and sequences.
- Formal protocol checks and integration with an AXI VIP.