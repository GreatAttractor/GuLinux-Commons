include_directories(${Qt5Widgets_INCLUDE_DIRS} ${CMAKE_CURRENT_SOURCE_DIR}/..)
add_library(GuLinux_Qt_Commons STATIC zoomableimage.cpp qt_functional.cpp qlambdaevent.cpp)
option(enable_gulinux_commons_qt_testing "Enable GuLinux-Commons qt module testing" Off)
if(enable_gulinux_commons_qt_testing)
  add_subdirectory(tests)
endif(enable_gulinux_commons_qt_testing)
