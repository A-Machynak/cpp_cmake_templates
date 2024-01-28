cmake_minimum_required(VERSION 3.20)

project(external_libs)

# Add this folder as the include directory
target_include_directories(${CMAKE_PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Add all subdirectories of this directory; this might require a bit more fine-tuning depending on which library is being added...
FILE(GLOB CHILD_DIRECTORIES RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/*)
foreach(DIR ${CHILD_DIRECTORIES})
	if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${DIR} AND EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/${DIR}/CMakeLists.txt)
		message(STATUS "Added external library \"" ${DIR} "\"")

		add_subdirectory(${DIR})
		#target_include_directories(${CMAKE_PROJECT_NAME} PUBLIC ${DIR})
	endif()
endforeach()

include(FetchContent)
FetchContent_Declare(
	OpenCL-CLHPP
	GIT_REPOSITORY https://github.com/KhronosGroup/OpenCL-CLHPP
	GIT_TAG origin/main
)
FetchContent_Declare(
	OpenCL-ICD-Loader
	GIT_REPOSITORY https://github.com/KhronosGroup/OpenCL-ICD-Loader
	GIT_TAG origin/main
)
FetchContent_Declare(
	OpenCL-Headers
	GIT_REPOSITORY https://github.com/KhronosGroup/OpenCL-Headers
	GIT_TAG origin/main
)

FetchContent_MakeAvailable(
	OpenCL-Headers
	OpenCL-ICD-Loader
	OpenCL-CLHPP
)
