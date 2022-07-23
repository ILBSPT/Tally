cmake_minimum_required(VERSION 3.7)
project(gcc-tally C CXX)

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)

set(PROJECT_BINARY_DIR "${CMAKE_CURRENT_SOURCE_DIR}/bin")

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fms-extensions")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fms-extensions")

set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)
set(CMAKE_DISABLE_SOURCE_CHANGES  ON)

if ("${CMAKE_SOURCE_DIR}" STREQUAL "${CMAKE_BINARY_DIR}")
    message(SEND_ERROR "In-source builds are not allowed.")
endif ()

set(CMAKE_SHARED_LIBRARY_PREFIX "")
set(CMAKE_STATIC_LIBRARY_PREFIX "")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}")

set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_COLOR_MAKEFILE   ON)

# Building the instrumentation tools
execute_process(COMMAND gcc -print-file-name=plugin/include 
                    OUTPUT_VARIABLE GCCPLUGINS_INCLUDE_DIR) # a GCC plugin must know where the includes are

# Building the minithread lib that jumps to / from instrumented code
add_library(minithread STATIC src/minithread.c)
set_target_properties(minithread PROPERTIES COMPILE_FLAGS "-save-temps -fPIC -no-pie -rdynamic -Wl,--export-dynamic")
set_target_properties(minithread PROPERTIES LINK_FLAGS "-Wl,--export-dynamic")

add_library(gcc-tally SHARED src/gcc-tally.cpp)
set_target_properties(gcc-tally PROPERTIES COMPILE_FLAGS "-save-temps -fPIC -no-pie -fno-rtti -I${GCCPLUGINS_INCLUDE_DIR}")
                  
# Defines the appropriate compilation flags for instrummenting code
set(INSTRUMENTATION_COMPILE_FLAGS "-ffixed-r15 -fplugin=${PROJECT_BINARY_DIR}/gcc-tally.so -nostdlib")
set(INSTR_INCLUDE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/src")

file(GLOB_RECURSE module_src_clean "modules/clean/*.c")
file(GLOB_RECURSE module_src_instrumented "modules/instrumented/*.c")
set_source_files_properties(${module_src_instrumented} PROPERTIES COMPILE_FLAGS "${INSTRUMENTATION_COMPILE_FLAGS}")
add_executable(main src/main.c src/cycles_probe.c ${module_src_clean} ${module_src_instrumented})
set_target_properties(main PROPERTIES COMPILE_FLAGS "-I${INSTR_INCLUDE_DIR} -ldl -rdynamic -g -lpthread -no-pie -fno-pie -fPIC -save-temps")
set_target_properties(main PROPERTIES LINK_FLAGS "-Wl,-R -Wl,. -ldl -Wl,--export-dynamic")
target_link_libraries(main minithread dl gcc-tally)
