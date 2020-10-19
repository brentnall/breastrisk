#ifndef CONSTS
#define CONSTS

/*
This provides the details of the constants used in the program.
*/


const int DIM1 = 6; 
const int DIM2 = 3; 
const int DIM1A = 3; //Used for ovarian survivor curves in Likliehood class
const int DIM2A = 2;
const int COV = 20;
const int MAXPARAMS = 30;
const int AGE = 20; //First age in BRCA survivors
const int MAXAGE = 100;
const int MAXCHILD = 10;
const double PROB = 0.5;
const int LIFESPAN = 70; 
const int TRIAL_LENGTH = 7;
//const int MAX = 20; //ARB, 25/01/10- old version
const int MAX = 67; //ARB, 13/07/11 - used to initialise arrays in National_data class
const double FTOL = 1.0e-8;
const int MAXGROUPS = 30;
const int GR = 10;
const int MAXSIB = 19; //Maximum number of sisters
const int UNKNOWN = 0;
const int CODE = -99;
const int DFLTAGE = 70;
const int NUM = 85; //change from 10 -- used to draw charts, update 13/07/11 ARB
const int NUMM = NUM-1;
const int LINES = 5;
const int SZ = 10;
const int XDISP = 0;
const int YDISP = 0;
const int SMH = 100;
const int BGH = 250;
const int SMV = 420;
const int BGV = 470;
const int MAXFILESIZE = 10000;
const int META = 4;
//const int OVAR = 5; //Number of ovarian groups
const int OVAR = 67; //Number of ovarian groups. ARB 13/07/11 - used to init array in Likelihood:falculate_genotrype_likelihoods
const double SMALL = 1.0e-7;
const int NHRT = 2; //Number of HRT preparations. ARB 20/04/11
const int NHRTBIN = 6;// Number of HRT piecewise hazard components. ARB 20/04/11
const int NHRTBMI = 3; //Number of BMI adjustments for HRT
const int NMALE1DEG = 2; //Number of male 1st-degree relatives
const int OSVERSION = 2; //1 = Windows, 2=other
//const CString PRINTVER = "IBIS Risk Evaluation, v7.0beta"; //Used when printing out
const int DENSITY_AGEGRP = 41;
const int DENSITY_BMIGRP = 351;

#endif
