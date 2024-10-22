# Include directories
set(Live2dWidget_INCLUDE_DIR "/usr/include/qt6/live2dwidget")

# Library path
set(Live2dWidget_LIBRARY "/usr/lib/qt6/live2dwidget/libQLive2dWidget.a")

# Provide the imported target
add_library(Live2dWidget STATIC IMPORTED)

# Set properties for the imported target
set_target_properties(Live2dWidget PROPERTIES
    IMPORTED_LOCATION "${Live2dWidget_LIBRARY}"
    INTERFACE_INCLUDE_DIRECTORIES "${Live2dWidget_INCLUDE_DIR}"
)

# Provide the variables to be found
set(Live2dWidget_LIBRARIES Live2dWidget)
set(Live2dWidget_INCLUDE_DIRS "${Live2dWidget_INCLUDE_DIR}")

# Create a target that other projects can link against
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Live2dWidget
    REQUIRED_VARS Live2dWidget_LIBRARY Live2dWidget_INCLUDE_DIR
    VERSION_VAR Live2dWidget_VERSION
)
