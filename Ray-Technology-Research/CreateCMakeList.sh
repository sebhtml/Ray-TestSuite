#!/bin/bash

(
echo "cmake_minimum_required(VERSION 2.6 )"
echo "set( CMAKE_CXX_COMPILER mpicxx )"
echo "set( CMAKE_CXX_FLAGS \"-O3 -Wall -ansi\" )"

echo "include_directories( RayPlatform code )"

echo "add_executable( Ray "

find code/|grep "\.cpp$"
find RayPlatform/|grep "\.cpp$"

echo ")"
)|grep -v CMake \
> CMakeLists.txt


