cmake_minimum_required(VERSION 3.16)
project(robotics_world CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(SDL2 REQUIRED CONFIG)
find_package(SDL2_image REQUIRED CONFIG)
find_package(SDL2_ttf REQUIRED CONFIG)

add_executable(main src/main.cpp)


# Main SDL library for init
target_link_libraries(main PRIVATE SDL2::SDL2main SDL2::SDL2-static)

# SDL image to make a surface (aka what we'll render)
target_link_libraries(main PRIVATE SDL2_image::SDL2_image-static)

# SDL ttf so we can display hello world!
target_link_libraries(main PRIVATE SDL2_ttf::SDL2_ttf)