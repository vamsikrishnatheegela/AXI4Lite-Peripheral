#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"
mkdir -p sim_build
if ! command -v iverilog >/dev/null 2>&1 || ! command -v vvp >/dev/null 2>&1; then
  echo "ERROR: Icarus Verilog is required. Install iverilog and vvp first." >&2
  exit 2
fi

echo "=== AXI4-Lite functional regression ==="
iverilog -g2012 -s tb_axi4lite_peripheral -o sim_build/tb.vvp \
  rtl/axi4lite_peripheral.sv tb/axi4lite_protocol_monitor.sv tb/tb_axi4lite_peripheral.sv
vvp sim_build/tb.vvp

echo
echo "=== Protocol monitor negative tests (expected failures) ==="
declare -a expected_messages=(
  "PROTOCOL: AWVALID/address changed before handshake"
  "PROTOCOL: WVALID/data/strobe changed before handshake"
  "PROTOCOL: ARVALID/address changed before handshake"
  "PROTOCOL: BVALID/BRESP changed while stalled"
  "PROTOCOL: RVALID/RDATA/RRESP changed while stalled"
)
iverilog -g2012 -s tb_protocol_monitor_negative -o sim_build/tb_monitor_negative.vvp \
  tb/axi4lite_protocol_monitor.sv tb/tb_protocol_monitor_negative.sv
for i in "${!expected_messages[@]}"; do
  set +e
  vvp -Ptb_protocol_monitor_negative.VIOLATION="$i" sim_build/tb_monitor_negative.vvp > "sim_build/monitor_negative_${i}.log" 2>&1
  negative_status=$?
  set -e
  if [[ $negative_status -eq 0 ]]; then
    cat "sim_build/monitor_negative_${i}.log"
    echo "ERROR: negative test $i unexpectedly exited successfully." >&2
    exit 1
  fi
  if ! grep -Fq "${expected_messages[$i]}" "sim_build/monitor_negative_${i}.log"; then
    cat "sim_build/monitor_negative_${i}.log"
    echo "ERROR: negative test $i failed for an unexpected reason." >&2
    exit 1
  fi
  echo "PASS: detected violation on ${expected_messages[$i]#PROTOCOL: }"
done
echo "PASS: all five AXI channel protocol negative tests detected the injected violations."
