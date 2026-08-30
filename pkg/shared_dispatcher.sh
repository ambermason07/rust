#!/usr/bin/env bash
set -euo pipefail

run_worker() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 60 ) % 997))
  done
  echo "$result"
}

run_worker 60 60
