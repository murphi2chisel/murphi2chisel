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
include examples/api/c/CMakeFiles/doublereversearray.dir/depend.make

# Include the progress variables for this target.
include examples/api/c/CMakeFiles/doublereversearray.dir/progress.make

# Include the compile flags for this target's objects.
include examples/api/c/CMakeFiles/doublereversearray.dir/flags.make

examples/api/c/CMakeFiles/doublereversearray.dir/doublereversearray/doublereversearray.c.o: examples/api/c/CMakeFiles/doublereversearray.dir/flags.make
examples/api/c/CMakeFiles/doublereversearray.dir/doublereversearray/doublereversearray.c.o: ../examples/api/c/doublereversearray/doublereversearray.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/avr/avr-master/deps/boolector/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/api/c/CMakeFiles/doublereversearray.dir/doublereversearray/doublereversearray.c.o"
	cd /home/ubuntu/avr/avr-master/deps/boolector/build/examples/api/c && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/doublereversearray.dir/doublereversearray/doublereversearray.c.o   -c /home/ubuntu/avr/avr-master/deps/boolector/examples/api/c/doublereversearray/doublereversearray.c

examples/api/c/CMakeFiles/doublereversearray.dir/doublereversearray/doublereversearray.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/doublereversearray.dir/doublereversearray/doublereversearray.c.i"
	cd /home/ubuntu/avr/avr-master/deps/boolector/build/examples/api/c && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/avr/avr-master/deps/boolector/examples/api/c/doublereversearray/doublereversearray.c > CMakeFiles/doublereversearray.dir/doublereversearray/doublereversearray.c.i

examples/api/c/CMakeFiles/doublereversearray.dir/doublereversearray/doublereversearray.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/doublereversearray.dir/doublereversearray/doublereversearray.c.s"
	cd /home/ubuntu/avr/avr-master/deps/boolector/build/examples/api/c && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/avr/avr-master/deps/boolector/examples/api/c/doublereversearray/doublereversearray.c -o CMakeFiles/doublereversearray.dir/doublereversearray/doublereversearray.c.s

# Object files for target doublereversearray
doublereversearray_OBJECTS = \
"CMakeFiles/doublereversearray.dir/doublereversearray/doublereversearray.c.o"

# External object files for target doublereversearray
doublereversearray_EXTERNAL_OBJECTS =

bin/examples/api/c/doublereversearray/doublereversearray: examples/api/c/CMakeFiles/doublereversearray.dir/doublereversearray/doublereversearray.c.o
bin/examples/api/c/doublereversearray/doublereversearray: examples/api/c/CMakeFiles/doublereversearray.dir/build.make
bin/examples/api/c/doublereversearray/doublereversearray: lib/libboolector.a
bin/examples/api/c/doublereversearray/doublereversearray: ../deps/install/lib/libbtor2parser.a
bin/examples/api/c/doublereversearray/doublereversearray: ../deps/install/lib/libcadical.a
bin/examples/api/c/doublereversearray/doublereversearray: examples/api/c/CMakeFiles/doublereversearray.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/avr/avr-master/deps/boolector/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/examples/api/c/doublereversearray/doublereversearray"
	cd /home/ubuntu/avr/avr-master/deps/boolector/build/examples/api/c && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/doublereversearray.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/api/c/CMakeFiles/doublereversearray.dir/build: bin/examples/api/c/doublereversearray/doublereversearray

.PHONY : examples/api/c/CMakeFiles/doublereversearray.dir/build

examples/api/c/CMakeFiles/doublereversearray.dir/clean:
	cd /home/ubuntu/avr/avr-master/deps/boolector/build/examples/api/c && $(CMAKE_COMMAND) -P CMakeFiles/doublereversearray.dir/cmake_clean.cmake
.PHONY : examples/api/c/CMakeFiles/doublereversearray.dir/clean

examples/api/c/CMakeFiles/doublereversearray.dir/depend:
	cd /home/ubuntu/avr/avr-master/deps/boolector/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/avr/avr-master/deps/boolector /home/ubuntu/avr/avr-master/deps/boolector/examples/api/c /home/ubuntu/avr/avr-master/deps/boolector/build /home/ubuntu/avr/avr-master/deps/boolector/build/examples/api/c /home/ubuntu/avr/avr-master/deps/boolector/build/examples/api/c/CMakeFiles/doublereversearray.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/api/c/CMakeFiles/doublereversearray.dir/depend
