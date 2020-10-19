#ifndef UTILITY
#define UTILITY

#include "consts.h"

/* WINDOWS COMPATIBILITY: four functions at end of header */

/*
The functions here are general utility function which deal with such matters as 
creating memory for vectors, finding the maximum value of a vector etc.
*/

double **Mat(int rows, int cols);

void FreeMat(double **m);

double Maxv(int num, double vec[]);

double Minv(int num, double vec[]);

void RiskAdjust(double& result, double rate);

double RiskReturn(double value, double rate);

void DetermineHeightAndFont(int& lineheight, int& fontsize);

void Clip(double& value, int decimal_points);


// minints returns the smaller of two numbers

inline int minints(int v1, int v2)
{
	if(v1<v2)
	{
		return v1;
	}
	else
	{
		return v2;
	}
}


// maxints returns the larger of two numbers

inline int maxints(int v1, int v2)
{
	if(v1>v2)
	{
		return v1;
	}
	else
	{
		return v2;
	}
}

/* MS Version ===============================================================
void PrintString(CString& str, int age);
UINT SwitchID(UINT id1, UINT id2);
CString GetString(int age);
int& Resolution();
*/

#endif
