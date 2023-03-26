cmake_minimum_required(VERSION 3.2)

project(cmake_template_project)

set(CMAKE_CXX_STANDARD 17)

# External libraries (add before project)
add_subdirectory(deps)

# Project and project libraries
add_subdirectory(src)

# Tests
option(ENABLE_TESTS "Build tests" ON)
if (ENABLE_TESTS MATCHES ON)
	add_subdirectory(test)
endif(ENABLE_TESTS MATCHES ON)

# Benchmarks
option(ENABLE_BENCH "Build benchmarks" ON)
if (ENABLE_BENCH MATCHES ON)
	add_subdirectory(bench)
endif(ENABLE_BENCH MATCHES ON)
