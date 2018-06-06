#include "Definitions.h"
#include "pclLib/pclCluster.h"
#include "pclLib/Functions.h"
#include <bits/stdc++.h>
#include <sstream>
#include <fstream>

using namespace std;

string fileName;
void printTime(int seconds);
void writeToFile(string ID, vector<double> pointHeightMax, vector<double>  pointHeightMin, vector< vector<double> > pointWidthMax, vector< vector<double> > pointWidthMin);
void writeHeader(FILE *file, string ID);

vector<double> smooth(vector<double> data, int buffer); 

vector<pclCluster> cloudUpper;
vector<pclCluster> cloudLower;

//height/width vectors
vector<double> upperHeightMax;
vector<double> lowerHeightMax;
vector<double> upperHeightMin;
vector<double> lowerHeightMin;

vector<vector<double> > upperWidthMax;
vector<vector<double> > lowerWidthMax;
vector<vector<double> > upperWidthMin;
vector<vector<double> > lowerWidthMin;

vector<double> location;


double maxx, minn;

int layers;

int main()
{
	cout<<"Enter The number of layers: ";
	cin>>layers;
	//variables used for timeStamps
	time_t timeTotal, timePer, end;
	timeTotal=time(NULL);
	int seconds;
	
	//File where the filenames are kept
	fstream names;
	names.open(INPUTFILE, fstream::in);
	while(getline(names, fileName))
	{
		timePer=time(NULL);
		pclCluster *cluster= new pclCluster();
		cout<<"Testing: "<<fileName<<endl;
		try
		{
			//opening new cluser
			cluster->open(fileName);

			//moving to the x axsis
			cluster->translateCenter(0,0,cluster->center.z);
			cluster->translate('y', 0);

			//removing statistical outlyers.
			cluster->removeOutliers(POINTS, STDMUL);
			
			//croping z to remove ground and upper noise 
			cluster->crop("z",MAXZ,MINZ);
			
			//resizing vectors 
			upperWidthMax.resize(layers);
			upperWidthMin.resize(layers);
			lowerWidthMax.resize(layers);
			lowerWidthMin.resize(layers);
			cloudUpper.resize(layers);
			cloudLower.resize(layers);
			
			// creating temparary clouds to calculate the height values
			pcl::PointCloud<pcl::PointXYZ>::Ptr tempU(new pcl::PointCloud<pcl::PointXYZ>);
			pcl::PointCloud<pcl::PointXYZ>::Ptr tempL(new pcl::PointCloud<pcl::PointXYZ>);
			
			//copying point cloud to both temp clouds
			pcl::copyPointCloud( *(cluster->cloud), *tempU);	
			pcl::copyPointCloud( *(cluster->cloud), *tempL);
			
			//storing clouds in pclClusters 
			cloudUpper[0]= pclCluster(tempU);
			cloudLower[0]= pclCluster(tempL);
			
			//croping
			cloudUpper[0].crop("x", XOUTER, XINNER);
			cloudLower[0].crop("x",-XINNER,-XOUTER);
			
			//calculating height values
			for(double yCurr=YSTART; yCurr<YEND; yCurr+=STEP)
			{
				//keeping track of the locatin
				location.push_back(yCurr);
				
				//Finding min/max height for each cloud
				cloudUpper[0].localizedMaxMin('z', yCurr, yCurr+SCOPE, &maxx, &minn);
				upperHeightMin.push_back(minn);
				upperHeightMax.push_back(maxx);
				
				cloudLower[0].localizedMaxMin('z', yCurr, yCurr+SCOPE, &maxx, &minn);
				lowerHeightMin.push_back(minn);
				lowerHeightMax.push_back(maxx);
			}

			//calculating layer size
			double lvlHeight= (MAXZ-MINZ)/layers;
			double lvlBase = MINZ;

			for(int i=0; i<layers; i++)
			{
				//creating the layers
				pcl::PointCloud<pcl::PointXYZ>::Ptr tempU(new pcl::PointCloud<pcl::PointXYZ>);
				pcl::PointCloud<pcl::PointXYZ>::Ptr tempL(new pcl::PointCloud<pcl::PointXYZ>);

				pcl::copyPointCloud( *(cluster->cloud), *tempU);	
				pcl::copyPointCloud( *(cluster->cloud), *tempL);

				cloudUpper[i]= pclCluster(tempU);
				cloudLower[i]= pclCluster(tempL);

				cloudUpper[i].crop("z", lvlBase+lvlHeight, lvlBase);
				cloudLower[i].crop("z", lvlBase+lvlHeight, lvlBase);
				
				lvlBase+= lvlHeight;
			}


			//seporating layered upper and lower plots
			cloudUpper= cropAll("x", XOUTER, XINNER,cloudUpper);
			cloudLower= cropAll("x",-XINNER,-XOUTER,cloudLower);

			//Reflecting lower over y axsis so results are positive
			for(int i=0; i<layers; i++)
			{
				cloudLower[i].reflect('x');

			}

			for(double yCurr=YSTART; yCurr<YEND; yCurr+=STEP)
			{
				for(int i=0; i<layers; i++)
				{
					//Upper width
					cloudUpper[i].localizedMaxMin('x', yCurr, yCurr+SCOPE, &maxx, &minn);
					upperWidthMax[i].push_back(minn);
					upperWidthMin[i].push_back(maxx);
				
					//Lower width
					cloudLower[i].localizedMaxMin('x', yCurr, yCurr+SCOPE, &maxx, &minn);
					lowerWidthMax[i].push_back(minn);
					lowerWidthMin[i].push_back(maxx);
				}
				
			}
			
			
			//smoothing height data
			upperHeightMax=smooth(upperHeightMax, BUFFER);	
			upperHeightMin=smooth(upperHeightMin, BUFFER);
			lowerHeightMax=smooth(lowerHeightMax, BUFFER);	
			lowerHeightMin=smooth(lowerHeightMin, BUFFER);
			
			//smoothing width data
			for(int i=0; i<layers; i++)
			{
				upperWidthMax[i] =smooth(upperWidthMax[i], BUFFER);
				upperWidthMin[i] =smooth(upperWidthMin[i], BUFFER);
				lowerWidthMax[i] =smooth(lowerWidthMax[i], BUFFER);
				lowerWidthMin[i] =smooth(lowerWidthMin[i], BUFFER);
			}
			
			
			//getting the plot ID's 
			string lowerID = fileName.substr(27,3);
			string upperID = fileName.substr(31,3);
			
			//writing to files
			writeToFile(upperID, upperHeightMax, upperHeightMin, upperWidthMax, upperWidthMin);
			writeToFile(lowerID, lowerHeightMax, lowerHeightMin , lowerWidthMax, lowerWidthMin);
			
			//clearing all vectors
			cloudUpper.clear();
			cloudLower.clear();
			
			upperHeightMax.clear();
			upperWidthMax.clear();
			lowerHeightMax.clear();
			lowerWidthMax.clear();

			upperHeightMin.clear();
			upperWidthMin.clear();
			lowerHeightMin.clear();
			lowerWidthMin.clear();

			location.clear();
			
			cout<<"Sucsess! ";
			end=time(NULL);
			seconds = difftime(end, timePer);
			printTime(seconds);
		}
		catch(...){cout<<"ERROR: "<<fileName<<endl;}
	}
	
	seconds = difftime(end, timeTotal);
	cout<<"Total ";
	printTime(seconds);
		
}


void writeHeader(FILE *file, string ID )
{

	
	fprintf(file,"AttributeID,Value,Units, \n");
	fprintf(file,"PlotNumber,%s,[], \n" , 	ID.c_str());
	fprintf(file,"#_layers,%i,[],\n" ,	STEP);
	fprintf(file,"MaximumZ,%f,m, \n" ,	MAXZ );
	fprintf(file,"MinimumZ,%f,m, \n" ,	MINZ);
	fprintf(file,"StartingY,%f,m,\n" ,	YSTART);
	fprintf(file,"EndingY,%f,m,\n" ,	YEND);
	fprintf(file,"StepSize,%f,m,\n" ,	STEP);
	fprintf(file,"Scope,%f,m,\n" ,		SCOPE);
	fprintf(file,"Smoothing_Buffer,%d,[],\n" ,	BUFFER);
	
	fprintf(file,"Distance_from_Y0, Height_Maximum, Height_Minimum, " );

	for(int i=0; i<layers; i++)
	{
		fprintf(file, "Width_Maximum[%i],",i);
	}
	for(int i=0; i<layers; i++)
	{
		fprintf(file, "Width_Minimum[%i],",i  );
	}
	fprintf(file, "\n");
}



void writeToFile(string ID, vector<double> pointHeightMax, vector<double>  pointHeightMin, vector< vector<double> > pointWidthMax, vector< vector<double> > pointWidthMin)
{
	
	double northing, easting;
	FILE * newFile;
	string outFile= "Height_Width_"+ID+".csv"; 
	newFile = fopen((OUTPUTDIR+outFile).c_str(),"w");
	writeHeader(newFile,ID);
	
	//printing vectors
	for(int i=0; i<location.size(); i++)
	{
		// location height width
		fprintf(newFile, "%f, %f, %f,",location[i], pointHeightMax[i], pointHeightMin[i] );
		
		for(int j=0; j<layers; j++)
		{
			fprintf(newFile, "%f,",pointWidthMax[j][i] );
		}
		for(int j=0; j<layers; j++)
		{
			fprintf(newFile, "%f,",pointWidthMin[j][i] );
		}
		fprintf(newFile, "\n");
		
	}
			
			
	//closing files
	fclose(newFile);
}


void printTime(int seconds)
{
	int hours, minuts=0;
	minuts = seconds/60;
	seconds = seconds %60;
	hours = minuts /60;
	minuts = minuts%60;
	cout<<"Time "<<hours<<" : "<<minuts <<" : " << seconds<<endl;
	
}


vector<double> smooth(vector<double> data, int buffer)
{
	vector<double> smoother;
	double average;
	int size;
	size = data.size();	

	for(int i=0; i<data.size(); i++)
	{
		smoother.push_back(data[i]);
		if(smoother.size()>buffer)
		{smoother.erase(smoother.begin());}

		average=0;
		for(int j=0; j<smoother.size(); j++)
		{average+= smoother[j];}

		data[i]=average/smoother.size();
	}
	
	while(!smoother.empty())
	{
		average=0;
		for(int i=0; i<smoother.size(); i++)
		{average+=smoother[i];}
		data.push_back(average/smoother.size());
		smoother.erase(smoother.begin());
	}
	
	return data;
}










