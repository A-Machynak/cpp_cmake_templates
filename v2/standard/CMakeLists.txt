### Directories are ignored if folder doesn't exist.

cmake_minimum_required(VERSION 3.20)

# Project name
project(my_project)

# C++ version
set(CMAKE_CXX_STANDARD 20)

# Googletest
set(TEST_DIRECTORY ${CMAKE_SOURCE_DIR}/test)
option(ENABLE_TEST "Build tests" ON)

# Google benchmarks
set(BENCH_DIRECTORY ${CMAKE_SOURCE_DIR}/bench)
option(ENABLE_BENCH "Build benchmarks" ON)

# App/executable directory
set(APP_DIRECTORY ${CMAKE_SOURCE_DIR}/app)
set(APP_NAME ${CMAKE_PROJECT_NAME}_app)

# Dependencies' directory
set(DEPS_DIRECTORY ${CMAKE_SOURCE_DIR}/deps)

# Initialize
include(cmake/init.cmake)
