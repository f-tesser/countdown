if (NOT REGALE_INCLUDE_DIR)
    find_path(
        REGALE_INCLUDE_DIR
        NAMES "regale.h"
        HINTS ${REGALE_ROOT}
        PATH_SUFFIXES "include")
endif()

if (NOT REGALE_LIBRARY)
    find_library(
        REGALE_LIBRARY
        NAMES "regale"
        HINTS ${REGALE_ROOT}
        PATH_SUFFIXES "lib" "lib64")
endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(REGALE
                                  REQUIRED_VARS REGALE_LIBRARY REGALE_INCLUDE_DIR
                                  REASON_FAILURE_MESSAGE "Cannot find REGALE, maybe try defining the variable -DREGALE_ROOT as the path to its installation.")

message(STATUS "regale include dir: ${REGALE_INCLUDE_DIR}")
message(STATUS "libregale: ${REGALE_LIBRARY}")
