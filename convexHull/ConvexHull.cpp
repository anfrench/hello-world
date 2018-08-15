#include "Definitions.h"
#include "pclLib/pclCluster.h"
#include "pclLib/Functions.h"
#include "pclLib/Canopy.h"
#include <pcl/features/normal_3d.h>
#include <pcl/surface/gp3.h>



#include <pcl/io/vtk_io.h>



using namespace std;

string fileName;
void printTime(int seconds);
void writeToFile(string ID, double northAdjust, double eastAdjust , vector<pclCluster> cloud);
void writeHeader(FILE *file, string ID ,vector<pclCluster> cloud, double xAdjust, double yAdjust);

int main()
{
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
		pclCluster *cloud= new pclCluster();
		PointCanopy *canopy= new PointCanopy();
		cout<<"Working on: "<<fileName<<endl;
		try
		{
			
			cluster->open(fileName);
			cluster->findSize();
			cluster->translateX(0);
			cluster->translateY(0);
			cluster->translateZ(0);
			cluster->findSize();
			cluster->save("Sample.pcd");
			canopy->setCloud(*cluster);
			canopy->makeCanopy(8);
			cout<<"Canopy Made"<<endl;
			
			canopy->fillGaps(1);
			canopy->fillGaps(2);
			canopy->fillGaps(1);
			canopy->fillGaps(2);
			canopy->fillGaps(1);
			canopy->fillGaps(2);
			canopy->fillGaps(1);
			canopy->fillGaps(2);
			canopy->smooth(3);
			//smooth(double sigma, int samples)
			*cluster=canopy->getCanopy();
			cluster->crop("z", 5, -1);
			//cluster->crop("y", 5, 0);
			cluster->save("noSmoothed.pcd");
			//cluster->removeOutliers(50,1.75);
			//------------------------------


			

  cout<<"// Normal estimation*\n";
  pcl::NormalEstimation<pcl::PointXYZ, pcl::Normal> n;
  pcl::PointCloud<pcl::Normal>::Ptr normals (new pcl::PointCloud<pcl::Normal>);
  pcl::search::KdTree<pcl::PointXYZ>::Ptr tree (new pcl::search::KdTree<pcl::PointXYZ>);
  tree->setInputCloud (cluster->cloud);
  n.setInputCloud (cluster->cloud);
  n.setSearchMethod (tree);
  n.setKSearch (30);
  n.compute (*normals);
  //* normals should not contain the point normals + surface curvatures

  cout<<"// Concatenate the XYZ and normal fields*\n";
  pcl::PointCloud<pcl::PointNormal>::Ptr cloud_with_normals (new pcl::PointCloud<pcl::PointNormal>);
  pcl::concatenateFields (*(cluster->cloud), *normals, *cloud_with_normals);
  //* cloud_with_normals = cloud + normals

  cout<<"// Create search tree*\n";
  pcl::search::KdTree<pcl::PointNormal>::Ptr tree2 (new pcl::search::KdTree<pcl::PointNormal>);
  tree2->setInputCloud (cloud_with_normals);

  // Initialize objects
  pcl::GreedyProjectionTriangulation<pcl::PointNormal> gp3;
  pcl::PolygonMesh triangles;

  // Set the maximum distance between connected points (maximum edge length)
  gp3.setSearchRadius (12);

  // Set typical values for the parameters
  gp3.setMu (12);
  gp3.setMaximumNearestNeighbors (9);
  gp3.setMaximumSurfaceAngle(2*M_PI); 
  gp3.setMinimumAngle(M_PI/30); 
  gp3.setMaximumAngle(2*M_PI); 
  gp3.setNormalConsistency(true);

  // Get result
  gp3.setInputCloud (cloud_with_normals);
  gp3.setSearchMethod (tree2);
  gp3.reconstruct (triangles);

  // Additional vertex information
  //std::vector<int> parts = gp3.getPartIDs();
 // std::vector<int> states = gp3.getPointStates();
pcl::io::saveVTKFile("Mesh.vtk", triangles);
		//----------------------------*/
			cout<<"sucsess! ";
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




void printTime(int seconds)
{
	int hours, minuts=0;
	minuts = seconds/60;
	seconds = seconds %60;
	hours = minuts /60;
	minuts = minuts%60;
	cout<<"Time "<<hours<<" : "<<minuts <<" : " << seconds<<endl;
	
}













