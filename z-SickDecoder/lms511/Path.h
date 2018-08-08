#pragma once
#include <string>
#include <fstream>
#include <vector>
#include <cmath>
#include "ModGPS.h"


using namespace std;

class Path 
{
	private:
	vector<ModGPS> path;
	ModGPS current;
	
	//methods
	vector<float> setUpBuffer(int buffNum);
	void endBuffer();
	float average(vector<float> buffer);
	void reverse();
	void createPath();
	protected:
	public:
	Path();
	void smooth(int buffNum);
	void createPath(string ggaFileName, string rmcFileName);
	ModGPS nextGPS();
	int nextTime();
	ModGPS getNext();
	ModGPS getNext(int epoch);
	
};









