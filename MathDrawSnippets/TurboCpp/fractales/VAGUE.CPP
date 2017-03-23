#include <graphics.h>
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
void vague (int x1,int y1,int x2,int y2,int p)
{int c1,c2,d1,d2,m1,m2;
if (p==0) line(x1, y1, x2, y2);
else
{
m1=(x1+x2)/2;
m2=(y1+y2)/2;
c1=x1+(m1-x1)/2-(m2-y1)/2;
c2=y1+(m2-y1)/2+(m1-x1)/2;
d1=m1+(x2-m1)/2+(y2-m2)/2;
d2=m2+(y2-m2)/2-(x2-m1)/2;
vague(x1,y1,c1,c2,p-1);
vague(c1,c2,d1,d2,p-1);
vague(d1,d2,x2,y2,p-1);
}
}

int main(void)
{
   /* request auto detection */
   int gdriver = DETECT, gmode, errorcode;
   /* initialize graphics and local variables */
   initgraph(&gdriver, &gmode, "");

   /* read result of initialization */
   errorcode = graphresult();
   /* an error occurred */
   if (errorcode != grOk)
   {
      printf("Graphics error: %s\n", grapherrormsg(errorcode));
      printf("Press any key to halt:");
      getch();
      exit(1);
   }

   setcolor(4);
   vague(100,100,300,300,10);
   /* clean up */
   getch();
   closegraph();
   return 0;
}