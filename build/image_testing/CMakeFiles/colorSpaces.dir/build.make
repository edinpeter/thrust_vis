# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/peter/thrust_vis/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/peter/thrust_vis/build

# Include any dependencies generated for this target.
include image_testing/CMakeFiles/colorSpaces.dir/depend.make

# Include the progress variables for this target.
include image_testing/CMakeFiles/colorSpaces.dir/progress.make

# Include the compile flags for this target's objects.
include image_testing/CMakeFiles/colorSpaces.dir/flags.make

image_testing/CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.o: image_testing/CMakeFiles/colorSpaces.dir/flags.make
image_testing/CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.o: /home/peter/thrust_vis/src/image_testing/src/colorspaces.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peter/thrust_vis/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object image_testing/CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.o"
	cd /home/peter/thrust_vis/build/image_testing && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.o -c /home/peter/thrust_vis/src/image_testing/src/colorspaces.cpp

image_testing/CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.i"
	cd /home/peter/thrust_vis/build/image_testing && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/peter/thrust_vis/src/image_testing/src/colorspaces.cpp > CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.i

image_testing/CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.s"
	cd /home/peter/thrust_vis/build/image_testing && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/peter/thrust_vis/src/image_testing/src/colorspaces.cpp -o CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.s

image_testing/CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.o.requires:
.PHONY : image_testing/CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.o.requires

image_testing/CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.o.provides: image_testing/CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.o.requires
	$(MAKE) -f image_testing/CMakeFiles/colorSpaces.dir/build.make image_testing/CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.o.provides.build
.PHONY : image_testing/CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.o.provides

image_testing/CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.o.provides.build: image_testing/CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.o

# Object files for target colorSpaces
colorSpaces_OBJECTS = \
"CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.o"

# External object files for target colorSpaces
colorSpaces_EXTERNAL_OBJECTS =

/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: image_testing/CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.o
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: image_testing/CMakeFiles/colorSpaces.dir/build.make
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libimage_transport.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libmessage_filters.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libclass_loader.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/libPocoFoundation.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libdl.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libroscpp.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libxmlrpcpp.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libroslib.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libcv_bridge.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/librosconsole.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/librosconsole_log4cxx.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/librosconsole_backend_interface.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/liblog4cxx.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libroscpp_serialization.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/librostime.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libcpp_common.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libimage_transport.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libmessage_filters.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libclass_loader.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/libPocoFoundation.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libdl.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libroscpp.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libxmlrpcpp.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libroslib.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libcv_bridge.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/librosconsole.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/librosconsole_log4cxx.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/librosconsole_backend_interface.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/liblog4cxx.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libroscpp_serialization.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/librostime.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /opt/ros/jade/lib/libcpp_common.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/peter/thrust_vis/devel/lib/image_testing/colorSpaces: image_testing/CMakeFiles/colorSpaces.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/peter/thrust_vis/devel/lib/image_testing/colorSpaces"
	cd /home/peter/thrust_vis/build/image_testing && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/colorSpaces.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
image_testing/CMakeFiles/colorSpaces.dir/build: /home/peter/thrust_vis/devel/lib/image_testing/colorSpaces
.PHONY : image_testing/CMakeFiles/colorSpaces.dir/build

image_testing/CMakeFiles/colorSpaces.dir/requires: image_testing/CMakeFiles/colorSpaces.dir/src/colorspaces.cpp.o.requires
.PHONY : image_testing/CMakeFiles/colorSpaces.dir/requires

image_testing/CMakeFiles/colorSpaces.dir/clean:
	cd /home/peter/thrust_vis/build/image_testing && $(CMAKE_COMMAND) -P CMakeFiles/colorSpaces.dir/cmake_clean.cmake
.PHONY : image_testing/CMakeFiles/colorSpaces.dir/clean

image_testing/CMakeFiles/colorSpaces.dir/depend:
	cd /home/peter/thrust_vis/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/peter/thrust_vis/src /home/peter/thrust_vis/src/image_testing /home/peter/thrust_vis/build /home/peter/thrust_vis/build/image_testing /home/peter/thrust_vis/build/image_testing/CMakeFiles/colorSpaces.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : image_testing/CMakeFiles/colorSpaces.dir/depend

