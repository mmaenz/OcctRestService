cmake_minimum_required (VERSION 3.1)
set (CMAKE_CXX_STANDARD 11)
set(APP_TARGET OcctRestService)

project (OcctRestService)

include_directories("/usr/local/include/opencascade")
add_executable(OcctRestService src/OcctRestService.cpp)
#add_library(librestbed STATIC IMPORTED)
#set_property(TARGET librestbed PROPERTY IMPORTED_LOCATION /usr/local/lib/librestbed.a)
add_library(libmicrohttpd STATIC IMPORTED)
set_property(TARGET libmicrohttpd PROPERTY IMPORTED_LOCATION /usr/local/lib/libmicrohttpd.a)
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
  libmicrohttpd
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