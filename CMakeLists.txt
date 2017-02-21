cmake_minimum_required(VERSION 3.6)
project(LinuxC)

set(CMAKE_C_STANDARD 99)

set(CHAPTER 5)

include_directories(debug)
aux_source_directory(./chapter${CHAPTER} SRC_LIST)
add_subdirectory(debug)
add_executable(${PROJECT_NAME} ${SRC_LIST})
target_link_libraries(${PROJECT_NAME} DebugFunctions)