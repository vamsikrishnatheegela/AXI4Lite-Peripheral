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

**Reproduce the regression:**

```bash
bash scripts/run_tests.sh
```

The results describe the implemented tests and six selected mutations; they do not establish complete AXI4-Lite protocol compliance or exhaustive defect detection.
