#!/usr/bin/env bash
set -euo pipefail

resolve_context() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 50 ) % 997))
  done
  echo "$value"
}

resolve_context 50 50
