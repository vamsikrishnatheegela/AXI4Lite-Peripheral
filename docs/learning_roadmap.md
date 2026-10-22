# Learning Roadmap

Study this project in the following order:

1. **Bus handshake:** understand why a transfer occurs only on a rising edge where VALID and READY are both high.
2. **Register bank:** trace CONTROL and SCRATCH writes, including byte strobes.
3. **Independent AW/W timing:** inspect how the RTL buffers the write address and write data independently.
4. **Read response:** trace AR acceptance, register decode, RVALID hold, and RREADY completion.
5. **Testbench tasks:** follow `write_tx` and `read_tx` to understand stimulus and checking.
6. **Reference model and scoreboard:** compare the model's register state with DUT read responses; inspect byte-lane updates.
7. **Pseudo-random regression:** trace the fixed seed, generated addresses/data/strobes, and readback checks.
8. **Failure injection:** change a register decode or response and confirm the testbench detects the defect.
9. **Assertions:** study protocol properties and try them in a simulator with SVA support.
10. **Next iteration:** add randomized delays/backpressure, a scoreboard, coverage, then a UVM environment.