# Client maintainer: christopher.mullins@kitware.com
  set(CTEST_SITE "Io.kitware")
  set(CTEST_BUILD_NAME "Linux-gcc-4.6.3")
  set(CTEST_BUILD_CONFIGURATION Debug)
  set(CTEST_CMAKE_GENERATOR "Unix Makefiles")

  set(dashboard_model "Nightly")
  set(dashboard_root_name "MeshKitTests")
  set(dashboard_source_name "MeshKit-cmake")
  set(dashboard_binary_name "MeshKit-build")
  set(CTEST_DASHBOARD_ROOT "${CTEST_SCRIPT_DIRECTORY}/..")

  set(DEPENDENCIES_FILE "${CTEST_SCRIPT_DIRECTORY}/meshkit_cache.txt")
  file(READ "${DEPENDENCIES_FILE}" MESHKIT_DEPENDENCIES_DATA)
  set(dashboard_cache "${MESHKIT_DEPENDENCIES_DATA}")


  include(${CTEST_SCRIPT_DIRECTORY}/meshkit_common.cmake)
