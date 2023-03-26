cmake_minimum_required(VERSION 3.2)

project(external_libraries)

set(CMAKE_CXX_STANDARD 17)

# External library folders
set(EXTERNAL_LIBRARY_FOLDERS
	lib_1 # extern_lib
)

# Add external libraries
foreach(LIB IN LISTS EXTERNAL_LIBRARY_FOLDERS)
	add_subdirectory(${LIB})
endforeach()
