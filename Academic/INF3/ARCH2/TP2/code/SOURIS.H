//**********************************************************
//fonction qui determine la position init de la souris
//et faire apparaitre celle-ci
//**********************************************************
void init_souris(int x,int y)
{
struct REGPACK reg;
//zone de deplacement verticale ==>fonction 08h
      reg.r_ax = 0x08;
      reg.r_cx = 0x00;
      reg.r_dx = y-30;
      intr(0x33, &reg);
       //zone de deplacement horizentale ==>fonction 07h
      reg.r_ax = 0x07;
      reg.r_cx = 0x00;
      reg.r_dx = x;
      intr(0x33, &reg);

}
void affich_souris()
{
struct REGPACK reg;
//afficher la souris
      reg.r_ax = 0x01;
      intr(0x33, &reg);
}
void masq_souris()
{
struct REGPACK reg;
//afficher la souris
      reg.r_ax = 0x02;
      intr(0x33, &reg);
}
//*********************************************************************
//
//*********************************************************************
void etat_souris(int *x,int *y,int *b)
{
struct REGPACK reg;
//etat du souris
    reg.r_ax=0x03;
    intr(0x33,&reg);
    *b=reg.r_bx;
    *x=reg.r_cx;
    *y=reg.r_dx;
}