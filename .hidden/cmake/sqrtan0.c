// Computes the square root of the tangent of an angle in degrees.

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

double myTan(double v) {
    double v_rad = v*M_PI/180.;
    return tan(v_rad);
}

int main (int argc, char *argv[])
{
  if (argc < 2) {
    fprintf(stdout,"Usage: %s number\n",argv[0]);
    return 1;
  }
  double inputValue = atof(argv[1]);
  double tanValue = myTan(inputValue);
  double outputValue = sqrt(tanValue);
  printf("The tangent of %g deg is %g\n", inputValue, tanValue );
  printf("The square root of %g is %g\n", tanValue,   outputValue );
  return 0;
}

