#!/usr/bin/env bash
set -euo pipefail

dispatch_context() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 34 ) % 997))
  done
  echo "$result"
}

dispatch_context 34 34
