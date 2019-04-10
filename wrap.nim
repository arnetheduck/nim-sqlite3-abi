import nimterop/cimport
 
static:
   cDebug()
 
cImport("sqlite3.h")
 
cCompile("sqlite3.c")

{.passL: "-lpthread".}
 
echo sqlite3_libversion()

