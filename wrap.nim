import nimterop/cimport

static:
  cDebug()

cPlugin:
  import strutils

  proc onSymbol*(sym: var Symbol) {.exportc, dynlib.} =
    discard

cImport("sqlite3.h")

cCompile("sqlite3.c")

{.passL: "-lpthread".}

echo sqlite3_libversion()

