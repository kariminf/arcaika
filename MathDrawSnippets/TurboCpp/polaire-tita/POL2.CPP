#include<conio.h>
#include<math.h>
#include<graphics.h>
#include<stdio.h>
#include<stdlib.h>
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
r=y0/2;
p=0.3;
f=1/sqrt(0.2);
x1=x0+(f*cos(0.2)*r);
y1=y0+(f*sin(0.2)*r);
i=0.2+p;
l=40+0.9*p;
setcolor(10);
while (i<=l)
{
f=1/sqrt(i);
x2=x0+(f*cos(i)*r);
y2=y0+(f*sin(i)*r);
line(x1,y1,x2,y2);
x1=x2;
y1=y2;
i=i+p;
}
getch();
}