# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/ubuntu/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/catkin_ws/build

# Utility rule file for clean_test_results_py_trees_ros.

# Include the progress variables for this target.
include py_trees_ros/tests/rostests/CMakeFiles/clean_test_results_py_trees_ros.dir/progress.make

py_trees_ros/tests/rostests/CMakeFiles/clean_test_results_py_trees_ros:
	cd /home/ubuntu/catkin_ws/build/py_trees_ros/tests/rostests && /usr/bin/python3 /opt/ros/noetic/share/catkin/cmake/test/remove_test_results.py /home/ubuntu/catkin_ws/build/test_results/py_trees_ros

clean_test_results_py_trees_ros: py_trees_ros/tests/rostests/CMakeFiles/clean_test_results_py_trees_ros
clean_test_results_py_trees_ros: py_trees_ros/tests/rostests/CMakeFiles/clean_test_results_py_trees_ros.dir/build.make

.PHONY : clean_test_results_py_trees_ros

# Rule to build all files generated by this target.
py_trees_ros/tests/rostests/CMakeFiles/clean_test_results_py_trees_ros.dir/build: clean_test_results_py_trees_ros

.PHONY : py_trees_ros/tests/rostests/CMakeFiles/clean_test_results_py_trees_ros.dir/build

py_trees_ros/tests/rostests/CMakeFiles/clean_test_results_py_trees_ros.dir/clean:
	cd /home/ubuntu/catkin_ws/build/py_trees_ros/tests/rostests && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_py_trees_ros.dir/cmake_clean.cmake
.PHONY : py_trees_ros/tests/rostests/CMakeFiles/clean_test_results_py_trees_ros.dir/clean

py_trees_ros/tests/rostests/CMakeFiles/clean_test_results_py_trees_ros.dir/depend:
	cd /home/ubuntu/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/catkin_ws/src /home/ubuntu/catkin_ws/src/py_trees_ros/tests/rostests /home/ubuntu/catkin_ws/build /home/ubuntu/catkin_ws/build/py_trees_ros/tests/rostests /home/ubuntu/catkin_ws/build/py_trees_ros/tests/rostests/CMakeFiles/clean_test_results_py_trees_ros.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : py_trees_ros/tests/rostests/CMakeFiles/clean_test_results_py_trees_ros.dir/depend

