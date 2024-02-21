#!/usr/bin/env bash
set -eu -o pipefail
cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")"

# https://www.sqlite.org/download.html
MAJOR="${1:-3}"
MINOR="${2:-42}"
PATCH="${3:-0}"
YEAR="${4:-2023}"
HASH="${5:-436747dc8090d015b9869b96f5837f745e852d2ce73fd77410ed76ee51107a1f}"

VER_INT="$(printf "%d%02d%02d00" "$MAJOR" "$MINOR" "$PATCH")"

cd sqlite3_abi

ZIP="sqlite-amalgamation-$VER_INT.zip"
[ -f "$ZIP" ] || wget https://www.sqlite.org/$YEAR/$ZIP
HASH_ACTUAL=$(python3 -c "import hashlib; print(hashlib.sha3_256(open('$ZIP', 'rb').read()).hexdigest())")
if [[ "${HASH_ACTUAL}" != "${HASH}" ]]; then
  echo "Incorrect ${ZIP} hash: ${HASH}"
  false
fi

unzip -jo $ZIP "sqlite-amalgamation-$VER_INT/sqlite3.c" "sqlite-amalgamation-$VER_INT/sqlite3.h"

cd ..

(( ${HAS_NIMTEROP:-0} )) || nimble install -y nimterop@0.6.13

nim c -o:wrap --skipParentCfg --verbosity:0 --hints:off ./sqlite3_abi/wrap.nim
./wrap

sed -i.bak \
  -e "s|cdecl|sqlitedecl|g" \
  -e "\|Generated @|d" \
  -e "s|$PWD/||g" \
  -e "s|$HOME|~|g" \
  -e "s|--nim:/[^ ]*|--nim:nim|g" \
  -e 's|{.experimental: "codeReordering".}|{.experimental: "codeReordering".}\nwhen (NimMajor, NimMinor) < (1, 4):\n  {.pragma: sqlitedecl, cdecl, gcsafe, raises: [Defect].}\nelse:\n  {.pragma: sqlitedecl, cdecl, gcsafe, raises: [].}|' \
  -e "s|sqlite3_column_text\\*(a1: ptr sqlite3_stmt; iCol: cint): ptr cuchar|sqlite3_column_text\\*(a1: ptr sqlite3_stmt; iCol: cint): cstring|" \
  -e "s|sqlite3_value_text\\*(a1: ptr sqlite3_value): ptr cuchar|sqlite3_value_text\\*(a1: ptr sqlite3_value): cstring|" \
  sqlite3_abi/sqlite3_gen.nim
rm -f sqlite3_abi/sqlite3_gen.nim.bak  # Portable GNU/macOS `sed` needs backup
