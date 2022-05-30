## This file contains additional definitions that nimterop does not generate
## code for

import sqlite3_gen
export sqlite3_gen

proc sqlite3_bind_blob*(pstmt: ptr sqlite3_stmt, param: cint, value: pointer, n: cint, dispose: proc (v: pointer) {.cdecl.}): cint {.importc, cdecl.}

proc sqlite3_create_function*(
  db: ptr sqlite3,
  functionName: cstring,
  nArgs: cint,
  eTextRep: cint,
  pApp: pointer,
  xFunc: proc(ctx: ptr sqlite3_context, n: cint, v: ptr ptr sqlite3_value) {.cdecl.},
  xStep: proc(ctx: ptr sqlite3_context, n: cint, v: ptr ptr sqlite3_value) {.cdecl.},
  xFinal: proc(ctx: ptr sqlite3_context) {.cdecl.}
): cint {.importc, cdecl.}

proc sqlite3_result_blob*(
  ctx: ptr sqlite3_context,
  bytes: pointer,
  n: cint,
  dispose: proc (v: pointer) {.cdecl.}
) {.importc, cdecl.}

# constant which corresponds to SQLITE_TRANSIENT flag. Instructs sqlite to copy
# data pointed by sqlite3_result_blob.bytes pointer. Then sqlite is reponsible
# for deallocating this copied memory.
const SQLITE_TRANSIENT* = cast[sqlite3_destructor_type](-1)
