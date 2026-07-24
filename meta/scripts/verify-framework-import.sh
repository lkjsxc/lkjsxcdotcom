#!/usr/bin/env bash
# Verify the app imports lkjweb from exact checked-out public dependencies.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$ROOT"
test -f deps/lkjscript/Cargo.toml
test -f deps/lkjweb/README.md
test -L src/std
test -L src/lib
git diff --check
actual="$(deps/lkjscript/target/debug/lkjscript run --engine vm src/examples/smoke/main.lkjscript)"
test "$actual" = "framework-import-ok"
printf 'framework import verify ok\n'
