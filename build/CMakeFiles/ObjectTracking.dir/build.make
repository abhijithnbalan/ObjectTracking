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
CMAKE_SOURCE_DIR = /home/plankton/CodeMax/ObjectTrackingV2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/plankton/CodeMax/ObjectTrackingV2/build

# Include any dependencies generated for this target.
include CMakeFiles/ObjectTracking.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ObjectTracking.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ObjectTracking.dir/flags.make

CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.o: CMakeFiles/ObjectTracking.dir/flags.make
CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.o: ../src/capture_frame.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/plankton/CodeMax/ObjectTrackingV2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.o -c /home/plankton/CodeMax/ObjectTrackingV2/src/capture_frame.cpp

CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/plankton/CodeMax/ObjectTrackingV2/src/capture_frame.cpp > CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.i

CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/plankton/CodeMax/ObjectTrackingV2/src/capture_frame.cpp -o CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.s

CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.o.requires:
.PHONY : CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.o.requires

CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.o.provides: CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.o.requires
	$(MAKE) -f CMakeFiles/ObjectTracking.dir/build.make CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.o.provides.build
.PHONY : CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.o.provides

CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.o.provides.build: CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.o

CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.o: CMakeFiles/ObjectTracking.dir/flags.make
CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.o: ../src/view_frame.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/plankton/CodeMax/ObjectTrackingV2/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.o -c /home/plankton/CodeMax/ObjectTrackingV2/src/view_frame.cpp

CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/plankton/CodeMax/ObjectTrackingV2/src/view_frame.cpp > CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.i

CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/plankton/CodeMax/ObjectTrackingV2/src/view_frame.cpp -o CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.s

CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.o.requires:
.PHONY : CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.o.requires

CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.o.provides: CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.o.requires
	$(MAKE) -f CMakeFiles/ObjectTracking.dir/build.make CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.o.provides.build
.PHONY : CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.o.provides

CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.o.provides.build: CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.o

CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.o: CMakeFiles/ObjectTracking.dir/flags.make
CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.o: ../src/algorithm.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/plankton/CodeMax/ObjectTrackingV2/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.o -c /home/plankton/CodeMax/ObjectTrackingV2/src/algorithm.cpp

CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/plankton/CodeMax/ObjectTrackingV2/src/algorithm.cpp > CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.i

CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/plankton/CodeMax/ObjectTrackingV2/src/algorithm.cpp -o CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.s

CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.o.requires:
.PHONY : CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.o.requires

CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.o.provides: CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.o.requires
	$(MAKE) -f CMakeFiles/ObjectTracking.dir/build.make CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.o.provides.build
.PHONY : CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.o.provides

CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.o.provides.build: CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.o

CMakeFiles/ObjectTracking.dir/src/timer.cpp.o: CMakeFiles/ObjectTracking.dir/flags.make
CMakeFiles/ObjectTracking.dir/src/timer.cpp.o: ../src/timer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/plankton/CodeMax/ObjectTrackingV2/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/ObjectTracking.dir/src/timer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ObjectTracking.dir/src/timer.cpp.o -c /home/plankton/CodeMax/ObjectTrackingV2/src/timer.cpp

CMakeFiles/ObjectTracking.dir/src/timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ObjectTracking.dir/src/timer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/plankton/CodeMax/ObjectTrackingV2/src/timer.cpp > CMakeFiles/ObjectTracking.dir/src/timer.cpp.i

CMakeFiles/ObjectTracking.dir/src/timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ObjectTracking.dir/src/timer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/plankton/CodeMax/ObjectTrackingV2/src/timer.cpp -o CMakeFiles/ObjectTracking.dir/src/timer.cpp.s

CMakeFiles/ObjectTracking.dir/src/timer.cpp.o.requires:
.PHONY : CMakeFiles/ObjectTracking.dir/src/timer.cpp.o.requires

CMakeFiles/ObjectTracking.dir/src/timer.cpp.o.provides: CMakeFiles/ObjectTracking.dir/src/timer.cpp.o.requires
	$(MAKE) -f CMakeFiles/ObjectTracking.dir/build.make CMakeFiles/ObjectTracking.dir/src/timer.cpp.o.provides.build
.PHONY : CMakeFiles/ObjectTracking.dir/src/timer.cpp.o.provides

CMakeFiles/ObjectTracking.dir/src/timer.cpp.o.provides.build: CMakeFiles/ObjectTracking.dir/src/timer.cpp.o

CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.o: CMakeFiles/ObjectTracking.dir/flags.make
CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.o: ../src/image_processing.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/plankton/CodeMax/ObjectTrackingV2/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.o -c /home/plankton/CodeMax/ObjectTrackingV2/src/image_processing.cpp

CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/plankton/CodeMax/ObjectTrackingV2/src/image_processing.cpp > CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.i

CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/plankton/CodeMax/ObjectTrackingV2/src/image_processing.cpp -o CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.s

CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.o.requires:
.PHONY : CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.o.requires

CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.o.provides: CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.o.requires
	$(MAKE) -f CMakeFiles/ObjectTracking.dir/build.make CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.o.provides.build
.PHONY : CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.o.provides

CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.o.provides.build: CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.o

CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.o: CMakeFiles/ObjectTracking.dir/flags.make
CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.o: ../src/object_tracking.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/plankton/CodeMax/ObjectTrackingV2/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.o -c /home/plankton/CodeMax/ObjectTrackingV2/src/object_tracking.cpp

CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/plankton/CodeMax/ObjectTrackingV2/src/object_tracking.cpp > CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.i

CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/plankton/CodeMax/ObjectTrackingV2/src/object_tracking.cpp -o CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.s

CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.o.requires:
.PHONY : CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.o.requires

CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.o.provides: CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.o.requires
	$(MAKE) -f CMakeFiles/ObjectTracking.dir/build.make CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.o.provides.build
.PHONY : CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.o.provides

CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.o.provides.build: CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.o

CMakeFiles/ObjectTracking.dir/src/main.cpp.o: CMakeFiles/ObjectTracking.dir/flags.make
CMakeFiles/ObjectTracking.dir/src/main.cpp.o: ../src/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/plankton/CodeMax/ObjectTrackingV2/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/ObjectTracking.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ObjectTracking.dir/src/main.cpp.o -c /home/plankton/CodeMax/ObjectTrackingV2/src/main.cpp

CMakeFiles/ObjectTracking.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ObjectTracking.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/plankton/CodeMax/ObjectTrackingV2/src/main.cpp > CMakeFiles/ObjectTracking.dir/src/main.cpp.i

CMakeFiles/ObjectTracking.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ObjectTracking.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/plankton/CodeMax/ObjectTrackingV2/src/main.cpp -o CMakeFiles/ObjectTracking.dir/src/main.cpp.s

CMakeFiles/ObjectTracking.dir/src/main.cpp.o.requires:
.PHONY : CMakeFiles/ObjectTracking.dir/src/main.cpp.o.requires

CMakeFiles/ObjectTracking.dir/src/main.cpp.o.provides: CMakeFiles/ObjectTracking.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/ObjectTracking.dir/build.make CMakeFiles/ObjectTracking.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/ObjectTracking.dir/src/main.cpp.o.provides

CMakeFiles/ObjectTracking.dir/src/main.cpp.o.provides.build: CMakeFiles/ObjectTracking.dir/src/main.cpp.o

# Object files for target ObjectTracking
ObjectTracking_OBJECTS = \
"CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.o" \
"CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.o" \
"CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.o" \
"CMakeFiles/ObjectTracking.dir/src/timer.cpp.o" \
"CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.o" \
"CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.o" \
"CMakeFiles/ObjectTracking.dir/src/main.cpp.o"

# External object files for target ObjectTracking
ObjectTracking_EXTERNAL_OBJECTS =

../bin/ObjectTracking: CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.o
../bin/ObjectTracking: CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.o
../bin/ObjectTracking: CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.o
../bin/ObjectTracking: CMakeFiles/ObjectTracking.dir/src/timer.cpp.o
../bin/ObjectTracking: CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.o
../bin/ObjectTracking: CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.o
../bin/ObjectTracking: CMakeFiles/ObjectTracking.dir/src/main.cpp.o
../bin/ObjectTracking: CMakeFiles/ObjectTracking.dir/build.make
../bin/ObjectTracking: /usr/local/lib/libopencv_calib3d.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_core.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_dnn.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_features2d.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_flann.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_highgui.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_imgcodecs.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_imgproc.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_ml.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_objdetect.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_photo.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_shape.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_stitching.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_superres.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_video.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_videoio.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_videostab.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_aruco.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_bgsegm.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_bioinspired.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_ccalib.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_cvv.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_datasets.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_dpm.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_face.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_freetype.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_fuzzy.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_hdf.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_img_hash.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_line_descriptor.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_optflow.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_phase_unwrapping.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_plot.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_reg.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_rgbd.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_saliency.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_sfm.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_stereo.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_structured_light.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_surface_matching.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_text.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_tracking.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_xfeatures2d.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_ximgproc.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_xobjdetect.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_xphoto.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_photo.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_shape.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_calib3d.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_phase_unwrapping.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_video.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_datasets.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_plot.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_text.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_dnn.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_features2d.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_flann.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_highgui.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_ml.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_videoio.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_imgcodecs.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_objdetect.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_imgproc.so.3.3.1
../bin/ObjectTracking: /usr/local/lib/libopencv_core.so.3.3.1
../bin/ObjectTracking: CMakeFiles/ObjectTracking.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/ObjectTracking"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ObjectTracking.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ObjectTracking.dir/build: ../bin/ObjectTracking
.PHONY : CMakeFiles/ObjectTracking.dir/build

CMakeFiles/ObjectTracking.dir/requires: CMakeFiles/ObjectTracking.dir/src/capture_frame.cpp.o.requires
CMakeFiles/ObjectTracking.dir/requires: CMakeFiles/ObjectTracking.dir/src/view_frame.cpp.o.requires
CMakeFiles/ObjectTracking.dir/requires: CMakeFiles/ObjectTracking.dir/src/algorithm.cpp.o.requires
CMakeFiles/ObjectTracking.dir/requires: CMakeFiles/ObjectTracking.dir/src/timer.cpp.o.requires
CMakeFiles/ObjectTracking.dir/requires: CMakeFiles/ObjectTracking.dir/src/image_processing.cpp.o.requires
CMakeFiles/ObjectTracking.dir/requires: CMakeFiles/ObjectTracking.dir/src/object_tracking.cpp.o.requires
CMakeFiles/ObjectTracking.dir/requires: CMakeFiles/ObjectTracking.dir/src/main.cpp.o.requires
.PHONY : CMakeFiles/ObjectTracking.dir/requires

CMakeFiles/ObjectTracking.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ObjectTracking.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ObjectTracking.dir/clean

CMakeFiles/ObjectTracking.dir/depend:
	cd /home/plankton/CodeMax/ObjectTrackingV2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/plankton/CodeMax/ObjectTrackingV2 /home/plankton/CodeMax/ObjectTrackingV2 /home/plankton/CodeMax/ObjectTrackingV2/build /home/plankton/CodeMax/ObjectTrackingV2/build /home/plankton/CodeMax/ObjectTrackingV2/build/CMakeFiles/ObjectTracking.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ObjectTracking.dir/depend

