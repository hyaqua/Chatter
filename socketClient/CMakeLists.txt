cmake_minimum_required(VERSION 3.22)
project(socketClient C)

set(CMAKE_C_STANDARD 11)

find_path(TheHeaderFile library.h
        PATHS /mnt/c/Users/rudni/CLionProjects/SocketUtil)

find_library(TheLibrary
        NAMES SocketUtil
        PATHS /mnt/c/Users/rudni/CLionProjects/SocketUtil/cmake-build-debug)

add_executable(socketClient main.c)

include_directories(${TheHeaderFile})
target_link_libraries(${PROJECT_NAME} ${TheLibrary})