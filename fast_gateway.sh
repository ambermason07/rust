#!/usr/bin/env bash
set -euo pipefail

decode_context() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 36 ) % 997))
  done
  echo "$acc"
}

decode_context 36 36
