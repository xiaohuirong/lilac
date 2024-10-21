# Include directories
set(CubismFramework_INCLUDE_DIR "/usr/include/cubism/framework")

# Library path
set(CubismFramework_LIBRARY "/usr/lib/cubism/framework/libFramework.so")

# Provide the imported target
add_library(CubismFramework SHARED IMPORTED)

# CubismCore dependencies
set(CubismCore_INCLUDE_DIR "/usr/include/cubism/core")

# Set properties for the imported target
set_target_properties(CubismFramework PROPERTIES
    IMPORTED_LOCATION "${CubismFramework_LIBRARY}"
    INTERFACE_INCLUDE_DIRECTORIES "${CubismFramework_INCLUDE_DIR};${CubismCore_INCLUDE_DIR}"
)

add_definitions(-DCSM_TARGET_LINUX_GL)

# Provide the variables to be found
set(CubismFramework_LIBRARIES CubismFramework)
set(CubismFramework_INCLUDE_DIRS "${CubismFramework_INCLUDE_DIR}" "${CubismCore_INCLUDE_DIR}")

# Create a target that other projects can link against
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(CubismFramework
    REQUIRED_VARS CubismFramework_LIBRARY CubismFramework_INCLUDE_DIR
    VERSION_VAR CubismFramework_VERSION
)
