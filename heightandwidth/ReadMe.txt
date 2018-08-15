
	----Shape----
	Opens a point cloud. crops it into a given number of layers. goes down the rows and finds the max height and width.
	prints values in a csv file. opens next file.
	gets file names from a file named "plots.txt".


	----variables----
	(int) plots per file
	(int) number of layers
	(float) Maximum Height
	(float) Minimum Height
	(int)   Outlier Removal-Points to consider
	(float) Outlier Removal-Standard deviation multiplier
	
	for int i =0 to number of plots per file
	{
		(float) Upper bounds for plot i
		(float) Lower bounds for plot i 	
	}

	
