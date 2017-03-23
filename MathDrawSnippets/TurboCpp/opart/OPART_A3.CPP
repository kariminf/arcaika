#include <graphics.h>
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include<math.h>
#define d 4
#define z 20
#define r 30
void main(void)
{
   /* request auto detection */
   int gdriver = DETECT, gmode, errorcode;
   int midx, midy,i,j,f;
   float ar,rr,a;
   float x [4],y[4];

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
   setcolor(9);
   midx = getmaxx() / 2;
   midy = getmaxy() / 2;
   ar=6.283185307/d;
   rr=midy;
   for(f=1;f<=d;f++)
   {
   x[0]=midx;
   y[0]=midy;
   a=(f-1)*ar;
   x[1]=cos(a)*rr+midx;
   y[1]=sin(a)*rr+midy;
   a=f*ar;
   x[2]=cos(a)*rr+midx;
   y[2]=sin(a)*rr+midy;
   x[3]=x[0];
   y[3]=y[0];
   for(j=1;j<=r;j++)
   {
      for(i=0;i<3;i++)
      {
       line(x[i],y[i],x[i+1],y[i+1]);
      }

   for(i=0;i<3;i++)
   {
   x[i]+=(x[i+1]-x[i])/z;
   y[i]+=(y[i+1]-y[i])/z;
   }
   x[3]=x[0];
   y[3]=y[0];
   }//end for j
   }
   getch();
   closegraph();
   }