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
CMAKE_SOURCE_DIR = /home/ubuntu/avr/avr-master/deps/boolector

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/avr/avr-master/deps/boolector/build

# Include any dependencies generated for this target.
include examples/api/c/CMakeFiles/array1.dir/depend.make

# Include the progress variables for this target.
include examples/api/c/CMakeFiles/array1.dir/progress.make

# Include the compile flags for this target's objects.
include examples/api/c/CMakeFiles/array1.dir/flags.make

examples/api/c/CMakeFiles/array1.dir/array/array1.c.o: examples/api/c/CMakeFiles/array1.dir/flags.make
examples/api/c/CMakeFiles/array1.dir/array/array1.c.o: ../examples/api/c/array/array1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/avr/avr-master/deps/boolector/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/api/c/CMakeFiles/array1.dir/array/array1.c.o"
	cd /home/ubuntu/avr/avr-master/deps/boolector/build/examples/api/c && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/array1.dir/array/array1.c.o   -c /home/ubuntu/avr/avr-master/deps/boolector/examples/api/c/array/array1.c

examples/api/c/CMakeFiles/array1.dir/array/array1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/array1.dir/array/array1.c.i"
	cd /home/ubuntu/avr/avr-master/deps/boolector/build/examples/api/c && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/avr/avr-master/deps/boolector/examples/api/c/array/array1.c > CMakeFiles/array1.dir/array/array1.c.i

examples/api/c/CMakeFiles/array1.dir/array/array1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/array1.dir/array/array1.c.s"
	cd /home/ubuntu/avr/avr-master/deps/boolector/build/examples/api/c && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/avr/avr-master/deps/boolector/examples/api/c/array/array1.c -o CMakeFiles/array1.dir/array/array1.c.s

# Object files for target array1
array1_OBJECTS = \
"CMakeFiles/array1.dir/array/array1.c.o"

# External object files for target array1
array1_EXTERNAL_OBJECTS =

bin/examples/api/c/array/array1: examples/api/c/CMakeFiles/array1.dir/array/array1.c.o
bin/examples/api/c/array/array1: examples/api/c/CMakeFiles/array1.dir/build.make
bin/examples/api/c/array/array1: lib/libboolector.a
bin/examples/api/c/array/array1: ../deps/install/lib/libbtor2parser.a
bin/examples/api/c/array/array1: ../deps/install/lib/libcadical.a
bin/examples/api/c/array/array1: examples/api/c/CMakeFiles/array1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/avr/avr-master/deps/boolector/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/examples/api/c/array/array1"
	cd /home/ubuntu/avr/avr-master/deps/boolector/build/examples/api/c && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/array1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/api/c/CMakeFiles/array1.dir/build: bin/examples/api/c/array/array1

.PHONY : examples/api/c/CMakeFiles/array1.dir/build

examples/api/c/CMakeFiles/array1.dir/clean:
	cd /home/ubuntu/avr/avr-master/deps/boolector/build/examples/api/c && $(CMAKE_COMMAND) -P CMakeFiles/array1.dir/cmake_clean.cmake
.PHONY : examples/api/c/CMakeFiles/array1.dir/clean

examples/api/c/CMakeFiles/array1.dir/depend:
	cd /home/ubuntu/avr/avr-master/deps/boolector/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/avr/avr-master/deps/boolector /home/ubuntu/avr/avr-master/deps/boolector/examples/api/c /home/ubuntu/avr/avr-master/deps/boolector/build /home/ubuntu/avr/avr-master/deps/boolector/build/examples/api/c /home/ubuntu/avr/avr-master/deps/boolector/build/examples/api/c/CMakeFiles/array1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/api/c/CMakeFiles/array1.dir/depend

