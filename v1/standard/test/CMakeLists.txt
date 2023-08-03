cmake_minimum_required(VERSION 3.2)

project(project_tests)

# Libraries to link
set(LIBRARIES
	core_lib
)

# Google tests - https://google.github.io/googletest/quickstart-cmake.html
include(FetchContent)
FetchContent_Declare(
	googletest
	GIT_REPOSITORY https://github.com/google/googletest.git
	GIT_TAG origin/main
)

# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

# Recurse to find all test files
file(GLOB_RECURSE SOURCE_FILES
	*.cpp
	*.c++
)
file(GLOB_RECURSE HEADER_FILES
	*.h
	*.hpp
)

include_directories(../src/)

add_executable(${PROJECT_NAME} ${SOURCE_FILES} ${HEADER_FILES})
target_link_libraries(${PROJECT_NAME} ${LIBRARIES} gtest gmock gtest_main)

include(GoogleTest)
gtest_discover_tests(${PROJECT_NAME})
