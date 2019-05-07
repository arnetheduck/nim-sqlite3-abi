import nimterop/cimport

static:
  cDebug()

cPlugin:
  import strutils

  proc onSymbol*(sym: var Symbol) {.exportc, dynlib.} =
   if sym.name == "sqlite3":
     sym.name = "Sqlite3"

cImport("sqlite3.h")

cCompile("sqlite3.c")

{.passL: "-lpthread".}

echo sqlite3_libversion()

