#!/usr/bin/env bash
set -euo pipefail

render_resolver() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 77 ) % 997))
  done
  echo "$count"
}

render_resolver 77 77
