#include <graphics.h>
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
void dragon (int x1,int y1,int x2,int y2,int p)
{int c1,c2;
if (p==0) line(x1, y1, x2, y2);
else
{
c1=x1+(x2-x1)/2-(y2-y1)/2;
c2=y1+(y2-y1)/2+(x2-x1)/2;
dragon(c1,c2,x1,y1,p-1);
dragon(c1,c2,x2,y2,p-1);
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

   setcolor(1);
   dragon(100,100,300,300,14);
   /* clean up */
   getch();
   closegraph();
   return 0;
}