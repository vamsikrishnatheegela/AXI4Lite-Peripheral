# AXI4-Lite Peripheral

A synthesizable memory-mapped peripheral and self-checking SystemVerilog testbench for learning practical RTL design and design verification.

## Included
- RTL implementation of an AXI4-Lite subordinate with a four-register bank.
- Directed self-checking testbench with checks for register access, byte strobes, independent AW/W timing, and invalid addresses.
- Design specification, architecture notes, verification plan, and run script.

## Register map
| Address | Register | Access | Reset/value |
|---|---|---|---|
| 0x00 | CONTROL | RW | 0x00000000 |
| 0x04 | STATUS | RO | 0x00000001 |
| 0x08 | SCRATCH | RW | 0x00000000 |
| 0x0C | VERSION | RO | 0x00010000 |

The design supports byte write strobes on writable registers, independently arriving write address and data channels, OKAY responses for valid accesses, and DECERR for unmapped addresses. Writes to read-only registers are ignored.

## Run
Install Icarus Verilog (iverilog and vvp), then run:

    ./scripts/run_tests.sh

This project is educational and is not represented as production-qualified IP. Run it in your target simulator and review the RTL before using it in a real design. Full concurrent assertion support varies by simulator.

## Layout
- rtl/axi4lite_peripheral.sv — synthesizable peripheral RTL
- tb/tb_axi4lite_peripheral.sv — self-checking directed testbench
- tb/axi4lite_assertions.sv — protocol assertion module
- docs/ — specification, architecture, verification plan
- scripts/run_tests.sh — simulation runner

## Suggested extensions
1. Add constrained-random traffic and coverage groups.
2. Develop a UVM agent, sequences, monitor, and scoreboard.
3. Add synthesis and timing reports using a chosen RTL flow.

## License
MIT. See LICENSE.