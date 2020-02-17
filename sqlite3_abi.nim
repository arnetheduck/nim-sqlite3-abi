## This file contains additional definitions that nimterop does not generate
## code for

import sqlite3_gen
export sqlite3_gen

# Needed on windows
from os import splitPath
{.passC:"-I" & currentSourcePath().splitPath.head .}

proc sqlite3_bind_blob*(pstmt: ptr sqlite3_stmt, param: cint, value: pointer, n: cint, dispose: proc (v: pointer) {.cdecl.}): cint {.importc, header: "sqlite3.h", cdecl.}
