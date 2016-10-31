/*KARIM FONCTIONS(K_FCT) est une unite qui se compose des
fonctions suivantes:
*operation: qui fait les operations de UAL et de decalage
*init_rg  : qui fait les initialisations des registres
*init_mem : qui initialise la memoire de commande
*init_mp  : qui initialise la memoire principale */
//******************************************************************
// Procedure de operation UAL et decalage
//******************************************************************
void operation(int *ual,int *n,int *z,int ek,int b,int i,int j)
{
//les fonctions arithmetiques de UAL
switch (i)
{
case 0: *ual=ek+b;break;
case 1: *ual=ek&b;break;
case 2: *ual=ek;break;
case 3: *ual=-ek-1;break;
//puisque not(ek)=-ek-1
//par example not(1) sur 4 bits est 1110
//et (-1)=1111 alors (1110)=(1111)-1
}//fin switch
//mise a jour des flags N et Z
*n=(*ual>>15)&0x0001;
if(*ual==0) *z=1;
else *z=0;
//les fonctions de decalage
switch(j)
{
case 1: *ual=*ual>>1;break;//decalage a droite
case 2: *ual=*ual<<1;break;//decalage a gauche
}

}//fin de operation
//******************************************************************
// Procedure de initialisation des registres
//******************************************************************
void init_rg(int rg[],int n)
{
rg[0]=0x0000;/*(CO)*/                 rg[1]=0x0000;//(AC)
rg[2]=n;/*(PP)derniere adresse de MP*/rg[3]=0x0000;//(RI)
rg[4]=0x0000;/*(RIT)*/                rg[5]=0x0000;//(0)
rg[6]=0x0001;/*(+1)*/                 rg[7]=0xffff;//(-1)
rg[8]=0x0fff;/*(AMASQ)*/              rg[9]=0x00ff;//(PMASQ)
rg[10]=0x0000;/*(A)*/                 rg[11]=0x0000;//(B)
rg[12]=0x0000;/*(C)*/                 rg[13]=0x0000;//(D)
rg[14]=0x0000;/*(E)*/                 rg[15]=0x0000;//(F)
}//fin de init_reg
//******************************************************************
// Procedure de initialisation de memoire de commande
//******************************************************************
void init_mem(int mcom[79][2])
{
mcom[0][0]=0x10c0;mcom[0][1]=0x0000;//rad:=cp;rd;
mcom[1][0]=0x0050;mcom[1][1]=0x6000;//cp:=cp+1;rd;
mcom[2][0]=0xb013;mcom[2][1]=0x001c;//ri:=rdo;if n goto 28;
mcom[3][0]=0x2414;mcom[3][1]=0x3313;//rit:=decalg(ri+ri);if n goto 19;
mcom[4][0]=0x3414;mcom[4][1]=0x040b;//rit:=decalg(rit);if n goto 11;
mcom[5][0]=0x3000;mcom[5][1]=0x0409;//ual:=rit;if n goto 9;
mcom[6][0]=0x00c0;mcom[6][1]=0x3000;//rad:=ri;rd;
mcom[7][0]=0x0040;mcom[7][1]=0x0000;//rd;
mcom[8][0]=0xf011;mcom[8][1]=0x0000;//ac:=rdo;goto 0;
mcom[9][0]=0x11a0;mcom[9][1]=0x3100;//rad:=ri;rdo:=ac;wr;
mcom[10][0]=0x6020;mcom[10][1]=0x0000;//wr;goto 0;
mcom[11][0]=0x3000;mcom[11][1]=0x040f;//ual:=rit;if n goto 15;
mcom[12][0]=0x00c0;mcom[12][1]=0x3000;//rad:=ri;rd;
mcom[13][0]=0x0040;mcom[13][1]=0x0000;//rd;
mcom[14][0]=0xe011;mcom[14][1]=0x1000;//ac:=rdo+ac;goto 0;
mcom[15][0]=0x00c0;mcom[15][1]=0x3000;//rad:=ri;rd;
mcom[16][0]=0x0051;mcom[16][1]=0x6100;//ac:=ac+1;rd;
mcom[17][0]=0x981a;mcom[17][1]=0x0000;//a:=inv(rdo);
mcom[18][0]=0x6011;mcom[18][1]=0xa100;//ac:=ac+a;goto 0;
mcom[19][0]=0x3414;mcom[19][1]=0x0419;//rit:=decalg(rit);ifn goto 25;
mcom[20][0]=0x3000;mcom[20][1]=0x0417;//ual:=rit;if n goto 23;
mcom[21][0]=0x3000;mcom[21][1]=0x0100;//ual:=ac;if n goto 0;
mcom[22][0]=0x6810;mcom[22][1]=0x3800;//cp:=bet(ri,amasq);goto 0;
mcom[23][0]=0x5000;mcom[23][1]=0x0116;//ual:=ac;if z goto 22;
mcom[24][0]=0x6000;mcom[24][1]=0x0000;//goto 0;
mcom[25][0]=0x3000;mcom[25][1]=0x041b;//ual:=rit;if n goto 27;
mcom[26][0]=0x6810;mcom[26][1]=0x3800;//cp:=bet(ri,amasq);goto 0;
mcom[27][0]=0x6811;mcom[27][1]=0x3800;//ac:=bet(ri,amasq);goto 0;
mcom[28][0]=0x2414;mcom[28][1]=0x3328;//rit:=decalg(ri+ri);if n goto 40;
mcom[29][0]=0x3414;mcom[29][1]=0x0423;//rit:=decalg(rit);if n goto 35;
mcom[30][0]=0x3000;mcom[30][1]=0x0421;//ual:=rit;if n goto 33;
mcom[31][0]=0x001a;mcom[31][1]=0x2300;//a:=ri+pp;
mcom[32][0]=0x6060;mcom[32][1]=0xa007;//rad:=a;rd;goto 7;
mcom[33][0]=0x001a;mcom[33][1]=0x2300;//a:=ri+pp;
mcom[34][0]=0x71a0;mcom[34][1]=0xa10a;//rad:=a;rdo:=ac;wr;goto 10;
mcom[35][0]=0x3000;mcom[35][1]=0x0426;//ual=rit;if n goto 38;
mcom[36][0]=0x001a;mcom[36][1]=0x2300;//a:=ri+pp;
mcom[37][0]=0x60c0;mcom[37][1]=0xa00d;//rad:=a;rd;goto 13;
mcom[38][0]=0x001a;mcom[38][1]=0x2300;//a:=ri+pp;
mcom[39][0]=0x60c0;mcom[39][1]=0xa010;//rad:=a;rd;goto 16;
mcom[40][0]=0x3414;mcom[40][1]=0x042e;//rit:=decalg(rit);if n goto 46;
mcom[41][0]=0x3000;mcom[41][1]=0x042c;//ual:=rit;if n goto 44;
mcom[42][0]=0x3000;mcom[42][1]=0x0116;//ual:=rit;if n goto 22;
mcom[43][0]=0x6000;mcom[43][1]=0x0000;//goto 0;
mcom[44][0]=0x5000;mcom[44][1]=0x0100;//ual:=ac;if z goto 0;
mcom[45][0]=0x6810;mcom[45][1]=0x8300;//cp:=bet(ri,amasq);goto 0;
mcom[46][0]=0x3414;mcom[46][1]=0x0432;//rit:=decalg(rit);if n goto 50;
mcom[47][0]=0x0012;mcom[47][1]=0x7200;//pp:=pp-1;
mcom[48][0]=0x11a0;mcom[48][1]=0x2000;//rad:=pp;rdo:=cp;wr;
mcom[49][0]=0x6830;mcom[49][1]=0x8300;//cp:=bet(ri,amasq);wr;goto 0;
mcom[50][0]=0x3414;mcom[50][1]=0x0441;//rit:=decalg(rit);if n goto 65;
mcom[51][0]=0x3414;mcom[51][1]=0x043b;//rit:=decalg(rit);if n goto 59;
mcom[52][0]=0x3000;mcom[52][1]=0x0438;//ual:=rit;if n goto 56;
mcom[53][0]=0x00c0;mcom[53][1]=0x1000;//rad:=ac;rd;
mcom[54][0]=0x0052;mcom[54][1]=0x7200;//pp:=pp-1;rd;
mcom[55][0]=0x60a0;mcom[55][1]=0x200a;//rad:=pp;wr;goto 10;
mcom[56][0]=0x00d2;mcom[56][1]=0x2600;//rad:=pp;pp:=pp+1;rd;
mcom[57][0]=0x0040;mcom[57][1]=0x0000;//rd;
mcom[58][0]=0x60a0;mcom[58][1]=0x100a;//rad:=ac;wr;goto 10;
mcom[59][0]=0x3000;mcom[59][1]=0x043e;//ual:=rit;if n goto 62;
mcom[60][0]=0x0012;mcom[60][1]=0x7200;//pp:=pp-1;
mcom[61][0]=0x71a0;mcom[61][1]=0x210a;//rad:=pp;rdo:=ac;wr;goto 10;
mcom[62][0]=0x00d2;mcom[62][1]=0x2600;//rad:=pp;pp:=pp+1;rd;
mcom[63][0]=0x0040;mcom[63][1]=0x0000;//rd;
mcom[64][0]=0xf011;mcom[64][1]=0x0000;//ac:=rdo;goto 0;
mcom[65][0]=0x3414;mcom[65][1]=0x0449;//rit:=decalg(rit);if n goto 73;
mcom[66][0]=0x3000;mcom[66][1]=0x0446;//ual:=rit;if n goto 70;
mcom[67][0]=0x00d2;mcom[67][1]=0x2600;//rad:=pp;pp:=pp+1;rd;
mcom[68][0]=0x0040;mcom[68][1]=0x0000;//rd;
mcom[69][0]=0xf010;mcom[69][1]=0x0000;//cp=rdo;goto 0;
mcom[70][0]=0x101a;mcom[70][1]=0x0100;//a:=ac;
mcom[71][0]=0x1011;mcom[71][1]=0x0200;//ac:=pp;
mcom[72][0]=0x7012;mcom[72][1]=0x0a00;//pp:=a;goto 0;
mcom[73][0]=0x3000;mcom[73][1]=0x044c;//ual:=rit;if n goto 76;
mcom[74][0]=0x081a;mcom[74][1]=0x9300;//a:=bet(ri,pmasq);
mcom[75][0]=0x6012;mcom[75][1]=0xa200;//pp:=pp+a;goto 0;
mcom[76][0]=0x081a;mcom[76][1]=0x9300;//a:=bet(ri,pmasq);
mcom[77][0]=0x181a;mcom[77][1]=0x0a00;//a:=inv(a);
mcom[78][0]=0x601a;mcom[78][1]=0x6a4b;//a:=a+1;goto 75;
}
//************************************************************
//***initialisation de la memoire principale
//************************************************************
void init_mp(int mp[])
{
int i;
for(i=0;i<=15;i++) mp[i]=0xffff;
for(i=16;i<=31;i++) mp[i]=0x0000;
}