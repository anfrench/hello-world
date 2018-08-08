#define CROPZMAX 10
#define CROPZMIN 2.1
#define INPUTFILE "fileNames.txt"

#include <iostream>
#include <string>
#include <vector>
#include "pclLib/pclCluster.h"
#include "pclLib/Functions.h"

using namespace std;

int main()
{
	//Vector of point clouds
	vector<pclCluster> cloudSum;
	
	//File where the filenames are kept
	fstream names;
	names.open(INPUTFILE, fstream::in);
	string fileName;

	while(getline(names, fileName))
	{
		//Initalizing and opening new cloud
		pclCluster *cluster= new pclCluster();
		cluster->open(fileName);
		
		//croping out ground
		cluster->crop("z",CROPZMAX,CROPZMIN);
		
		//puting cloud in vector
		cloudSum.push_back(*cluster);
		
	}
	
	//Using method in "pclLib/functions" to combine all clouds
	pclCluster field = combineVectorCloud(cloudSum);
	
	//saving
	field.save("TotalField.PCD");
}
