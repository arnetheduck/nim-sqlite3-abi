#!/bin/bash

MAJOR="${1:-3}"
MINOR="${2:-34}"
PATCH="${3:-0}"

VER_INT="$(printf "%d%02d%02d00" "$MAJOR" "$MINOR" "$PATCH")"

# TODO check sha256sum

ZIP="sqlite-amalgamation-$VER_INT.zip"
[ -f "$ZIP" ] || wget https://www.sqlite.org/2020/$ZIP

unzip -jo $ZIP "sqlite-amalgamation-$VER_INT/sqlite3.c" "sqlite-amalgamation-$VER_INT/sqlite3.h"

[[ -v HAS_NIMTEROP ]] || nimble install -y nimterop@0.6.13

nim c --verbosity:0 --hints:off wrap.nim
./wrap

sed -i \
  -e "s|cdecl|cdecl, raises: [Defect]|g" \
  -e "s|$PWD/||" \
  sqlite3_gen.nim
