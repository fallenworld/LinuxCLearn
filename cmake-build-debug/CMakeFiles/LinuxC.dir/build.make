# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /home/fallenworld/dev/clion-2016.3.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/fallenworld/dev/clion-2016.3.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fallenworld/dev/LinuxC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fallenworld/dev/LinuxC/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/LinuxC.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LinuxC.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LinuxC.dir/flags.make

CMakeFiles/LinuxC.dir/chapter5/dup.c.o: CMakeFiles/LinuxC.dir/flags.make
CMakeFiles/LinuxC.dir/chapter5/dup.c.o: ../chapter5/dup.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fallenworld/dev/LinuxC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/LinuxC.dir/chapter5/dup.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/LinuxC.dir/chapter5/dup.c.o   -c /home/fallenworld/dev/LinuxC/chapter5/dup.c

CMakeFiles/LinuxC.dir/chapter5/dup.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LinuxC.dir/chapter5/dup.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fallenworld/dev/LinuxC/chapter5/dup.c > CMakeFiles/LinuxC.dir/chapter5/dup.c.i

CMakeFiles/LinuxC.dir/chapter5/dup.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LinuxC.dir/chapter5/dup.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fallenworld/dev/LinuxC/chapter5/dup.c -o CMakeFiles/LinuxC.dir/chapter5/dup.c.s

CMakeFiles/LinuxC.dir/chapter5/dup.c.o.requires:

.PHONY : CMakeFiles/LinuxC.dir/chapter5/dup.c.o.requires

CMakeFiles/LinuxC.dir/chapter5/dup.c.o.provides: CMakeFiles/LinuxC.dir/chapter5/dup.c.o.requires
	$(MAKE) -f CMakeFiles/LinuxC.dir/build.make CMakeFiles/LinuxC.dir/chapter5/dup.c.o.provides.build
.PHONY : CMakeFiles/LinuxC.dir/chapter5/dup.c.o.provides

CMakeFiles/LinuxC.dir/chapter5/dup.c.o.provides.build: CMakeFiles/LinuxC.dir/chapter5/dup.c.o


# Object files for target LinuxC
LinuxC_OBJECTS = \
"CMakeFiles/LinuxC.dir/chapter5/dup.c.o"

# External object files for target LinuxC
LinuxC_EXTERNAL_OBJECTS =

LinuxC: CMakeFiles/LinuxC.dir/chapter5/dup.c.o
LinuxC: CMakeFiles/LinuxC.dir/build.make
LinuxC: debug/libDebugFunctions.a
LinuxC: CMakeFiles/LinuxC.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fallenworld/dev/LinuxC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable LinuxC"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LinuxC.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LinuxC.dir/build: LinuxC

.PHONY : CMakeFiles/LinuxC.dir/build

CMakeFiles/LinuxC.dir/requires: CMakeFiles/LinuxC.dir/chapter5/dup.c.o.requires

.PHONY : CMakeFiles/LinuxC.dir/requires

CMakeFiles/LinuxC.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LinuxC.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LinuxC.dir/clean

CMakeFiles/LinuxC.dir/depend:
	cd /home/fallenworld/dev/LinuxC/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fallenworld/dev/LinuxC /home/fallenworld/dev/LinuxC /home/fallenworld/dev/LinuxC/cmake-build-debug /home/fallenworld/dev/LinuxC/cmake-build-debug /home/fallenworld/dev/LinuxC/cmake-build-debug/CMakeFiles/LinuxC.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LinuxC.dir/depend
