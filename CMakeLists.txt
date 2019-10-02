cmake_minimum_required (VERSION 3.1)
set (CMAKE_CXX_STANDARD 11)

project (OcctRestService)

add_executable(OcctRestService src/OcctRestService.cpp)
add_library(librestbed STATIC IMPORTED)
set_property(TARGET librestbed PROPERTY IMPORTED_LOCATION /usr/local/lib/librestbed.a)
target_link_libraries(OcctRestService librestbed)
install(TARGETS OcctRestService
        EXPORT OcctRestService
        LIBRARY DESTINATION lib
        ARCHIVE DESTINATION lib
        RUNTIME DESTINATION bin
        INCLUDES DESTINATION include
        )