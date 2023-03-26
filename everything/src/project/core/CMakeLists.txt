cmake_minimum_required(VERSION 3.2)

project(core_lib C CXX)

set(CMAKE_CXX_STANDARD 17)

file(GLOB_RECURSE SOURCE_FILES
	*.cpp
	*.c++
)

file(GLOB_RECURSE HEADER_FILES
	*.h
	*.hpp
)

# Directories containing header files
include_directories(inc/)

# Create library
add_library(${PROJECT_NAME} ${SOURCE_FILES} ${HEADER_FILES})

# Include directories for project
target_include_directories(${PROJECT_NAME} PUBLIC inc/)
