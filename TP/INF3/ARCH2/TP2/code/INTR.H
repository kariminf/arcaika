//pour faire la mise a jour des RMINs
void MAJ_RMINi(int rmin[4][5],int pgm[20][2])
{
int i;
div_t ind;
for (i=0;i<=19;i++)
    {
    ind = div(i,5);
    //ind.quot= i div(5)=Le niveau
    //ind.rem=i mod(5)= Le nbr pgm dans le niveau
    rmin[ind.quot][ind.rem]=pgm[i][0];
    }
}
//********************************************
//********************************************
//*
//********************************************
void MAJ_RMN(int rmin[4][5],int masque[4],int rmn[4])
{
int ou;
int i,j;

for (i=0;i<=3;i++)
    {
    ou=0;
	for (j=0;j<=4;j++)
	    ou = ou || rmin[i][j];

    rmn[i]= ou && masque[i];

     }
}
//*******************************************

//la fonction IRQ
int IRQ(int rmn[4])
{
int irq,ou;
int i,j;
irq=0;
for (i=0;i<=3;i++)
    irq = irq || rmn[i];
return irq;
}
//Fin de IRQ
//**************************************************************
//Ajouter de nouveaux demandes d'interruption
void ADD(int pgm[20][2],int nbr)
{

if (pgm[nbr][0]==0 )
{
pgm[nbr][0]=1;

}

}
//END ADD
//*********************************************************
//*********************************************************
//Detection de la source d'interruption
int IACK(int pgm[20][2])
{
int i;
for(i=0;i<=19;i++)
     if (pgm[i][0]==1)
	   break;
return i;
}
//******************************************************
//initialisation des registres
void INITIAL(int masque[4],int rmin[4][5],int rmn[4],int pgm[20][2])
{
int i,j;
for (i=0;i<=3;i++)
   {
   masque[i]=1;
   rmn[i]=0;
   }
for (i=0;i<=19;i++)
   {
    pgm[i][0]=0;
   }
for (i=0;i<=3;i++)
for (j=0;j<=4;j++)
    rmin[i][j]=0;
}
//***************************************************
//Lancement d'une interruption
void START_PGM(int ancien_index,int new_index,int masque[4],int pile[20][2],int *sommet,int rest_time)
{
div_t ind;
int i;
//s'il y a un pgm en cours
if(ancien_index!=-1)
{
*sommet=*sommet-1;
pile[*sommet][0] = ancien_index;
pile[*sommet][1] = rest_time;

}//fin s'il y a un pgm en cours

for(i=0;i<=3;i++)
	masque[i]=0;
ind=div(new_index,5);
//ind.quot= i div(5)=Le niveau
//masquer les interruptions >= ce programme
for(i=0;i<ind.quot;i++)
	masque[i]=1;

}
//***********************************************************
//***********************************************************
//
//***********************************************************
void FINI_PGM(int *new_index,int masque[4],int pile[20][2],int *sommet,int *rest_time)
{
div_t ind;
int i;

*new_index=pile[*sommet][0];
*rest_time=pile[*sommet][1];
for(i=0;i<=3;i++)
	masque[i]=0;
ind=div(*new_index,5);
//ind.quot= i div(5)=Le niveau
//masquer les interruptions >= ce programme
for(i=0;i<ind.quot;i++)
	masque[i]=1;
*sommet=*sommet+1;
}
//**********************************
//*********************************
void INIT_TIME(int pgm[20][2])
{
int i;
for (i=0;i<=19;i++)
  pgm[i][1]=(5*i)+10;
}
