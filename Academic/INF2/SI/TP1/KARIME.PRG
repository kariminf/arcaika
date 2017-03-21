set talk off    
set status off 
set scoreboard off
set century on
set exact on
set escape off
set date french
set deleted off
close databases
ak=0
aa=0
pi=0
bool=.t.
close procedure
set procedure to tp_si\k_sup
do sup_pret
close procedure
set procedure to tp_si\karime
do paint
ka=1            
do choix
 do while .t.
 ak=0
 set color to n/g
@3,70 say time()
ak=inkey()
do case
case bool 
do case 
case ak=13.and.ka=4
set color to n/b
@4,4 clear to 15,76
do prop
ka=1
do choix
set color to n/br
@17,3 to 19,76 double                                                             
@18,4 say "  flŠches( -->;haut;bas ):mouvement ; ENTREE :choisir                   "
case ak=13.and.ka=5
set color to n/b
@4,4 clear to 15,76
do fin
if pi=0 then
exit
else
ka=1
do choix
set color to n/br
@17,3 to 19,76 double
@18,4 say "  flŠches( -->;haut;bas ):mouvement ; ENTREE :choisir                   "
endif
case ak=13.and.(ka<>4.or.ka<>5) 
set color to n/b
@4,4 clear to 15,76
set color to n/br
@18,4 say "  flŠche haut ,bas:mouvement ; ENTREE :choisir ;ESPACE:menu             "               
bool=.f.
ak=0
aa=1
do quoi
case ak=4.or.ak=24.or.ak=5
do choix
endcase
case .not.bool
do case
case ak=24.or.ak=5 
do quoi
case ak=32
do choix
set color to n/b
@4,3 clear to 19,50
set color to n/br
@17,3 to 19,76 double
@18,4 say "  flŠches( -->;haut;bas ):mouvement ; ENTREE :choisir                   "
bool=.t.
case ak=13.and.(ka=1.and.aa=1) &&1
close procedure
set procedure to tp_si\k_ins
do ins_cl
close procedure
set procedure to tp_si\karime
do paint
do choix
bool=.t.
case ak=13.and.(ka=1.and.aa=2)    &&2
close procedure
set procedure to tp_si\k_aff
do aff_cl with .f.
close procedure
set procedure to tp_si\karime
do paint
do choix
bool=.t.
case ak=13.and.(ka=1.and.aa=3)       &&3
close procedure
set procedure to tp_si\k_mod
do mod_cl
close procedure
set procedure to tp_si\karime
do paint
do choix
bool=.t.
case ak=13.and.(ka=1.and.aa=4)    &&4
close procedure
set procedure to tp_si\k_aff
do aff_cl  with .t.
close procedure
set procedure to tp_si\karime
do paint
do choix
bool=.t.
case ak=13.and.(ka=1.and.aa=5)  &&5
close procedure
set procedure to tp_si\k_sup
do sup_cl
close procedure
set procedure to tp_si\karime
do paint
do choix
bool=.t.
case ak=13.and.(ka=2.and.aa=1)   &&6
close procedure
set procedure to tp_si\k_ins
do ins_liv
close procedure
set procedure to tp_si\karime
do paint
do choix
bool=.t.
case ak=13.and.(ka=2.and.aa=2)  &&7
close procedure
set procedure to tp_si\k_aff
do aff_liv
close procedure
set procedure to tp_si\karime
do paint
do choix
bool=.t.
case ak=13.and.(ka=2.and.aa=3)  &&8
close procedure
set procedure to tp_si\k_mod
do mod_liv
close procedure
set procedure to tp_si\karime
do paint
do choix
bool=.t.
case ak=13.and.(ka=3.and.aa=1)  &&9
close procedure
set procedure to tp_si\k_ins
do ins_pret
close procedure
set procedure to tp_si\karime
do paint
do choix
bool=.t.
case ak=13.and.(ka=3.and.aa=2)  &&10
close procedure
set procedure to tp_si\k_aff
do aff_pret
close procedure
set procedure to tp_si\karime
do paint
do choix
bool=.t.
case ak=13.and.(ka=3.and.aa=3)  &&11
close procedure
set procedure to tp_si\k_ins
do ins_date
close procedure
set procedure to tp_si\karime
do paint
do choix
bool=.t.
endcase
endcase &&bool
 enddo
 set century off
 set scoreboard on
 set escape on
 set exact off
 set color to gr+/r
 clear
********* PROCEDURE CHOIX ************************
procedure choix
a=space(6)
co=0
ij=0
do case
case (ak=4.or.ak=5).and. ka<5
ka= ka + 1
case (ak=4.or.ak=5).and. ka=5
ka=1
case ak=24 .and. ka>1
ka=ka-1
case ak=24 .and. ka=1
ka=5
endcase
do case
case ka=1
set color to n/w
@22,2 say "gestion des libraires:insertion,affichage,modification,recherche,suppression"
case ka=2
set color to n/w
@22,2 say "gestion des empraints:insertion,affichage,modification                      "
case ka=3
set color to n/w
@22,2 say "gestion des prets: insertion des prets,affichage,rendre d'un livre          "
case ka=4
set color to n/w
@22,2 say "a propos de ce logitiel :les informations de producteur                     "
case ka=5
set color to n/w
@22,2 say "pour sortir de ce logitiel                                                  "
endcase
do while co<5
co=co+1
if co=ka then
set color to r/w
else
set color to n/g
endif
do case
case co=1
a="LIBRAIRE"
ij=3
case co=2
a="EMPRAINT"
ij=12
case co=3
a=" PRETS: "
ij=21
case co=4
a="A PROPOS"
ij=30
case co=5
a="  FIN   "
ij=39
endcase
@3,ij say a
enddo
return
****************** PROCEDURE QUOI **********************************
procedure quoi
co1=0
max=0
xi=0
yj=0
mot=space(16)
m1=space(16)
m0=space(16)
m1="MODIFICATION"   
m0="INSERTION"
set color to n/n
do case 
case ka=1
@5,5 clear to 15,21
set color to gr+/bg
@4,3 clear to 14,20
@4,3 to 14,20
@10,4 to 10,19
@12,4 to 12,19
@6,4 to 6,19
@8,4 to 8,19
yj=4
max=5
case ka=2
@5,14 clear to 11,30
set color to gr+/bg
@4,12 clear to 10,29
@4,12 to 10,29
@6,13 to 6,28
@8,13 to 8,28
yj=13
max=3
case ka=3
@5,23 clear to 11,39
set color to gr+/bg
@4,21 clear to 10,38
@4,21 to 10,38
@6,22 to 6,37
@8,22 to 8,37
yj=22
max=3
m0="FAIRE UN PRET"
m1="RENDRE LIVRE"
endcase
do case 
case ak=5.and.aa>1
aa=aa-1
case ak=5.and.aa=1
aa=max
case ak=24.and.aa<max
aa=aa+1
case ak=24.and.aa=max
aa=1
endcase
set color to n/w
do case
case ka=1.and. aa=1
@22,2 say "pour ins‚rer les nouveaux libraires:nom,prenom,droit et adresse             "
case ka=1.and.aa=2
@22,2 say "pour afficher les libraires:nom,prenom,droit,adresse,les prets et retards   "
case ka=1.and.aa=3
@22,2 say "pour modifier les libraires de la bibliothŠque :adresse ou droit ou les deux"
case ka=1.and.aa=4
@22,2 say "pour la recherche des libraires par nom et afficher:prenom,droit ...etc     "
case ka=1.and.aa=5
@22,2 say "pour supprimer les libraires de la bibliothŠque                             "
case ka=2.and.aa=1
@22,2 say "pour ins‚rer les nouveaux livres:titre,occurence,auteur et editeur          "
case ka=2.and.aa=2
@22,2 say "pour afficher les livres:titre,occurence,auteur,editeur,les prets et retards"
case ka=2.and.aa=3
@22,2 say "pour modifier les livres par occurence;s'elle ‚gale … 0 c'est un suppression"
case ka=3.and. aa=1
@22,2 say "pour ins‚rer les nouveaux prets des libraires,nom ,prenom et titre de livre "
case ka=3.and.aa=2
@22,2 say "afficher les prets de trois mois pass‚es des clients et livres non supprim‚s"  
case ka=3.and.aa=3
@22,2 say "pour rendre les livres de la bibliothŠque                                   "
endcase
do while co1< max
co1=co1+1
if co1=aa then
set color to r/w
else
set color to gr+/bg
endif
do case
case co1=1
mot=m0
xi=5
case co1=2
mot="AFFICHAGE"
xi=7
case co1=3
mot=m1
xi=9
case co1=4
mot="RECHERCHE"
xi=11
case co1=5
mot="SUPPRESSION"
xi=13
endcase
@xi,yj say mot picture "xxxxxxxxxxxxxxxx"
enddo
return
******************** PROCEDURE PAINT **************************
procedure paint
set color to gr+/b
clear
@0,0 to 24,79 double
@1,1 to 20,78 double
set color to n/w
@21,1 to 23,78 double
set color to n/g
@2,2 clear to 3,77
set color to n/br
@17,3 to 19,76 double
@18,4 say "  flŠches( -->;haut;bas ):mouvement ; ENTREE :choisir                   "
******** dessin de BIENVENUE par ARABE ***********************
set color to br/br
@5,5 clear to 11,6
@11,5 clear to 12,45
@8,15 clear to 11,16
@8,40 clear to 11,45
@8,25 clear to 9,45
@14,15 clear to 15,16
@11,50 clear to 12,75 
@8,49 clear to 14,50
@14,25 clear to 15,50
@8,74 clear to 11,75
@8,60 clear to 9,74
@9,60 clear to 11,61
********** fin de dessin**************************************
return
********************** PROCEDURE PROP *************************
procedure prop
cur=0
set color to gr+/b
@17,3 clear to 19,76
set color to n/n
@7,22 clear to 19,61
set color to w+/g
@6,20 clear to 7,60
@7,24 say "A PROPOS DE ..."
set color to n/w
@22,2 say "appuyer sur un botton pour revenir au menu principal                        "
@8,20 clear to 18,60
@8,20 to 18,60
@15,21 to 17,59 double
@9,33 say "ARIES ABD ELKARIME © "
@10,28 say "UNIVERSITE DE JIJEL    2005/2006"
@11,31 say "2emme ANNEE INFORMATIQUE "
@12,28 say "POSTE ELMAAD_DJIMLA_JIJEL  18162"
@13,28 say "DEPART:VENDREDI 23 DECEMBRE 2005"
@14,28 say "FIN   :VENDREDI 06 JANVIER  2006"
*************DESSIN DE:l'econ K ********************
set color to br/b
@9,21 clear to 13,27
@7,22 say "K"
set color to br/br
@9,22 clear to 13,23
@11,24 say " "
@10,25 say " "
@9,26 say " "
@12,25 say " "
@13,26 say " "
***************fin de dessin************************
set color to r*/w
@16,28 say "APPUYER SUR UNE TOUCHE"
set color to n/g
do while cur=0
cur=inkey()
@3,70 say time()
enddo
set color to n/b
@6,20 clear to 17,61
return
************************ procedure fin *************************
procedure fin
pi=0
cur=0
set color to gr+/b
@17,3 clear to 19,76
set color to n/n
@8,32 clear to 14,52
set color to w+/g
@7,30 clear to 9,51
@8,32 say "fin"
set color to n/w
@22,2 say " flŠche ( --> ) :mouvement ; ENTREE : choisir                               "
@9,30 clear to 13,51
@9,30 to 13,51
@10,32 say "voulez vous sortir?"
@11,32 to 13,36
@11,45 to 13,49
@12,46 say "NON"
set color to gr/br
@12,33 say "OUI"
do while cur<>13
set color to n/g
@3,70 say time()
cur=inkey()
if cur=4 then
do case
case pi=0
set color to gr/br
@12,46 say "NON"
set color to n/w
@12,33 say "OUI"
pi=1
case pi=1
set color to n/w
@12,46 say "NON"
set color to gr/br
@12,33 say "OUI"
pi=0
endcase
endif
enddo
set color to gr+/b
@7,30 clear to 17,52

return
