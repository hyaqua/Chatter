# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/rudni/CLionProjects/socketClient

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/rudni/CLionProjects/socketClient/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/socketClient.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/socketClient.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/socketClient.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/socketClient.dir/flags.make

CMakeFiles/socketClient.dir/main.c.o: CMakeFiles/socketClient.dir/flags.make
CMakeFiles/socketClient.dir/main.c.o: ../main.c
CMakeFiles/socketClient.dir/main.c.o: CMakeFiles/socketClient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/rudni/CLionProjects/socketClient/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/socketClient.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/socketClient.dir/main.c.o -MF CMakeFiles/socketClient.dir/main.c.o.d -o CMakeFiles/socketClient.dir/main.c.o -c /mnt/c/Users/rudni/CLionProjects/socketClient/main.c

CMakeFiles/socketClient.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/socketClient.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/rudni/CLionProjects/socketClient/main.c > CMakeFiles/socketClient.dir/main.c.i

CMakeFiles/socketClient.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/socketClient.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/rudni/CLionProjects/socketClient/main.c -o CMakeFiles/socketClient.dir/main.c.s

# Object files for target socketClient
socketClient_OBJECTS = \
"CMakeFiles/socketClient.dir/main.c.o"

# External object files for target socketClient
socketClient_EXTERNAL_OBJECTS =

socketClient: CMakeFiles/socketClient.dir/main.c.o
socketClient: CMakeFiles/socketClient.dir/build.make
socketClient: /mnt/c/Users/rudni/CLionProjects/SocketUtil/cmake-build-debug/libSocketUtil.so
socketClient: CMakeFiles/socketClient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/rudni/CLionProjects/socketClient/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable socketClient"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/socketClient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/socketClient.dir/build: socketClient
.PHONY : CMakeFiles/socketClient.dir/build

CMakeFiles/socketClient.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/socketClient.dir/cmake_clean.cmake
.PHONY : CMakeFiles/socketClient.dir/clean

CMakeFiles/socketClient.dir/depend:
	cd /mnt/c/Users/rudni/CLionProjects/socketClient/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/rudni/CLionProjects/socketClient /mnt/c/Users/rudni/CLionProjects/socketClient /mnt/c/Users/rudni/CLionProjects/socketClient/cmake-build-debug /mnt/c/Users/rudni/CLionProjects/socketClient/cmake-build-debug /mnt/c/Users/rudni/CLionProjects/socketClient/cmake-build-debug/CMakeFiles/socketClient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/socketClient.dir/depend

