include_guard()

if (NOT DEFINED cpm_SOURCE_DIR)
  include(FetchContent)

  set(CPM_VERSION "v0.38.7")
  FetchContent_Declare(
    cpm
    GIT_REPOSITORY https://github.com/cpm-cmake/CPM.cmake.git
    GIT_TAG ${CPM_VERSION})
  FetchContent_Populate(cpm)
endif()

include(${cpm_SOURCE_DIR}/cmake/CPM.cmake)
