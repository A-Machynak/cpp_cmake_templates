cmake_minimum_required(VERSION 3.20)

# Project name
project(my_project)

# C++ version
set(CMAKE_CXX_STANDARD 20)

# Googletest
option(ENABLE_TEST "Build tests" OFF)

# Google benchmarks
option(ENABLE_BENCH "Build benchmarks" OFF)

# Initialize
include(cmake/init.cmake)
