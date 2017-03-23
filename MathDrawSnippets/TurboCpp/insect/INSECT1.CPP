#include <graphics.h>
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include<math.h>
#define n 3
#define d 15
#define k 20
void main(void)
{
   /* request auto detection */
   int gdriver = DETECT, gmode, errorcode;
   int midx, midy,i,j,a;
   float p,rr,z;
   float x [n+1],y[n+1];

   /* initialize graphics and local
      variables */
   initgraph(&gdriver, &gmode, "");

   /* read result of initi
   alization */
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
   rr=midy;
   p=360/n;
   a=0;i=0;
   z=3.14159265/180;
   while (i<n)
   {
   x[i]=midx+rr*cos(a*z);
   y[i]=midy+rr*sin(a*z);
   i++;
   a+=p;
   }
   x[n]=x[0];
   y[n]=y[0];
   for(i=1;i<=k;i++)
   {
   for(j=0;j<n;j++)
   {
   line(x[j],y[j],x[j+1],y[j+1]);
   }
   for(j=0;j<n;j++)
   {
   x[j]=x[j]+(x[j+1]-x[j])/d;
   y[j]=y[j]+(y[j+1]-y[j])/d;
   }
   x[n]=x[0];
   y[n]=y[0];
   }
   getch();
   closegraph();
   }