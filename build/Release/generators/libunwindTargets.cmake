# Load the debug and release variables
file(GLOB DATA_FILES "${CMAKE_CURRENT_LIST_DIR}/libunwind-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${libunwind_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${libunwind_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET libunwind::libunwind)
    add_library(libunwind::libunwind INTERFACE IMPORTED)
    message(${libunwind_MESSAGE_MODE} "Conan: Target declared 'libunwind::libunwind'")
endif()
# Load the debug and release library finders
file(GLOB CONFIG_FILES "${CMAKE_CURRENT_LIST_DIR}/libunwind-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()