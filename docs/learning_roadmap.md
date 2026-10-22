# Learning Roadmap

Study the project in this order:

1. **Bus handshake:** understand why a transfer occurs only on a rising edge where VALID and READY are both high.
2. **Register bank:** trace CONTROL and SCRATCH writes, including byte strobes.
3. **Independent AW/W timing:** inspect how the RTL buffers the write address and write data independently.
4. **Read response:** trace AR acceptance, register decode, RVALID hold, and RREADY completion.
5. **Testbench tasks:** follow `write_tx` and `read_tx` to understand stimulus and checking.
6. **Reference model and scoreboard:** compare model state with DUT read responses and inspect byte-lane updates.
7. **Functional regression:** run `bash scripts/run_tests.sh` and understand the directed checks and printed counters.
8. **Protocol monitor:** study the five injected failures and identify why each violates VALID/payload persistence.
9. **Reset corner cases:** trace reset during stalled B/R responses and reset between AW and W.
10. **Randomized stress:** inspect `tb/tb_randomized_stress.sv`; track the fixed seed, channel delays, strobes, response backpressure, and reference-model readbacks.
11. **Assertions:** study `tb/axi4lite_assertions.sv` and run it in a simulator supporting concurrent SVA.
12. **Next iteration:** expand coverage, add more simultaneous-channel and handshake-boundary scenarios, then consider a UVM environment.

## Current portable regression

The script runs the functional testbench, five protocol-monitor negative tests, reset corner cases, and randomized stress. Icarus Verilog does not run the separate concurrent-SVA file in this script. A passing portable regression is evidence for the scenarios tested, not proof of complete AXI4-Lite compliance.
