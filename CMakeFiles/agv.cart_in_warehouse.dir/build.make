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
CMAKE_SOURCE_DIR = /Users/kristinapultsina/Documents/GitHub/lang/cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kristinapultsina/Documents/GitHub/lang/cmake

# Utility rule file for agv.cart_in_warehouse.

# Include the progress variables for this target.
include CMakeFiles/agv.cart_in_warehouse.dir/progress.make

agv.cart_in_warehouse: CMakeFiles/agv.cart_in_warehouse.dir/build.make
	echo [AGV.MOVE]\ CART,WAREHOUSE >>plan
.PHONY : agv.cart_in_warehouse

# Rule to build all files generated by this target.
CMakeFiles/agv.cart_in_warehouse.dir/build: agv.cart_in_warehouse

.PHONY : CMakeFiles/agv.cart_in_warehouse.dir/build

CMakeFiles/agv.cart_in_warehouse.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/agv.cart_in_warehouse.dir/cmake_clean.cmake
.PHONY : CMakeFiles/agv.cart_in_warehouse.dir/clean

CMakeFiles/agv.cart_in_warehouse.dir/depend:
	cd /Users/kristinapultsina/Documents/GitHub/lang/cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kristinapultsina/Documents/GitHub/lang/cmake /Users/kristinapultsina/Documents/GitHub/lang/cmake /Users/kristinapultsina/Documents/GitHub/lang/cmake /Users/kristinapultsina/Documents/GitHub/lang/cmake /Users/kristinapultsina/Documents/GitHub/lang/cmake/CMakeFiles/agv.cart_in_warehouse.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/agv.cart_in_warehouse.dir/depend

