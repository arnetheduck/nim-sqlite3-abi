import nimterop/cimport

static:
  cDebug()

  # uses va_list which is undefined
  cSkipSymbol(@["sqlite3_vmprintf", "sqlite3_vsnprintf", "sqlite3_str_vappendf"])

cPlugin:
  import strutils

  proc onSymbol*(sym: var Symbol) {.exportc, dynlib.} =
    discard

cImport("sqlite3.h")

cCompile("sqlite3.c")

{.passL: "-lpthread".}

echo sqlite3_libversion()

