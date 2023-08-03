cmake_minimum_required(VERSION 3.2)

project(project_benchmarks)

# Libraries to link
set(LIBRARIES
	core_lib
)

# GoogleBenchmark options
set(BENCHMARK_ENABLE_TESTING NO) # Do not build tests
# More options:
#    BENCHMARK_ENABLE_EXCEPTIONS - "Enable the use of exceptions in the benchmark library."
#    BENCHMARK_ENABLE_LTO - "Enable link time optimisation of the benchmark library."
#    BENCHMARK_USE_LIBCXX - "Build and test using libc++ as the standard library."
#    BENCHMARK_ENABLE_WERROR - "Build Release candidates with -Werror."
#    BENCHMARK_FORCE_WERROR - "Build Release candidates with -Werror regardless of compiler issues."

# Build release
set(CMAKE_BUILD_TYPE Release)

include(FetchContent)
FetchContent_Declare(
	googlebenchmark
	GIT_REPOSITORY https://github.com/google/benchmark.git
	GIT_TAG origin/main
)

FetchContent_MakeAvailable(googlebenchmark)

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
target_link_libraries(${PROJECT_NAME} ${LIBRARIES} benchmark::benchmark_main)
