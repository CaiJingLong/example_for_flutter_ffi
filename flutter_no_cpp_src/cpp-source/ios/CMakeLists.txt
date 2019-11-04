cmake_minimum_required (VERSION 2.6)

project(some)

set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/build/output/$ENV{ABI})
set(CMAKE_XCODE_ATTRIBUTE_DEVELOPMENT_TEAM "cjl_spy@163.com (A62988QAAA)" CACHE INTERNAL "")

aux_source_directory(${PROJECT_SOURCE_DIR}/../src SRC_FILES)

# add_library(some STATIC ${SRC_FILES})
add_library(some SHARED ${SRC_FILES})

set_target_properties(some PROPERTIES
    FRAMEWORK TRUE
    FRAMEWORK_VERSION A
    MACOSX_FRAMEWORK_IDENTIFIER top.kikt.native_add
# MACOSX_FRAMEWORK_INFO_PLIST Info.plist
# "current version" in semantic format in Mach-O binary file
    VERSION 1.0.0
# "compatibility version" in semantic format in Mach-O binary file
    SOVERSION 1.0.0
    PUBLIC_HEADER some.h
    XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "Apple Development"
    # RESOURCE "${RESOURCE_FILES}"
)