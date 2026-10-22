# AXI4-Lite Peripheral

A synthesizable memory-mapped peripheral and self-checking SystemVerilog testbench for learning practical RTL design and design verification.

## Verification Status

The regression suite runs with Icarus Verilog and includes:

| Verification activity | Result |
|---|---|
| Functional scoreboard checks | 123 passed |
| Byte-enable coverage | All 16 WSTRB patterns exercised and checked |
| AXI protocol negative tests | 5 injected violations detected |
| Reset corner cases | 10 checks passed |
| Randomized stress regression | 150 checks across 50 writes |
| Mutation testing | 6 of 6 selected RTL mutations detected |

Additional checks cover independent AW/W channel arrival, unmapped-address DECERR responses, read-only registers, response backpressure, and randomized write/readback operations.

These results describe the implemented tests and six selected mutations; they do not establish complete AXI4-Lite protocol compliance or exhaustive defect detection.

## Register map
| Address | Register | Access | Reset/value |
|---|---|---|---|
| 0x00 | CONTROL | RW | 0x00000000 |
| 0x04 | STATUS | RO | 0x00000001 |
| 0x08 | SCRATCH | RW | 0x00000000 |
| 0x0C | VERSION | RO | 0x00010000 |

The design supports byte write strobes on writable registers, independently arriving write address and data channels, OKAY responses for valid accesses, and DECERR for unmapped addresses. Writes to read-only registers are ignored.

## Run
Install Icarus Verilog (`iverilog` and `vvp`), then run:

    bash scripts/run_tests.sh

This project is educational and is not represented as production-qualified IP. Run it in your target simulator and review the RTL before using it in a real design. Full concurrent assertion support varies by simulator.

## Layout
- `rtl/axi4lite_peripheral.sv` — synthesizable peripheral RTL
- `tb/tb_axi4lite_peripheral.sv` — self-checking testbench, reference model, scoreboard, directed and pseudo-random tests
- `tb/tb_randomized_stress.sv` — randomized AW/W arrival delays and B/R response backpressure
- `tb/axi4lite_assertions.sv` — protocol assertion module
- `docs/` — specification, architecture, verification plan, learning roadmap
- `scripts/run_tests.sh` — simulation runner

## Suggested extensions
1. Expand randomized delays and add functional coverage.
2. Develop a UVM agent, sequencer, sequences, monitor, and reusable scoreboard.
3. Add synthesis and timing reports using a chosen RTL flow.

## License
MIT. See `LICENSE`.
