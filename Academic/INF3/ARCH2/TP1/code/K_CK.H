/*KARIM CLOCK(K_CK) est une unite qui se compose des
fonctions suivantes:
*ck1: permet de charger la micro-instruction de MCOM a RMI
*ck2: permet de charger le contenue des bus A et B
*ck3: permet de charger le RAD
*ck4: permet de manipuler UAL,DECAL,RDO,Regisres,MCO    */
//******************************************************************
//le clock1
//******************************************************************
// permet de charger la micro-instruction de MCOM a RMI
//******************************************************************
void ck1(int mco,int rmi[],int mcom[79][2])
{
rmi[0]=mcom[mco][0];
rmi[1]=mcom[mco][1];
}
//******************************************************************
//le clock2
//******************************************************************
//permet de charger le contenue des bus A et B
//******************************************************************
void ck2(int *a,int *b,int rmi[],int rg[])
{
int i;
i=(rmi[1]>>8)& 0x000f;
*a=rg[i];
i=(rmi[1]>>12)& 0x000f;
*b=rg[i];
}
//******************************************************************
//le clock3
//******************************************************************
// permet de charger le RAD
//******************************************************************
void ck3(int *rad,int b,int rmi[])
{
int i;
i=(rmi[0]>>7)& 0x0001;//le champ RAD
if(i) *rad=b& 0x0fff;//puisque le RAD est sur 12 bits
}
//******************************************************************
//le clock 4
//******************************************************************
// permet de manipuler UAL,DECAL,RDO,Regisres,MCO
//******************************************************************
void ck4(int *mco,int *rdo,int rad,int rg[],int rmi[],int mp[],int a,int b)
{ int i,j,z,n,ual,ek;
//extraire de champ AMUX
i=(rmi[0]>>15)&0x0001;
//fonctionnement de AMUX
if (i) ek=*rdo;
else ek=a;
//faire operations de UAL (arithmetique et decalage)sur e et b
i=(rmi[0]>>11)&0x0003;//le champ UAL
j=(rmi[0]>>9)&0x0003;//le champ DECAL
operation(&ual,&n,&z,ek,b,i,j);
//ecriture sur les registres
i=(rmi[0]>>4)&0x0001;//le champ VALC
if (i)
{
i=rmi[0]&0x000f;//le champ C (adresse de ecriture)
rg[i]=ual;
}
//ecriture sur RDO
i=(rmi[0]>>8)&0x0001;//exraire de champ rdo
if (i) *rdo=ual;
//ecriture sur RDO via la memoire
i=(rmi[0]>>6)&0x0001;//champ RD
if (i) *rdo=mp[rad];
//ecriture sur la memoire principale via RDO
i=(rmi[0]>>5)&0x0001;//champ WR
if (i) mp[rad]=*rdo;
//incrementation de MCO ou le infecter une adresse
i=(rmi[0]>>13)&0x0003;//le champ COND
if ((i==3)||(i==2 && z)||(i==1 && n))
*mco=rmi[1]&0x00ff;//le champ ADR
else *mco=*mco+1;//incrementation
}