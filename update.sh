#!/usr/bin/env bash
set -eu -o pipefail
cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")"

git diff --exit-code -- . ':(exclude)update.sh' > /dev/null || { echo "Commit changes before updating!" ; exit 1 ; }

(( ${HAS_NIMTEROP:-0} )) || nimble install -y nimterop@0.6.13

# https://www.sqlite.org/download.html
MAJOR="${1:-3}"
MINOR="${2:-49}"
PATCH="${3:-1}"
YEAR="${4:-2025}"
HASH="${5:-e7eb4cfb2d95626e782cfa748f534c74482f2c3c93f13ee828b9187ce05b2da7}"

VER_INT="$(printf "%d%02d%02d00" "$MAJOR" "$MINOR" "$PATCH")"

cd sqlite3_abi

ZIP="sqlite-amalgamation-$VER_INT.zip"
[ -f "$ZIP" ] || curl -OL https://www.sqlite.org/$YEAR/$ZIP
HASH_ACTUAL=$(python3 -c "import hashlib; print(hashlib.sha3_256(open('$ZIP', 'rb').read()).hexdigest())")
if [[ "${HASH_ACTUAL}" != "${HASH}" ]]; then
  echo "Incorrect ${ZIP} hash: ${HASH}"
  false
fi

unzip -jo $ZIP "sqlite-amalgamation-$VER_INT/sqlite3.c" "sqlite-amalgamation-$VER_INT/sqlite3.h"

cd ..

nim c -o:wrap --skipParentCfg --verbosity:0 --hints:off ./sqlite3_abi/wrap.nim
./wrap

sed -i.bak \
  -e "s|cdecl|sqlitedecl|g" \
  -e "\|Generated @|d" \
  -e "s|$PWD/||g" \
  -e "s|$HOME|~|g" \
  -e "s|--nim:[^ ]*|--nim:nim|g" \
  -e 's|{.experimental: "codeReordering".}|{.experimental: "codeReordering".}\nwhen (NimMajor, NimMinor) < (1, 4):\n  {.pragma: sqlitedecl, cdecl, gcsafe, raises: [Defect].}\nelse:\n  {.pragma: sqlitedecl, cdecl, gcsafe, raises: [].}|' \
  -e "s|sqlite3_column_text\\*(a1: ptr sqlite3_stmt; iCol: cint): ptr cuchar|sqlite3_column_text\\*(a1: ptr sqlite3_stmt; iCol: cint): cstring|" \
  -e "s|sqlite3_value_text\\*(a1: ptr sqlite3_value): ptr cuchar|sqlite3_value_text\\*(a1: ptr sqlite3_value): cstring|" \
  sqlite3_abi/sqlite3_gen.nim
rm -f sqlite3_abi/sqlite3_gen.nim.bak  # Portable GNU/macOS `sed` needs backup

sed -i.bak \
  -e "s|version.*|version       = \"${MAJOR}.${MINOR}.${PATCH}.0\"|g" \
  sqlite3_abi.nimble
rm -f sqlite3_abi.nimble.bak  # Portable GNU/macOS `sed` needs backup

! git diff --exit-code > /dev/null || { echo "This repository is already up to date" ; exit 0 ; }

git commit -a \
  -m "Bump sqlite-amalgamation to \`${MAJOR}.${MINOR}.${PATCH}\`" \
  -m "- https://www.sqlite.org/releaselog/${MAJOR}_${MINOR}_${PATCH}.html"

echo "The repo has been updated with a commit recording the update."
echo "You can review the changes with 'git diff HEAD^' before pushing to a public repository."
