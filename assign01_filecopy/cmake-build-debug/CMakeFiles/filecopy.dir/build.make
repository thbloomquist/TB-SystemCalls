# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/theob/Downloads/assign01_filecopy

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/theob/Downloads/assign01_filecopy/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/filecopy.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/filecopy.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/filecopy.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/filecopy.dir/flags.make

CMakeFiles/filecopy.dir/filecopy.c.o: CMakeFiles/filecopy.dir/flags.make
CMakeFiles/filecopy.dir/filecopy.c.o: ../filecopy.c
CMakeFiles/filecopy.dir/filecopy.c.o: CMakeFiles/filecopy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/theob/Downloads/assign01_filecopy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/filecopy.dir/filecopy.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/filecopy.dir/filecopy.c.o -MF CMakeFiles/filecopy.dir/filecopy.c.o.d -o CMakeFiles/filecopy.dir/filecopy.c.o -c /Users/theob/Downloads/assign01_filecopy/filecopy.c

CMakeFiles/filecopy.dir/filecopy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/filecopy.dir/filecopy.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/theob/Downloads/assign01_filecopy/filecopy.c > CMakeFiles/filecopy.dir/filecopy.c.i

CMakeFiles/filecopy.dir/filecopy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/filecopy.dir/filecopy.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/theob/Downloads/assign01_filecopy/filecopy.c -o CMakeFiles/filecopy.dir/filecopy.c.s

# Object files for target filecopy
filecopy_OBJECTS = \
"CMakeFiles/filecopy.dir/filecopy.c.o"

# External object files for target filecopy
filecopy_EXTERNAL_OBJECTS =

../filecopy: CMakeFiles/filecopy.dir/filecopy.c.o
../filecopy: CMakeFiles/filecopy.dir/build.make
../filecopy: CMakeFiles/filecopy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/theob/Downloads/assign01_filecopy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../filecopy"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/filecopy.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/theob/Downloads/assign01_filecopy && /Users/theob/Downloads/assign01_filecopy/diffFiles.sh

# Rule to build all files generated by this target.
CMakeFiles/filecopy.dir/build: ../filecopy
.PHONY : CMakeFiles/filecopy.dir/build

CMakeFiles/filecopy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/filecopy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/filecopy.dir/clean

CMakeFiles/filecopy.dir/depend:
	cd /Users/theob/Downloads/assign01_filecopy/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/theob/Downloads/assign01_filecopy /Users/theob/Downloads/assign01_filecopy /Users/theob/Downloads/assign01_filecopy/cmake-build-debug /Users/theob/Downloads/assign01_filecopy/cmake-build-debug /Users/theob/Downloads/assign01_filecopy/cmake-build-debug/CMakeFiles/filecopy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/filecopy.dir/depend

