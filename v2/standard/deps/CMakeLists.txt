cmake_minimum_required(VERSION 3.20)

project(external_libs)

# Add all subdirectories of this directory
FILE(GLOB CHILD_DIRECTORIES RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/*)
foreach(DIR ${CHILD_DIRECTORIES})
	if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${DIR} AND EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/${DIR}/CMakeLists.txt)
		message(STATUS "Added external library \"" ${DIR} "\"")

		add_subdirectory(${DIR})
		target_include_directories(${CMAKE_PROJECT_NAME} ${DIR})
	endif()
endforeach()
