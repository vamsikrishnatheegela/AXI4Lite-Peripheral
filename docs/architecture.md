# Architecture

## RTL blocks
The design is implemented in one module to keep the control flow visible to new RTL designers.

1. **Write-channel capture:** AW address and W payload are independently captured. `aw_pending` and `w_pending` indicate stored halves.
2. **Write execution:** Once both halves are available, the address selects CONTROL, SCRATCH, a read-only register, or an unmapped location. Byte strobes update only selected lanes.
3. **Write response:** BVALID/BRESP report completion and are held until BREADY accepts the response.
4. **Read path:** AR handshake selects a register value and response; RVALID/RDATA/RRESP are held until RREADY.
5. **Reset:** Active-low synchronous reset clears state and writable registers.

## Design choices
- Single outstanding read and write response simplifies control and verification.
- Explicit byte-lane updates model AXI4-Lite WSTRB behavior.
- Invalid addresses return DECERR to make decode failures observable.

## Review points
When studying the RTL, pay attention to nonblocking assignment semantics, handshake conditions (`VALID && READY`), independently arriving AW/W channels, and response backpressure.