# robotics_world

## Installation

``` bash
conan install . --build=missing
```
Build the project

``` bash
cmake --preset conan-release
cmake --build --preset conan-release
./build/Release/main
```