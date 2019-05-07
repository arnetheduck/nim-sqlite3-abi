# Importing sqlite3.h
# /home/arnetheduck/.nimble/pkgs/nimterop-0.1.0/nimterop/toast --pnim --preprocess --pluginSourcePath=/tmp/nimterop_206929977416092270.nim sqlite3.h


{.hint[ConvFromXtoItselfNotNeeded]: off.}



const
  headersqlite3 {.used.} = "sqlite3.h"
  SQLITE_VERSION_NUMBER* = 3027002
  SQLITE_OK* = 0
  SQLITE_ERROR* = 1
  SQLITE_INTERNAL* = 2
  SQLITE_PERM* = 3
  SQLITE_ABORT* = 4
  SQLITE_BUSY* = 5
  SQLITE_LOCKED* = 6
  SQLITE_NOMEM* = 7
  SQLITE_READONLY* = 8
  SQLITE_INTERRUPT* = 9
  SQLITE_IOERR* = 10
  SQLITE_CORRUPT* = 11
  SQLITE_NOTFOUND* = 12
  SQLITE_FULL* = 13
  SQLITE_CANTOPEN* = 14
  SQLITE_PROTOCOL* = 15
  SQLITE_EMPTY* = 16
  SQLITE_SCHEMA* = 17
  SQLITE_TOOBIG* = 18
  SQLITE_CONSTRAINT* = 19
  SQLITE_MISMATCH* = 20
  SQLITE_MISUSE* = 21
  SQLITE_NOLFS* = 22
  SQLITE_AUTH* = 23
  SQLITE_FORMAT* = 24
  SQLITE_RANGE* = 25
  SQLITE_NOTADB* = 26
  SQLITE_NOTICE* = 27
  SQLITE_WARNING* = 28
  SQLITE_ROW* = 100
  SQLITE_DONE* = 101
  SQLITE_OPEN_READONLY* = 0x00000001
  SQLITE_OPEN_READWRITE* = 0x00000002
  SQLITE_OPEN_CREATE* = 0x00000004
  SQLITE_OPEN_DELETEONCLOSE* = 0x00000008
  SQLITE_OPEN_EXCLUSIVE* = 0x00000010
  SQLITE_OPEN_AUTOPROXY* = 0x00000020
  SQLITE_OPEN_URI* = 0x00000040
  SQLITE_OPEN_MEMORY* = 0x00000080
  SQLITE_OPEN_MAIN_DB* = 0x00000100
  SQLITE_OPEN_TEMP_DB* = 0x00000200
  SQLITE_OPEN_TRANSIENT_DB* = 0x00000400
  SQLITE_OPEN_MAIN_JOURNAL* = 0x00000800
  SQLITE_OPEN_TEMP_JOURNAL* = 0x00001000
  SQLITE_OPEN_SUBJOURNAL* = 0x00002000
  SQLITE_OPEN_MASTER_JOURNAL* = 0x00004000
  SQLITE_OPEN_NOMUTEX* = 0x00008000
  SQLITE_OPEN_FULLMUTEX* = 0x00010000
  SQLITE_OPEN_SHAREDCACHE* = 0x00020000
  SQLITE_OPEN_PRIVATECACHE* = 0x00040000
  SQLITE_OPEN_WAL* = 0x00080000
  SQLITE_IOCAP_ATOMIC* = 0x00000001
  SQLITE_IOCAP_ATOMIC512* = 0x00000002
  SQLITE_IOCAP_ATOMIC1K* = 0x00000004
  SQLITE_IOCAP_ATOMIC2K* = 0x00000008
  SQLITE_IOCAP_ATOMIC4K* = 0x00000010
  SQLITE_IOCAP_ATOMIC8K* = 0x00000020
  SQLITE_IOCAP_ATOMIC16K* = 0x00000040
  SQLITE_IOCAP_ATOMIC32K* = 0x00000080
  SQLITE_IOCAP_ATOMIC64K* = 0x00000100
  SQLITE_IOCAP_SAFE_APPEND* = 0x00000200
  SQLITE_IOCAP_SEQUENTIAL* = 0x00000400
  SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN* = 0x00000800
  SQLITE_IOCAP_POWERSAFE_OVERWRITE* = 0x00001000
  SQLITE_IOCAP_IMMUTABLE* = 0x00002000
  SQLITE_IOCAP_BATCH_ATOMIC* = 0x00004000
  SQLITE_LOCK_NONE* = 0
  SQLITE_LOCK_SHARED* = 1
  SQLITE_LOCK_RESERVED* = 2
  SQLITE_LOCK_PENDING* = 3
  SQLITE_LOCK_EXCLUSIVE* = 4
  SQLITE_SYNC_NORMAL* = 0x00000002
  SQLITE_SYNC_FULL* = 0x00000003
  SQLITE_SYNC_DATAONLY* = 0x00000010
  SQLITE_FCNTL_LOCKSTATE* = 1
  SQLITE_FCNTL_GET_LOCKPROXYFILE* = 2
  SQLITE_FCNTL_SET_LOCKPROXYFILE* = 3
  SQLITE_FCNTL_LAST_ERRNO* = 4
  SQLITE_FCNTL_SIZE_HINT* = 5
  SQLITE_FCNTL_CHUNK_SIZE* = 6
  SQLITE_FCNTL_FILE_POINTER* = 7
  SQLITE_FCNTL_SYNC_OMITTED* = 8
  SQLITE_FCNTL_WIN32_AV_RETRY* = 9
  SQLITE_FCNTL_PERSIST_WAL* = 10
  SQLITE_FCNTL_OVERWRITE* = 11
  SQLITE_FCNTL_VFSNAME* = 12
  SQLITE_FCNTL_POWERSAFE_OVERWRITE* = 13
  SQLITE_FCNTL_PRAGMA* = 14
  SQLITE_FCNTL_BUSYHANDLER* = 15
  SQLITE_FCNTL_TEMPFILENAME* = 16
  SQLITE_FCNTL_MMAP_SIZE* = 18
  SQLITE_FCNTL_TRACE* = 19
  SQLITE_FCNTL_HAS_MOVED* = 20
  SQLITE_FCNTL_SYNC* = 21
  SQLITE_FCNTL_COMMIT_PHASETWO* = 22
  SQLITE_FCNTL_WIN32_SET_HANDLE* = 23
  SQLITE_FCNTL_WAL_BLOCK* = 24
  SQLITE_FCNTL_ZIPVFS* = 25
  SQLITE_FCNTL_RBU* = 26
  SQLITE_FCNTL_VFS_POINTER* = 27
  SQLITE_FCNTL_JOURNAL_POINTER* = 28
  SQLITE_FCNTL_WIN32_GET_HANDLE* = 29
  SQLITE_FCNTL_PDB* = 30
  SQLITE_FCNTL_BEGIN_ATOMIC_WRITE* = 31
  SQLITE_FCNTL_COMMIT_ATOMIC_WRITE* = 32
  SQLITE_FCNTL_ROLLBACK_ATOMIC_WRITE* = 33
  SQLITE_FCNTL_LOCK_TIMEOUT* = 34
  SQLITE_FCNTL_DATA_VERSION* = 35
  SQLITE_FCNTL_SIZE_LIMIT* = 36
  SQLITE_ACCESS_EXISTS* = 0
  SQLITE_ACCESS_READWRITE* = 1
  SQLITE_ACCESS_READ* = 2
  SQLITE_SHM_UNLOCK* = 1
  SQLITE_SHM_LOCK* = 2
  SQLITE_SHM_SHARED* = 4
  SQLITE_SHM_EXCLUSIVE* = 8
  SQLITE_SHM_NLOCK* = 8
  SQLITE_CONFIG_SINGLETHREAD* = 1
  SQLITE_CONFIG_MULTITHREAD* = 2
  SQLITE_CONFIG_SERIALIZED* = 3
  SQLITE_CONFIG_MALLOC* = 4
  SQLITE_CONFIG_GETMALLOC* = 5
  SQLITE_CONFIG_SCRATCH* = 6
  SQLITE_CONFIG_PAGECACHE* = 7
  SQLITE_CONFIG_HEAP* = 8
  SQLITE_CONFIG_MEMSTATUS* = 9
  SQLITE_CONFIG_MUTEX* = 10
  SQLITE_CONFIG_GETMUTEX* = 11
  SQLITE_CONFIG_LOOKASIDE* = 13
  SQLITE_CONFIG_PCACHE* = 14
  SQLITE_CONFIG_GETPCACHE* = 15
  SQLITE_CONFIG_LOG* = 16
  SQLITE_CONFIG_URI* = 17
  SQLITE_CONFIG_PCACHE2* = 18
  SQLITE_CONFIG_GETPCACHE2* = 19
  SQLITE_CONFIG_COVERING_INDEX_SCAN* = 20
  SQLITE_CONFIG_SQLLOG* = 21
  SQLITE_CONFIG_MMAP_SIZE* = 22
  SQLITE_CONFIG_WIN32_HEAPSIZE* = 23
  SQLITE_CONFIG_PCACHE_HDRSZ* = 24
  SQLITE_CONFIG_PMASZ* = 25
  SQLITE_CONFIG_STMTJRNL_SPILL* = 26
  SQLITE_CONFIG_SMALL_MALLOC* = 27
  SQLITE_CONFIG_SORTERREF_SIZE* = 28
  SQLITE_CONFIG_MEMDB_MAXSIZE* = 29
  SQLITE_DBCONFIG_MAINDBNAME* = 1000
  SQLITE_DBCONFIG_LOOKASIDE* = 1001
  SQLITE_DBCONFIG_ENABLE_FKEY* = 1002
  SQLITE_DBCONFIG_ENABLE_TRIGGER* = 1003
  SQLITE_DBCONFIG_ENABLE_FTS3_TOKENIZER* = 1004
  SQLITE_DBCONFIG_ENABLE_LOAD_EXTENSION* = 1005
  SQLITE_DBCONFIG_NO_CKPT_ON_CLOSE* = 1006
  SQLITE_DBCONFIG_ENABLE_QPSG* = 1007
  SQLITE_DBCONFIG_TRIGGER_EQP* = 1008
  SQLITE_DBCONFIG_RESET_DATABASE* = 1009
  SQLITE_DBCONFIG_DEFENSIVE* = 1010
  SQLITE_DBCONFIG_MAX* = 1010
  SQLITE_DENY* = 1
  SQLITE_IGNORE* = 2
  SQLITE_CREATE_INDEX* = 1
  SQLITE_CREATE_TABLE* = 2
  SQLITE_CREATE_TEMP_INDEX* = 3
  SQLITE_CREATE_TEMP_TABLE* = 4
  SQLITE_CREATE_TEMP_TRIGGER* = 5
  SQLITE_CREATE_TEMP_VIEW* = 6
  SQLITE_CREATE_TRIGGER* = 7
  SQLITE_CREATE_VIEW* = 8
  SQLITE_DELETE* = 9
  SQLITE_DROP_INDEX* = 10
  SQLITE_DROP_TABLE* = 11
  SQLITE_DROP_TEMP_INDEX* = 12
  SQLITE_DROP_TEMP_TABLE* = 13
  SQLITE_DROP_TEMP_TRIGGER* = 14
  SQLITE_DROP_TEMP_VIEW* = 15
  SQLITE_DROP_TRIGGER* = 16
  SQLITE_DROP_VIEW* = 17
  SQLITE_INSERT* = 18
  SQLITE_PRAGMA* = 19
  SQLITE_READ* = 20
  SQLITE_SELECT* = 21
  SQLITE_TRANSACTION* = 22
  SQLITE_UPDATE* = 23
  SQLITE_ATTACH* = 24
  SQLITE_DETACH* = 25
  SQLITE_ALTER_TABLE* = 26
  SQLITE_REINDEX* = 27
  SQLITE_ANALYZE* = 28
  SQLITE_CREATE_VTABLE* = 29
  SQLITE_DROP_VTABLE* = 30
  SQLITE_FUNCTION* = 31
  SQLITE_SAVEPOINT* = 32
  SQLITE_COPY* = 0
  SQLITE_RECURSIVE* = 33
  SQLITE_TRACE_STMT* = 0x00000001
  SQLITE_TRACE_PROFILE* = 0x00000002
  SQLITE_TRACE_ROW* = 0x00000004
  SQLITE_TRACE_CLOSE* = 0x00000008
  SQLITE_LIMIT_LENGTH* = 0
  SQLITE_LIMIT_SQL_LENGTH* = 1
  SQLITE_LIMIT_COLUMN* = 2
  SQLITE_LIMIT_EXPR_DEPTH* = 3
  SQLITE_LIMIT_COMPOUND_SELECT* = 4
  SQLITE_LIMIT_VDBE_OP* = 5
  SQLITE_LIMIT_FUNCTION_ARG* = 6
  SQLITE_LIMIT_ATTACHED* = 7
  SQLITE_LIMIT_LIKE_PATTERN_LENGTH* = 8
  SQLITE_LIMIT_VARIABLE_NUMBER* = 9
  SQLITE_LIMIT_TRIGGER_DEPTH* = 10
  SQLITE_LIMIT_WORKER_THREADS* = 11
  SQLITE_PREPARE_PERSISTENT* = 0x00000001
  SQLITE_PREPARE_NORMALIZE* = 0x00000002
  SQLITE_PREPARE_NO_VTAB* = 0x00000004
  SQLITE_INTEGER* = 1
  SQLITE_FLOAT* = 2
  SQLITE_BLOB* = 4
  SQLITE_NULL* = 5
  SQLITE_TEXT* = 3
  SQLITE3_TEXT* = 3
  SQLITE_UTF8* = 1
  SQLITE_UTF16LE* = 2
  SQLITE_UTF16BE* = 3
  SQLITE_UTF16* = 4
  SQLITE_ANY* = 5
  SQLITE_UTF16_ALIGNED* = 8
  SQLITE_DETERMINISTIC* = 0x00000800
  SQLITE_WIN32_DATA_DIRECTORY_TYPE* = 1
  SQLITE_WIN32_TEMP_DIRECTORY_TYPE* = 2
  SQLITE_INDEX_SCAN_UNIQUE* = 1
  SQLITE_INDEX_CONSTRAINT_EQ* = 2
  SQLITE_INDEX_CONSTRAINT_GT* = 4
  SQLITE_INDEX_CONSTRAINT_LE* = 8
  SQLITE_INDEX_CONSTRAINT_LT* = 16
  SQLITE_INDEX_CONSTRAINT_GE* = 32
  SQLITE_INDEX_CONSTRAINT_MATCH* = 64
  SQLITE_INDEX_CONSTRAINT_LIKE* = 65
  SQLITE_INDEX_CONSTRAINT_GLOB* = 66
  SQLITE_INDEX_CONSTRAINT_REGEXP* = 67
  SQLITE_INDEX_CONSTRAINT_NE* = 68
  SQLITE_INDEX_CONSTRAINT_ISNOT* = 69
  SQLITE_INDEX_CONSTRAINT_ISNOTNULL* = 70
  SQLITE_INDEX_CONSTRAINT_ISNULL* = 71
  SQLITE_INDEX_CONSTRAINT_IS* = 72
  SQLITE_INDEX_CONSTRAINT_FUNCTION* = 150
  SQLITE_MUTEX_FAST* = 0
  SQLITE_MUTEX_RECURSIVE* = 1
  SQLITE_MUTEX_STATIC_MASTER* = 2
  SQLITE_MUTEX_STATIC_MEM* = 3
  SQLITE_MUTEX_STATIC_MEM2* = 4
  SQLITE_MUTEX_STATIC_OPEN* = 4
  SQLITE_MUTEX_STATIC_PRNG* = 5
  SQLITE_MUTEX_STATIC_LRU* = 6
  SQLITE_MUTEX_STATIC_LRU2* = 7
  SQLITE_MUTEX_STATIC_PMEM* = 7
  SQLITE_MUTEX_STATIC_APP1* = 8
  SQLITE_MUTEX_STATIC_APP2* = 9
  SQLITE_MUTEX_STATIC_APP3* = 10
  SQLITE_MUTEX_STATIC_VFS1* = 11
  SQLITE_MUTEX_STATIC_VFS2* = 12
  SQLITE_MUTEX_STATIC_VFS3* = 13
  SQLITE_TESTCTRL_FIRST* = 5
  SQLITE_TESTCTRL_PRNG_SAVE* = 5
  SQLITE_TESTCTRL_PRNG_RESTORE* = 6
  SQLITE_TESTCTRL_PRNG_RESET* = 7
  SQLITE_TESTCTRL_BITVEC_TEST* = 8
  SQLITE_TESTCTRL_FAULT_INSTALL* = 9
  SQLITE_TESTCTRL_BENIGN_MALLOC_HOOKS* = 10
  SQLITE_TESTCTRL_PENDING_BYTE* = 11
  SQLITE_TESTCTRL_ASSERT* = 12
  SQLITE_TESTCTRL_ALWAYS* = 13
  SQLITE_TESTCTRL_RESERVE* = 14
  SQLITE_TESTCTRL_OPTIMIZATIONS* = 15
  SQLITE_TESTCTRL_ISKEYWORD* = 16
  SQLITE_TESTCTRL_SCRATCHMALLOC* = 17
  SQLITE_TESTCTRL_INTERNAL_FUNCTIONS* = 17
  SQLITE_TESTCTRL_LOCALTIME_FAULT* = 18
  SQLITE_TESTCTRL_EXPLAIN_STMT* = 19
  SQLITE_TESTCTRL_ONCE_RESET_THRESHOLD* = 19
  SQLITE_TESTCTRL_NEVER_CORRUPT* = 20
  SQLITE_TESTCTRL_VDBE_COVERAGE* = 21
  SQLITE_TESTCTRL_BYTEORDER* = 22
  SQLITE_TESTCTRL_ISINIT* = 23
  SQLITE_TESTCTRL_SORTER_MMAP* = 24
  SQLITE_TESTCTRL_IMPOSTER* = 25
  SQLITE_TESTCTRL_PARSER_COVERAGE* = 26
  SQLITE_TESTCTRL_LAST* = 26
  SQLITE_STATUS_MEMORY_USED* = 0
  SQLITE_STATUS_PAGECACHE_USED* = 1
  SQLITE_STATUS_PAGECACHE_OVERFLOW* = 2
  SQLITE_STATUS_SCRATCH_USED* = 3
  SQLITE_STATUS_SCRATCH_OVERFLOW* = 4
  SQLITE_STATUS_MALLOC_SIZE* = 5
  SQLITE_STATUS_PARSER_STACK* = 6
  SQLITE_STATUS_PAGECACHE_SIZE* = 7
  SQLITE_STATUS_SCRATCH_SIZE* = 8
  SQLITE_STATUS_MALLOC_COUNT* = 9
  SQLITE_DBSTATUS_LOOKASIDE_USED* = 0
  SQLITE_DBSTATUS_CACHE_USED* = 1
  SQLITE_DBSTATUS_SCHEMA_USED* = 2
  SQLITE_DBSTATUS_STMT_USED* = 3
  SQLITE_DBSTATUS_LOOKASIDE_HIT* = 4
  SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE* = 5
  SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL* = 6
  SQLITE_DBSTATUS_CACHE_HIT* = 7
  SQLITE_DBSTATUS_CACHE_MISS* = 8
  SQLITE_DBSTATUS_CACHE_WRITE* = 9
  SQLITE_DBSTATUS_DEFERRED_FKS* = 10
  SQLITE_DBSTATUS_CACHE_USED_SHARED* = 11
  SQLITE_DBSTATUS_CACHE_SPILL* = 12
  SQLITE_DBSTATUS_MAX* = 12
  SQLITE_STMTSTATUS_FULLSCAN_STEP* = 1
  SQLITE_STMTSTATUS_SORT* = 2
  SQLITE_STMTSTATUS_AUTOINDEX* = 3
  SQLITE_STMTSTATUS_VM_STEP* = 4
  SQLITE_STMTSTATUS_REPREPARE* = 5
  SQLITE_STMTSTATUS_RUN* = 6
  SQLITE_STMTSTATUS_MEMUSED* = 99
  SQLITE_CHECKPOINT_PASSIVE* = 0
  SQLITE_CHECKPOINT_FULL* = 1
  SQLITE_CHECKPOINT_RESTART* = 2
  SQLITE_CHECKPOINT_TRUNCATE* = 3
  SQLITE_VTAB_CONSTRAINT_SUPPORT* = 1
  SQLITE_ROLLBACK* = 1
  SQLITE_FAIL* = 3
  SQLITE_REPLACE* = 5
  SQLITE_SCANSTAT_NLOOP* = 0
  SQLITE_SCANSTAT_NVISIT* = 1
  SQLITE_SCANSTAT_EST* = 2
  SQLITE_SCANSTAT_NAME* = 3
  SQLITE_SCANSTAT_EXPLAIN* = 4
  SQLITE_SCANSTAT_SELECTID* = 5
  SQLITE_SERIALIZE_NOCOPY* = 0x00000001
  SQLITE_DESERIALIZE_FREEONCLOSE* = 1
  SQLITE_DESERIALIZE_RESIZEABLE* = 2
  SQLITE_DESERIALIZE_READONLY* = 4
  NOT_WITHIN* = 0
  PARTLY_WITHIN* = 1
  FULLY_WITHIN* = 2
  FTS5_TOKENIZE_QUERY* = 0x00000001
  FTS5_TOKENIZE_PREFIX* = 0x00000002
  FTS5_TOKENIZE_DOCUMENT* = 0x00000004
  FTS5_TOKENIZE_AUX* = 0x00000008
  FTS5_TOKEN_COLOCATED* = 0x00000001
type
  Sqlite3* = object
  sqlite_int64* = clonglong
  sqlite_uint64* = culonglong
  sqlite3_int64* = sqlite_int64
  sqlite3_uint64* = sqlite_uint64
  sqlite3_callback* = proc (a1: pointer; a2: cint; a3: ptr cstring; a4: ptr cstring): cint {.
      nimcall.}
  sqlite3_file* = object
  sqlite3_io_methods* = object
  sqlite3_mutex* = object
  sqlite3_api_routines* = object
  sqlite3_vfs* = object
  sqlite3_syscall_ptr* = proc () {.nimcall.}
  sqlite3_mem_methods* = object
  sqlite3_stmt* = object
  sqlite3_value* = object
  sqlite3_context* = object
  sqlite3_destructor_type* = proc (a1: pointer) {.nimcall.}
  sqlite3_vtab* = object
  sqlite3_index_info* = object
  sqlite3_vtab_cursor* = object
  sqlite3_module* = object
  sqlite3_blob* = object
  sqlite3_mutex_methods* = object
  sqlite3_str* = object
  sqlite3_pcache* = object
  sqlite3_pcache_page* = object
  sqlite3_pcache_methods2* = object
  sqlite3_pcache_methods* = object
  sqlite3_backup* = object
  sqlite3_snapshot* {.importc: "struct sqlite3_snapshot", header: headersqlite3,
                     bycopy.} = object
    hidden*: array[48, cuchar]

  sqlite3_rtree_geometry* = object
  sqlite3_rtree_query_info* = object
  sqlite3_rtree_dbl* = cdouble
  Fts5ExtensionApi* = object
  Fts5Context* = object
  Fts5PhraseIter* = object
  fts5_extension_function* = proc (pApi: ptr Fts5ExtensionApi; pFts: ptr Fts5Context;
                                pCtx: ptr sqlite3_context; nVal: cint;
                                apVal: ptr ptr sqlite3_value) {.nimcall.}
  Fts5Tokenizer* = object
  fts5_tokenizer* = object
  fts5_api* = object
proc sqlite3_libversion*(): cstring {.importc, header: headersqlite3.}
proc sqlite3_sourceid*(): cstring {.importc, header: headersqlite3.}
proc sqlite3_libversion_number*(): cint {.importc, header: headersqlite3.}
proc sqlite3_compileoption_used*(zOptName: cstring): cint {.importc,
    header: headersqlite3.}
proc sqlite3_compileoption_get*(N: cint): cstring {.importc, header: headersqlite3.}
proc sqlite3_threadsafe*(): cint {.importc, header: headersqlite3.}
proc sqlite3_close*(a1: ptr Sqlite3): cint {.importc, header: headersqlite3.}
proc sqlite3_close_v2*(a1: ptr Sqlite3): cint {.importc, header: headersqlite3.}
proc sqlite3_initialize*(): cint {.importc, header: headersqlite3.}
proc sqlite3_shutdown*(): cint {.importc, header: headersqlite3.}
proc sqlite3_os_init*(): cint {.importc, header: headersqlite3.}
proc sqlite3_os_end*(): cint {.importc, header: headersqlite3.}
proc sqlite3_config*(a1: cint): cint {.importc, header: headersqlite3.}
proc sqlite3_db_config*(a1: ptr Sqlite3; op: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_extended_result_codes*(a1: ptr Sqlite3; onoff: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_last_insert_rowid*(a1: ptr Sqlite3): sqlite3_int64 {.importc,
    header: headersqlite3.}
proc sqlite3_set_last_insert_rowid*(a1: ptr Sqlite3; a2: sqlite3_int64) {.importc,
    header: headersqlite3.}
proc sqlite3_changes*(a1: ptr Sqlite3): cint {.importc, header: headersqlite3.}
proc sqlite3_total_changes*(a1: ptr Sqlite3): cint {.importc, header: headersqlite3.}
proc sqlite3_interrupt*(a1: ptr Sqlite3) {.importc, header: headersqlite3.}
proc sqlite3_complete*(sql: cstring): cint {.importc, header: headersqlite3.}
proc sqlite3_complete16*(sql: pointer): cint {.importc, header: headersqlite3.}
proc sqlite3_busy_timeout*(a1: ptr Sqlite3; ms: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_free_table*(result: ptr cstring) {.importc, header: headersqlite3.}
proc sqlite3_mprintf*(a1: cstring): cstring {.importc, header: headersqlite3.}
proc sqlite3_vmprintf*(a1: cstring; a2: va_list): cstring {.importc,
    header: headersqlite3.}
proc sqlite3_snprintf*(a1: cint; a2: cstring; a3: cstring): cstring {.importc,
    header: headersqlite3.}
proc sqlite3_vsnprintf*(a1: cint; a2: cstring; a3: cstring; a4: va_list): cstring {.
    importc, header: headersqlite3.}
proc sqlite3_malloc*(a1: cint): pointer {.importc, header: headersqlite3.}
proc sqlite3_malloc64*(a1: sqlite3_uint64): pointer {.importc, header: headersqlite3.}
proc sqlite3_realloc*(a1: pointer; a2: cint): pointer {.importc, header: headersqlite3.}
proc sqlite3_realloc64*(a1: pointer; a2: sqlite3_uint64): pointer {.importc,
    header: headersqlite3.}
proc sqlite3_free*(a1: pointer) {.importc, header: headersqlite3.}
proc sqlite3_msize*(a1: pointer): sqlite3_uint64 {.importc, header: headersqlite3.}
proc sqlite3_memory_used*(): sqlite3_int64 {.importc, header: headersqlite3.}
proc sqlite3_memory_highwater*(resetFlag: cint): sqlite3_int64 {.importc,
    header: headersqlite3.}
proc sqlite3_randomness*(N: cint; P: pointer) {.importc, header: headersqlite3.}
proc sqlite3_open*(filename: cstring; ppDb: ptr ptr Sqlite3): cint {.importc,
    header: headersqlite3.}
proc sqlite3_open16*(filename: pointer; ppDb: ptr ptr Sqlite3): cint {.importc,
    header: headersqlite3.}
proc sqlite3_open_v2*(filename: cstring; ppDb: ptr ptr Sqlite3; flags: cint;
                     zVfs: cstring): cint {.importc, header: headersqlite3.}
proc sqlite3_uri_parameter*(zFilename: cstring; zParam: cstring): cstring {.importc,
    header: headersqlite3.}
proc sqlite3_uri_boolean*(zFile: cstring; zParam: cstring; bDefault: cint): cint {.
    importc, header: headersqlite3.}
proc sqlite3_uri_int64*(a1: cstring; a2: cstring; a3: sqlite3_int64): sqlite3_int64 {.
    importc, header: headersqlite3.}
proc sqlite3_errcode*(db: ptr Sqlite3): cint {.importc, header: headersqlite3.}
proc sqlite3_extended_errcode*(db: ptr Sqlite3): cint {.importc, header: headersqlite3.}
proc sqlite3_errmsg*(a1: ptr Sqlite3): cstring {.importc, header: headersqlite3.}
proc sqlite3_errmsg16*(a1: ptr Sqlite3): pointer {.importc, header: headersqlite3.}
proc sqlite3_errstr*(a1: cint): cstring {.importc, header: headersqlite3.}
proc sqlite3_limit*(a1: ptr Sqlite3; id: cint; newVal: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_prepare*(db: ptr Sqlite3; zSql: cstring; nByte: cint;
                     ppStmt: ptr ptr sqlite3_stmt; pzTail: ptr cstring): cint {.importc,
    header: headersqlite3.}
proc sqlite3_prepare_v2*(db: ptr Sqlite3; zSql: cstring; nByte: cint;
                        ppStmt: ptr ptr sqlite3_stmt; pzTail: ptr cstring): cint {.
    importc, header: headersqlite3.}
proc sqlite3_prepare_v3*(db: ptr Sqlite3; zSql: cstring; nByte: cint; prepFlags: cuint;
                        ppStmt: ptr ptr sqlite3_stmt; pzTail: ptr cstring): cint {.
    importc, header: headersqlite3.}
proc sqlite3_prepare16*(db: ptr Sqlite3; zSql: pointer; nByte: cint;
                       ppStmt: ptr ptr sqlite3_stmt; pzTail: ptr pointer): cint {.
    importc, header: headersqlite3.}
proc sqlite3_prepare16_v2*(db: ptr Sqlite3; zSql: pointer; nByte: cint;
                          ppStmt: ptr ptr sqlite3_stmt; pzTail: ptr pointer): cint {.
    importc, header: headersqlite3.}
proc sqlite3_prepare16_v3*(db: ptr Sqlite3; zSql: pointer; nByte: cint;
                          prepFlags: cuint; ppStmt: ptr ptr sqlite3_stmt;
                          pzTail: ptr pointer): cint {.importc, header: headersqlite3.}
proc sqlite3_sql*(pStmt: ptr sqlite3_stmt): cstring {.importc, header: headersqlite3.}
proc sqlite3_expanded_sql*(pStmt: ptr sqlite3_stmt): cstring {.importc,
    header: headersqlite3.}
proc sqlite3_normalized_sql*(pStmt: ptr sqlite3_stmt): cstring {.importc,
    header: headersqlite3.}
proc sqlite3_stmt_readonly*(pStmt: ptr sqlite3_stmt): cint {.importc,
    header: headersqlite3.}
proc sqlite3_stmt_busy*(a1: ptr sqlite3_stmt): cint {.importc, header: headersqlite3.}
proc sqlite3_bind_double*(a1: ptr sqlite3_stmt; a2: cint; a3: cdouble): cint {.importc,
    header: headersqlite3.}
proc sqlite3_bind_int*(a1: ptr sqlite3_stmt; a2: cint; a3: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_bind_int64*(a1: ptr sqlite3_stmt; a2: cint; a3: sqlite3_int64): cint {.
    importc, header: headersqlite3.}
proc sqlite3_bind_null*(a1: ptr sqlite3_stmt; a2: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_bind_value*(a1: ptr sqlite3_stmt; a2: cint; a3: ptr sqlite3_value): cint {.
    importc, header: headersqlite3.}
proc sqlite3_bind_zeroblob*(a1: ptr sqlite3_stmt; a2: cint; n: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_bind_zeroblob64*(a1: ptr sqlite3_stmt; a2: cint; a3: sqlite3_uint64): cint {.
    importc, header: headersqlite3.}
proc sqlite3_bind_parameter_count*(a1: ptr sqlite3_stmt): cint {.importc,
    header: headersqlite3.}
proc sqlite3_bind_parameter_name*(a1: ptr sqlite3_stmt; a2: cint): cstring {.importc,
    header: headersqlite3.}
proc sqlite3_bind_parameter_index*(a1: ptr sqlite3_stmt; zName: cstring): cint {.
    importc, header: headersqlite3.}
proc sqlite3_clear_bindings*(a1: ptr sqlite3_stmt): cint {.importc,
    header: headersqlite3.}
proc sqlite3_column_count*(pStmt: ptr sqlite3_stmt): cint {.importc,
    header: headersqlite3.}
proc sqlite3_column_name*(a1: ptr sqlite3_stmt; N: cint): cstring {.importc,
    header: headersqlite3.}
proc sqlite3_column_name16*(a1: ptr sqlite3_stmt; N: cint): pointer {.importc,
    header: headersqlite3.}
proc sqlite3_column_database_name*(a1: ptr sqlite3_stmt; a2: cint): cstring {.importc,
    header: headersqlite3.}
proc sqlite3_column_database_name16*(a1: ptr sqlite3_stmt; a2: cint): pointer {.
    importc, header: headersqlite3.}
proc sqlite3_column_table_name*(a1: ptr sqlite3_stmt; a2: cint): cstring {.importc,
    header: headersqlite3.}
proc sqlite3_column_table_name16*(a1: ptr sqlite3_stmt; a2: cint): pointer {.importc,
    header: headersqlite3.}
proc sqlite3_column_origin_name*(a1: ptr sqlite3_stmt; a2: cint): cstring {.importc,
    header: headersqlite3.}
proc sqlite3_column_origin_name16*(a1: ptr sqlite3_stmt; a2: cint): pointer {.importc,
    header: headersqlite3.}
proc sqlite3_column_decltype*(a1: ptr sqlite3_stmt; a2: cint): cstring {.importc,
    header: headersqlite3.}
proc sqlite3_column_decltype16*(a1: ptr sqlite3_stmt; a2: cint): pointer {.importc,
    header: headersqlite3.}
proc sqlite3_step*(a1: ptr sqlite3_stmt): cint {.importc, header: headersqlite3.}
proc sqlite3_data_count*(pStmt: ptr sqlite3_stmt): cint {.importc,
    header: headersqlite3.}
proc sqlite3_column_blob*(a1: ptr sqlite3_stmt; iCol: cint): pointer {.importc,
    header: headersqlite3.}
proc sqlite3_column_double*(a1: ptr sqlite3_stmt; iCol: cint): cdouble {.importc,
    header: headersqlite3.}
proc sqlite3_column_int*(a1: ptr sqlite3_stmt; iCol: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_column_int64*(a1: ptr sqlite3_stmt; iCol: cint): sqlite3_int64 {.importc,
    header: headersqlite3.}
proc sqlite3_column_text*(a1: ptr sqlite3_stmt; iCol: cint): ptr cuchar {.importc,
    header: headersqlite3.}
proc sqlite3_column_text16*(a1: ptr sqlite3_stmt; iCol: cint): pointer {.importc,
    header: headersqlite3.}
proc sqlite3_column_value*(a1: ptr sqlite3_stmt; iCol: cint): ptr sqlite3_value {.
    importc, header: headersqlite3.}
proc sqlite3_column_bytes*(a1: ptr sqlite3_stmt; iCol: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_column_bytes16*(a1: ptr sqlite3_stmt; iCol: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_column_type*(a1: ptr sqlite3_stmt; iCol: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_finalize*(pStmt: ptr sqlite3_stmt): cint {.importc, header: headersqlite3.}
proc sqlite3_reset*(pStmt: ptr sqlite3_stmt): cint {.importc, header: headersqlite3.}
proc sqlite3_aggregate_count*(a1: ptr sqlite3_context): cint {.importc,
    header: headersqlite3.}
proc sqlite3_expired*(a1: ptr sqlite3_stmt): cint {.importc, header: headersqlite3.}
proc sqlite3_transfer_bindings*(a1: ptr sqlite3_stmt; a2: ptr sqlite3_stmt): cint {.
    importc, header: headersqlite3.}
proc sqlite3_global_recover*(): cint {.importc, header: headersqlite3.}
proc sqlite3_thread_cleanup*() {.importc, header: headersqlite3.}
proc sqlite3_value_blob*(a1: ptr sqlite3_value): pointer {.importc,
    header: headersqlite3.}
proc sqlite3_value_double*(a1: ptr sqlite3_value): cdouble {.importc,
    header: headersqlite3.}
proc sqlite3_value_int*(a1: ptr sqlite3_value): cint {.importc, header: headersqlite3.}
proc sqlite3_value_int64*(a1: ptr sqlite3_value): sqlite3_int64 {.importc,
    header: headersqlite3.}
proc sqlite3_value_pointer*(a1: ptr sqlite3_value; a2: cstring): pointer {.importc,
    header: headersqlite3.}
proc sqlite3_value_text*(a1: ptr sqlite3_value): ptr cuchar {.importc,
    header: headersqlite3.}
proc sqlite3_value_text16*(a1: ptr sqlite3_value): pointer {.importc,
    header: headersqlite3.}
proc sqlite3_value_text16le*(a1: ptr sqlite3_value): pointer {.importc,
    header: headersqlite3.}
proc sqlite3_value_text16be*(a1: ptr sqlite3_value): pointer {.importc,
    header: headersqlite3.}
proc sqlite3_value_bytes*(a1: ptr sqlite3_value): cint {.importc,
    header: headersqlite3.}
proc sqlite3_value_bytes16*(a1: ptr sqlite3_value): cint {.importc,
    header: headersqlite3.}
proc sqlite3_value_type*(a1: ptr sqlite3_value): cint {.importc, header: headersqlite3.}
proc sqlite3_value_numeric_type*(a1: ptr sqlite3_value): cint {.importc,
    header: headersqlite3.}
proc sqlite3_value_nochange*(a1: ptr sqlite3_value): cint {.importc,
    header: headersqlite3.}
proc sqlite3_value_subtype*(a1: ptr sqlite3_value): cuint {.importc,
    header: headersqlite3.}
proc sqlite3_value_dup*(a1: ptr sqlite3_value): ptr sqlite3_value {.importc,
    header: headersqlite3.}
proc sqlite3_value_free*(a1: ptr sqlite3_value) {.importc, header: headersqlite3.}
proc sqlite3_aggregate_context*(a1: ptr sqlite3_context; nBytes: cint): pointer {.
    importc, header: headersqlite3.}
proc sqlite3_user_data*(a1: ptr sqlite3_context): pointer {.importc,
    header: headersqlite3.}
proc sqlite3_context_db_handle*(a1: ptr sqlite3_context): ptr Sqlite3 {.importc,
    header: headersqlite3.}
proc sqlite3_get_auxdata*(a1: ptr sqlite3_context; N: cint): pointer {.importc,
    header: headersqlite3.}
proc sqlite3_result_double*(a1: ptr sqlite3_context; a2: cdouble) {.importc,
    header: headersqlite3.}
proc sqlite3_result_error*(a1: ptr sqlite3_context; a2: cstring; a3: cint) {.importc,
    header: headersqlite3.}
proc sqlite3_result_error16*(a1: ptr sqlite3_context; a2: pointer; a3: cint) {.importc,
    header: headersqlite3.}
proc sqlite3_result_error_toobig*(a1: ptr sqlite3_context) {.importc,
    header: headersqlite3.}
proc sqlite3_result_error_nomem*(a1: ptr sqlite3_context) {.importc,
    header: headersqlite3.}
proc sqlite3_result_error_code*(a1: ptr sqlite3_context; a2: cint) {.importc,
    header: headersqlite3.}
proc sqlite3_result_int*(a1: ptr sqlite3_context; a2: cint) {.importc,
    header: headersqlite3.}
proc sqlite3_result_int64*(a1: ptr sqlite3_context; a2: sqlite3_int64) {.importc,
    header: headersqlite3.}
proc sqlite3_result_null*(a1: ptr sqlite3_context) {.importc, header: headersqlite3.}
proc sqlite3_result_value*(a1: ptr sqlite3_context; a2: ptr sqlite3_value) {.importc,
    header: headersqlite3.}
proc sqlite3_result_zeroblob*(a1: ptr sqlite3_context; n: cint) {.importc,
    header: headersqlite3.}
proc sqlite3_result_zeroblob64*(a1: ptr sqlite3_context; n: sqlite3_uint64): cint {.
    importc, header: headersqlite3.}
proc sqlite3_result_subtype*(a1: ptr sqlite3_context; a2: cuint) {.importc,
    header: headersqlite3.}
proc sqlite3_sleep*(a1: cint): cint {.importc, header: headersqlite3.}
proc sqlite3_win32_set_directory*(`type`: culong; zValue: pointer): cint {.importc,
    header: headersqlite3.}
proc sqlite3_win32_set_directory8*(`type`: culong; zValue: cstring): cint {.importc,
    header: headersqlite3.}
proc sqlite3_win32_set_directory16*(`type`: culong; zValue: pointer): cint {.importc,
    header: headersqlite3.}
proc sqlite3_get_autocommit*(a1: ptr Sqlite3): cint {.importc, header: headersqlite3.}
proc sqlite3_db_handle*(a1: ptr sqlite3_stmt): ptr Sqlite3 {.importc,
    header: headersqlite3.}
proc sqlite3_db_filename*(db: ptr Sqlite3; zDbName: cstring): cstring {.importc,
    header: headersqlite3.}
proc sqlite3_db_readonly*(db: ptr Sqlite3; zDbName: cstring): cint {.importc,
    header: headersqlite3.}
proc sqlite3_next_stmt*(pDb: ptr Sqlite3; pStmt: ptr sqlite3_stmt): ptr sqlite3_stmt {.
    importc, header: headersqlite3.}
proc sqlite3_enable_shared_cache*(a1: cint): cint {.importc, header: headersqlite3.}
proc sqlite3_release_memory*(a1: cint): cint {.importc, header: headersqlite3.}
proc sqlite3_db_release_memory*(a1: ptr Sqlite3): cint {.importc,
    header: headersqlite3.}
proc sqlite3_soft_heap_limit64*(N: sqlite3_int64): sqlite3_int64 {.importc,
    header: headersqlite3.}
proc sqlite3_soft_heap_limit*(N: cint) {.importc, header: headersqlite3.}
proc sqlite3_table_column_metadata*(db: ptr Sqlite3; zDbName: cstring;
                                   zTableName: cstring; zColumnName: cstring;
                                   pzDataType: ptr cstring; pzCollSeq: ptr cstring;
                                   pNotNull: ptr cint; pPrimaryKey: ptr cint;
                                   pAutoinc: ptr cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_load_extension*(db: ptr Sqlite3; zFile: cstring; zProc: cstring;
                            pzErrMsg: ptr cstring): cint {.importc,
    header: headersqlite3.}
proc sqlite3_enable_load_extension*(db: ptr Sqlite3; onoff: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_reset_auto_extension*() {.importc, header: headersqlite3.}
proc sqlite3_create_module*(db: ptr Sqlite3; zName: cstring; p: ptr sqlite3_module;
                           pClientData: pointer): cint {.importc,
    header: headersqlite3.}
proc sqlite3_declare_vtab*(a1: ptr Sqlite3; zSQL: cstring): cint {.importc,
    header: headersqlite3.}
proc sqlite3_overload_function*(a1: ptr Sqlite3; zFuncName: cstring; nArg: cint): cint {.
    importc, header: headersqlite3.}
proc sqlite3_blob_open*(a1: ptr Sqlite3; zDb: cstring; zTable: cstring;
                       zColumn: cstring; iRow: sqlite3_int64; flags: cint;
                       ppBlob: ptr ptr sqlite3_blob): cint {.importc,
    header: headersqlite3.}
proc sqlite3_blob_reopen*(a1: ptr sqlite3_blob; a2: sqlite3_int64): cint {.importc,
    header: headersqlite3.}
proc sqlite3_blob_close*(a1: ptr sqlite3_blob): cint {.importc, header: headersqlite3.}
proc sqlite3_blob_bytes*(a1: ptr sqlite3_blob): cint {.importc, header: headersqlite3.}
proc sqlite3_blob_read*(a1: ptr sqlite3_blob; Z: pointer; N: cint; iOffset: cint): cint {.
    importc, header: headersqlite3.}
proc sqlite3_blob_write*(a1: ptr sqlite3_blob; z: pointer; n: cint; iOffset: cint): cint {.
    importc, header: headersqlite3.}
proc sqlite3_vfs_find*(zVfsName: cstring): ptr sqlite3_vfs {.importc,
    header: headersqlite3.}
proc sqlite3_vfs_register*(a1: ptr sqlite3_vfs; makeDflt: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_vfs_unregister*(a1: ptr sqlite3_vfs): cint {.importc,
    header: headersqlite3.}
proc sqlite3_mutex_alloc*(a1: cint): ptr sqlite3_mutex {.importc,
    header: headersqlite3.}
proc sqlite3_mutex_free*(a1: ptr sqlite3_mutex) {.importc, header: headersqlite3.}
proc sqlite3_mutex_enter*(a1: ptr sqlite3_mutex) {.importc, header: headersqlite3.}
proc sqlite3_mutex_try*(a1: ptr sqlite3_mutex): cint {.importc, header: headersqlite3.}
proc sqlite3_mutex_leave*(a1: ptr sqlite3_mutex) {.importc, header: headersqlite3.}
proc sqlite3_mutex_held*(a1: ptr sqlite3_mutex): cint {.importc, header: headersqlite3.}
proc sqlite3_mutex_notheld*(a1: ptr sqlite3_mutex): cint {.importc,
    header: headersqlite3.}
proc sqlite3_db_mutex*(a1: ptr Sqlite3): ptr sqlite3_mutex {.importc,
    header: headersqlite3.}
proc sqlite3_file_control*(a1: ptr Sqlite3; zDbName: cstring; op: cint; a2: pointer): cint {.
    importc, header: headersqlite3.}
proc sqlite3_test_control*(op: cint): cint {.importc, header: headersqlite3.}
proc sqlite3_keyword_count*(): cint {.importc, header: headersqlite3.}
proc sqlite3_keyword_name*(a1: cint; a2: ptr cstring; a3: ptr cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_keyword_check*(a1: cstring; a2: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_str_new*(a1: ptr Sqlite3): ptr sqlite3_str {.importc,
    header: headersqlite3.}
proc sqlite3_str_finish*(a1: ptr sqlite3_str): cstring {.importc,
    header: headersqlite3.}
proc sqlite3_str_appendf*(a1: ptr sqlite3_str; zFormat: cstring) {.importc,
    header: headersqlite3.}
proc sqlite3_str_vappendf*(a1: ptr sqlite3_str; zFormat: cstring; a2: va_list) {.
    importc, header: headersqlite3.}
proc sqlite3_str_append*(a1: ptr sqlite3_str; zIn: cstring; N: cint) {.importc,
    header: headersqlite3.}
proc sqlite3_str_appendall*(a1: ptr sqlite3_str; zIn: cstring) {.importc,
    header: headersqlite3.}
proc sqlite3_str_appendchar*(a1: ptr sqlite3_str; N: cint; C: cchar) {.importc,
    header: headersqlite3.}
proc sqlite3_str_reset*(a1: ptr sqlite3_str) {.importc, header: headersqlite3.}
proc sqlite3_str_errcode*(a1: ptr sqlite3_str): cint {.importc, header: headersqlite3.}
proc sqlite3_str_length*(a1: ptr sqlite3_str): cint {.importc, header: headersqlite3.}
proc sqlite3_str_value*(a1: ptr sqlite3_str): cstring {.importc, header: headersqlite3.}
proc sqlite3_status*(op: cint; pCurrent: ptr cint; pHighwater: ptr cint; resetFlag: cint): cint {.
    importc, header: headersqlite3.}
proc sqlite3_status64*(op: cint; pCurrent: ptr sqlite3_int64;
                      pHighwater: ptr sqlite3_int64; resetFlag: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_db_status*(a1: ptr Sqlite3; op: cint; pCur: ptr cint; pHiwtr: ptr cint;
                       resetFlg: cint): cint {.importc, header: headersqlite3.}
proc sqlite3_stmt_status*(a1: ptr sqlite3_stmt; op: cint; resetFlg: cint): cint {.
    importc, header: headersqlite3.}
proc sqlite3_backup_init*(pDest: ptr Sqlite3; zDestName: cstring;
                         pSource: ptr Sqlite3; zSourceName: cstring): ptr sqlite3_backup {.
    importc, header: headersqlite3.}
proc sqlite3_backup_step*(p: ptr sqlite3_backup; nPage: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_backup_finish*(p: ptr sqlite3_backup): cint {.importc,
    header: headersqlite3.}
proc sqlite3_backup_remaining*(p: ptr sqlite3_backup): cint {.importc,
    header: headersqlite3.}
proc sqlite3_backup_pagecount*(p: ptr sqlite3_backup): cint {.importc,
    header: headersqlite3.}
proc sqlite3_stricmp*(a1: cstring; a2: cstring): cint {.importc, header: headersqlite3.}
proc sqlite3_strnicmp*(a1: cstring; a2: cstring; a3: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_strglob*(zGlob: cstring; zStr: cstring): cint {.importc,
    header: headersqlite3.}
proc sqlite3_strlike*(zGlob: cstring; zStr: cstring; cEsc: cuint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_log*(iErrCode: cint; zFormat: cstring) {.importc, header: headersqlite3.}
proc sqlite3_wal_autocheckpoint*(db: ptr Sqlite3; N: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_wal_checkpoint*(db: ptr Sqlite3; zDb: cstring): cint {.importc,
    header: headersqlite3.}
proc sqlite3_wal_checkpoint_v2*(db: ptr Sqlite3; zDb: cstring; eMode: cint;
                               pnLog: ptr cint; pnCkpt: ptr cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_vtab_config*(a1: ptr Sqlite3; op: cint): cint {.importc,
    header: headersqlite3.}
proc sqlite3_vtab_on_conflict*(a1: ptr Sqlite3): cint {.importc, header: headersqlite3.}
proc sqlite3_vtab_nochange*(a1: ptr sqlite3_context): cint {.importc,
    header: headersqlite3.}
proc sqlite3_vtab_collation*(a1: ptr sqlite3_index_info; a2: cint): cstring {.importc,
    header: headersqlite3.}
proc sqlite3_stmt_scanstatus*(pStmt: ptr sqlite3_stmt; idx: cint; iScanStatusOp: cint;
                             pOut: pointer): cint {.importc, header: headersqlite3.}
proc sqlite3_stmt_scanstatus_reset*(a1: ptr sqlite3_stmt) {.importc,
    header: headersqlite3.}
proc sqlite3_db_cacheflush*(a1: ptr Sqlite3): cint {.importc, header: headersqlite3.}
proc sqlite3_system_errno*(a1: ptr Sqlite3): cint {.importc, header: headersqlite3.}
proc sqlite3_snapshot_get*(db: ptr Sqlite3; zSchema: cstring;
                          ppSnapshot: ptr ptr sqlite3_snapshot): cint {.importc,
    header: headersqlite3.}
proc sqlite3_snapshot_open*(db: ptr Sqlite3; zSchema: cstring;
                           pSnapshot: ptr sqlite3_snapshot): cint {.importc,
    header: headersqlite3.}
proc sqlite3_snapshot_free*(a1: ptr sqlite3_snapshot) {.importc,
    header: headersqlite3.}
proc sqlite3_snapshot_cmp*(p1: ptr sqlite3_snapshot; p2: ptr sqlite3_snapshot): cint {.
    importc, header: headersqlite3.}
proc sqlite3_snapshot_recover*(db: ptr Sqlite3; zDb: cstring): cint {.importc,
    header: headersqlite3.}
proc sqlite3_serialize*(db: ptr Sqlite3; zSchema: cstring; piSize: ptr sqlite3_int64;
                       mFlags: cuint): ptr cuchar {.importc, header: headersqlite3.}
proc sqlite3_deserialize*(db: ptr Sqlite3; zSchema: cstring; pData: ptr cuchar;
                         szDb: sqlite3_int64; szBuf: sqlite3_int64; mFlags: cuint): cint {.
    importc, header: headersqlite3.}

{.compile: "sqlite3.c".}
CC: sqlite3_abi_wrap
