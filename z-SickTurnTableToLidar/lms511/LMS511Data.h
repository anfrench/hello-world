#pragma once
#include "LMS400Base.h"

class LMS511SCAN : public LMS400Scan
{
	private :
	protected :
	
	virtual void partition();
	virtual void decodeData();
	virtual void decodeInfoBlocks();
	
	public :
	
}
