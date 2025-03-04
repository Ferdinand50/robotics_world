cmake_minimum_required(VERSION 3.16)
project(robotics_world CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(${CMAKE_SOURCE_DIR}/include)

find_package(SDL2 REQUIRED CONFIG)
find_package(SDL2_image REQUIRED CONFIG)
find_package(SDL2_ttf REQUIRED CONFIG)

add_library(screen STATIC src/screen.cpp)

# Link SDL2 libraries to the screen library
target_link_libraries(screen PRIVATE SDL2::SDL2main SDL2::SDL2-static SDL2_image::SDL2_image-static SDL2_ttf::SDL2_ttf)

add_executable(main src/main.cpp src/screen.cpp)

# TODO: is this correct?
target_link_libraries(main PRIVATE screen SDL2::SDL2main)
