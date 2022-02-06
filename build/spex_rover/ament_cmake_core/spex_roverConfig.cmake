# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_spex_rover_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED spex_rover_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(spex_rover_FOUND FALSE)
  elseif(NOT spex_rover_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(spex_rover_FOUND FALSE)
  endif()
  return()
endif()
set(_spex_rover_CONFIG_INCLUDED TRUE)

# output package information
if(NOT spex_rover_FIND_QUIETLY)
  message(STATUS "Found spex_rover: 0.0.0 (${spex_rover_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'spex_rover' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${spex_rover_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(spex_rover_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${spex_rover_DIR}/${_extra}")
endforeach()