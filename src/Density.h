#ifndef DENSITY
#define DENSITY

#include "consts.h"

struct densityMeasure{
	double age[DENSITY_AGEGRP];
	double bmi[DENSITY_BMIGRP];
	double intercept;
	double meanrate;
	double riskcalib;
};

/* Different density measures have different characteristics */
class Density
{
public:
	Density();
	
	double Calculate_rate(int age, double bmi, int density_measure, int country, double density);

private:
        /*1. Define density measures. Two countries at moment, UK (1) and Sweden (2) */
	densityMeasure denMeas[2][4];

	double Calculate_expected_rate(int age, double bmi, int density_measure, int country); 
};


#endif
