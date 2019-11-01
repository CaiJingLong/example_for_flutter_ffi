cmake_minimum_required (VERSION 2.6)

project(SOME)

set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/../../android/libs/$ENV{ABI})

aux_source_directory(${PROJECT_SOURCE_DIR}/../src SRC_FILES)

add_library(some SHARED ${SRC_FILES})
