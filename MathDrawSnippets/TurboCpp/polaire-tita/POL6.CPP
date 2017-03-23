#include<conio.h>
#include<math.h>
#include<graphics.h>
#include<stdio.h>
#include<stdlib.h>
#define pi 3.141592654
void main()
{
float i,x1,y1,x2,y2,p,l,f;
int x0,y0,r;
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
r=80;
p=0.1;
f=cos(0)+(7/3);
x1=x0+(f*cos(0)*r);
y1=y0+(f*sin(0)*r);
i=p;
l=(8*pi)+0.9*p;
setcolor(10);
while (i<=l)
{
f=cos(9*i/4)+(7/3);
x2=x0+(f*cos(i)*r);
y2=y0+(f*sin(i)*r);
line(x1,y1,x2,y2);
x1=x2;
y1=y2;
i=i+p;
}
getch();
}