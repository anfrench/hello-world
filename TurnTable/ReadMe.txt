
----Turn Table Decoder----
	This program takes a file of lms4000 scans delimited by a new line.
	The program reads the distance values and projects them onto a rotation.
	The output is a pcd File.
	Compile with c++11 
	no point cloud libraries needed.

	----variables----
	(string) Input File Name.
	(string) Output File Name.
	(float ) Distance from the lidar to center of turntable. 
	(float ) height offset.
	(float ) Scale.
	(float ) Degrees of tilt.
	(float ) How far the lidar is off of horizon.
	(int   ) Steps per revolution.
	(int   ) Scans Per Step?
	
