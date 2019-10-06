cmake_minimum_required (VERSION 3.10)
set (CMAKE_CXX_STANDARD 17)
set(APP_TARGET OcctRestService)

project (OcctRestService)

include_directories("/usr/local/include/opencascade")
add_executable(OcctRestService src/OcctRestService.cpp)
add_library(libuuid STATIC IMPORTED)
set_property(TARGET libuuid PROPERTY IMPORTED_LOCATION /usr/lib/x86_64-linux-gnu/libuuid.a)
#add_library(libdrogon STATIC IMPORTED)
#set_property(TARGET libdrogon PROPERTY IMPORTED_LOCATION /usr/local/lib/libdrogon.a)
SET(Required_LIBS 
  TKernel
  TKService
  TKXCAF
  TKBRep
  TKGeomBase
  TKGeomAlgo
  TKG3d
  TKG2d
  TKTopAlgo
  TKPrim
  TKXSBase
  TKXMesh
  TKSTEP
  TKXDESTEP
  TKSTEP209
  TKSTEPAttr
  TKSTEPBase
  TKSTL
  TKIGES
  TKXDEIGES
  drogon
  trantor
  sqlite3
  z
  ssl
  jsoncpp
  dl
  uuid
)

find_package(Threads REQUIRED)
target_link_libraries(OcctRestService ${Required_LIBS} Threads::Threads)
install(TARGETS OcctRestService
        EXPORT OcctRestService
        LIBRARY DESTINATION lib
        ARCHIVE DESTINATION lib
        RUNTIME DESTINATION bin
        INCLUDES DESTINATION include
        )