# CMAN-P10

> Source: `manuals/misc/DOC - FLEX Software Archive - Manual and Documentation Archive - Includes CMAN-IDX, CMAN-P1, CMAN-P10.zip!DOC.DSK!CMAN-P10.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.DHO
#SCIENTIFIC FUNCTIONS IN 'C'                   James McCosh 'C' COMPILER FOR FLEX


.DHE
#James McCosh 'C' COMPILER FOR FLEX                   SCIENTIFIC FUNCTIONS IN 'C'


.DFO
.
                                     - %%%% -


.DFE
.
                                     - %%%% -


SCIENTIFIC FUNCTIONS IN 'C'

 This section is a 'freebie' and does not form an integral part of the McCosh 'C'
 compiler  package.  The  information  presented here is for guidance only and it
 hoped that it will assist users  who  need  scientific  functions  with  limited
 accuracy for use with 'C' programs.


                          _____________________________
                         A C K N O W L E D G E M E N T

           The routines in this section were developed by Ron Anderson,
           author of the 'FLEX USER NOTES' column in '68 MICRO JOURNAL.
           Some  of the coefficents used in the routines were presented
           in an article in the April 1983 issue in an article by  Matt
           Scudiere.


                                     _______
                                    N O T E

           The accuracy of these routines is roughly as follows:

           SINE, COSINE and TANGENT approximately 12 digits.
           ATN approximately 8 digits.
           LOG and EXP approximately 5 digits.


SCIFUN.C

/*   Scientific Functions Package.
 *   coefficients for least squares polynomial approximation
 *   from Dr. Matt Scudiere's article in April '68' Micro
 *   Journal. Adapted by Ron Anderson.
 */

#define PI 3.141592654
#define _PIO2 1.570796327
#define _E 2.718281828
#define _LOG2 0.693147181

double poly (op,table,count)
   double op, table[];
   int count;
{
   double temp;

   temp = table [count--];
   do temp = temp * op + table [count];
   while (count--);
   return (temp);
}


double sin (angle)
   double angle;
{
   int negative, iquad;
   double sine;
   static double coeff[8] =

   { 1.0,               -1.66666666664e-1,  8.33333331830e-3,
    -1.98412680061e-4,   2.75572376227e-6, -2.50512272520e-8,
     1.60733744416e-10, -7.62537407575e-13 };

     /* coefficients yield rms error at 50 points, of 2.5e-13
        when calculated with 17 digit arithmetic */
   if (angle == 0.0) return (0.0);
   iquad = angle/_PIO2;
   angle = angle - iquad * _PIO2;
   negative = iquad & 2;
   if (iquad & 1)  angle = _PIO2 - angle;
   sine = angle * poly (angle * angle, coeff,7);
   if (negative) sine = - sine;
   return (sine);
}


double cos (angle)
   double angle;
{
return (sin (angle + _PIO2));
}


SCIFUN.C  (continued)

double absf(number)
   double number;
{
   if (number < 0) number = -number;
   return (number);
}


double sqr(arg)  /* square root */
   double arg;
{
   double result, guess;

   guess = 10.0;
   do
   {
      result = arg/guess;
      guess = (guess + result)/2.0;
   }
   while (absf (guess - result)/ result > 1.0e-6);
   return (guess);
}


double atn(number)
   double number;
{
   int recip,sign;
   double angle;
   static double coeff[9] =

   { 1.0,             -0.333331812655,   0.199937622722,
    -0.142092500507,   0.106559258762,  -0.0752762936056,
     0.0429032902763, -0.0161727657155,  0.00287135396373  };

   /* rms error at 50 points approximately 6e-9.  Results good
      to about 8 places with these coefficients */

   if (number < 0)
   {
      number = -number;
      sign = TRUE;
   }
   else sign = FALSE;

   if (number > 1)
   {
      recip = TRUE;
      number = 1/number;
   }
   else recip = FALSE;

   angle = number * poly (number * number,coeff,8);
   if (recip) angle = _PIO2 - angle;
   if (sign) angle = - angle;
   return (angle);
}


SCIFUN.C  (continued)

double tan(angle)
   double angle;
{
   return sin(angle)/cos(angle);
}


double ln(number)  /* natural log */
   double number;
{
   int n;
   static double coeff[9] =

   { 0.0,           0.9999964329, -0.4998741238,
     0.3317990258, -0.2407338084,  0.1676540711,
    -0.0953293897,  0.0360884937, -0.0064535442 };

   if (number <=0) return (0.0);
   n=0;
   while (number > 2.0)
   {
      number = number /2;
      n += 1;
   }
   while (number < 1)
   {
      number = number * 2;
      n -= 1;
   }
   return (poly (number-1,coeff,8)+n*0.6931472);
}


double log(number)  /* base 10 log */
   double number;
{
   return(ln (number) * 0.4342944);
}


double exp(number)  /*  e to the x  */
   double number;
{
   int k;
   static double coeff[8] =

   {  0.0,           0.9999999995,  0.4999999206,
      0.1666653019,  0.0416573475,  0.0083013598,
      0.0013298820,  0.0001413161                };

   if (number > 87.0) return 1.0e38;
   if (number < -88.0) return 1.0e-38;
   k=1;
   while (number > _LOG2)
   {
      number = number - _LOG2;
      k *=2;
   }

SCIFUN.C  (continued)

   while (number < 0)
   {
      number = number + _LOG2;
      k /= 2;
   }
   return ((poly (number,coeff,7)+1)*k);
}


double alog (number)  /* antilog base 10 */
  double number;
{
   return (exp (number * 2.302585));
}


double xtoy(number,power)
   double number, power;
{
   if (power == 0) return 1.0;
   if (number < 0) return 0.0;
   return (exp (ln(number) * power));
}


SCITEST.C

/* SCIENTIFIC FUNCTION TEST PROGRAM */

#define TRUE -1
#define FALSE 0

#include <stdio.h>
#include "SCIFUN.C"

main ()

{
   double angle, sinangle, cosangle, tanangle;
   double number, power;

   pffinit(); /* to include double and float printf capablity */

      printf ("input angle for sine, cosine and tangent  ");
      scanf ("%F",&angle);

      printf ("\n");
      angle = angle * PI/180.0;
      sinangle = sin (angle);
      printf ("sine %12.9f\n",sinangle);
      cosangle = cos (angle);
      printf ("cos %12.9f\n",cosangle);
      tanangle = tan (angle);
      printf ("tan %12.9f\n",tanangle);

      printf ("input number for square root  ");
      scanf ("%F",&number);
      number = sqr(number);
      printf ("square root is %12.9f\n",number);

      printf ("input number for arctan  ");
      scanf ("%F",&number);
      angle = atn(number) * 180/PI;
      printf ("arctan is %12.9f degrees\n",angle);

      printf ("input number for natural log  ");
      scanf ("%F",&number);
      number = ln(number);
      printf ("natural log is %12.9f\n",number);

      printf ("input number for log base 10  ");
      scanf ("%F",&number);
      number = log (number);
      printf ("log base 10 is %12.9f\n",number);

      printf ("input number for exp  ");
      scanf ("%F",&number);
      number = exp(number);
      printf ("exp is %12.9f\n",number);

      printf ("input number for antilog base 10  ");
      scanf ("%F",&number);
      number = alog (number);
      printf ("alog is %12.9f\n",number);


SCITEST.C  (continued)

      printf ("input number for xtoy  ");
      scanf ("%F",&number);
      printf ("input power for xtoy  ");
      scanf ("%F",&power);
      number = xtoy (number,power);
      printf ("xtoy is %15.11f",number);

}


                        THIS PAGE INTENTIONALLY LEFT BLANK
