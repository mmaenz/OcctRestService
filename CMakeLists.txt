cmake_minimum_required (VERSION 3.1)
set (CMAKE_CXX_STANDARD 11)
set(APP_TARGET OcctRestService)

project (OcctRestService)

include_directories("/usr/local/include/opencascade")
add_executable(OcctRestService src/OcctRestService.cpp)
add_library(librestbed STATIC IMPORTED)
set_property(TARGET librestbed PROPERTY IMPORTED_LOCATION /usr/local/lib/librestbed.a)

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
  librestbed
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