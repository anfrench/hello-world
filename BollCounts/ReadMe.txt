
------Boll Count-----
	This program is intended to count the number of bolls in a cotton filed using pcd files.
	It is capeable of processing many files at a time. 
	It opens a main file that contains all of the fileNames/locations that you want procesec
	and works though them one at a time.
	the file names should be delemeted by a new line "\n".

	The boll counting algorithum is bassed on euclidian clustring.
	All points within a defined radious of a point are considered the same cluster.
	points beyond the set radious are added to a diffrent cluster.
	Also clusters are only considered if they are within a defined number of points.
	Both the radious and the number of points are inputs to this program.
	The program will ask for all veriables at the begining and will process all files
	the same way.

	----Variables----
	
