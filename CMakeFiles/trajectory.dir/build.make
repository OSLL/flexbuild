# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/kristinapultsina/flexbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kristinapultsina/flexbuild

# Utility rule file for trajectory.

# Include the progress variables for this target.
include CMakeFiles/trajectory.dir/progress.make

trajectory: CMakeFiles/trajectory.dir/build.make
	echo trajectory >>plan
.PHONY : trajectory

# Rule to build all files generated by this target.
CMakeFiles/trajectory.dir/build: trajectory

.PHONY : CMakeFiles/trajectory.dir/build

CMakeFiles/trajectory.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/trajectory.dir/cmake_clean.cmake
.PHONY : CMakeFiles/trajectory.dir/clean

CMakeFiles/trajectory.dir/depend:
	cd /Users/kristinapultsina/flexbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kristinapultsina/flexbuild /Users/kristinapultsina/flexbuild /Users/kristinapultsina/flexbuild /Users/kristinapultsina/flexbuild /Users/kristinapultsina/flexbuild/CMakeFiles/trajectory.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/trajectory.dir/depend
