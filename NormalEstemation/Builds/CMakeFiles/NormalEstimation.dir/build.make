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
CMAKE_SOURCE_DIR = "/home/pbeckwith/code/PhilipBeckwith'sCode/NormalEstemation"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/pbeckwith/code/PhilipBeckwith'sCode/NormalEstemation/Builds"

# Include any dependencies generated for this target.
include CMakeFiles/NormalEstimation.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/NormalEstimation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/NormalEstimation.dir/flags.make

CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.o: CMakeFiles/NormalEstimation.dir/flags.make
CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.o: ../NormalEstimation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/pbeckwith/code/PhilipBeckwith'sCode/NormalEstemation/Builds/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.o -c "/home/pbeckwith/code/PhilipBeckwith'sCode/NormalEstemation/NormalEstimation.cpp"

CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/pbeckwith/code/PhilipBeckwith'sCode/NormalEstemation/NormalEstimation.cpp" > CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.i

CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/pbeckwith/code/PhilipBeckwith'sCode/NormalEstemation/NormalEstimation.cpp" -o CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.s

CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.o.requires:

.PHONY : CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.o.requires

CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.o.provides: CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.o.requires
	$(MAKE) -f CMakeFiles/NormalEstimation.dir/build.make CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.o.provides.build
.PHONY : CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.o.provides

CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.o.provides.build: CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.o


# Object files for target NormalEstimation
NormalEstimation_OBJECTS = \
"CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.o"

# External object files for target NormalEstimation
NormalEstimation_EXTERNAL_OBJECTS =

NormalEstimation: CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.o
NormalEstimation: CMakeFiles/NormalEstimation.dir/build.make
NormalEstimation: /usr/lib64/libboost_system.so
NormalEstimation: /usr/lib64/libboost_filesystem.so
NormalEstimation: /usr/lib64/libboost_thread.so
NormalEstimation: /usr/lib64/libboost_date_time.so
NormalEstimation: /usr/lib64/libboost_iostreams.so
NormalEstimation: /usr/lib64/libboost_serialization.so
NormalEstimation: /usr/lib64/libboost_chrono.so
NormalEstimation: /usr/lib64/libpcl_common.so
NormalEstimation: /usr/lib64/libflann_cpp.so
NormalEstimation: /usr/lib64/libpcl_kdtree.so
NormalEstimation: /usr/lib64/libpcl_octree.so
NormalEstimation: /usr/lib64/libpcl_search.so
NormalEstimation: /usr/lib64/libqhull.so
NormalEstimation: /usr/lib64/libpcl_surface.so
NormalEstimation: /usr/lib64/libOpenNI.so
NormalEstimation: /usr/lib64/libfreetype.so
NormalEstimation: /usr/lib64/libz.so
NormalEstimation: /usr/lib64/libjpeg.so
NormalEstimation: /usr/lib64/libpng.so
NormalEstimation: /usr/lib64/libtiff.so
NormalEstimation: /usr/lib64/vtk/libvtkWrappingTools.a
NormalEstimation: /usr/lib64/libjsoncpp.so
NormalEstimation: /usr/lib64/libexpat.so
NormalEstimation: /usr/lib64/libnetcdf_c++.so
NormalEstimation: /usr/lib64/libnetcdf.so
NormalEstimation: /usr/lib64/libhdf5.so
NormalEstimation: /usr/lib64/libdl.so
NormalEstimation: /usr/lib64/libm.so
NormalEstimation: /usr/lib64/libhdf5_hl.so
NormalEstimation: /usr/lib64/libgl2ps.so
NormalEstimation: /usr/lib64/libpython2.7.so
NormalEstimation: /usr/lib64/libxml2.so
NormalEstimation: /usr/lib64/libtheoraenc.so
NormalEstimation: /usr/lib64/libtheoradec.so
NormalEstimation: /usr/lib64/libogg.so
NormalEstimation: /usr/lib64/libpcl_io.so
NormalEstimation: /usr/lib64/libpcl_sample_consensus.so
NormalEstimation: /usr/lib64/libpcl_filters.so
NormalEstimation: /usr/lib64/libpcl_visualization.so
NormalEstimation: /usr/lib64/libpcl_outofcore.so
NormalEstimation: /usr/lib64/libpcl_features.so
NormalEstimation: /usr/lib64/libpcl_keypoints.so
NormalEstimation: /usr/lib64/libpcl_registration.so
NormalEstimation: /usr/lib64/libpcl_recognition.so
NormalEstimation: /usr/lib64/libpcl_segmentation.so
NormalEstimation: /usr/lib64/libpcl_tracking.so
NormalEstimation: /usr/lib64/libpcl_apps.so
NormalEstimation: /usr/lib64/libpcl_people.so
NormalEstimation: /usr/lib64/libboost_system.so
NormalEstimation: /usr/lib64/libboost_filesystem.so
NormalEstimation: /usr/lib64/libboost_thread.so
NormalEstimation: /usr/lib64/libboost_date_time.so
NormalEstimation: /usr/lib64/libboost_iostreams.so
NormalEstimation: /usr/lib64/libboost_serialization.so
NormalEstimation: /usr/lib64/libboost_chrono.so
NormalEstimation: /usr/lib64/libqhull.so
NormalEstimation: /usr/lib64/libOpenNI.so
NormalEstimation: /usr/lib64/libflann_cpp.so
NormalEstimation: /usr/lib64/libfreetype.so
NormalEstimation: /usr/lib64/libz.so
NormalEstimation: /usr/lib64/libjpeg.so
NormalEstimation: /usr/lib64/libpng.so
NormalEstimation: /usr/lib64/libtiff.so
NormalEstimation: /usr/lib64/vtk/libvtkWrappingTools.a
NormalEstimation: /usr/lib64/vtk/libvtkIOExodus.so.1
NormalEstimation: /usr/lib64/libjsoncpp.so
NormalEstimation: /usr/lib64/libexpat.so
NormalEstimation: /usr/lib64/libnetcdf_c++.so
NormalEstimation: /usr/lib64/libnetcdf.so
NormalEstimation: /usr/lib64/libhdf5.so
NormalEstimation: /usr/lib64/libdl.so
NormalEstimation: /usr/lib64/libm.so
NormalEstimation: /usr/lib64/libhdf5_hl.so
NormalEstimation: /usr/lib64/vtk/libvtkIOImport.so.1
NormalEstimation: /usr/lib64/vtk/libvtkRenderingVolumeAMR.so.1
NormalEstimation: /usr/lib64/vtk/libvtkInteractionImage.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIOExport.so.1
NormalEstimation: /usr/lib64/vtk/libvtkRenderingGL2PS.so.1
NormalEstimation: /usr/lib64/libgl2ps.so
NormalEstimation: /usr/lib64/vtk/libvtkFiltersVerdict.so.1
NormalEstimation: /usr/lib64/vtk/libvtkverdict.so.1
NormalEstimation: /usr/lib64/vtk/libvtkGUISupportQtWebkit.so.1
NormalEstimation: /usr/lib64/vtk/libvtkViewsQt.so.1
NormalEstimation: /usr/lib64/vtk/libvtkImagingStencil.so.1
NormalEstimation: /usr/lib64/vtk/libvtkViewsContext2D.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIOParallel.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIONetCDF.so.1
NormalEstimation: /usr/lib64/vtk/libvtkGUISupportQtOpenGL.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIOLSDyna.so.1
NormalEstimation: /usr/lib64/vtk/libvtkFiltersProgrammable.so.1
NormalEstimation: /usr/lib64/vtk/libvtkWrappingPython27Core.so.1
NormalEstimation: /usr/lib64/libpython2.7.so
NormalEstimation: /usr/lib64/libxml2.so
NormalEstimation: /usr/lib64/vtk/libvtkFiltersGeneric.so.1
NormalEstimation: /usr/lib64/vtk/libvtkImagingStatistics.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIOEnSight.so.1
NormalEstimation: /usr/lib64/vtk/libvtkWrappingJava.so.1
NormalEstimation: /usr/lib64/vtk/libvtkRenderingFreeTypeOpenGL.so.1
NormalEstimation: /usr/lib64/vtk/libvtkLocalExample.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIOVideo.so.1
NormalEstimation: /usr/lib64/vtk/libvtkFiltersHyperTree.so.1
NormalEstimation: /usr/lib64/vtk/libvtkRenderingVolumeOpenGL.so.1
NormalEstimation: /usr/lib64/vtk/libvtkFiltersSelection.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIOMINC.so.1
NormalEstimation: /usr/lib64/vtk/libvtkRenderingImage.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIOAMR.so.1
NormalEstimation: /usr/lib64/vtk/libvtkGUISupportQtSQL.so.1
NormalEstimation: /usr/lib64/vtk/libvtkRenderingLOD.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIOMovie.so.1
NormalEstimation: /usr/lib64/libtheoraenc.so
NormalEstimation: /usr/lib64/libtheoradec.so
NormalEstimation: /usr/lib64/libogg.so
NormalEstimation: /usr/lib64/vtk/libvtkFiltersFlowPaths.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIOPLY.so.1
NormalEstimation: /usr/lib64/vtk/libvtkTestingRendering.so.1
NormalEstimation: /usr/lib64/vtk/libvtkViewsGeovis.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIOInfovis.so.1
NormalEstimation: /usr/lib64/vtk/libvtkRenderingQt.so.1
NormalEstimation: /usr/lib64/vtk/libvtkFiltersTexture.so.1
NormalEstimation: /usr/lib64/vtk/libvtkImagingMorphological.so.1
NormalEstimation: /usr/lib64/vtk/libvtkRenderingLIC.so.1
NormalEstimation: /usr/lib64/vtk/libvtkFiltersParallelImaging.so.1
NormalEstimation: /usr/lib64/vtk/libvtkImagingMath.so.1
NormalEstimation: /usr/lib64/vtk/libvtkFiltersSMP.so.1
NormalEstimation: /usr/lib64/vtk/libvtkFiltersStatisticsGnuR.so.1
NormalEstimation: /usr/lib64/vtk/libvtkDomainsChemistry.so.1
NormalEstimation: /usr/lib64/libpcl_common.so
NormalEstimation: /usr/lib64/libpcl_kdtree.so
NormalEstimation: /usr/lib64/libpcl_octree.so
NormalEstimation: /usr/lib64/libpcl_search.so
NormalEstimation: /usr/lib64/libpcl_surface.so
NormalEstimation: /usr/lib64/libpcl_io.so
NormalEstimation: /usr/lib64/libpcl_sample_consensus.so
NormalEstimation: /usr/lib64/libpcl_filters.so
NormalEstimation: /usr/lib64/libpcl_visualization.so
NormalEstimation: /usr/lib64/libpcl_outofcore.so
NormalEstimation: /usr/lib64/libpcl_features.so
NormalEstimation: /usr/lib64/libpcl_keypoints.so
NormalEstimation: /usr/lib64/libpcl_registration.so
NormalEstimation: /usr/lib64/libpcl_recognition.so
NormalEstimation: /usr/lib64/libpcl_segmentation.so
NormalEstimation: /usr/lib64/libpcl_tracking.so
NormalEstimation: /usr/lib64/libpcl_apps.so
NormalEstimation: /usr/lib64/libpcl_people.so
NormalEstimation: /usr/lib64/vtk/libvtkexoIIc.so.1
NormalEstimation: /usr/lib64/libnetcdf_c++.so
NormalEstimation: /usr/lib64/libnetcdf.so
NormalEstimation: /usr/lib64/libpython2.7.so
NormalEstimation: /usr/lib64/vtk/libvtkFiltersAMR.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIOSQL.so.1
NormalEstimation: /usr/lib64/vtk/libvtksqlite.so.1
NormalEstimation: /usr/lib64/libtheoraenc.so
NormalEstimation: /usr/lib64/libtheoradec.so
NormalEstimation: /usr/lib64/libogg.so
NormalEstimation: /usr/lib64/vtk/libvtkGeovisCore.so.1
NormalEstimation: /usr/lib64/vtk/libvtkproj4.so.1
NormalEstimation: /usr/lib64/vtk/libvtkViewsInfovis.so.1
NormalEstimation: /usr/lib64/vtk/libvtkInfovisLayout.so.1
NormalEstimation: /usr/lib64/vtk/libvtkViewsCore.so.1
NormalEstimation: /usr/lib64/vtk/libvtkInteractionWidgets.so.1
NormalEstimation: /usr/lib64/vtk/libvtkRenderingVolume.so.1
NormalEstimation: /usr/lib64/vtk/libvtkFiltersHybrid.so.1
NormalEstimation: /usr/lib64/vtk/libvtkRenderingAnnotation.so.1
NormalEstimation: /usr/lib64/vtk/libvtkImagingColor.so.1
NormalEstimation: /usr/lib64/vtk/libvtkChartsCore.so.1
NormalEstimation: /usr/lib64/vtk/libvtkRenderingContext2D.so.1
NormalEstimation: /usr/lib64/vtk/libvtkCommonColor.so.1
NormalEstimation: /usr/lib64/vtk/libvtkInfovisCore.so.1
NormalEstimation: /usr/lib64/vtk/libvtkGUISupportQt.so.1
NormalEstimation: /usr/lib64/vtk/libvtkInteractionStyle.so.1
NormalEstimation: /usr/lib64/libQtGui.so
NormalEstimation: /usr/lib64/libQtNetwork.so
NormalEstimation: /usr/lib64/libQtCore.so
NormalEstimation: /usr/lib64/vtk/libvtkRenderingLabel.so.1
NormalEstimation: /usr/lib64/vtk/libvtkRenderingFreeType.so.1
NormalEstimation: /usr/lib64/vtk/libvtkftgl.so.1
NormalEstimation: /usr/lib64/libfreetype.so
NormalEstimation: /usr/lib64/vtk/libvtkRenderingOpenGL.so.1
NormalEstimation: /usr/lib64/vtk/libvtkImagingHybrid.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIOImage.so.1
NormalEstimation: /usr/lib64/vtk/libvtkDICOMParser.so.1
NormalEstimation: /usr/lib64/vtk/libvtkmetaio.so.1
NormalEstimation: /usr/lib64/libz.so
NormalEstimation: /usr/lib64/libGLU.so
NormalEstimation: /usr/lib64/libGL.so
NormalEstimation: /usr/lib64/libSM.so
NormalEstimation: /usr/lib64/libICE.so
NormalEstimation: /usr/lib64/libX11.so
NormalEstimation: /usr/lib64/libXext.so
NormalEstimation: /usr/lib64/libXt.so
NormalEstimation: /usr/lib64/vtk/libvtkFiltersImaging.so.1
NormalEstimation: /usr/lib64/vtk/libvtkImagingGeneral.so.1
NormalEstimation: /usr/lib64/vtk/libvtkImagingSources.so.1
NormalEstimation: /usr/lib64/vtk/libvtkFiltersParallel.so.1
NormalEstimation: /usr/lib64/vtk/libvtkFiltersModeling.so.1
NormalEstimation: /usr/lib64/vtk/libvtkParallelCore.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIOLegacy.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIOXML.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIOGeometry.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIOXMLParser.so.1
NormalEstimation: /usr/lib64/vtk/libvtkIOCore.so.1
NormalEstimation: /usr/lib64/vtk/libvtkRenderingCore.so.1
NormalEstimation: /usr/lib64/vtk/libvtkFiltersSources.so.1
NormalEstimation: /usr/lib64/vtk/libvtkFiltersExtraction.so.1
NormalEstimation: /usr/lib64/vtk/libvtkFiltersGeneral.so.1
NormalEstimation: /usr/lib64/vtk/libvtkCommonComputationalGeometry.so.1
NormalEstimation: /usr/lib64/vtk/libvtkFiltersStatistics.so.1
NormalEstimation: /usr/lib64/vtk/libvtkImagingFourier.so.1
NormalEstimation: /usr/lib64/vtk/libvtkImagingCore.so.1
NormalEstimation: /usr/lib64/vtk/libvtkalglib.so.1
NormalEstimation: /usr/lib64/vtk/libvtkFiltersGeometry.so.1
NormalEstimation: /usr/lib64/vtk/libvtkFiltersCore.so.1
NormalEstimation: /usr/lib64/vtk/libvtkCommonExecutionModel.so.1
NormalEstimation: /usr/lib64/vtk/libvtkCommonDataModel.so.1
NormalEstimation: /usr/lib64/vtk/libvtkCommonMisc.so.1
NormalEstimation: /usr/lib64/vtk/libvtkCommonSystem.so.1
NormalEstimation: /usr/lib64/vtk/libvtksys.so.1
NormalEstimation: /usr/lib64/vtk/libvtkCommonTransforms.so.1
NormalEstimation: /usr/lib64/vtk/libvtkCommonMath.so.1
NormalEstimation: /usr/lib64/vtk/libvtkCommonCore.so.1
NormalEstimation: CMakeFiles/NormalEstimation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/pbeckwith/code/PhilipBeckwith'sCode/NormalEstemation/Builds/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable NormalEstimation"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NormalEstimation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/NormalEstimation.dir/build: NormalEstimation

.PHONY : CMakeFiles/NormalEstimation.dir/build

CMakeFiles/NormalEstimation.dir/requires: CMakeFiles/NormalEstimation.dir/NormalEstimation.cpp.o.requires

.PHONY : CMakeFiles/NormalEstimation.dir/requires

CMakeFiles/NormalEstimation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NormalEstimation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NormalEstimation.dir/clean

CMakeFiles/NormalEstimation.dir/depend:
	cd "/home/pbeckwith/code/PhilipBeckwith'sCode/NormalEstemation/Builds" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/pbeckwith/code/PhilipBeckwith'sCode/NormalEstemation" "/home/pbeckwith/code/PhilipBeckwith'sCode/NormalEstemation" "/home/pbeckwith/code/PhilipBeckwith'sCode/NormalEstemation/Builds" "/home/pbeckwith/code/PhilipBeckwith'sCode/NormalEstemation/Builds" "/home/pbeckwith/code/PhilipBeckwith'sCode/NormalEstemation/Builds/CMakeFiles/NormalEstimation.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/NormalEstimation.dir/depend

