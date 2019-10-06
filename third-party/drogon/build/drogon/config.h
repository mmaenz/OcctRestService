#pragma once

#define USE_POSTGRESQL 0
#define LIBPQ_SUPPORTS_BATCH_MODE 0
#define USE_MYSQL 0
#define USE_SQLITE3 1
/* #undef OpenSSL_FOUND */

#define COMPILATION_FLAGS "-std=c++14"
#define COMPILER_COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++"
#define COMPILER_ID "AppleClang"

#define INCLUDING_DIRS " -I/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc -I/Users/mmaenz/Projects/OcctRestService/third-party/drogon/orm_lib/inc -I/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor -I/usr/local/include"
