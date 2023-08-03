cmake_minimum_required(VERSION 3.2)

project(my_project)

# Project folder name
set(PROJECT_FOLDER project)

# Library name (folder) suffix to link
set(LIBRARY_SUFFIX _lib)

# Project libraries location
set(PROJECT_LIBRARIES_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/${PROJECT_FOLDER})

# Find all project libraries
set(PROJECT_LIBRARIES "")
FILE(GLOB PROJECT_LIBRARIES_FOLDERS RELATIVE ${PROJECT_LIBRARIES_LOCATION} ${PROJECT_FOLDER}/*)
foreach(lib ${PROJECT_LIBRARIES_FOLDERS})
	if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${PROJECT_FOLDER}/${lib})
		list(APPEND PROJECT_LIBRARIES ${lib})
	endif()
endforeach()

# Add project libraries
foreach(LIB IN LISTS PROJECT_LIBRARIES)
	add_subdirectory(${PROJECT_FOLDER}/${LIB})
endforeach()

# Add project files (main)
file(GLOB SOURCE_FILES
	*.cpp
	*.c++
)
file(GLOB HEADER_FILES
	*.h
	*.hpp
)

# "CMake can not determine linker language for target: ..." 
#set_target_properties(some_library PROPERTIES LINKER_LANGUAGE CXX)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})

# Append "_lib" to each library name
list(TRANSFORM PROJECT_LIBRARIES APPEND ${LIBRARY_SUFFIX})

# Link with project libraries
target_link_libraries(${PROJECT_NAME} ${PROJECT_LIBRARIES})
