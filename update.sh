#!/usr/bin/env bash
set -eu -o pipefail
cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")"

MAJOR="${1:-3}"
MINOR="${2:-40}"
PATCH="${3:-1}"
YEAR="${4:-2022}"
HASH="${5:-2618a7f311ce3f8307c45035bce31805185d632241b2af6c250b4531f09edccb}"

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
  -e 's|{.experimental: "codeReordering".}|{.experimental: "codeReordering".}\nwhen (NimMajor, NimMinor) < (1, 4):\n  {.pragma: sqlitedecl, cdecl, gcsafe, raises: [Defect].}\nelse:\n  {.pragma: sqlitedecl, gcsafe, cdecl, raises: [].}|' \
  -e "s|sqlite3_column_text\\*(a1: ptr sqlite3_stmt; iCol: cint): ptr cuchar|sqlite3_column_text\\*(a1: ptr sqlite3_stmt; iCol: cint): cstring|" \
  -e "s|sqlite3_value_text\\*(a1: ptr sqlite3_value): ptr cuchar|sqlite3_value_text\\*(a1: ptr sqlite3_value): cstring|" \
  sqlite3_abi/sqlite3_gen.nim
rm -f sqlite3_abi/sqlite3_gen.nim.bak  # macOS `sed` requires backup with `-i`
