# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_SOURCE_DIR = "/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/build"

# Include any dependencies generated for this target.
include CMakeFiles/file_tool.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/file_tool.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/file_tool.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/file_tool.dir/flags.make

CMakeFiles/file_tool.dir/codegen:
.PHONY : CMakeFiles/file_tool.dir/codegen

CMakeFiles/file_tool.dir/src/main.cpp.o: CMakeFiles/file_tool.dir/flags.make
CMakeFiles/file_tool.dir/src/main.cpp.o: /home/adnan/myPrograms/projects/File\ Compression\ Decompression\ Tool/backend/src/main.cpp
CMakeFiles/file_tool.dir/src/main.cpp.o: CMakeFiles/file_tool.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/file_tool.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/file_tool.dir/src/main.cpp.o -MF CMakeFiles/file_tool.dir/src/main.cpp.o.d -o CMakeFiles/file_tool.dir/src/main.cpp.o -c "/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/src/main.cpp"

CMakeFiles/file_tool.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/file_tool.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/src/main.cpp" > CMakeFiles/file_tool.dir/src/main.cpp.i

CMakeFiles/file_tool.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/file_tool.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/src/main.cpp" -o CMakeFiles/file_tool.dir/src/main.cpp.s

CMakeFiles/file_tool.dir/src/compress_file.cpp.o: CMakeFiles/file_tool.dir/flags.make
CMakeFiles/file_tool.dir/src/compress_file.cpp.o: /home/adnan/myPrograms/projects/File\ Compression\ Decompression\ Tool/backend/src/compress_file.cpp
CMakeFiles/file_tool.dir/src/compress_file.cpp.o: CMakeFiles/file_tool.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/file_tool.dir/src/compress_file.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/file_tool.dir/src/compress_file.cpp.o -MF CMakeFiles/file_tool.dir/src/compress_file.cpp.o.d -o CMakeFiles/file_tool.dir/src/compress_file.cpp.o -c "/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/src/compress_file.cpp"

CMakeFiles/file_tool.dir/src/compress_file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/file_tool.dir/src/compress_file.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/src/compress_file.cpp" > CMakeFiles/file_tool.dir/src/compress_file.cpp.i

CMakeFiles/file_tool.dir/src/compress_file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/file_tool.dir/src/compress_file.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/src/compress_file.cpp" -o CMakeFiles/file_tool.dir/src/compress_file.cpp.s

CMakeFiles/file_tool.dir/src/decompress_file.cpp.o: CMakeFiles/file_tool.dir/flags.make
CMakeFiles/file_tool.dir/src/decompress_file.cpp.o: /home/adnan/myPrograms/projects/File\ Compression\ Decompression\ Tool/backend/src/decompress_file.cpp
CMakeFiles/file_tool.dir/src/decompress_file.cpp.o: CMakeFiles/file_tool.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/file_tool.dir/src/decompress_file.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/file_tool.dir/src/decompress_file.cpp.o -MF CMakeFiles/file_tool.dir/src/decompress_file.cpp.o.d -o CMakeFiles/file_tool.dir/src/decompress_file.cpp.o -c "/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/src/decompress_file.cpp"

CMakeFiles/file_tool.dir/src/decompress_file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/file_tool.dir/src/decompress_file.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/src/decompress_file.cpp" > CMakeFiles/file_tool.dir/src/decompress_file.cpp.i

CMakeFiles/file_tool.dir/src/decompress_file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/file_tool.dir/src/decompress_file.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/src/decompress_file.cpp" -o CMakeFiles/file_tool.dir/src/decompress_file.cpp.s

# Object files for target file_tool
file_tool_OBJECTS = \
"CMakeFiles/file_tool.dir/src/main.cpp.o" \
"CMakeFiles/file_tool.dir/src/compress_file.cpp.o" \
"CMakeFiles/file_tool.dir/src/decompress_file.cpp.o"

# External object files for target file_tool
file_tool_EXTERNAL_OBJECTS =

file_tool: CMakeFiles/file_tool.dir/src/main.cpp.o
file_tool: CMakeFiles/file_tool.dir/src/compress_file.cpp.o
file_tool: CMakeFiles/file_tool.dir/src/decompress_file.cpp.o
file_tool: CMakeFiles/file_tool.dir/build.make
file_tool: CMakeFiles/file_tool.dir/compiler_depend.ts
file_tool: CMakeFiles/file_tool.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable file_tool"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/file_tool.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/file_tool.dir/build: file_tool
.PHONY : CMakeFiles/file_tool.dir/build

CMakeFiles/file_tool.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/file_tool.dir/cmake_clean.cmake
.PHONY : CMakeFiles/file_tool.dir/clean

CMakeFiles/file_tool.dir/depend:
	cd "/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend" "/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend" "/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/build" "/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/build" "/home/adnan/myPrograms/projects/File Compression Decompression Tool/backend/build/CMakeFiles/file_tool.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/file_tool.dir/depend

