import nimterop/cimport

static:
  # uses va_list which is undefined
  cSkipSymbol(@[
    # uses va_list which is undefined
    "sqlite3_vmprintf",
    "sqlite3_vsnprintf",
    "sqlite3_str_vappendf",
    # can use native nim types instead
    "sqlite_int64",
    "sqlite_uint64",
    "sqlite3_int64",
    "sqlite3_uint64",
    # Code reording problems
    "SQLITE_STATIC",
    # cchar problem
    "sqlite3_version"
    ])

  cOverride:
    type sqlite3_index_info* {.importc, bycopy, incompleteStruct.} = object

cPlugin:
  import strutils

  proc onSymbol*(sym: var Symbol) {.exportc, dynlib.} =
    if sym.kind == nskType:
      case sym.name
      of "sqlite_int64", "sqlite3_int64": sym.name = "int64"
      of "sqlite_uint64", "sqlite3_uint64": sym.name = "uint64"

cCompile("sqlite3.c")

cImport("sqlite3.h", flags="-H", nimfile="sqlite3_gen.nim")


{.passL: "-lpthread".}

echo sqlite3_libversion()
