#define TOLERANCE .013
#define MAXZ 2.0
#define MINZ 0.03
#define MAXVOLUME 100.0
#define MAXASPECT 20.0

#include "pclLib/pclCluster.h"
#include "pclLib/Functions.h"
#include "readline/readline.h"
#include "Color.h"


using namespace std;

string getFileName();

int main()
{
	float clusterColor, cloudColor;
	int rgb;
	//calculating color values
	rgb = (cloudR<<16)|(cloudG<<8)|cloudB;
	cloudColor=(float)rgb;

	rgb = (clusterR<<16)|(clusterG<<8)|clusterB;
	clusterColor=(float)rgb;

	int size;
	pcl::PointCloud<pcl::PointXYZRGB>::Ptr centerPoints (new pcl::PointCloud<pcl::PointXYZRGB>);
	pcl::PointCloud<pcl::PointXYZRGB>::Ptr centerColored (new pcl::PointCloud<pcl::PointXYZRGB>);
	pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloudColored (new pcl::PointCloud<pcl::PointXYZRGB>);
	pclCluster *cloud= new pclCluster();
	vector<pclCluster> clusters;

	//opening new cloud
	cout<<"What cloud would you like to calculate"<<endl;
	cloud->open(getFileName());
	//moving cloud to y axsis
	cloud->translateCenter(0,0,cloud->center.z);
	cloud->translate('y', 0);
	
	//croping and resizing new cloud
	cloud->crop("z",MAXZ,MINZ);
	cloud->crop("y",4,0);
	cloud->resize(2,12,0);
	//cloud->removeOutliers( 100,1.0);

	//capturing the cloud before clustering dounsamples it
	cloudColored=addColor(cloud->cloud,cloudColor);
	//clustring cloud
	clusters = cloud->EuclideanCluster(5,300000,TOLERANCE);
	//filtering cloud
	//clusters=volumeFilter(0,MAXVOLUME,clusters);
	//clusters = aspectRatioFilter(MAXASPECT, clusters);
	
	//making cloud of center points
	//centerPoints=getCenterPointCloud(clusters);
	cloud->cloud=combineVectorCloud(clusters).cloud;
	cloud->translate('x', 2);	
	
	//adding color
	centerColored=addColor(cloud->cloud,clusterColor);
	centerColored->width = centerColored->size();
	centerColored->height =1;
	centerColored->is_dense=true;
	size =	cloudColored->size();
	
	bool half, twenty, threeq, done;
	half=twenty=threeq=true;
	for(int i=0; i<cloudColored->points.size() ;i++)
	{
	
		bool flag=true;
		for(int j=0; j<centerColored->points.size() ;j++)
		{
			if
			(
			cloudColored->points[i].x==centerColored->points[j].x &&
			cloudColored->points[i].y==centerColored->points[j].y &&
			cloudColored->points[i].z==centerColored->points[j].z 
			){flag=false;}
		}
		if(flag)
		{
		centerPoints->points.push_back(cloudColored->points[i]);
		}
		if(half&& (i*1.0)/cloudColored->points.size() >.5){cout<<"50% \n"; half = false;}
		if(twenty&& (i*1.0)/cloudColored->points.size() >.25){cout<<"25% \n"; twenty = false;}
		if(threeq&& (i*1.0)/cloudColored->points.size() >.75){cout<<"75% \n"; threeq = false;}
		if(done && (i*1.0)/cloudColored->points.size() >= .98){cout<<"100% \n"; done = false}
		

	}
	

	
	centerPoints->width = centerPoints->size();
	centerPoints->height =1;
	centerPoints->is_dense=true;
	//saving cloud
	cout<<"What would you like to save as?"<<endl;
	pcl::io::savePCDFileASCII(getFileName(), *centerPoints);
	
}


string getFileName()
{
	string fileName;
	cout<<"Enter File Name"<<endl;
	char *buffer = readline("> ");
	if (buffer)
	{
		fileName=buffer;
		free(buffer);
	}
	fileName.erase(remove(fileName.begin(),fileName.end(), ' '), fileName.end());
	return fileName;
}







