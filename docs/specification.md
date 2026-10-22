# Functional Specification

## Purpose
Provide a compact AXI4-Lite subordinate for memory-mapped register access and practice RTL verification.

## Interface
The module exposes the five AXI4-Lite channels: write address (AW), write data (W), write response (B), read address (AR), and read data (R). Address and data widths are parameters; the current register map assumes 32-bit data and 32-bit aligned addresses.

## Register map
- `0x00 CONTROL`: readable/writable; reset to zero; byte writes controlled by `WSTRB`.
- `0x04 STATUS`: read-only constant `1`; writes are ignored.
- `0x08 SCRATCH`: readable/writable; reset to zero; byte writes controlled by `WSTRB`.
- `0x0C VERSION`: read-only constant `0x00010000`; writes are ignored.

## Responses
- `OKAY (2'b00)`: mapped access.
- `DECERR (2'b11)`: unmapped address.

## Transaction behavior
AW and W may arrive on different cycles. The implementation buffers each half until both are available, executes the write, and raises BVALID until a BVALID/BREADY handshake. A read address handshake captures read data and response; RVALID remains asserted until RREADY.

## Reset
Active-low synchronous reset clears writable registers and pending transaction/response state.

## Limitations
This educational implementation supports one outstanding response per direction. It is not a complete AXI compliance suite and has not been formally proven.