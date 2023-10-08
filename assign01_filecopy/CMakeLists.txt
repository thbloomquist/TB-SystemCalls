cmake_minimum_required(VERSION 3.16)
project(assign01_filecopy)

set(CMAKE_CXX_COMPILER "clang")
set(CMAKE_C_STANDARD 11)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR})

set(SOURCE_FILES
    filecopy.c)

add_executable(filecopy ${SOURCE_FILES})

#############################################################################################################
# specify command to run after executing the filecopy configurations
# this command runs additional tests
#############################################################################################################
add_custom_command(TARGET filecopy
        POST_BUILD
        COMMAND "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/diffFiles.sh"
        WORKING_DIRECTORY ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
