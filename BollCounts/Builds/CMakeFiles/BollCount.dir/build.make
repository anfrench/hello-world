# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = "/home/pbeckwith/code/PhilipBeckwith'sCode/BollCounts"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/pbeckwith/code/PhilipBeckwith'sCode/BollCounts/Builds"

# Include any dependencies generated for this target.
include CMakeFiles/BollCount.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/BollCount.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BollCount.dir/flags.make

CMakeFiles/BollCount.dir/BollCount.cpp.o: CMakeFiles/BollCount.dir/flags.make
CMakeFiles/BollCount.dir/BollCount.cpp.o: ../BollCount.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/pbeckwith/code/PhilipBeckwith'sCode/BollCounts/Builds/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BollCount.dir/BollCount.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/BollCount.dir/BollCount.cpp.o -c "/home/pbeckwith/code/PhilipBeckwith'sCode/BollCounts/BollCount.cpp"

CMakeFiles/BollCount.dir/BollCount.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BollCount.dir/BollCount.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/pbeckwith/code/PhilipBeckwith'sCode/BollCounts/BollCount.cpp" > CMakeFiles/BollCount.dir/BollCount.cpp.i

CMakeFiles/BollCount.dir/BollCount.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BollCount.dir/BollCount.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/pbeckwith/code/PhilipBeckwith'sCode/BollCounts/BollCount.cpp" -o CMakeFiles/BollCount.dir/BollCount.cpp.s

CMakeFiles/BollCount.dir/BollCount.cpp.o.requires:

.PHONY : CMakeFiles/BollCount.dir/BollCount.cpp.o.requires

CMakeFiles/BollCount.dir/BollCount.cpp.o.provides: CMakeFiles/BollCount.dir/BollCount.cpp.o.requires
	$(MAKE) -f CMakeFiles/BollCount.dir/build.make CMakeFiles/BollCount.dir/BollCount.cpp.o.provides.build
.PHONY : CMakeFiles/BollCount.dir/BollCount.cpp.o.provides

CMakeFiles/BollCount.dir/BollCount.cpp.o.provides.build: CMakeFiles/BollCount.dir/BollCount.cpp.o


# Object files for target BollCount
BollCount_OBJECTS = \
"CMakeFiles/BollCount.dir/BollCount.cpp.o"

# External object files for target BollCount
BollCount_EXTERNAL_OBJECTS =

BollCount: CMakeFiles/BollCount.dir/BollCount.cpp.o
BollCount: CMakeFiles/BollCount.dir/build.make
BollCount: /usr/lib64/libboost_system.so
BollCount: /usr/lib64/libboost_filesystem.so
BollCount: /usr/lib64/libboost_thread.so
BollCount: /usr/lib64/libboost_date_time.so
BollCount: /usr/lib64/libboost_iostreams.so
BollCount: /usr/lib64/libboost_serialization.so
BollCount: /usr/lib64/libboost_chrono.so
BollCount: /usr/lib64/libpcl_common.so
BollCount: /usr/lib64/libflann_cpp.so
BollCount: /usr/lib64/libpcl_kdtree.so
BollCount: /usr/lib64/libpcl_octree.so
BollCount: /usr/lib64/libpcl_search.so
BollCount: /usr/lib64/libqhull.so
BollCount: /usr/lib64/libpcl_surface.so
BollCount: /usr/lib64/libOpenNI.so
BollCount: /usr/lib64/libfreetype.so
BollCount: /usr/lib64/libz.so
BollCount: /usr/lib64/libjpeg.so
BollCount: /usr/lib64/libpng.so
BollCount: /usr/lib64/libtiff.so
BollCount: /usr/lib64/vtk/libvtkWrappingTools.a
BollCount: /usr/lib64/libjsoncpp.so
BollCount: /usr/lib64/libexpat.so
BollCount: /usr/lib64/libnetcdf_c++.so
BollCount: /usr/lib64/libnetcdf.so
BollCount: /usr/lib64/libhdf5.so
BollCount: /usr/lib64/libdl.so
BollCount: /usr/lib64/libm.so
BollCount: /usr/lib64/libhdf5_hl.so
BollCount: /usr/lib64/libgl2ps.so
BollCount: /usr/lib64/libpython2.7.so
BollCount: /usr/lib64/libxml2.so
BollCount: /usr/lib64/libtheoraenc.so
BollCount: /usr/lib64/libtheoradec.so
BollCount: /usr/lib64/libogg.so
BollCount: /usr/lib64/libpcl_io.so
BollCount: /usr/lib64/libpcl_sample_consensus.so
BollCount: /usr/lib64/libpcl_filters.so
BollCount: /usr/lib64/libpcl_visualization.so
BollCount: /usr/lib64/libpcl_outofcore.so
BollCount: /usr/lib64/libpcl_features.so
BollCount: /usr/lib64/libpcl_keypoints.so
BollCount: /usr/lib64/libpcl_registration.so
BollCount: /usr/lib64/libpcl_recognition.so
BollCount: /usr/lib64/libpcl_segmentation.so
BollCount: /usr/lib64/libpcl_tracking.so
BollCount: /usr/lib64/libpcl_apps.so
BollCount: /usr/lib64/libpcl_people.so
BollCount: /usr/lib64/libboost_system.so
BollCount: /usr/lib64/libboost_filesystem.so
BollCount: /usr/lib64/libboost_thread.so
BollCount: /usr/lib64/libboost_date_time.so
BollCount: /usr/lib64/libboost_iostreams.so
BollCount: /usr/lib64/libboost_serialization.so
BollCount: /usr/lib64/libboost_chrono.so
BollCount: /usr/lib64/libqhull.so
BollCount: /usr/lib64/libOpenNI.so
BollCount: /usr/lib64/libflann_cpp.so
BollCount: /usr/lib64/libfreetype.so
BollCount: /usr/lib64/libz.so
BollCount: /usr/lib64/libjpeg.so
BollCount: /usr/lib64/libpng.so
BollCount: /usr/lib64/libtiff.so
BollCount: /usr/lib64/vtk/libvtkWrappingTools.a
BollCount: /usr/lib64/vtk/libvtkIOExodus.so.1
BollCount: /usr/lib64/libjsoncpp.so
BollCount: /usr/lib64/libexpat.so
BollCount: /usr/lib64/libnetcdf_c++.so
BollCount: /usr/lib64/libnetcdf.so
BollCount: /usr/lib64/libhdf5.so
BollCount: /usr/lib64/libdl.so
BollCount: /usr/lib64/libm.so
BollCount: /usr/lib64/libhdf5_hl.so
BollCount: /usr/lib64/vtk/libvtkIOImport.so.1
BollCount: /usr/lib64/vtk/libvtkRenderingVolumeAMR.so.1
BollCount: /usr/lib64/vtk/libvtkInteractionImage.so.1
BollCount: /usr/lib64/vtk/libvtkIOExport.so.1
BollCount: /usr/lib64/vtk/libvtkRenderingGL2PS.so.1
BollCount: /usr/lib64/libgl2ps.so
BollCount: /usr/lib64/vtk/libvtkFiltersVerdict.so.1
BollCount: /usr/lib64/vtk/libvtkverdict.so.1
BollCount: /usr/lib64/vtk/libvtkGUISupportQtWebkit.so.1
BollCount: /usr/lib64/vtk/libvtkViewsQt.so.1
BollCount: /usr/lib64/vtk/libvtkImagingStencil.so.1
BollCount: /usr/lib64/vtk/libvtkViewsContext2D.so.1
BollCount: /usr/lib64/vtk/libvtkIOParallel.so.1
BollCount: /usr/lib64/vtk/libvtkIONetCDF.so.1
BollCount: /usr/lib64/vtk/libvtkGUISupportQtOpenGL.so.1
BollCount: /usr/lib64/vtk/libvtkIOLSDyna.so.1
BollCount: /usr/lib64/vtk/libvtkFiltersProgrammable.so.1
BollCount: /usr/lib64/vtk/libvtkWrappingPython27Core.so.1
BollCount: /usr/lib64/libpython2.7.so
BollCount: /usr/lib64/libxml2.so
BollCount: /usr/lib64/vtk/libvtkFiltersGeneric.so.1
BollCount: /usr/lib64/vtk/libvtkImagingStatistics.so.1
BollCount: /usr/lib64/vtk/libvtkIOEnSight.so.1
BollCount: /usr/lib64/vtk/libvtkWrappingJava.so.1
BollCount: /usr/lib64/vtk/libvtkRenderingFreeTypeOpenGL.so.1
BollCount: /usr/lib64/vtk/libvtkLocalExample.so.1
BollCount: /usr/lib64/vtk/libvtkIOVideo.so.1
BollCount: /usr/lib64/vtk/libvtkFiltersHyperTree.so.1
BollCount: /usr/lib64/vtk/libvtkRenderingVolumeOpenGL.so.1
BollCount: /usr/lib64/vtk/libvtkFiltersSelection.so.1
BollCount: /usr/lib64/vtk/libvtkIOMINC.so.1
BollCount: /usr/lib64/vtk/libvtkRenderingImage.so.1
BollCount: /usr/lib64/vtk/libvtkIOAMR.so.1
BollCount: /usr/lib64/vtk/libvtkGUISupportQtSQL.so.1
BollCount: /usr/lib64/vtk/libvtkRenderingLOD.so.1
BollCount: /usr/lib64/vtk/libvtkIOMovie.so.1
BollCount: /usr/lib64/libtheoraenc.so
BollCount: /usr/lib64/libtheoradec.so
BollCount: /usr/lib64/libogg.so
BollCount: /usr/lib64/vtk/libvtkFiltersFlowPaths.so.1
BollCount: /usr/lib64/vtk/libvtkIOPLY.so.1
BollCount: /usr/lib64/vtk/libvtkTestingRendering.so.1
BollCount: /usr/lib64/vtk/libvtkViewsGeovis.so.1
BollCount: /usr/lib64/vtk/libvtkIOInfovis.so.1
BollCount: /usr/lib64/vtk/libvtkRenderingQt.so.1
BollCount: /usr/lib64/vtk/libvtkFiltersTexture.so.1
BollCount: /usr/lib64/vtk/libvtkImagingMorphological.so.1
BollCount: /usr/lib64/vtk/libvtkRenderingLIC.so.1
BollCount: /usr/lib64/vtk/libvtkFiltersParallelImaging.so.1
BollCount: /usr/lib64/vtk/libvtkImagingMath.so.1
BollCount: /usr/lib64/vtk/libvtkFiltersSMP.so.1
BollCount: /usr/lib64/vtk/libvtkFiltersStatisticsGnuR.so.1
BollCount: /usr/lib64/vtk/libvtkDomainsChemistry.so.1
BollCount: /usr/lib64/libpcl_common.so
BollCount: /usr/lib64/libpcl_kdtree.so
BollCount: /usr/lib64/libpcl_octree.so
BollCount: /usr/lib64/libpcl_search.so
BollCount: /usr/lib64/libpcl_surface.so
BollCount: /usr/lib64/libpcl_io.so
BollCount: /usr/lib64/libpcl_sample_consensus.so
BollCount: /usr/lib64/libpcl_filters.so
BollCount: /usr/lib64/libpcl_visualization.so
BollCount: /usr/lib64/libpcl_outofcore.so
BollCount: /usr/lib64/libpcl_features.so
BollCount: /usr/lib64/libpcl_keypoints.so
BollCount: /usr/lib64/libpcl_registration.so
BollCount: /usr/lib64/libpcl_recognition.so
BollCount: /usr/lib64/libpcl_segmentation.so
BollCount: /usr/lib64/libpcl_tracking.so
BollCount: /usr/lib64/libpcl_apps.so
BollCount: /usr/lib64/libpcl_people.so
BollCount: /usr/lib64/vtk/libvtkexoIIc.so.1
BollCount: /usr/lib64/libnetcdf_c++.so
BollCount: /usr/lib64/libnetcdf.so
BollCount: /usr/lib64/libpython2.7.so
BollCount: /usr/lib64/vtk/libvtkFiltersAMR.so.1
BollCount: /usr/lib64/vtk/libvtkIOSQL.so.1
BollCount: /usr/lib64/vtk/libvtksqlite.so.1
BollCount: /usr/lib64/libtheoraenc.so
BollCount: /usr/lib64/libtheoradec.so
BollCount: /usr/lib64/libogg.so
BollCount: /usr/lib64/vtk/libvtkGeovisCore.so.1
BollCount: /usr/lib64/vtk/libvtkproj4.so.1
BollCount: /usr/lib64/vtk/libvtkViewsInfovis.so.1
BollCount: /usr/lib64/vtk/libvtkInfovisLayout.so.1
BollCount: /usr/lib64/vtk/libvtkViewsCore.so.1
BollCount: /usr/lib64/vtk/libvtkInteractionWidgets.so.1
BollCount: /usr/lib64/vtk/libvtkRenderingVolume.so.1
BollCount: /usr/lib64/vtk/libvtkFiltersHybrid.so.1
BollCount: /usr/lib64/vtk/libvtkRenderingAnnotation.so.1
BollCount: /usr/lib64/vtk/libvtkImagingColor.so.1
BollCount: /usr/lib64/vtk/libvtkChartsCore.so.1
BollCount: /usr/lib64/vtk/libvtkRenderingContext2D.so.1
BollCount: /usr/lib64/vtk/libvtkCommonColor.so.1
BollCount: /usr/lib64/vtk/libvtkInfovisCore.so.1
BollCount: /usr/lib64/vtk/libvtkGUISupportQt.so.1
BollCount: /usr/lib64/vtk/libvtkInteractionStyle.so.1
BollCount: /usr/lib64/libQtGui.so
BollCount: /usr/lib64/libQtNetwork.so
BollCount: /usr/lib64/libQtCore.so
BollCount: /usr/lib64/vtk/libvtkRenderingLabel.so.1
BollCount: /usr/lib64/vtk/libvtkRenderingFreeType.so.1
BollCount: /usr/lib64/vtk/libvtkftgl.so.1
BollCount: /usr/lib64/libfreetype.so
BollCount: /usr/lib64/vtk/libvtkRenderingOpenGL.so.1
BollCount: /usr/lib64/vtk/libvtkImagingHybrid.so.1
BollCount: /usr/lib64/vtk/libvtkIOImage.so.1
BollCount: /usr/lib64/vtk/libvtkDICOMParser.so.1
BollCount: /usr/lib64/vtk/libvtkmetaio.so.1
BollCount: /usr/lib64/libz.so
BollCount: /usr/lib64/libGLU.so
BollCount: /usr/lib64/libGL.so
BollCount: /usr/lib64/libSM.so
BollCount: /usr/lib64/libICE.so
BollCount: /usr/lib64/libX11.so
BollCount: /usr/lib64/libXext.so
BollCount: /usr/lib64/libXt.so
BollCount: /usr/lib64/vtk/libvtkFiltersImaging.so.1
BollCount: /usr/lib64/vtk/libvtkImagingGeneral.so.1
BollCount: /usr/lib64/vtk/libvtkImagingSources.so.1
BollCount: /usr/lib64/vtk/libvtkFiltersParallel.so.1
BollCount: /usr/lib64/vtk/libvtkFiltersModeling.so.1
BollCount: /usr/lib64/vtk/libvtkParallelCore.so.1
BollCount: /usr/lib64/vtk/libvtkIOLegacy.so.1
BollCount: /usr/lib64/vtk/libvtkIOXML.so.1
BollCount: /usr/lib64/vtk/libvtkIOGeometry.so.1
BollCount: /usr/lib64/vtk/libvtkIOXMLParser.so.1
BollCount: /usr/lib64/vtk/libvtkIOCore.so.1
BollCount: /usr/lib64/vtk/libvtkRenderingCore.so.1
BollCount: /usr/lib64/vtk/libvtkFiltersSources.so.1
BollCount: /usr/lib64/vtk/libvtkFiltersExtraction.so.1
BollCount: /usr/lib64/vtk/libvtkFiltersGeneral.so.1
BollCount: /usr/lib64/vtk/libvtkCommonComputationalGeometry.so.1
BollCount: /usr/lib64/vtk/libvtkFiltersStatistics.so.1
BollCount: /usr/lib64/vtk/libvtkImagingFourier.so.1
BollCount: /usr/lib64/vtk/libvtkImagingCore.so.1
BollCount: /usr/lib64/vtk/libvtkalglib.so.1
BollCount: /usr/lib64/vtk/libvtkFiltersGeometry.so.1
BollCount: /usr/lib64/vtk/libvtkFiltersCore.so.1
BollCount: /usr/lib64/vtk/libvtkCommonExecutionModel.so.1
BollCount: /usr/lib64/vtk/libvtkCommonDataModel.so.1
BollCount: /usr/lib64/vtk/libvtkCommonMisc.so.1
BollCount: /usr/lib64/vtk/libvtkCommonSystem.so.1
BollCount: /usr/lib64/vtk/libvtksys.so.1
BollCount: /usr/lib64/vtk/libvtkCommonTransforms.so.1
BollCount: /usr/lib64/vtk/libvtkCommonMath.so.1
BollCount: /usr/lib64/vtk/libvtkCommonCore.so.1
BollCount: CMakeFiles/BollCount.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/pbeckwith/code/PhilipBeckwith'sCode/BollCounts/Builds/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable BollCount"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BollCount.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BollCount.dir/build: BollCount

.PHONY : CMakeFiles/BollCount.dir/build

CMakeFiles/BollCount.dir/requires: CMakeFiles/BollCount.dir/BollCount.cpp.o.requires

.PHONY : CMakeFiles/BollCount.dir/requires

CMakeFiles/BollCount.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BollCount.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BollCount.dir/clean

CMakeFiles/BollCount.dir/depend:
	cd "/home/pbeckwith/code/PhilipBeckwith'sCode/BollCounts/Builds" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/pbeckwith/code/PhilipBeckwith'sCode/BollCounts" "/home/pbeckwith/code/PhilipBeckwith'sCode/BollCounts" "/home/pbeckwith/code/PhilipBeckwith'sCode/BollCounts/Builds" "/home/pbeckwith/code/PhilipBeckwith'sCode/BollCounts/Builds" "/home/pbeckwith/code/PhilipBeckwith'sCode/BollCounts/Builds/CMakeFiles/BollCount.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/BollCount.dir/depend

