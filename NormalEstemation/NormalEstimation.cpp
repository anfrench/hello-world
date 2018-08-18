#include "pclLib/pclCluster.h"
#include "pclLib/Functions.h"
#include <bits/stdc++.h>
#include <pcl/point_types.h>
#include <pcl/features/normal_3d.h>
#include <iostream>

using namespace std;
pcl::PointCloud<pcl::Normal>::Ptr getNormals(pcl::PointCloud<pcl::PointXYZ>::Ptr cloud, float searchRad);


int main()
{
	string fileNameIn,fileNameOut;
	float searchRad;
	cout<<"What file would you like to proces?: \n";
	getline(cin, fileNameIn);
	cout<<"What would you like to name the result?:\n";
	getline(cin, fileNameOut);
	cout<<"What search radious would you like to use?: ";
	cin>>searchRad;
	// Load input file into a PointCloud<T> with an appropriate type
	pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ> ());
	// Load file
	pcl::io::loadPCDFile (fileNameIn, *cloud);
	
	//creating point normal object
	pcl::PointCloud<pcl::Normal>::Ptr cloud_normals (new pcl::PointCloud<pcl::Normal>);
	
	cloud_normals = getNormals(cloud, searchRad);
	
	cout<<"Cloud : "<< cloud->points.size()<<endl;
	cout<<"Normals : "<< cloud_normals->points.size()<<endl;
	
	int maxSize;
	maxSize = cloud_normals->points.size();
	
	if(maxSize> cloud->points.size())
	{
		maxSize = cloud->points.size();
	}
	
	for(int i=0; i< maxSize; i++)
	{
		float z = (-1)*cloud_normals->points[i].normal_z;
		
		cloud->points[i].x = cloud_normals->points[i].normal_x /(1-z) ;
		cloud->points[i].y = cloud_normals->points[i].normal_y /(1-z) ;
		cloud->points[i].z = 0;
		
	}

	// Save output
	pcl::io::savePCDFile (fileNameOut, *cloud);
}



pcl::PointCloud<pcl::Normal>::Ptr getNormals(pcl::PointCloud<pcl::PointXYZ>::Ptr cloud, float searchRad)
{
 

  // Create the normal estimation class, and pass the input dataset to it
  pcl::NormalEstimation<pcl::PointXYZ, pcl::Normal> ne;
  ne.setInputCloud (cloud);
  ne.setViewPoint (0, 0, 10);

  // Create an empty kdtree representation, and pass it to the normal estimation object.
  // Its content will be filled inside the object, based on the given input dataset (as no other search surface is given).
  pcl::search::KdTree<pcl::PointXYZ>::Ptr tree (new pcl::search::KdTree<pcl::PointXYZ> ());
  ne.setSearchMethod (tree);

  // Output datasets
  pcl::PointCloud<pcl::Normal>::Ptr cloud_normals (new pcl::PointCloud<pcl::Normal>);

  // Use all neighbors in a sphere of radius 3cm
  ne.setRadiusSearch (searchRad);

  // Compute the features
  ne.compute (*cloud_normals);
  
  return cloud_normals;

}








