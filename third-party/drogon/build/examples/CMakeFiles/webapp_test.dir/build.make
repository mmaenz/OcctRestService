# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mmaenz/Projects/OcctRestService/third-party/drogon

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mmaenz/Projects/OcctRestService/third-party/drogon/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/webapp_test.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/webapp_test.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/webapp_test.dir/flags.make

examples/CMakeFiles/webapp_test.dir/simple_example_test/main.cc.o: examples/CMakeFiles/webapp_test.dir/flags.make
examples/CMakeFiles/webapp_test.dir/simple_example_test/main.cc.o: ../examples/simple_example_test/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/webapp_test.dir/simple_example_test/main.cc.o"
	cd /Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webapp_test.dir/simple_example_test/main.cc.o -c /Users/mmaenz/Projects/OcctRestService/third-party/drogon/examples/simple_example_test/main.cc

examples/CMakeFiles/webapp_test.dir/simple_example_test/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webapp_test.dir/simple_example_test/main.cc.i"
	cd /Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mmaenz/Projects/OcctRestService/third-party/drogon/examples/simple_example_test/main.cc > CMakeFiles/webapp_test.dir/simple_example_test/main.cc.i

examples/CMakeFiles/webapp_test.dir/simple_example_test/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webapp_test.dir/simple_example_test/main.cc.s"
	cd /Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mmaenz/Projects/OcctRestService/third-party/drogon/examples/simple_example_test/main.cc -o CMakeFiles/webapp_test.dir/simple_example_test/main.cc.s

# Object files for target webapp_test
webapp_test_OBJECTS = \
"CMakeFiles/webapp_test.dir/simple_example_test/main.cc.o"

# External object files for target webapp_test
webapp_test_EXTERNAL_OBJECTS =

examples/webapp_test: examples/CMakeFiles/webapp_test.dir/simple_example_test/main.cc.o
examples/webapp_test: examples/CMakeFiles/webapp_test.dir/build.make
examples/webapp_test: libdrogon.a
examples/webapp_test: trantor/libtrantor.a
examples/webapp_test: /usr/local/lib/libjsoncpp.a
examples/webapp_test: /opt/local/lib/libuuid.dylib
examples/webapp_test: /opt/local/lib/libz.dylib
examples/webapp_test: /opt/local/lib/libsqlite3.dylib
examples/webapp_test: examples/CMakeFiles/webapp_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable webapp_test"
	cd /Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/webapp_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/webapp_test.dir/build: examples/webapp_test

.PHONY : examples/CMakeFiles/webapp_test.dir/build

examples/CMakeFiles/webapp_test.dir/clean:
	cd /Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/webapp_test.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/webapp_test.dir/clean

examples/CMakeFiles/webapp_test.dir/depend:
	cd /Users/mmaenz/Projects/OcctRestService/third-party/drogon/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mmaenz/Projects/OcctRestService/third-party/drogon /Users/mmaenz/Projects/OcctRestService/third-party/drogon/examples /Users/mmaenz/Projects/OcctRestService/third-party/drogon/build /Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/examples /Users/mmaenz/Projects/OcctRestService/third-party/drogon/build/examples/CMakeFiles/webapp_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/webapp_test.dir/depend

