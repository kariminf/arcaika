void affich_nb(int k,int x0,int y0)
{
char h[5];
strcpy(h,"    ");
h[5]='\0';
itoa(k,h,10);
outtextxy(x0,y0,h);
}

//**************************************************************
//**************************************************************
//QUI AFFICHE LES MESSAGES SUR BARRE D'ETAT
//**************************************************************
void affich_msg(char *h)
{
int x,y;
x=getmaxx();
y=getmaxy();
setfillstyle(11,5);
setcolor(15);
masq_souris();
bar(7,y-30,x-7,y-8);
outtextxy(10,y-20,h);
affich_souris();
}
//*************************************************************
//INITIALISE LE MODE GRAPHIQUE
//*************************************************************
void init_graph()
{
 /* request auto detection */
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

}
//***************************************************************
//INITIALISATION DE LA SURFACE D'ECRAN
//***************************************************************
void init_screen()
{
int i,x,y;
char *k;
//*****************initialisation d'ecran*******
      x = getmaxx() ;
      y = getmaxy() ;
      setfillstyle(9,1);//(style,couleur)
      bar(0, 0,x,y);//***** graphics.h *****
      setcolor(7);
      setlinestyle(0,5,3);
      rectangle(0,0,x,y);
      rectangle(5,5,x-5,y-5);
      setcolor(14);//le couleur d'ecriture
       //**********************bare d'etat
      setfillstyle(11,5);
      bar(7,y-30,x-7,y-8);
      //******************************************
      x=(x/2)-100;
      settextstyle(1, HORIZ_DIR,0);
      outtextxy(x,5,"INTERRUPTION");
settextstyle(0, HORIZ_DIR,0);
setfillstyle(1,2);
outtextxy(30,50,"NIVEAU 0");
outtextxy(140,50,"NIVEAU 2");
for(i=0;i<=4;i++)
{
x=(30*i)+80;
y=i;
itoa(y,k,10);
bar(40,x-10,120,x+10);
outtextxy(30,x,k);
//niveau 2
y=i+10;
itoa(y,k,10);
bar(150,x-10,230,x+10);
outtextxy(130,x,k);
}//endfor
outtextxy(30,230,"NIVEAU 1");
outtextxy(140,230,"NIVEAU 3");
for(i=5;i<=9;i++)
{
x=(30*i)+115;
y=i;
itoa(y,k,10);
bar(40,x-10,120,x+10);
outtextxy(30,x,k);
//niveau3
y=i+10;
itoa(y,k,10);
bar(150,x-10,230,x+10);
outtextxy(130,x,k);
}//endfor
x=getmaxx();
//La pile de contexte
outtextxy(x-100,70,"PILE DE ");
outtextxy(x-80,85,"CONTEXTE");
for(i=0;i<=19;i++)
{
y=(17*i)+100;
bar(x-100,y,x-20,y+12);
}
//*********************************
//*l'affichage du pgm en cours
setcolor(12);
settextstyle(8,0,1);
outtextxy(255,72,"LE PROGRAMME EN COURS");
outtextxy(255,122,"LE TEMPS RESTANT");
outtextxy(255,180,"La barre de temps");
//--------------------------------------------
//setcolor(0);
//bar(250,100,455,112);
//bar(250,150,455,162);
//settextstyle(0,0,0);
//outtextxy(255,102,"Pas de programme en cours lklkljljjj");
//outtextxy(255,152,"Pas de temps a afficher");

}
//************************************************************
//***A PROPOS DE .....
//************************************************************
void about()
{
int x0,y0,a1,b,x,y;
      x0 = getmaxx() ;
      y0 = getmaxy() ;
      setfillstyle(1,0);//(style,couleur)
      bar(0, 0,x0,y0);//***** graphics.h *****
      setlinestyle(0,5,3);
      rectangle(0,0,x0,y0);
      rectangle(5,5,x0-5,y0-5);
      setcolor(14);//le couleur d'ecriture
//********************************************
      x0=(x0/2)-50;
      settextstyle(10, HORIZ_DIR,4);
      outtextxy(x0-130,5,"INTERRUPTION");
      settextstyle(4, HORIZ_DIR,0);
      setcolor(15);
      outtextxy(x0-100,70,"ARIES Abd elkarim");
      outtextxy(x0-100,100,"KRIOUI Abd elhakim");
      settextstyle(3, HORIZ_DIR,2);
      setcolor(15);
      outtextxy(x0-120,140,"TP2: architecture des ordinateurs");
      outtextxy(x0-200,160,"Simulation d\'un systŠme d\'interruption hi‚rarchis‚");
      settextstyle(1, HORIZ_DIR,1);
      setcolor(12);
      outtextxy(80,200,"Etudiants charg‚s de TP:");
      outtextxy(80,240,"Professeur de module:");
      outtextxy(80,260,"Ann‚e universitaire:");
      outtextxy(80,280,"La branche:");
      outtextxy(80,300,"Universit‚e:");
      settextstyle(7, HORIZ_DIR,1);
      setcolor(9);
      outtextxy(350,200,"ARIES Abd elkarim");
      outtextxy(350,220,"KRIOUI Abd elhakim");
      outtextxy(350,240,"Dr: DJABELKHIR Assia");
      outtextxy(350,260,"2006/2007");
      outtextxy(350,280,"3iŠme Informatique (CL)");
      outtextxy(350,300,"Universit‚e de Jijel");
//**********************************************
x=(getmaxx()/2);
y=(getmaxy()/4)*3;
settextstyle(1, HORIZ_DIR,1);
    setcolor(2);
    setfillstyle(1,2);
    fillellipse(x,y,60,20);
    setcolor(0);
    outtextxy(x-30,y-10,"  OK ");
affich_souris();
//*******************************
 while (1==1)
     {
    etat_souris(&x0,&y0,&b);
    //le bouton fin
    if((x0<(x+60) && x0>(x-60) && y0<(y+20) && y0>(y-20))&& a1)
    {
    setcolor(10);
    setfillstyle(1,10);
    masq_souris();
    fillellipse(x,y,60,20);
    setcolor(0);
    outtextxy(x-30,y-10,"  OK ");
    affich_souris();
    a1=!a1;
    }
    if((x0<(x+60) && x0>(x-60) && y0<(y+20) && y0>(y-20))&& b==1) break;
    if(!(x0<(x+60) && x0>(x-60) && y0<(y+20) && y0>(y-20))&& !a1)
    {
    setcolor(2);
    setfillstyle(1,2);
    masq_souris();
    fillellipse(x,y,60,20);
    setcolor(0);
    outtextxy(x-30,y-10,"  OK ");
    affich_souris();
    a1=!a1;
    }
    }
 masq_souris();
}
//****************************************************
//****************************************************
//****************************************************
int FIN(int x ,int y ,int *a1)
{
int x0,y0,b;
    etat_souris(&x0,&y0,&b);
    //le bouton fin
    if((x0<(x+60) && x0>(x-60) && y0<(y+20) && y0>(y-20))&& *a1)
    {
    setcolor(10);
    settextstyle(1, HORIZ_DIR,1);
    setfillstyle(1,10);
    masq_souris();
    fillellipse(x,y,60,20);
    setcolor(0);
    outtextxy(x-30,y-10," FIN ");
    affich_souris();
    *a1=!*a1;
    }
    if((x0<(x+60) && x0>(x-60) && y0<(y+20) && y0>(y-20))&& b==1) return 1;
    if(!(x0<(x+60) && x0>(x-60) && y0<(y+20) && y0>(y-20))&& !*a1)
    {
    setcolor(2);
    setfillstyle(1,2);
    settextstyle(1, HORIZ_DIR,1);
    masq_souris();
    fillellipse(x,y,60,20);
    setcolor(0);
    outtextxy(x-30,y-10," FIN ");
    affich_souris();
    *a1=!*a1;
    }
    return 0;
}
//****************************
//****************************
//****************************
void INIT_FIN(int *x,int *y)
{
*x=(getmaxx()/2);
*y=(getmaxy()/9)*8;
settextstyle(1, HORIZ_DIR,1);
setcolor(2);
setfillstyle(1,2);
masq_souris();
fillellipse(*x,*y,60,20);
setcolor(0);
outtextxy(*x-30,*y-10," FIN ");
affich_souris();
}
//*********************************************
//*********************************************
//*********************************************
int click(int x,int y)
{
int x0,y0,b;
etat_souris(&x0,&y0,&b);
if((x0<(x+80) && x0> x && y0<(y+20) && y0> y)&& b==1) return 1;
return 0;
}
//*********************************************************
///********************************************************
///Retourner le programme choisi
///********************************************************
///********************************************************
int CHOIX()
{
int i,y;
for(i=0;i<=4;i++)
{
y=(30*i)+70;
if (click(40,y)) return i;
if (click(150,y)) return (i+10);
y=y+185;
if (click(40,y)) return (i+5);
if (click(150,y)) return (i+15);
}
return -1;
}
///***********************************************************
//************************************************************
//
//*************************************************************
void aff_empile(int count_pile,int nbr_pgm,int rest_time)
{
int indexy,indexx;
indexx=getmaxx()-90;
indexy=(17*count_pile)+102;
settextstyle(0,0,0);
masq_souris();
affich_nb(nbr_pgm,indexx,indexy);
indexx=indexx+40;
affich_nb(rest_time,indexx,indexy);
affich_souris();
}
//**************************************************
//**************************************************
//
//**************************************************
void aff_depile(int count_pile)
{
int indexy,indexx;
indexx=getmaxx()-100;
indexy=(17*count_pile)+100;
setfillstyle(1,2);
masq_souris();
bar(indexx,indexy,indexx+80,indexy+12);
affich_souris();
}
//*************************************************
void aff_info(int new_index,int rest_time,int pgm[20][2])
{
div_t progress;
int dx;

masq_souris();
bar(250,100,455,112);
bar(250,150,455,162);
affich_souris();

settextstyle(0,0,0);
if(new_index!=-1)
{
masq_souris();
affich_nb(new_index,255,102);
affich_nb(rest_time,255,152);
bar(235,220,535,240);
affich_souris();
dx=(pgm[new_index][1]-rest_time)*280;
progress=div(dx,pgm[new_index][1]);
dx=progress.quot +245;
setfillstyle(1,12);
masq_souris();
bar(245,224,dx,236);
affich_souris();
setfillstyle(1,2);
}
else
{
setfillstyle(9,1);
masq_souris();
bar(235,220,535,240);
outtextxy(255,102,"Pas de programme en cours");
outtextxy(255,152,"Pas de temps a afficher");
affich_souris();
setfillstyle(1,2);
}
}
//****************************************************
void cliquer(int index,int efface)
{
int dx,dy;
div_t cause;

if(index<=9)
    dx=40;
else
    dx=150;
cause=div(index,5);
dy=(30*cause.rem)+70;

if ((index<=9 && index>=5)||(index<=19 && index>=15))
    dy=dy+185;

if(efface)
{
setfillstyle(6,5);
masq_souris();
bar(dx,dy,dx+80,dy+20);
affich_souris();
setfillstyle(1,2);
}
else
{
setfillstyle(1,2);
masq_souris();
bar(dx,dy,dx+80,dy+20);
affich_souris();
}

}