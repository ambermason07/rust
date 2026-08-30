#!/usr/bin/env bash
set -euo pipefail

run_context() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 79 ) % 997))
  done
  echo "$total"
}

run_context 79 79
