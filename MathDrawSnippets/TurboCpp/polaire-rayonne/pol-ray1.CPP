#include<conio.h>
#include<math.h>
#include<graphics.h>
#include<stdio.h>
#include<stdlib.h>
#define pi 3.14159
void main()
{
float i,x,y,p,f,a,b;
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
r=2*y0/5;
b=2*pi;i=0;
p=0.03;
a=b+0.1*p;
setcolor(12);
while (i<=a)
{
f=1+2*cos(2*i);
x=x0+(f*cos(i)*r);
y=y0+(f*sin(i)*r);
line(x0,y0,x,y);
i=i+p;
}
getch();
}