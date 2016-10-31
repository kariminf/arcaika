//***************************************************
//LA FONCTION QUI LIT LES INSTRUCTIONS
//***************************************************
void lire1(char kaka[],int y0)
{
int i=0;
char tmp;
settextstyle(0, HORIZ_DIR,0);
setfillstyle(6,9);
masq_souris();
bar(50,y0-5,120,y0+10);
affich_souris();
strcpy(kaka,"         ");
kaka[9]='\0';
moveto(50,y0);
while (i<=8)//while
{
masq_souris();
outtextxy(50+(8*i),y0,"_");
affich_souris();
tmp=getche();
if((isalpha(tmp))||(isdigit(tmp))||(tmp==13)||(tmp==8))
{
if(i<4)//if1
{
if(isalpha(tmp))//if2
{
kaka[i]=tmp;
i++;
if(i==4) i++;
}//endif2
else //else2
if(tmp==13) break;
else
if((tmp==8)&&(i>0))
{
i--;
kaka[i]=' ';
}
}//endif1
else //i>4
{
if(isdigit(tmp))//ifelse
{
kaka[i]=tmp;
i++;
}//endifelse
else //elseelse
if(tmp==13) break;
else
if(tmp==8)
{
i--;
if(i==4) i--;
kaka[i]=' ';
}
}//i>4
masq_souris();
bar(50,y0-5,120,y0+10);
outtextxy(50,y0,kaka);
affich_souris();
}//ecriture sur ecran
}//while
masq_souris();
bar(50,y0-5,120,y0+10);
outtextxy(50,y0,kaka);
affich_souris();
}//lire1
//**********************************************************
//***************Lire les donnees***************************
void lire2(char kaka[],int y0)
{
int i=0;
char tmp;
settextstyle(0, HORIZ_DIR,0);
setfillstyle(6,9);
strcpy(kaka,"    ");
kaka[4]='\0';
moveto(163,y0);
while (i<=3)//while
{
masq_souris();
outtextxy(163+(i*8),y0,"_");
affich_souris();
tmp=getche();
if((isxdigit(tmp))||(tmp==13)||(tmp==8))
{
if(isxdigit(tmp))//if2
{
kaka[i]=tmp;
i++;
}//endif2
else //else2
if(tmp==13) break;
else
if((tmp==8)&&(i>0))
{
i--;
kaka[i]=' ';
}
masq_souris();
bar(163,y0-5,195,y0+10);
outtextxy(163,y0,kaka);
affich_souris();
}//ecriture sur ecran
}//while
masq_souris();
bar(163,y0-5,195,y0+10);
outtextxy(163,y0,kaka);
affich_souris();
}//lire2
//**********************************************************
//*******AFFICHE LES NOMBRES EN HEXADECIMAL
//***********************************************************
void affich_nb(int k,int x0,int y0)
{
char h[5];
strcpy(h,"    ");
h[5]='\0';
itoa(k,h,16);
bar(x0,y0-5,x0+32,y0+10);
outtextxy(x0,y0,h);
}
//**********************************************************
//*******AFFICHE LE NOMBRE DES CYCLES
//***********************************************************
void affich_cycle(int k)
{
char h[10];
strcpy(h,"         ");
h[9]='\0';
itoa(k,h,10);
bar(403,195,440,210);
outtextxy(410,200,h);
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
      x=(x/2)-50;
      settextstyle(1, HORIZ_DIR,0);
      outtextxy(x,5,"MIC-I");
//**********************************************
settextstyle(0, HORIZ_DIR,0);
setfillstyle(9,5);
setlinestyle(0,7,3);
//sement code;
bar(20,60,127,420);
rectangle(20,60,127,420);
outtextxy(52,70,"SEGMENT");
outtextxy(60,80,"CODE");
//sement donnee
bar(133,60,205,420);
rectangle(133,60,205,420);
outtextxy(137,70,"SEGMENT");
outtextxy(147,80,"DONNEE");
//affichage des registres
bar(210,60,600,222);
rectangle(210,60,600,222);
outtextxy(300,70,"AFFICHAGE DES REGISRES");
//*******************************
outtextxy(240,100,"CO");
outtextxy(285,100,"AC");
outtextxy(330,100,"PP");
outtextxy(375,100,"RI");
outtextxy(420,100,"RIT");
outtextxy(465,100,"00");
outtextxy(510,100,"+1");
outtextxy(555,100,"-1");
outtextxy(225,140,"AMASQ");
outtextxy(275,140,"PMASQ");
outtextxy(330,140,"A");
outtextxy(375,140,"B");
outtextxy(420,140,"C");
outtextxy(465,140,"D");
outtextxy(510,140,"E");
outtextxy(555,140,"F");
//*******************************
//*****************************************
setfillstyle(6,9);
setlinestyle(0,7,1);
//**********************le # cycles**********
bar(400,192,450,212);
rectangle(400,192,450,212);
outtextxy(220,200,"Le nombre des cycles");
//**************
for(i=0;i<=15;i++)
{
x=(20*i)+94;
y=(20*i)+112;
bar(48,x,122,y);
rectangle(48,x,122,y);
bar(161,x,198,y);//***** graphics.h *****
rectangle(161,x,198,y);
}//endfor
//*******************************
for(i=0;i<=7;i++)
{
x=(45*i)+230;
y=(45*i)+267;
bar(x,114,y,132);
rectangle(x,114,y,132);
bar(x,154,y,172);
rectangle(x,154,y,172);
}//endfor
//*****************************
setfillstyle(9,5);
for(i=0;i<=15;i++)
{
x=(20*i)+100;
y=i;
itoa(y,k,10);
outtextxy(30,x,k);
//segment donnee
y=i+16;
itoa(y,k,10);
outtextxy(140,x,k);
}//endfor
outtextxy(457,120,"0000");
outtextxy(502,120,"0001");
outtextxy(547,120,"ffff");
outtextxy(234,160,"0fff");
outtextxy(280,160,"00ff");
}
//*********************************************************
// la lecture des instructions et les donn‚es et le remplissage
//de la m‚moire centrale
//*********************************************************
void lecture(int mp[])
{
int i,j;
int code,pp;
char scode[10],s[5],oui,*rep;
      pp=-1;
      rep="Ins‚rer le code sous forme (xxxx 9999) en d‚cimal ...EXIT pour finir";
      affich_msg(rep);
      i=0;
      //lecture des instructions jusqu'a la fin ou "exit"
      while(i<=15)
      {
      j=(20*i)+100;
      lire1(scode,j);
      convert(scode,&code,&oui,&pp);
      if(oui=='e') break;
      else
      {
//***********affichage**********
switch (oui)
{
case 'n':{rep="Donn‚e assez grande (0-1096)";break;}//28
case 'd':{rep="Adresse de donn‚e incorrecte (16-31)";break;} //44
case 'x':{rep="adresse hors memoire (il faut empiler avant)\0";break;}
case '1':{rep="On ne peut pas depiler(il faut empiler avant)";break;}
case 'i':{rep="Adresse hors segment d'instruction(0-15)";break;}
case 'm':{rep="defaut dans le code mnemonique";break;}
case 'o':{rep="Ins‚rer un autre code sous forme (xxxx 9999) en d‚cimal ...EXIT pour finir";break;}
case 'f':{rep="Ins‚rer un autre code sous forme (xxxx 9999) en d‚cimal ...EXIT pour finir";break;}
}
      affich_msg(rep);
      if((oui=='o')||(oui=='f'))
      {
      mp[i]=code;
      i++;
     }
      }
      }
      //insertion des donnees
      affich_msg("Ins‚rer la donn‚e en h‚xad‚cimal (ENTREE sans insertion) pour finir");
      for(i=16;i<=31;i++)
      {
      j=(20*(i-16))+100;
      lire2(s,j);
      if(strcmpi(s,"    ")==0) break;
      else
      {
      s[5]='\0';
      mp[i]=strtoul(s,&rep,16);
      }
      }
}
//*****************************************************
//****La fonction qui affiche le message sur le barre d'etat
//******************************************************
void affich_etat(int rg[],int mp[],int cycle)
{
int i,j,k;
char s[5];
settextstyle(0, HORIZ_DIR,0);
setfillstyle(6,9);
setcolor(14);
masq_souris();
//l'affichage de nouveaux etat de segment de donn‚es
for(i=16;i<=31;i++)
{
      j=(20*(i-16))+100;
      affich_nb(mp[i],163,j);
}
 affich_nb(rg[0],233,120);
 affich_nb(rg[1],278,120);
 affich_nb(rg[2],323,120);
 affich_nb(rg[3],368,120);
 affich_nb(rg[4],413,120);

 affich_nb(rg[10],322,160);
 affich_nb(rg[11],367,160);
 affich_nb(rg[12],412,160);
 affich_nb(rg[13],457,160);
 affich_nb(rg[14],502,160);
 affich_nb(rg[15],547,160);

 affich_cycle(cycle);
 affich_souris();
}
//****************************************************************
//la fonction qui initialise la boite de dialoge
//****************************************************************
void init_boite()
{
settextstyle(0, HORIZ_DIR,0);
setfillstyle(1,9);
masq_souris();
bar(250,230,560,250);
setfillstyle(1,8);
bar(250,250,560,350);
setcolor(4);
outtextxy(260,240,"MIC-I ... SORTIR");
setcolor(0);
outtextxy(260,270,"Voulez-vous sortir ou continuer?");
affich_souris();
}
//****************************************************************
//la fonction qui gere la boite de dialoge
//****************************************************************
void bouton(int *e)
{
int x0,y0,b,a1,a2;
a1=0;
a2=0;
b=0;
 while (1==1)
     {
    etat_souris(&x0,&y0,&b);
    //le bouton 1
    if((x0<380 && x0>260 && y0<340 && y0>300)&& a1)
    {
    setcolor(12);
    setfillstyle(1,12);
    masq_souris();
    fillellipse(320,320,60,20);
    setcolor(0);
    outtextxy(288,315,"CONTINUE");
    affich_souris();
    a1=!a1;
    }
    if((x0<380 && x0>260 && y0<340 && y0>300)&& b==1) break;
    if(!(x0<380 && x0>260 && y0<340 && y0>300)&& !a1)
    {
    setcolor(4);
    setfillstyle(1,4);
    masq_souris();
    fillellipse(320,320,60,20);
    setcolor(0);
    outtextxy(288,315,"CONTINUE");
    affich_souris();
    a1=!a1;
    }
    //le bouton 2
    if((x0<550 && x0>430 && y0<340 && y0>300)&& a2)
    {
    setcolor(12);
    setfillstyle(1,12);
    masq_souris();
    fillellipse(490,320,60,20);
    setcolor(0);
    outtextxy(460,315,"QUITTER");
    affich_souris();
    a2=!a2;
    }
    if((x0<550 && x0>430 && y0<340 && y0>300)&& b==1) {*e=0;break;}
    if(!(x0<550 && x0>430 && y0<340 && y0>300)&& !a2)
    {
    setcolor(4);
    setfillstyle(1,4);
    masq_souris();
    fillellipse(490,320,60,20);
    setcolor(0);
    outtextxy(460,315,"QUITTER");
    affich_souris();
    a2=!a2;
    }
    }
}
//***************************************************************
//le dialogue de fin
//***************************************************************
void fin_bout()
{
int x0,y0,b,a1;
a1=0;
b=0;
//*******************************
settextstyle(0, HORIZ_DIR,0);
setfillstyle(1,14);
masq_souris();
bar(250,230,560,250);
setfillstyle(1,15);
bar(250,250,560,350);
setcolor(4);
outtextxy(260,240,"AU REVOIR ....");
setcolor(0);
outtextxy(260,270,"Le programme est termin‚ ...");
    setcolor(2);
    setfillstyle(1,2);
    fillellipse(400,320,60,20);
    setcolor(0);
    outtextxy(368,315,"QUITTER");
affich_souris();
//*******************************
 while (1==1)
     {
    etat_souris(&x0,&y0,&b);
    //le bouton fin
    if((x0<460 && x0>340 && y0<340 && y0>300)&& a1)
    {
    setcolor(10);
    setfillstyle(1,10);
    masq_souris();
    fillellipse(400,320,60,20);
    setcolor(0);
    outtextxy(368,315,"QUITTER");
    affich_souris();
    a1=!a1;
    }
    if((x0<460 && x0>340 && y0<340 && y0>300)&& b==1) break;
    if(!(x0<460 && x0>340 && y0<340 && y0>300)&& !a1)
    {
    setcolor(2);
    setfillstyle(1,2);
    masq_souris();
    fillellipse(400,320,60,20);
    setcolor(0);
    outtextxy(368,315,"QUITTER");
    affich_souris();
    a1=!a1;
    }
    }
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
      outtextxy(x0,5,"MIC-I");
      settextstyle(4, HORIZ_DIR,0);
      setcolor(15);
      outtextxy(x0-100,70,"ARIES Abd elkarim");
      settextstyle(3, HORIZ_DIR,2);
      setcolor(15);
      outtextxy(x0-120,120,"TP: architecture des ordinateurs");
      outtextxy(x0-170,140,"Mise en oeuvre de micro-machine (MIC-I)");
      settextstyle(1, HORIZ_DIR,1);
      setcolor(12);
      outtextxy(80,180,"Etudiant charg‚ de TP:");
      outtextxy(80,200,"Professeur de module:");
      outtextxy(80,220,"Ann‚e universitaire:");
      outtextxy(80,240,"La branche:");
      outtextxy(80,260,"Universit‚e:");
      settextstyle(7, HORIZ_DIR,1);
      setcolor(9);
      outtextxy(300,180,"ARIES Abd elkarim");
      outtextxy(300,200,"Dr: DJABELKHIR Assia");
      outtextxy(300,220,"2006/2007");
      outtextxy(300,240,"3iŠme Informatique (CL)");
      outtextxy(300,260,"Universit‚e de Jijel");
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