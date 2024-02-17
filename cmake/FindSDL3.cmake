# [ISB] From the EE Cardboard project, from som and Altazimuth. 
# MaxW: IT'S 2024 AND I'VE COME TO TAKE REVENGE
# Copyright 2018 Benjamin Moir, et al.

# This code is licenced under the MIT License, which can be found at https://opensource.org/licenses/MIT

find_path(SDL3_INCLUDE_DIRS
   NAMES
      SDL.h
   HINTS
      $ENV{SDL3DIR}
   PATH_SUFFIXES
      include
      include/SDL3
      SDL3
)

find_library(SDL3_LIBRARIES
   NAMES
      SDL3
   HINTS
      $ENV{SDL3DIR}
   PATH_SUFFIXES
      lib
      lib64
)

include(FindPackageHandleStandardArgs)

find_package_handle_standard_args(SDL3
   REQUIRED_VARS
      SDL3_LIBRARIES
      SDL3_INCLUDE_DIRS
)

set(SDL2_FOUND NO)

if(SDL3_LIBRARIES)
   set(SDL3_FOUND YES)
endif()