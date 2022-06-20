## This file contains additional definitions that nimterop does not generate
## code for

import sqlite3_gen
export sqlite3_gen

proc sqlite3_bind_blob*(
  pstmt: ptr sqlite3_stmt, 
  param: cint, 
  value: pointer, 
  n: cint, 
  dispose: proc (v: pointer) {.cdecl.}
): cint {.importc, cdecl.}

proc sqlite3_bind_text(
  pstmt: ptr sqlite3_stmt,
  param: cint,
  value: pointer,
  n: cint,
  dispose: proc (v: pointer) {.cdecl.}
): cint {.importc, cdecl.}

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

# These are special values for the destructor that is passed in as the final
# argument to routines like sqlite3_result_blob(). If the destructor argument
# is SQLITE_STATIC, it means that the content pointer is constant and will
# never change. It does not need to be destroyed.
const SQLITE_STATIC* = cast[sqlite3_destructor_type](0)

# The SQLITE_TRANSIENT value means that the content will likely change in the
# near future and that SQLite should make its own private copy of the content
# before returning. Then SQLite is responsible for deallocating this copied
# memory.
const SQLITE_TRANSIENT* = cast[sqlite3_destructor_type](-1)
