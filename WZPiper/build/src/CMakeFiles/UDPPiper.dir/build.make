# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/luoqingming/coding/WZUtils/WZPiper

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/luoqingming/coding/WZUtils/WZPiper/build

# Include any dependencies generated for this target.
include src/CMakeFiles/UDPPiper.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/UDPPiper.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/UDPPiper.dir/flags.make

src/CMakeFiles/UDPPiper.dir/UDPPiper.cpp.o: src/CMakeFiles/UDPPiper.dir/flags.make
src/CMakeFiles/UDPPiper.dir/UDPPiper.cpp.o: ../src/UDPPiper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/luoqingming/coding/WZUtils/WZPiper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/UDPPiper.dir/UDPPiper.cpp.o"
	cd /home/luoqingming/coding/WZUtils/WZPiper/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/UDPPiper.dir/UDPPiper.cpp.o -c /home/luoqingming/coding/WZUtils/WZPiper/src/UDPPiper.cpp

src/CMakeFiles/UDPPiper.dir/UDPPiper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UDPPiper.dir/UDPPiper.cpp.i"
	cd /home/luoqingming/coding/WZUtils/WZPiper/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/luoqingming/coding/WZUtils/WZPiper/src/UDPPiper.cpp > CMakeFiles/UDPPiper.dir/UDPPiper.cpp.i

src/CMakeFiles/UDPPiper.dir/UDPPiper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UDPPiper.dir/UDPPiper.cpp.s"
	cd /home/luoqingming/coding/WZUtils/WZPiper/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/luoqingming/coding/WZUtils/WZPiper/src/UDPPiper.cpp -o CMakeFiles/UDPPiper.dir/UDPPiper.cpp.s

src/CMakeFiles/UDPPiper.dir/UDPPiper.cpp.o.requires:

.PHONY : src/CMakeFiles/UDPPiper.dir/UDPPiper.cpp.o.requires

src/CMakeFiles/UDPPiper.dir/UDPPiper.cpp.o.provides: src/CMakeFiles/UDPPiper.dir/UDPPiper.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/UDPPiper.dir/build.make src/CMakeFiles/UDPPiper.dir/UDPPiper.cpp.o.provides.build
.PHONY : src/CMakeFiles/UDPPiper.dir/UDPPiper.cpp.o.provides

src/CMakeFiles/UDPPiper.dir/UDPPiper.cpp.o.provides.build: src/CMakeFiles/UDPPiper.dir/UDPPiper.cpp.o


# Object files for target UDPPiper
UDPPiper_OBJECTS = \
"CMakeFiles/UDPPiper.dir/UDPPiper.cpp.o"

# External object files for target UDPPiper
UDPPiper_EXTERNAL_OBJECTS =

../lib/libUDPPiper.so: src/CMakeFiles/UDPPiper.dir/UDPPiper.cpp.o
../lib/libUDPPiper.so: src/CMakeFiles/UDPPiper.dir/build.make
../lib/libUDPPiper.so: src/CMakeFiles/UDPPiper.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/luoqingming/coding/WZUtils/WZPiper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../lib/libUDPPiper.so"
	cd /home/luoqingming/coding/WZUtils/WZPiper/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/UDPPiper.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/UDPPiper.dir/build: ../lib/libUDPPiper.so

.PHONY : src/CMakeFiles/UDPPiper.dir/build

src/CMakeFiles/UDPPiper.dir/requires: src/CMakeFiles/UDPPiper.dir/UDPPiper.cpp.o.requires

.PHONY : src/CMakeFiles/UDPPiper.dir/requires

src/CMakeFiles/UDPPiper.dir/clean:
	cd /home/luoqingming/coding/WZUtils/WZPiper/build/src && $(CMAKE_COMMAND) -P CMakeFiles/UDPPiper.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/UDPPiper.dir/clean

src/CMakeFiles/UDPPiper.dir/depend:
	cd /home/luoqingming/coding/WZUtils/WZPiper/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/luoqingming/coding/WZUtils/WZPiper /home/luoqingming/coding/WZUtils/WZPiper/src /home/luoqingming/coding/WZUtils/WZPiper/build /home/luoqingming/coding/WZUtils/WZPiper/build/src /home/luoqingming/coding/WZUtils/WZPiper/build/src/CMakeFiles/UDPPiper.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/UDPPiper.dir/depend

