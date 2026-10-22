#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"
mkdir -p sim_build
if ! command -v iverilog >/dev/null 2>&1 || ! command -v vvp >/dev/null 2>&1; then
  echo "ERROR: Icarus Verilog is required. Install iverilog and vvp first." >&2
  exit 2
fi
iverilog -g2012 -s tb_axi4lite_peripheral -o sim_build/tb.vvp rtl/axi4lite_peripheral.sv tb/tb_axi4lite_peripheral.sv
vvp sim_build/tb.vvp
