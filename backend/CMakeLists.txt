
cmake_minimum_required(VERSION 3.10)
project(FileCompressionTool)

set(CMAKE_CXX_STANDARD 17)

add_executable(file_tool
    src/main.cpp
    src/compress_file.cpp
    src/decompress_file.cpp
)

target_include_directories(file_tool PRIVATE src)
target_link_libraries(file_tool archive)
