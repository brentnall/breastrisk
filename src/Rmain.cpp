
#include <iostream>
#include <vector>

#include "Rmain.h"
#include "Density.h"
#include "utility.h"

#include <argp.h>
#include <math.h>


using namespace std;


/*interface to r*/
extern "C" void denresid(int *inage, double *inbmi, double *indensity, double *outdrs)
{
    
       	Density density;
	
	int birads = 2;
	int country = 1;
	int age=50;
	double bmi=25;
	double thisdensity=4;
	double thisout;
	thisout = density.Calculate_rate(*inage, *inbmi, birads, country, *indensity);
 	*outdrs = thisout;        
//	thisout = density.Calculate_rate(age, bmi, birads, country, thisdensity);
   

}


