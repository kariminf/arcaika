#include<conio.h>
#include<math.h>
#include<graphics.h>
#include<stdio.h>
#include<stdlib.h>
#define pi 3.14159/180
void main()
{
float i,x1,y1,x2,y2,p,ar;
int x0,y0,r,d;
int gdriver = DETECT, gmode, errorcode;

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

x0 = getmaxx() / 2;
y0 = getmaxy() / 2;
r=y0;
d=3;
i=0;
p=2;

setcolor(10);
while (i<=360)
{
ar=i*pi;
x1=x0+(cos(ar)*r);
y1=y0+(sin(ar)*r);
x2=x0+(cos(d*ar)*r);
y2=y0+(sin(d*ar)*r);
line(x1,y1,x2,y2);
i=i+p;
}
getch();
}