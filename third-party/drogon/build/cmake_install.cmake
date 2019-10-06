# Install script for directory: /Users/mmaenz/Projects/OcctRestService/third-party/drogon

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libdrogon.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib" TYPE STATIC_LIBRARY FILES "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/libdrogon.a")
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libdrogon.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libdrogon.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}/usr/local/lib/libdrogon.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/drogon/Attribute.h;/usr/local/include/drogon/CacheMap.h;/usr/local/include/drogon/Cookie.h;/usr/local/include/drogon/DrClassMap.h;/usr/local/include/drogon/DrObject.h;/usr/local/include/drogon/DrTemplate.h;/usr/local/include/drogon/DrTemplateBase.h;/usr/local/include/drogon/HttpAppFramework.h;/usr/local/include/drogon/HttpBinder.h;/usr/local/include/drogon/HttpClient.h;/usr/local/include/drogon/HttpController.h;/usr/local/include/drogon/HttpFilter.h;/usr/local/include/drogon/HttpRequest.h;/usr/local/include/drogon/HttpResponse.h;/usr/local/include/drogon/HttpSimpleController.h;/usr/local/include/drogon/HttpTypes.h;/usr/local/include/drogon/HttpViewData.h;/usr/local/include/drogon/IntranetIpFilter.h;/usr/local/include/drogon/IOThreadStorage.h;/usr/local/include/drogon/LocalHostFilter.h;/usr/local/include/drogon/MultiPart.h;/usr/local/include/drogon/NotFound.h;/usr/local/include/drogon/Session.h;/usr/local/include/drogon/UploadFile.h;/usr/local/include/drogon/WebSocketClient.h;/usr/local/include/drogon/WebSocketConnection.h;/usr/local/include/drogon/WebSocketController.h;/usr/local/include/drogon/drogon.h;/usr/local/include/drogon/version.h;/usr/local/include/drogon/drogon_callbacks.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/drogon" TYPE FILE FILES
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/Attribute.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/CacheMap.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/Cookie.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/DrClassMap.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/DrObject.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/DrTemplate.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/DrTemplateBase.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/HttpAppFramework.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/HttpBinder.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/HttpClient.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/HttpController.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/HttpFilter.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/HttpRequest.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/HttpResponse.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/HttpSimpleController.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/HttpTypes.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/HttpViewData.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/IntranetIpFilter.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/IOThreadStorage.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/LocalHostFilter.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/MultiPart.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/NotFound.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/Session.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/UploadFile.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/WebSocketClient.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/WebSocketConnection.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/WebSocketController.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/drogon.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/version.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/drogon_callbacks.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/drogon/orm/ArrayParser.h;/usr/local/include/drogon/orm/Criteria.h;/usr/local/include/drogon/orm/DbClient.h;/usr/local/include/drogon/orm/Exception.h;/usr/local/include/drogon/orm/Field.h;/usr/local/include/drogon/orm/FunctionTraits.h;/usr/local/include/drogon/orm/Mapper.h;/usr/local/include/drogon/orm/Result.h;/usr/local/include/drogon/orm/ResultIterator.h;/usr/local/include/drogon/orm/Row.h;/usr/local/include/drogon/orm/RowIterator.h;/usr/local/include/drogon/orm/SqlBinder.h;/usr/local/include/drogon/orm/RestfulController.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/drogon/orm" TYPE FILE FILES
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/orm_lib/inc/drogon/orm/ArrayParser.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/orm_lib/inc/drogon/orm/Criteria.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/orm_lib/inc/drogon/orm/DbClient.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/orm_lib/inc/drogon/orm/Exception.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/orm_lib/inc/drogon/orm/Field.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/orm_lib/inc/drogon/orm/FunctionTraits.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/orm_lib/inc/drogon/orm/Mapper.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/orm_lib/inc/drogon/orm/Result.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/orm_lib/inc/drogon/orm/ResultIterator.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/orm_lib/inc/drogon/orm/Row.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/orm_lib/inc/drogon/orm/RowIterator.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/orm_lib/inc/drogon/orm/SqlBinder.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/orm_lib/inc/drogon/orm/RestfulController.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/drogon/utils/FunctionTraits.h;/usr/local/include/drogon/utils/Utilities.h;/usr/local/include/drogon/utils/any.h;/usr/local/include/drogon/utils/string_view.h;/usr/local/include/drogon/utils/HttpConstraint.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/drogon/utils" TYPE FILE FILES
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/utils/FunctionTraits.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/utils/Utilities.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/utils/any.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/utils/string_view.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/utils/HttpConstraint.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/drogon/plugins/Plugin.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/drogon/plugins" TYPE FILE FILES "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/lib/inc/drogon/plugins/Plugin.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/cmake/Drogon/DrogonConfig.cmake;/usr/local/lib/cmake/Drogon/DrogonConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib/cmake/Drogon" TYPE FILE FILES
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/CMakeFiles/DrogonConfig.cmake"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/DrogonConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/cmake/Drogon/DrogonTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/usr/local/lib/cmake/Drogon/DrogonTargets.cmake"
         "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/CMakeFiles/Export/_usr/local/lib/cmake/Drogon/DrogonTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/usr/local/lib/cmake/Drogon/DrogonTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/usr/local/lib/cmake/Drogon/DrogonTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/cmake/Drogon/DrogonTargets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib/cmake/Drogon" TYPE FILE FILES "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/CMakeFiles/Export/_usr/local/lib/cmake/Drogon/DrogonTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/usr/local/lib/cmake/Drogon/DrogonTargets-noconfig.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/usr/local/lib/cmake/Drogon" TYPE FILE FILES "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/CMakeFiles/Export/_usr/local/lib/cmake/Drogon/DrogonTargets-noconfig.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/trantor/cmake_install.cmake")
  include("/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/examples/cmake_install.cmake")
  include("/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/drogon_ctl/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
