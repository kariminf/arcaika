#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <dos.h>
#include <ctype.h>
#include <string.h>
#include <graphics.h>
#include <k_fct.h>
#include <k_ck.h>
#include <k_code.h>
#include <k_souris.h>
#include <k_graph.h>
#include <k_mic.h>
void main(void)
{
int mp[48];//memoire principale(centrale)
   init_mp(mp);
   init_graph();
   init_souris(getmaxx(),getmaxy());
   about();
   init_screen();
   affich_souris();
   lecture(mp);
   init_boite();
   mic(mp);
   fin_bout();
   masq_souris();
   about();
   closegraph();
}