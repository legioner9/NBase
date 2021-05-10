cmake_minimum_required(VERSION 3.16)
project(CLion_lib_1)

set(CMAKE_CXX_STANDARD 20)

find_package(SFML 2.5 COMPONENTS graphics audio REQUIRED)

add_executable(CLion_lib_1 main.cpp)

set(SFML_DIR "C:/Users/StNN/AppData/Local/JetBrains/CLion2020.1/lib/GCC 7.3.0 MinGW (SEH)-64-bit/SFML-2.5.1-windows-gcc-7.3.0-mingw-64-bit/include/SFML")

target_link_libraries(CLion_lib_1 sfml-graphics sfml-audio)