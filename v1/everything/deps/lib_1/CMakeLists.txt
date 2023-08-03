cmake_minimum_required(VERSION 3.2)

project(extern_lib C CXX)

set(CMAKE_CXX_STANDARD 17)

file(GLOB_RECURSE SOURCE_FILES 
	*.cpp
	*.c++
)

file(GLOB_RECURSE HEADER_FILES
	*.h
	*.hpp
)

add_library(${PROJECT_NAME} ${SOURCE_FILES} ${HEADER_FILES})
target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
