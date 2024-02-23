packageName   = "sqlite3_abi"
version       = "3.43.2.0"
author        = "Status Research & Development GmbH"
description   = "A wrapper for SQLite"
license       = "Apache License 2.0 or MIT"
installFiles  = @["sqlite3_abi.nim", "sqlite3_abi/sqlite3_gen.nim", "sqlite3_abi/sqlite3.c", "sqlite3_abi/sqlite3.h"]

### Dependencies
requires "nim >= 0.18.1"
