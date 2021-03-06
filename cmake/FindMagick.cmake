include(FindPkgConfig)
message("Trying to find GraphicsMagick first")
pkg_check_modules(MAGICK GraphicsMagick++)
if(NOT MAGICK_FOUND)
  message("GraphicsMagick not found, trying with ImageMagick")
  pkg_check_modules(MAGICK ImageMagick++ REQUIRED)
endif(NOT MAGICK_FOUND)
add_definitions(${MAGICK_CFLAGS})
