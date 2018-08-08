#include "pclLib/pclCluster.h"
#include "pclLib/Functions.h"
#include "pclLib/Canopy.h"
#include <cmath>
#include<vector>
#include <string>
#include <sstream>

//input(FileName)/ output(Dir path)
#define INPUTFILE "plots.txt"
#define BOUNDS "f119UTM.csv"

//for printing defined atrabutes as strings
#define STRINGIFY2(X) #X
#define STRINGIFY(X) STRINGIFY2(X)

using namespace std;


/*
	Class
	Public:
	 	Average Height
	 	Standard Deveation
	 	And An Id.
	
*/
class PlantHeights
{
	public:
	string id;
	float avHeight;
	float stdDev;
	
};
void printTime(int seconds);
PlantHeights findHeight(int id, pclCluster *row );
void utcScanner(string line, int *id, string* dim1, float*high1,float*low1,string* dim2, float*high2,float*low2);
float string2Float(string in);
string intToString(int in);


int main()
{
	vector<PlantHeights> heights;
	FILE * outFile;
	outFile = fopen("PlotHeights.csv","w");
	//variables used for timeStamps
	time_t timeTotal, timePer, end;
	timeTotal=time(NULL);
	int seconds;
	
	//File where the filenames are kept
	fstream names;
	names.open(INPUTFILE, fstream::in);
	string fileName;
	
	//proceses every file in the input file
	while(getline(names, fileName))
	{
		//Reseting the time
		timePer=time(NULL);
		
		//Initalizing all classes with point cloud pointers
		pclCluster *cluster= new pclCluster();
		pclCluster *row= new pclCluster();
		pcl::PointCloud<pcl::PointXYZ>::Ptr temp( new pcl::PointCloud<pcl::PointXYZ>);
		row->cloud = temp;
		PointCanopy *canopy= new PointCanopy();
		
		
		cout<<"Working on: "<<fileName<<endl;
		try
		{
			cluster->open(fileName);
			cout<<fileName<<": Open!"<<endl;
			
			//passing cloud to canopy to be procesed
			canopy->setCloud(*cluster);
			canopy->makeCanopy(5);
			
			//Canopy is done and passes cloud back
			*cluster=canopy->getCanopy();
			
			//removing ground and setting new height to 0
			cluster->crop("z", 5, 2.1);
			cluster->findSize();
			cluster->translateZ(0);
			cluster->findSize();
			cout<<"Canopy Made"<<endl;
			
			//creating croping variables
			int id;
			string dim1, dim2,bound;
			float high1,high2, low1, low2;	
			
			//Opening file where row bounds for f119 are kept
			fstream bounds;
			bounds.open(BOUNDS, fstream::in);
			while(getline(bounds, bound))
			{	
				//Setting row bounds and ID
				utcScanner(bound,&id,&dim1,&high1,&low1,&dim2,&high2,&low2);
				
				//coping cloud to row
				pcl::copyPointCloud<pcl::PointXYZ>(*(cluster->cloud),*(row->cloud));
				
				//croping plot to only one row
				row->crop(dim1, high1, low1);
				row->crop(dim2, high2, low2);
				
				//finding plant height 
				heights.push_back(findHeight(id,row ));
			}
	
			//printing results to file
			fprintf(outFile, "Plot_ID, Average_Height, Standard_Deveatioin\n" );
			for(int i=0; i<heights.size(); i++)
			{
				fprintf(outFile, "%s,%f,%f\n", heights[i].id.c_str(), heights[i].avHeight, heights[i].stdDev);
		   	}
			
			//clearing vector
			heights.clear();
			
			//printing time per file
			cout<<"sucsess! ";
			end=time(NULL);
			seconds = difftime(end, timePer);
			printTime(seconds);
		}
		catch(...){cout<<"ERROR: "<<fileName<<endl;}
	}
	//printing total Time
	seconds = difftime(end, timeTotal);
	cout<<"Total ";
	printTime(seconds);
	fclose(outFile);
		
}




/*
	@Param:
			intager representing seconds
	@Returns:
	@Prints:
			Time (hours):(Minuts):(Seconds)
	
*/
void printTime(int seconds)
{
	int hours, minuts=0;
	minuts = seconds/60;
	seconds = seconds %60;
	hours = minuts /60;
	minuts = minuts%60;
	cout<<"Time "<<hours<<" : "<<minuts <<" : " << seconds<<endl;
	
}


/*
	@Param: 
		Int representing an id
		A pointer to a pclCluster
	@Returns:
		PlantHeightObject
	@Prints:
		PlantHeight vals
*/
PlantHeights findHeight(int id, pclCluster *row )
{
    
    string Id, iD,ID;
    PlantHeights temp;
	float sum=0;
	for(int i=0; i<row->cloud->points.size(); i++ )
	{
		sum += row->cloud->points[i].z;
	}
	
	temp.avHeight= sum/row->cloud->points.size();
	
	sum = 0;
	
	for(int i=0; i<row->cloud->points.size(); i++ )
	{
		sum+= pow(row->cloud->points[i].z-temp.avHeight,2);
	}
	temp.stdDev= sum/row->cloud->points.size();

	id --;
	
	Id=intToString((id%8)+1);
	iD=intToString((((int)id/8)%5)+1);
	ID=intToString(((int)id/40)+1);
	
	
	temp.id= Id+":"+ID+":"+iD;
	cout<<temp.id<<", "<<temp.avHeight<<", "<<temp.stdDev<<endl;
	return temp;
}



/*
	@Param:
	@Returns:
	@Prints:
	@uses:
		string to set all other variables
		
*/
void utcScanner(string line, int *id, string* dim1, float*high1,float*low1,string* dim2, float*high2,float*low2)
{
	string token;
	istringstream iss(line);
	
	getline(iss, token,',');
	*id = ((int)string2Float(token));
	
	getline(iss, token,',');
	*dim1 = token;
	
	getline(iss, token,',');
	*high1 = string2Float(token);
	
	getline(iss, token,',');
	*low1 = string2Float(token);
	
	getline(iss, token,',');
	*dim2 = token;
	
	getline(iss, token,',');
	*high2 = string2Float(token);
	
	getline(iss, token,',');
	*low2 = string2Float(token);
}

/*
	@Param:
		Number as a string
	@Returns:
		Number as a float
	@Prints:
		null
*/
float string2Float(string in)
{
	float out=0;
	stringstream ss;
	ss<<in;
	ss>>out;
	
	
	return out;
}


/*
	@param
		number as an int
	@param
		Number as a string
*/
string intToString(int in)
{
	string out="";
	stringstream ss;
	ss<<in;
	ss>>out;
	return out;
}










