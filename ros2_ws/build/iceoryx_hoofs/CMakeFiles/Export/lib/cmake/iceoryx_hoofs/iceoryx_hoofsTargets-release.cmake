#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "iceoryx_hoofs::iceoryx_hoofs" for configuration "Release"
set_property(TARGET iceoryx_hoofs::iceoryx_hoofs APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iceoryx_hoofs::iceoryx_hoofs PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libiceoryx_hoofs.so"
  IMPORTED_SONAME_RELEASE "libiceoryx_hoofs.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS iceoryx_hoofs::iceoryx_hoofs )
list(APPEND _IMPORT_CHECK_FILES_FOR_iceoryx_hoofs::iceoryx_hoofs "${_IMPORT_PREFIX}/lib/libiceoryx_hoofs.so" )

# Import target "iceoryx_hoofs::iceoryx_platform" for configuration "Release"
set_property(TARGET iceoryx_hoofs::iceoryx_platform APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iceoryx_hoofs::iceoryx_platform PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libiceoryx_platform.so"
  IMPORTED_SONAME_RELEASE "libiceoryx_platform.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS iceoryx_hoofs::iceoryx_platform )
list(APPEND _IMPORT_CHECK_FILES_FOR_iceoryx_hoofs::iceoryx_platform "${_IMPORT_PREFIX}/lib/libiceoryx_platform.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
