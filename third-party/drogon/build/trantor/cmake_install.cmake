# Install script for directory: /Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor

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
   "/usr/local/lib/libtrantor.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib" TYPE STATIC_LIBRARY FILES "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/trantor/libtrantor.a")
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libtrantor.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libtrantor.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}/usr/local/lib/libtrantor.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/trantor/net/EventLoop.h;/usr/local/include/trantor/net/EventLoopThread.h;/usr/local/include/trantor/net/EventLoopThreadPool.h;/usr/local/include/trantor/net/InetAddress.h;/usr/local/include/trantor/net/TcpClient.h;/usr/local/include/trantor/net/TcpConnection.h;/usr/local/include/trantor/net/TcpServer.h;/usr/local/include/trantor/net/callbacks.h;/usr/local/include/trantor/net/Resolver.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/trantor/net" TYPE FILE FILES
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/net/EventLoop.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/net/EventLoopThread.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/net/EventLoopThreadPool.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/net/InetAddress.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/net/TcpClient.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/net/TcpConnection.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/net/TcpServer.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/net/callbacks.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/net/Resolver.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/trantor/utils/AsyncFileLogger.h;/usr/local/include/trantor/utils/ConcurrentTaskQueue.h;/usr/local/include/trantor/utils/Date.h;/usr/local/include/trantor/utils/Funcs.h;/usr/local/include/trantor/utils/LockFreeQueue.h;/usr/local/include/trantor/utils/LogStream.h;/usr/local/include/trantor/utils/Logger.h;/usr/local/include/trantor/utils/MsgBuffer.h;/usr/local/include/trantor/utils/NonCopyable.h;/usr/local/include/trantor/utils/ObjectPool.h;/usr/local/include/trantor/utils/SerialTaskQueue.h;/usr/local/include/trantor/utils/TaskQueue.h;/usr/local/include/trantor/utils/TimingWheel.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/trantor/utils" TYPE FILE FILES
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/utils/AsyncFileLogger.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/utils/ConcurrentTaskQueue.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/utils/Date.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/utils/Funcs.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/utils/LockFreeQueue.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/utils/LogStream.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/utils/Logger.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/utils/MsgBuffer.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/utils/NonCopyable.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/utils/ObjectPool.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/utils/SerialTaskQueue.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/utils/TaskQueue.h"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/trantor/trantor/utils/TimingWheel.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/cmake/Trantor/TrantorConfig.cmake;/usr/local/lib/cmake/Trantor/TrantorConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib/cmake/Trantor" TYPE FILE FILES
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/trantor/CMakeFiles/TrantorConfig.cmake"
    "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/trantor/TrantorConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/cmake/Trantor/TrantorTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/usr/local/lib/cmake/Trantor/TrantorTargets.cmake"
         "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/trantor/CMakeFiles/Export/_usr/local/lib/cmake/Trantor/TrantorTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/usr/local/lib/cmake/Trantor/TrantorTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/usr/local/lib/cmake/Trantor/TrantorTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/cmake/Trantor/TrantorTargets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib/cmake/Trantor" TYPE FILE FILES "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/trantor/CMakeFiles/Export/_usr/local/lib/cmake/Trantor/TrantorTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/usr/local/lib/cmake/Trantor/TrantorTargets-noconfig.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/usr/local/lib/cmake/Trantor" TYPE FILE FILES "/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/trantor/CMakeFiles/Export/_usr/local/lib/cmake/Trantor/TrantorTargets-noconfig.cmake")
  endif()
endif()

