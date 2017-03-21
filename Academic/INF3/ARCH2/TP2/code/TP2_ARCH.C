#include <graphics.h>
#include <dos.h>
#include <stdlib.h>
#include <conio.h>
#include <string.h>
#include <souris.h>
#include <graph.h>
#include <intr.h>
#define INTR 0X1C    /* The clock tick interrupt */

#ifdef __cplusplus
    #define __CPPARGS ...
#else
    #define __CPPARGS
#endif

void interrupt ( *oldhandler)(__CPPARGS);

int count=0;
//*******************************************
//*******************************************
void interrupt handler(__CPPARGS)
{
/* increase the global counter */
   count++;
/* call the old routine */
   oldhandler();
}
//***********************************************


void main()
{
  int x,y,i,fini,etat,Npgm,choice,code;
  int MASQUE[4];
int RMIN[4][5];
int RMN[4];
int PGM[20][2];
int CONTEXTE[20][2];
int COUNT_PILE;
int COURANT[2];
  init_graph();
  init_souris(getmaxx(),getmaxy());
  about();
  init_screen();
  affich_souris();
  INIT_FIN(&x,&y);
  INIT_TIME(PGM);

  INITIAL(MASQUE,RMIN,RMN,PGM);

  fini=0;
  etat=0;
  COUNT_PILE=20;
  COURANT[0]=-1;
  settextstyle(0,0,0);
  aff_info(-1,0,PGM);
//* save the old interrupt vector
  oldhandler = getvect(INTR);

//* install the new interrupt handler
  setvect(INTR, handler);
  count=0;
  affich_msg("Cliquer sur les programmes que vous voulez ex‚cuter");

  while (! fini)
  {
     //*****************************
     //apres N ticks d'horloge
     if (count==5)
     {
       //le mise a jour
       MAJ_RMINi(RMIN,PGM);
       MAJ_RMN(RMIN,MASQUE,RMN);

       //******************************************
	if(COURANT[0]!=-1)
	{

	   //l'execution du programme en cours

	   //diminution de compteur du programme
	   COURANT[1]=COURANT[1]-1;

	   //verification si le temps est fini
	   if (COURANT[1]==0)
	   {
	       //Fin de la demande d'interruption
	       PGM[COURANT[0]][0]=0;
	       cliquer(COURANT[0],0);
	       //pas de programme en cours
		   COURANT[0]=-1;
		   //demasquer tous les niveaux
		   for(i=0;i<=3;i++)
		   MASQUE[i]=1;
	       //verification s'il y a un programme dans la pile
	       if (COUNT_PILE<20)
	       {
		   aff_depile(COUNT_PILE);
		   FINI_PGM(&COURANT[0],MASQUE,CONTEXTE,&COUNT_PILE,&COURANT[1]);

	       }
	     MAJ_RMINi(RMIN,PGM);
	     MAJ_RMN(RMIN,MASQUE,RMN);
	   }//(COURANT[1]==0)
	 if(!(IRQ(RMN) && COURANT[0]==-1))
	aff_info(COURANT[0],COURANT[1],PGM);
	   //fin execution du programme en cours
	}//(COURANT[0]!=-1)
       //**************************************************
	//si on a une interruption
	if(IRQ(RMN))
	    {
	    //envoi du code de programme interruptible
	    code=IACK(PGM);
	    //empilement de contexte
	    //et mise a jour du registre MASQUE

	    START_PGM(COURANT[0],code,MASQUE,CONTEXTE,&COUNT_PILE,COURANT[1]);
	    //s'il y a un pgm en cours on empile
	    if(COURANT[0]!=-1)
	    {
	       //affichage de nouveux element dans la pile
	       aff_empile(COUNT_PILE,COURANT[0],COURANT[1]);
	    }
	    //chargement de nouveau programme
	    COURANT[0]=code;
	    COURANT[1]=PGM[code][1];

	}//fin si on a une interruption



     count=0;
     } //apres N ticks d'horloge
//***************************
choice=CHOIX();

if(choice!=-1)
{
ADD(PGM,choice);
cliquer(choice,1);
}

fini=FIN(x,y,&etat);
}
//* reset the old interrupt handler
   setvect(INTR, oldhandler);

closegraph();
}