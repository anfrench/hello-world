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
	float cropMax=10,cropMin=-10;
	string outputFile="TotalField.PCD";
	//Vector of point clouds
	vector<pclCluster> cloudSum;
	
	//setting crop values and output
	cout<<"Enter Maximum Height: ";
	cin>>cropMax;
	cout<<"Enter Minimum Height: ";
	cin>>cropMin;
	cout<<"Enter Output File Name: \n";
	getline(cin, outputFile);


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
		cluster->crop("z",cropMax,cropMin);
		
		//puting cloud in vector
		cloudSum.push_back(*cluster);
		
	}
	
	//Using method in "pclLib/functions" to combine all clouds
	pclCluster field = combineVectorCloud(cloudSum);
	
	//saving
	field.save(outputFile);
}
