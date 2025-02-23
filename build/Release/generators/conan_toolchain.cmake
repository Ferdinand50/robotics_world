# Conan automatically generated toolchain file
# DO NOT EDIT MANUALLY, it will be overwritten

# Avoid including toolchain file several times (bad if appending to variables like
#   CMAKE_CXX_FLAGS. See https://github.com/android/ndk/issues/323
include_guard()
message(STATUS "Using Conan toolchain: ${CMAKE_CURRENT_LIST_FILE}")
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeToolchain' generator only works with CMake >= 3.15")
endif()

########## 'user_toolchain' block #############
# Include one or more CMake user toolchain from tools.cmake.cmaketoolchain:user_toolchain



########## 'generic_system' block #############
# Definition of system, platform and toolset





########## 'compilers' block #############



########## 'arch_flags' block #############
# Define C++ flags, C flags and linker flags from 'settings.arch'

message(STATUS "Conan toolchain: Defining architecture flag: -m64")
string(APPEND CONAN_CXX_FLAGS " -m64")
string(APPEND CONAN_C_FLAGS " -m64")
string(APPEND CONAN_SHARED_LINKER_FLAGS " -m64")
string(APPEND CONAN_EXE_LINKER_FLAGS " -m64")


########## 'libcxx' block #############
# Definition of libcxx from 'compiler.libcxx' setting, defining the
# right CXX_FLAGS for that libcxx



########## 'cppstd' block #############
# Define the C++ and C standards from 'compiler.cppstd' and 'compiler.cstd'

function(conan_modify_std_watch variable access value current_list_file stack)
    set(conan_watched_std_variable "17")
    if (${variable} STREQUAL "CMAKE_C_STANDARD")
        set(conan_watched_std_variable "")
    endif()
    if ("${access}" STREQUAL "MODIFIED_ACCESS" AND NOT "${value}" STREQUAL "${conan_watched_std_variable}")
        message(STATUS "Warning: Standard ${variable} value defined in conan_toolchain.cmake to ${conan_watched_std_variable} has been modified to ${value} by ${current_list_file}")
    endif()
    unset(conan_watched_std_variable)
endfunction()

message(STATUS "Conan toolchain: C++ Standard 17 with extensions ON")
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
variable_watch(CMAKE_CXX_STANDARD conan_modify_std_watch)


########## 'extra_flags' block #############
# Include extra C++, C and linker flags from configuration tools.build:<type>flags
# and from CMakeToolchain.extra_<type>_flags

# Conan conf flags start: 
# Conan conf flags end


########## 'cmake_flags_init' block #############
# Define CMAKE_<XXX>_FLAGS from CONAN_<XXX>_FLAGS

foreach(config IN LISTS CMAKE_CONFIGURATION_TYPES)
    string(TOUPPER ${config} config)
    if(DEFINED CONAN_CXX_FLAGS_${config})
      string(APPEND CMAKE_CXX_FLAGS_${config}_INIT " ${CONAN_CXX_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_C_FLAGS_${config})
      string(APPEND CMAKE_C_FLAGS_${config}_INIT " ${CONAN_C_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_SHARED_LINKER_FLAGS_${config})
      string(APPEND CMAKE_SHARED_LINKER_FLAGS_${config}_INIT " ${CONAN_SHARED_LINKER_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_EXE_LINKER_FLAGS_${config})
      string(APPEND CMAKE_EXE_LINKER_FLAGS_${config}_INIT " ${CONAN_EXE_LINKER_FLAGS_${config}}")
    endif()
endforeach()

if(DEFINED CONAN_CXX_FLAGS)
  string(APPEND CMAKE_CXX_FLAGS_INIT " ${CONAN_CXX_FLAGS}")
endif()
if(DEFINED CONAN_C_FLAGS)
  string(APPEND CMAKE_C_FLAGS_INIT " ${CONAN_C_FLAGS}")
endif()
if(DEFINED CONAN_SHARED_LINKER_FLAGS)
  string(APPEND CMAKE_SHARED_LINKER_FLAGS_INIT " ${CONAN_SHARED_LINKER_FLAGS}")
endif()
if(DEFINED CONAN_EXE_LINKER_FLAGS)
  string(APPEND CMAKE_EXE_LINKER_FLAGS_INIT " ${CONAN_EXE_LINKER_FLAGS}")
endif()


########## 'extra_variables' block #############
# Definition of extra CMake variables from tools.cmake.cmaketoolchain:extra_variables



########## 'try_compile' block #############
# Blocks after this one will not be added when running CMake try/checks

get_property( _CMAKE_IN_TRY_COMPILE GLOBAL PROPERTY IN_TRY_COMPILE )
if(_CMAKE_IN_TRY_COMPILE)
    message(STATUS "Running toolchain IN_TRY_COMPILE")
    return()
endif()


########## 'find_paths' block #############
# Define paths to find packages, programs, libraries, etc.
if(EXISTS "${CMAKE_CURRENT_LIST_DIR}/conan_cmakedeps_paths.cmake")
  message(STATUS "Conan toolchain: Including CMakeDeps generated conan_cmakedeps_paths.cmake")
  include("${CMAKE_CURRENT_LIST_DIR}/conan_cmakedeps_paths.cmake")
else()

set(CMAKE_FIND_PACKAGE_PREFER_CONFIG ON)

# Definition of CMAKE_MODULE_PATH
list(PREPEND CMAKE_MODULE_PATH "/home/ferdi/.conan2/p/b/opensb6588c8195670/p/lib/cmake")
# the generators folder (where conan generates files, like this toolchain)
list(PREPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})

# Definition of CMAKE_PREFIX_PATH, CMAKE_XXXXX_PATH
# The explicitly defined "builddirs" of "host" context dependencies must be in PREFIX_PATH
list(PREPEND CMAKE_PREFIX_PATH "/home/ferdi/.conan2/p/b/opensb6588c8195670/p/lib/cmake")
# The Conan local "generators" folder, where this toolchain is saved.
list(PREPEND CMAKE_PREFIX_PATH ${CMAKE_CURRENT_LIST_DIR} )
list(PREPEND CMAKE_LIBRARY_PATH "/home/ferdi/.conan2/p/b/sdl_i1b5ac0d70b8cc/p/lib" "/home/ferdi/.conan2/p/b/libtif5a9a3e1f3bd0/p/lib" "/home/ferdi/.conan2/p/b/libded0f56b48d5c7a/p/lib" "/home/ferdi/.conan2/p/b/jbig5c5380654333b/p/lib" "/home/ferdi/.conan2/p/b/zstd9d4b8da716993/p/lib" "/home/ferdi/.conan2/p/b/libjp7bd03f596c69b/p/lib" "/home/ferdi/.conan2/p/b/libwe5a7ec7a29c5f5/p/lib" "/home/ferdi/.conan2/p/b/sdl_t3dd7c8474e962/p/lib" "/home/ferdi/.conan2/p/b/freet67f9fee0faefa/p/lib" "/home/ferdi/.conan2/p/b/libpn66f4ffc309769/p/lib" "/home/ferdi/.conan2/p/b/bzip2d00c06400d0e6/p/lib" "/home/ferdi/.conan2/p/b/brotl23546948a14c7/p/lib" "/home/ferdi/.conan2/p/b/sdl9248f3e6e743c/p/lib" "/home/ferdi/.conan2/p/b/pulse28090c29df1a7/p/lib" "/home/ferdi/.conan2/p/b/pulse28090c29df1a7/p/lib/pulseaudio" "/home/ferdi/.conan2/p/b/libsn4a9520c567923/p/lib" "/home/ferdi/.conan2/p/b/vorbibc3733cafc957/p/lib" "/home/ferdi/.conan2/p/b/flac4682cd128807a/p/lib" "/home/ferdi/.conan2/p/b/ogg7233b9a0f4578/p/lib" "/home/ferdi/.conan2/p/b/opus5c605ebfd7d4b/p/lib" "/home/ferdi/.conan2/p/b/mpg1261becd9b73f8d/p/lib" "/home/ferdi/.conan2/p/b/libmpdb885477783a9/p/lib" "/home/ferdi/.conan2/p/b/libca8922229bc15a9/p/lib" "/home/ferdi/.conan2/p/b/libto5e40b915cb1ac/p/lib" "/home/ferdi/.conan2/p/b/libal0d77646302f63/p/lib" "/home/ferdi/.conan2/p/b/opensb6588c8195670/p/lib" "/home/ferdi/.conan2/p/b/xkbco292cf1fd0a0f7/p/lib" "/home/ferdi/.conan2/p/b/waylac85e75ae1091a/p/lib" "/home/ferdi/.conan2/p/b/libffbbf41f7954a04/p/lib" "/home/ferdi/.conan2/p/b/libxmb2774f6ed650c/p/lib" "/home/ferdi/.conan2/p/b/libic3e76549c0afda/p/lib" "/home/ferdi/.conan2/p/b/expatb456c3c458bb6/p/lib" "/home/ferdi/.conan2/p/b/libund14f46885d750/p/lib" "/home/ferdi/.conan2/p/b/xz_ut49204bb1e37bf/p/lib" "/home/ferdi/.conan2/p/b/zlib28d772022564a/p/lib")
list(PREPEND CMAKE_INCLUDE_PATH "/home/ferdi/.conan2/p/b/sdl_i1b5ac0d70b8cc/p/include" "/home/ferdi/.conan2/p/b/sdl_i1b5ac0d70b8cc/p/include/SDL2" "/home/ferdi/.conan2/p/b/libtif5a9a3e1f3bd0/p/include" "/home/ferdi/.conan2/p/b/libded0f56b48d5c7a/p/include" "/home/ferdi/.conan2/p/b/jbig5c5380654333b/p/include" "/home/ferdi/.conan2/p/b/zstd9d4b8da716993/p/include" "/home/ferdi/.conan2/p/b/libjp7bd03f596c69b/p/include" "/home/ferdi/.conan2/p/b/libwe5a7ec7a29c5f5/p/include" "/home/ferdi/.conan2/p/b/sdl_t3dd7c8474e962/p/include" "/home/ferdi/.conan2/p/b/sdl_t3dd7c8474e962/p/include/SDL2" "/home/ferdi/.conan2/p/b/freet67f9fee0faefa/p/include" "/home/ferdi/.conan2/p/b/freet67f9fee0faefa/p/include/freetype2" "/home/ferdi/.conan2/p/b/libpn66f4ffc309769/p/include" "/home/ferdi/.conan2/p/b/bzip2d00c06400d0e6/p/include" "/home/ferdi/.conan2/p/b/brotl23546948a14c7/p/include" "/home/ferdi/.conan2/p/b/brotl23546948a14c7/p/include/brotli" "/home/ferdi/.conan2/p/b/sdl9248f3e6e743c/p/include" "/home/ferdi/.conan2/p/b/sdl9248f3e6e743c/p/include/SDL2" "/home/ferdi/.conan2/p/b/pulse28090c29df1a7/p/include" "/home/ferdi/.conan2/p/b/libsn4a9520c567923/p/include" "/home/ferdi/.conan2/p/b/vorbibc3733cafc957/p/include" "/home/ferdi/.conan2/p/b/flac4682cd128807a/p/include" "/home/ferdi/.conan2/p/b/ogg7233b9a0f4578/p/include" "/home/ferdi/.conan2/p/b/opus5c605ebfd7d4b/p/include" "/home/ferdi/.conan2/p/b/opus5c605ebfd7d4b/p/include/opus" "/home/ferdi/.conan2/p/b/mpg1261becd9b73f8d/p/include" "/home/ferdi/.conan2/p/b/libmpdb885477783a9/p/include" "/home/ferdi/.conan2/p/b/libca8922229bc15a9/p/include" "/home/ferdi/.conan2/p/b/libto5e40b915cb1ac/p/include" "/home/ferdi/.conan2/p/b/libal0d77646302f63/p/include" "/home/ferdi/.conan2/p/b/opensb6588c8195670/p/include" "/home/ferdi/.conan2/p/b/xkbco292cf1fd0a0f7/p/include" "/home/ferdi/.conan2/p/b/waylac85e75ae1091a/p/include" "/home/ferdi/.conan2/p/b/libffbbf41f7954a04/p/include" "/home/ferdi/.conan2/p/b/libxmb2774f6ed650c/p/include" "/home/ferdi/.conan2/p/b/libxmb2774f6ed650c/p/include/libxml2" "/home/ferdi/.conan2/p/b/libic3e76549c0afda/p/include" "/home/ferdi/.conan2/p/b/expatb456c3c458bb6/p/include" "/home/ferdi/.conan2/p/b/libund14f46885d750/p/include" "/home/ferdi/.conan2/p/b/xz_ut49204bb1e37bf/p/include" "/home/ferdi/.conan2/p/b/zlib28d772022564a/p/include")
set(CONAN_RUNTIME_LIB_DIRS "/home/ferdi/.conan2/p/b/sdl_i1b5ac0d70b8cc/p/lib" "/home/ferdi/.conan2/p/b/libtif5a9a3e1f3bd0/p/lib" "/home/ferdi/.conan2/p/b/libded0f56b48d5c7a/p/lib" "/home/ferdi/.conan2/p/b/jbig5c5380654333b/p/lib" "/home/ferdi/.conan2/p/b/zstd9d4b8da716993/p/lib" "/home/ferdi/.conan2/p/b/libjp7bd03f596c69b/p/lib" "/home/ferdi/.conan2/p/b/libwe5a7ec7a29c5f5/p/lib" "/home/ferdi/.conan2/p/b/sdl_t3dd7c8474e962/p/lib" "/home/ferdi/.conan2/p/b/freet67f9fee0faefa/p/lib" "/home/ferdi/.conan2/p/b/libpn66f4ffc309769/p/lib" "/home/ferdi/.conan2/p/b/bzip2d00c06400d0e6/p/lib" "/home/ferdi/.conan2/p/b/brotl23546948a14c7/p/lib" "/home/ferdi/.conan2/p/b/sdl9248f3e6e743c/p/lib" "/home/ferdi/.conan2/p/b/pulse28090c29df1a7/p/lib" "/home/ferdi/.conan2/p/b/pulse28090c29df1a7/p/lib/pulseaudio" "/home/ferdi/.conan2/p/b/libsn4a9520c567923/p/lib" "/home/ferdi/.conan2/p/b/vorbibc3733cafc957/p/lib" "/home/ferdi/.conan2/p/b/flac4682cd128807a/p/lib" "/home/ferdi/.conan2/p/b/ogg7233b9a0f4578/p/lib" "/home/ferdi/.conan2/p/b/opus5c605ebfd7d4b/p/lib" "/home/ferdi/.conan2/p/b/mpg1261becd9b73f8d/p/lib" "/home/ferdi/.conan2/p/b/libmpdb885477783a9/p/lib" "/home/ferdi/.conan2/p/b/libca8922229bc15a9/p/lib" "/home/ferdi/.conan2/p/b/libto5e40b915cb1ac/p/lib" "/home/ferdi/.conan2/p/b/libal0d77646302f63/p/lib" "/home/ferdi/.conan2/p/b/opensb6588c8195670/p/lib" "/home/ferdi/.conan2/p/b/xkbco292cf1fd0a0f7/p/lib" "/home/ferdi/.conan2/p/b/waylac85e75ae1091a/p/lib" "/home/ferdi/.conan2/p/b/libffbbf41f7954a04/p/lib" "/home/ferdi/.conan2/p/b/libxmb2774f6ed650c/p/lib" "/home/ferdi/.conan2/p/b/libic3e76549c0afda/p/lib" "/home/ferdi/.conan2/p/b/expatb456c3c458bb6/p/lib" "/home/ferdi/.conan2/p/b/libund14f46885d750/p/lib" "/home/ferdi/.conan2/p/b/xz_ut49204bb1e37bf/p/lib" "/home/ferdi/.conan2/p/b/zlib28d772022564a/p/lib" )

endif()


########## 'pkg_config' block #############
# Define pkg-config from 'tools.gnu:pkg_config' executable and paths

if (DEFINED ENV{PKG_CONFIG_PATH})
set(ENV{PKG_CONFIG_PATH} "${CMAKE_CURRENT_LIST_DIR}:$ENV{PKG_CONFIG_PATH}")
else()
set(ENV{PKG_CONFIG_PATH} "${CMAKE_CURRENT_LIST_DIR}:")
endif()


########## 'rpath' block #############
# Defining CMAKE_SKIP_RPATH



########## 'output_dirs' block #############
# Definition of CMAKE_INSTALL_XXX folders

set(CMAKE_INSTALL_BINDIR "bin")
set(CMAKE_INSTALL_SBINDIR "bin")
set(CMAKE_INSTALL_LIBEXECDIR "bin")
set(CMAKE_INSTALL_LIBDIR "lib")
set(CMAKE_INSTALL_INCLUDEDIR "include")
set(CMAKE_INSTALL_OLDINCLUDEDIR "include")


########## 'variables' block #############
# Definition of CMake variables from CMakeToolchain.variables values

# Variables
# Variables  per configuration



########## 'preprocessor' block #############
# Preprocessor definitions from CMakeToolchain.preprocessor_definitions values

# Preprocessor definitions per configuration



if(CMAKE_POLICY_DEFAULT_CMP0091)  # Avoid unused and not-initialized warnings
endif()
