# Include directories
set(CubismCore_INCLUDE_DIR "/usr/include/cubism/core")

# Library path
set(CubismCore_LIBRARY "/usr/lib/cubism/core/libLive2DCubismCore.a")

# Provide the imported target
add_library(CubismCore STATIC IMPORTED)

# Set properties for the imported target
set_target_properties(CubismCore PROPERTIES
    IMPORTED_LOCATION "${CubismCore_LIBRARY}"
    INTERFACE_INCLUDE_DIRECTORIES "${CubismCore_INCLUDE_DIR}"
)

# Provide the variables to be found
set(CubismCore_LIBRARIES CubismCore)
set(CubismCore_INCLUDE_DIRS "${CubismCore_INCLUDE_DIR}")

# Create a target that other projects can link against
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(CubismCore
    REQUIRED_VARS CubismCore_LIBRARY CubismCore_INCLUDE_DIR
    VERSION_VAR CubismCore_VERSION
)
