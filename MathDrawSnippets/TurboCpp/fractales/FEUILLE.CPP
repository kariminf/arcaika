/*CE PROGRAM EST CREE PAR:
	   ARIES Abd elkarim
Comment je decouvrait cet algorithme:
lorsque j'etait au chaine de repas de denier
j'etait tres degoute, lorsque je vois une feuille
de pin et directement l'aide de cet algorithme
entrait directement a mon tete
c'est extra ordinaire*/
#include <graphics.h>
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
void feuille (int xa,int ya,int xb,int yb,int p)
{int xd,xk1,xk2,yd,yk1,yk2;
if (p !=0)
{
line(xa, ya, xb, yb);
xd=xa+(xb-xa)/4;
yd=ya+(yb-ya)/4;
xk1=xa+(xb-xa)/2-(yb-yd)/4;
yk1=ya+(yb-ya)/2+(xb-xd)/4;
xk2=xa+(xb-xa)/2+(yb-yd)/4;
yk2=ya+(yb-ya)/2-(xb-xd)/4;
feuille(xd,yd,xk1,yk1,p-1);
feuille(xd,yd,xk2,yk2,p-1);
feuille(xd,yd,xb,yb,p-1);
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

   setcolor(2);
   feuille(50,50,400,400,10);
   /* clean up */
   getch();
   closegraph();
   return 0;
}