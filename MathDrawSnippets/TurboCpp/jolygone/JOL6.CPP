#include <graphics.h>
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include<math.h>
void main(void)
{
   /* request auto detection */
   int gdriver = DETECT, gmode, errorcode;
   int midx, midy, i,r;
   float x,y,x0,y0,a,k,rr;

   /* initialize graphics and local
      variables */
   initgraph(&gdriver, &gmode, "");

   /* read result of initialization */
   errorcode = graphresult();
   if (errorcode != grOk)  /* an error
       occurred */
   {
      printf("Graphics error: %s\n", grapherrormsg(errorcode));
      printf("Press any key to halt:");
      getch();
      exit(1); /* terminate with an error
		  code */
   }

   midx = getmaxx() / 2;
   midy = getmaxy() / 2;
   r=50;
   a=(175*3.14159265)/180;
   k=0.95;
   rr=2*midy;
   i=1;
   x0=midx*1.7;
   y0=midy*(2-k);
   while(i<=r)
   {
   x=x0+pow(k,i)*cos(i*a)*rr;
   y=y0+pow(k,i)*sin(i*a)*rr;
   line(x0,y0,x,y);
   x0=x;
   y0=y;
   i++;
   }
   getch();
   }