# External libraries
add_subdirectory(${CMAKE_SOURCE_DIR}/deps)

# Recurse to find all library files
file(GLOB_RECURSE SOURCE_FILES
	${CMAKE_SOURCE_DIR}/src/dev/*.c* # library
)
file(GLOB_RECURSE HEADER_FILES
	${CMAKE_SOURCE_DIR}/${CMAKE_PROJECT_NAME}/*.h*
)
# Find app files
file(GLOB_RECURSE APP_FILES
	${CMAKE_SOURCE_DIR}/app/*.c*
	${CMAKE_SOURCE_DIR}/app/*.h*
)

# Create library
add_library(${CMAKE_PROJECT_NAME} ${SOURCE_FILES} ${HEADER_FILES})
target_include_directories(${CMAKE_PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR})

# Create app
add_executable(${CMAKE_PROJECT_NAME}_app ${APP_FILES})
target_link_libraries(${CMAKE_PROJECT_NAME}_app ${CMAKE_PROJECT_NAME})

# Tests
set(TEST_DIRECTORY "test")
if (ENABLE_TEST)
	add_subdirectory(${CMAKE_SOURCE_DIR}/test)
endif(ENABLE_TEST)

# Benchmarks
set(BENCH_DIRECTORY "bench")
if (ENABLE_BENCH)
	add_subdirectory(${CMAKE_SOURCE_DIR}/bench)
endif(ENABLE_BENCH)
