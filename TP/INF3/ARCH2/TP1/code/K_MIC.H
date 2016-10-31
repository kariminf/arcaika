void mic(int mp[])
{
int mcom[79][2];//memoire de commande
int rmi[2];//registre de micro-instruction
int mco=0;//micro compteur ordinal
int rdo,rad;//registres de donnees et adresse
int a,b;//les registres tempons A et B
int cycle=0;//le nombre des cycles processeur
int rg[16];//les registres
int compteur=0,e=1;
//initialisation des registres
   init_rg(rg,48);//fonction dans <k_fct.h>
   //initialisation de la memoire de commande
   init_mem(mcom);//fonction dans <k_fct.h>
while ((compteur<16)&&(mp[compteur]!=-1)&& e) //-1=0xffff;
{
ck1(mco,rmi,mcom);
ck2(&a,&b,rmi,rg);
ck3(&rad,b,rmi);
ck4(&mco,&rdo,rad,rg,rmi,mp,a,b);
cycle++;
if(mco==0)
{
compteur=rg[0];
affich_etat(rg,mp,cycle);
if ((compteur<16)&&(mp[compteur]!=-1))
{
bouton(&e);
delay(350);
}
}
}
}//fin de programme