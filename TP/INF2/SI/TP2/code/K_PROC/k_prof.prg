procedure k_prof1
********************
*********************
aff1=space(10)
cle=0
p11=.t.
set color to n/br
clear
set color to gr+/b
@1,1 clear to 48,78
@1,1 to 48,78 double
set color to w/g
@2,2 clear to 3,77
if l="fr"
@3,6 say "GESTION DU ZOO"
else
@3,6 say "MANAGEMENT OF ZOO"
endif
************************
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
@4,2 clear to 5,77
do case
case i11=0
if l="fr"
@46,3 say "il sert pour la gestion du systŠme"
else
@46,3 say "it serve to the management of system"
endif
***--------------
case i11=1
if l="fr"
@46,3 say "il sert pour la gestion des employ‚es"
else
@46,3 say "it serve to the management of employs"
endif
***-------------
case i11=2
if l="fr"
@46,3 say "il sert pour la gestion des animaux"
else
@46,3 say "it serve to the management of animals"
endif
***--------------
case i11=3
if l="fr"
@46,3 say "il sert pour obtenir des informations a propos de ce logiciel"
else
@46,3 say "it serve to obtain the informations about this software"
endif
***-------------
endcase
**********************************************************
ii=0
do while ii<4
if ii=i11
set color to n/br
else
set color to n/w
endif
do case
case ii=0
if l="fr"
aff=" FICHIER  "
else
aff=" FILE     "
endif
case ii=1
if l="fr"
aff=" EMPLOYEE "
else
aff=" EMPLOY   "
endif
case ii=2
if l="fr"
aff=" ANIMAUX  "
else
aff=" ANIMALS  "
endif
case ii=3
aff= " ? "
endcase
@5,((10*ii)+2) say aff
ii=ii+1
enddo
************
set color to gr+/n
@2,2 say "   "
@3,2 say " Z "
@42,2 clear to 44,77
@42,2 to 44,40 double
@42,41 to 44,67 double
@42,68 to 44,77 double
@43,16 say day(date())
@43,35 say year(date())
if l="fr"
@43,3 say youm(date()) picture "xxxxxxxxxxxx"
@43,21 say chahr(date()) picture "xxxxxxxxxxxx"
else
@43,3 say cdow(date()) picture "xxxxxxxxxxxx"
@43,21 say cmonth(date()) picture "xxxxxxxxxxxx"
endif

***********
**********
do while .t.
cle=0
cle=inkey()
set color to gr+/n
@43,69 say time()
if p11
if cle=4.or.cle=19.or.cle=13
do case
case i11=0.and.cle=19
i11=3
case i11>0.and.cle=19
i11=i11-1
case i11<3.and.cle=4
i11=i11+1
case i11=3.and.cle=4
i11=0
endcase
**************************************************************
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
do case
case i11=0
if l="fr"
@46,3 say "il sert pour la gestion du systŠme"
else
@46,3 say "it serve to the management of system"
endif
***--------------
case i11=1
if l="fr"
@46,3 say "il sert pour la gestion des employ‚es"
else
@46,3 say "it serve to the management of employs"
endif
***-------------
case i11=2
if l="fr"
@46,3 say "il sert pour la gestion des animaux"
else
@46,3 say "it serve to the management of animals"
endif
***--------------
case i11=3
if l="fr"
@46,3 say "il sert pour obtenir des informations a propos de ce logiciel"
else
@46,3 say "it serve to obtain the informations about this software"
endif
***-------------
endcase
**********************************************************
ii=0
do while ii<4
if ii=i11
set color to n/br
else
set color to n/w
endif
do case
case ii=0
if l="fr"
aff=" FICHIER  "
else
aff=" FILE     "
endif
case ii=1
if l="fr"
aff=" EMPLOYEE "
else
aff=" EMPLOY   "
endif
case ii=2
if l="fr"
aff=" ANIMAUX  "
else
aff=" ANIMALS  "
endif
case ii=3
aff= " ? "
endcase
@5,((10*ii)+2) say aff
ii=ii+1
enddo
if cle=13
p11=.f.
ss=0
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
do case
case i11=0
set color to w/n
@7,3 clear to 12,13
set color to n/w
@6,2 clear to 11,12
@6,2 to 11,12 double
if l="fr"
@46,3 say "pour modifier la langue de fran‡ais … l'anglais appuyer sur ENTREE"
@8,3 say "PROFIL   "
@9,3 say "SECURITE "
@10,3 say "FERMER  "
else
@46,3 say "to modify the language from english to french press ENTER"
@8,3 say "PROFILE  "
@9,3 say "SECURITY "
@10,3 say "EXIT    "
endif
set color to n/br
if l="fr"
@7,3 say "LANGUE   "
else
@7,3 say "LANGUAGE "
endif
case i11=1
set color to w/n
@7,13 clear to 12,23
set color to n/w
@6,12 clear to 11,22
@6,12 to 11,22 double
if l="fr"
@46,3 say "l'insertion des nouveaux employ‚es "
@8,13 say "AFFICHAGE"
@9,13 say "AFF_TEMP "
@10,13 say "INS_TEMP "
else
@46,3 say "the input of the new employs"
@8,13 say "SHOW     "
@9,13 say "SHOW TIME"
@10,13 say "PUT TIME "
endif
set color to n/br
@7,13 say "INSERTION"
case i11=2
set color to w/n
@7,23 clear to 12,33
set color to n/w
@6,22 clear to 11,32
@6,22 to 11,32 double

case i11=3
set color to w/n
@7,33 clear to 9,43
set color to n/w
@6,32 clear to 8,42
@6,32 to 8,42 double
if l="fr"
@46,3 say "A propos de ce logitiel "
else
@46,3 say "About this software"
endif
set color to n/br
if l="fr"
@7,33 say "A PROPOS"
else
@7,33 say "ABOUT ..."
endif

endcase
endif
endif
   else  &&(if .not.p)
   *********************
   *********************
   *********************
   *********************
if cle=32
exit
endif
if cle=13.or.(cle=5.or.cle=24)
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
ii=0
do case
case i11=0
do case
case ss=0.and.cle=5
ss=3
case ss>0.and.cle=5
ss=ss-1
case ss<3.and.cle=24
ss=ss+1
case ss=3.and.cle=24
ss=0
endcase
if l="fr"
do case
case ss=0
@46,3 say "pour modifier la langue de fran‡ais … l'anglais appuyer sur ENTREE"
case ss=1
@46,3 say "pour modifier le profil appuyer sur ENTREE"
case ss=2
@46,3 say "pour modifier ou cr‚er une mot de passe appuyer sur ENTREE"
case ss=3
@46,3 say "pour fermer le logiciel appuyer sur ENTREE"
endcase
else
do case
case ss=0
@46,3 say "to modify the language from english to french press ENTER"
case ss=1
@46,3 say "to modify the profile press ENTER"
case ss=2
@46,3 say "to modify or create a password press ENTER"
case ss=3
@46,3 say "to exit this software press ENTER"
endcase
endif
do while ii<4
if l="fr"
do case
case ii=0
af="LANGUE   "
case ii=1
af="PROFIL   "
case ii=2
af="SECURITE "
case ii=3
af="FERMER   "
endcase
else
do case
case ii=0
af="LANGUAGE "
case ii=1
af="PROFILE  "
case ii=2
af="SECURITY "
case ii=3
af="EXIT     "
endcase
endif
if ii=ss
set color to n/br
else
set color to n/w
endif
@(ii+7),3 say af
ii=ii+1
enddo
***************terminee
do case
case ss=3.and.cle=13
work=.f.
exit
case ss=1.and.cle=13
if prof=1
prof=2
else
prof=1
endif
exit
case ss=2.and.cle=13
do security
exit
case ss=0.and.cle=13
if l="fr"
l="en"
else
l="fr"
endif
exit
endcase
*****************
case i11=1
do case
case ss=0.and.cle=5
ss=3
case ss>0.and.cle=5
ss=ss-1
case ss<3.and.cle=24
ss=ss+1
case ss=3.and.cle=24
ss=0
endcase
if l="fr"
do case
case ss=0
@46,3 say "l'insertion des nouveaux employ‚es "
case ss=1
@46,3 say "l'affichage de tous les employ‚es et autres choses"
case ss=2
@46,3 say "l'affichage du travail des gardiens pendantla semaine "
case ss=3
@46,3 say "la s‚lection du travail de la prochaine semaine"
endcase
else
do case
case ss=0
@46,3 say "the input of the new employs"
case ss=1
@46,3 say "the show of all employs and other things"
case ss=2
@46,3 say "the show of guardians work pending the week"
case ss=3
@46,3 say "the work's selection of the next week"
endcase
endif
do while ii<4
if l="fr"
do case
case ii=0
af="INSERTION"
case ii=1
af="AFFICHAGE"
case ii=2
af="AFF_TEMP "
case ii=3
af="INS_TEMP "
endcase
else
do case
case ii=0
af="INSERTION"
case ii=1
af="SHOW     "
case ii=2
af="SHOW TIME"
case ii=3
af="PUT TIME "
endcase
endif
if ii=ss
set color to n/br
else
set color to n/w
endif
@(ii+7),13 say af
ii=ii+1
enddo
**************resultat
if cle=13
do sel1
do case
case ss=0
do ins_emp with l
case ss=1
do aff_emp with l
case ss=2
do aff_temp
endcase
close databases
exit
endif
**************************************************************
case i11=2
set color to w/n
@7,23 clear to 12,33
set color to n/w
@6,22 clear to 11,32
**************************************************************
case i11=3
if l="fr"
@46,3 say "A propos de ce logitiel "
else
@46,3 say "About this software"
endif
if cle=13
set color to n/b
@6,32 clear to 9,43
do h_prop
exit
endif
endcase
endif
endif
enddo
return
**********************************************
***********************************************
**********************************************
************************************************
procedure k_prof2
aff1=space(10)
cle=0
p11=.t.
set color to n/br
clear
set color to gr+/b
@1,1 clear to 48,78
@1,1 to 48,78 double
set color to w/g
@2,2 clear to 3,77
if l="fr"
@3,6 say "GESTION DU ZOO"
else
@3,6 say "MANAGEMENT OF ZOO"
endif
set color to gr+/n
@2,2 say "   "
@3,2 say " Z "
@42,2 clear to 44,77
@42,2 to 44,40 double
@42,41 to 44,67 double
@42,68 to 44,77 double
@43,16 say day(date())
@43,35 say year(date())
if l="fr"
@43,3 say youm(date()) picture "xxxxxxxxxxxx"
@43,21 say chahr(date()) picture "xxxxxxxxxxxx"
else
@43,3 say cdow(date()) picture "xxxxxxxxxxxx"
@43,21 say cmonth(date()) picture "xxxxxxxxxxxx"
endif
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
do case
case h1
if g1
if l="fr"
@46,3 say "il sert pour la gestion du systŠme"
else
@46,3 say "it serve to the management of system"
endif
@5,4 clear to 15,15
else
@5,16 clear to 15,27
if l="fr"
@46,3 say "il sert pour la gestion des animaux"
else
@46,3 say "it serve to the management of animals"
endif
endif
case .not.h1
if g1
set color to n/w
@16,4 clear to 26,15
if l="fr"
@46,3 say "il sert pour la gestion des employ‚es"
else
@46,3 say "it serve to the management of employs"
endif
else
set color to n/w
@16,16 clear to 26,27
if l="fr"
@46,3 say "il sert pour obtenir des informations a propos de ce logiciel"
else
@46,3 say "it serve to obtain the informations about this software"
endif
endif
endcase
set color to n/br
***********dessin f**************
@6,8 clear to 13,9
@6,8 clear to 7,11
@9,8 clear to 10,11
***********end f******************
*********dessin E*****************
@17,8 clear to 24,9
@17,8 clear to 18,11
@20,8 clear to 21,11
@23,8 clear to 24,11
*********end e********************
**********dessin de a*************
@6,18 clear to 7,23
@6,18 clear to 13,19
@6,22 clear to 13,23
@9,18 clear to 10,23
**************end a***************
**********dessin de ? ************
@17,18 clear to 18,25
@17,18 clear to 18,19
@18,24 clear to 21,25
@20,20 clear to 21,25
@20,20 clear to 24,21
********end ?*********************
if l="fr"
@15,5 say " FICHIER  "
@26,5 say " EMPLOYEE "
@15,17 say " ANIMAUX  "
@26,17 say " AIDE     "
else
@15,5 say " FILE     "
@26,5 say " EMPLOY   "
@15,17 say " ANIMALS  "
@26,17 say " HELP     "
endif
**LA BOUCLE******LA BOUCLE******LA BOUCLE******LA BOUCLE****
**LA BOUCLE******LA BOUCLE******LA BOUCLE******LA BOUCLE****
do while .t.
set color to gr+/n
@43,69 say time()
cle=inkey()
if p11
if (cle=5.or.cle=24).or.(cle=19.or.cle=4).or.cle=13
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
do case
case cle=5 .or.cle=24 &&haut ou bas
h1=.not.h1
do case
case g1
   if h1
set color to gr+/b
@16,4 clear to 26,15
set color to n/w
@5,4 clear to 15,15
if l="fr"
@46,3 say "il sert pour la gestion du systŠme"
else
@46,3 say "it serve to the management of system"
endif

   else
set color to gr+/b
@5,4 clear to 15,15
set color to n/w
@16,4 clear to 26,15
if l="fr"
@46,3 say "il sert pour la gestion des employ‚es"
else
@46,3 say "it serve to the management of employs"
endif
  endif
set color to n/br
***********dessin f**************
@6,8 clear to 13,9
@6,8 clear to 7,11
@9,8 clear to 10,11
***********end f******************
*********dessin E*****************
@17,8 clear to 24,9
@17,8 clear to 18,11
@20,8 clear to 21,11
@23,8 clear to 24,11
*********end e********************
if l="fr"
@15,5 say " FICHIER  "
@26,5 say " EMPLOYEE "
else
@15,5 say " FILE     "
@26,5 say " EMPLOY   "
endif
*=================================
case .not.g1
   if h1
set color to gr+/b
@16,16 clear to 26,27
set color to n/w
@5,16 clear to 15,27
if l="fr"
@46,3 say "il sert pour la gestion des animaux"
else
@46,3 say "it serve to the management of animals"
endif
   else
set color to gr+/b
@5,16 clear to 15,27
set color to n/w
@16,16 clear to 26,27
if l="fr"
@46,3 say "il sert pour obtenir des informations a propos de ce logiciel"
else
@46,3 say "it serve to obtain the informations about this software"
endif
  endif
set color to n/br
**********dessin de a*************
@6,18 clear to 7,23
@6,18 clear to 13,19
@6,22 clear to 13,23
@9,18 clear to 10,23
**************end a***************
**********dessin de ? ************
@17,18 clear to 18,25
@17,18 clear to 18,19
@18,24 clear to 21,25
@20,20 clear to 21,25
@20,20 clear to 24,21
********end ?*********************
if l="fr"
@15,17 say " ANIMAUX  "
@26,17 say " AIDE     "
else
@15,17 say " ANIMALS  "
@26,17 say " HELP     "
endif

endcase
case cle=19 .or.cle=4 &&gauche ou droit 
g1=.not.g1
do case
case h1
if g1
set color to gr+/b
@5,16 clear to 15,27
set color to n/w
@5,4 clear to 15,15
if l="fr"
@46,3 say "il sert pour la gestion du systŠme"
else
@46,3 say "it serve to the management of system"
endif

else
set color to gr+/b
@5,4 clear to 15,15
set color to n/w
@5,16 clear to 15,27
if l="fr"
@46,3 say "il sert pour la gestion des animaux"
else
@46,3 say "it serve to the management of animals"
endif
endif
set color to n/br
***********dessin f**************
@6,8 clear to 13,9
@6,8 clear to 7,11
@9,8 clear to 10,11
***********end f******************
**********dessin de a*************
@6,18 clear to 7,23
@6,18 clear to 13,19
@6,22 clear to 13,23
@9,18 clear to 10,23
**************end a***************
if l="fr"
@15,5 say " FICHIER  "
@15,17 say " ANIMAUX  "
else
@15,5 say " FILE     "
@15,17 say " ANIMALS  "
endif
***=====================================
case .not.h1
if g1
set color to gr+/b
@16,16 clear to 26,27
set color to n/w
@16,4 clear to 26,15
if l="fr"
@46,3 say "il sert pour la gestion des employ‚es"
else
@46,3 say "it serve to the management of employs"
endif
else
set color to gr+/b
@16,4 clear to 26,15
set color to n/w
@16,16 clear to 26,27
if l="fr"
@46,3 say "il sert pour obtenir des informations a propos de ce logiciel"
else
@46,3 say "it serve to obtain the informations about this software"
endif

endif
set color to n/br
*********dessin E*****************
@17,8 clear to 24,9
@17,8 clear to 18,11
@20,8 clear to 21,11
@23,8 clear to 24,11
*********end e********************
**********dessin de ? ************
@17,18 clear to 18,25
@17,18 clear to 18,19
@18,24 clear to 21,25
@20,20 clear to 21,25
@20,20 clear to 24,21
********end ?*********************
if l="fr"
@26,5 say " EMPLOYEE "
@26,17 say " AIDE     "
else
@26,5 say " EMPLOY   "
@26,17 say " HELP     "
endif
endcase
endcase
***********resultat
if cle=13
p11=.f.
ss=0
set color to n/w
do case
case g1.and.h1
@5,4 clear to 15,15
if l="fr"
@46,3 say "pour modifier la langue de fran‡ais … l'anglais appuyer sur ENTREE"
@8,5 say "PROFIL   "
@9,5 say "SECURITE "
@10,5 say "FERMER  "
else
@46,3 say "to modify the language from english to french press ENTER"
@8,5 say "PROFILE  "
@9,5 say "SECURITY "
@10,5 say "EXIT    "
endif
set color to n/br
if l="fr"
@7,5 say "LANGUE   "
else
@7,5 say "LANGUAGE "
endif
case g1.and..not.h1
set color to n/w
@16,4 clear to 26,15
if l="fr"
@46,3 say "l'insertion des nouveaux employ‚es "
@18,5 say "AFFICHAGE"
@19,5 say "AFF_TEMP "
@20,5 say "INS_TEMP "
else
@46,3 say "the input of the new employs"
@18,5 say "SHOW     "
@19,5 say "SHOW TIME"
@20,5 say "PUT TIME "
endif
set color to n/br
@17,5 say "INSERTION"
case .not.(g1.or.h1)
set color to n/w
@16,16 clear to 26,27
if l="fr"
@46,3 say "A propos de ce logitiel "
else
@46,3 say "About this software"
endif
set color to n/br
if l="fr"
@18,18 say "A PROPOS"
else
@18,18 say "ABOUT ..."
endif

endcase
endif
***********
endif
******************p11=.f.
*************************
else &&p11=.f.
*+++++++++++++++++++++++++++++++++++++++++
if cle=32
exit
endif
if cle=13.or.(cle=5.or.cle=24)
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
ii=0
do case
    case h1.and.g1
do case
case ss=0.and.cle=5
ss=3
case ss>0.and.cle=5
ss=ss-1
case ss<3.and.cle=24
ss=ss+1
case ss=3.and.cle=24
ss=0
endcase
set color to n/w
if l="fr"
do case
case ss=0
@46,3 say "pour modifier la langue de fran‡ais … l'anglais appuyer sur ENTREE"
case ss=1
@46,3 say "pour modifier le profil appuyer sur ENTREE"
case ss=2
@46,3 say "pour modifier ou cr‚er une mot de passe appuyer sur ENTREE"
case ss=3
@46,3 say "pour fermer le logiciel appuyer sur ENTREE"
endcase
else
do case
case ss=0
@46,3 say "to modify the language from english to french press ENTER"
case ss=1
@46,3 say "to modify the profile press ENTER"
case ss=2
@46,3 say "to modify or create a password press ENTER"
case ss=3
@46,3 say "to exit this software press ENTER"
endcase
endif
do while ii<4
if l="fr"
do case
case ii=0
af="LANGUE   "
case ii=1
af="PROFIL   "
case ii=2
af="SECURITE "
case ii=3
af="FERMER   "
endcase
else
do case
case ii=0
af="LANGUAGE "
case ii=1
af="PROFILE  "
case ii=2
af="SECURITY "
case ii=3
af="EXIT     "
endcase
endif
if ii=ss
set color to n/br
else
set color to n/w
endif
@(ii+7),5 say af
ii=ii+1
enddo
************resultat
do case
case ss=3.and.cle=13
work=.f.
exit
case ss=2.and.cle=13
do security
exit
case ss=1.and.cle=13
if prof=1
prof=2
else
prof=1
endif
exit
case ss=0.and.cle=13
if l="fr"
l="en"
else
l="fr"
endif
exit
endcase
case g1.and..not.h1
do case
case ss=0.and.cle=5
ss=3
case ss>0.and.cle=5
ss=ss-1
case ss<3.and.cle=24
ss=ss+1
case ss=3.and.cle=24
ss=0
endcase
if l="fr"
do case
case ss=0
@46,3 say "l'insertion des nouveaux employ‚es "
case ss=1
@46,3 say "l'affichage de tous les employ‚es et autres choses"
case ss=2
@46,3 say "l'affichage du travail des gardiens pendantla semaine "
case ss=3
@46,3 say "la s‚lection du travail de la prochaine semaine"
endcase
else
do case
case ss=0
@46,3 say "the input of the new employs"
case ss=1
@46,3 say "the show of all employs and other things"
case ss=2
@46,3 say "the show of guardians work pending the week"
case ss=3
@46,3 say "the work's selection of the next week"
endcase
endif
do while ii<4
if l="fr"
do case
case ii=0
af="INSERTION"
case ii=1
af="AFFICHAGE"
case ii=2
af="AFF_TEMP "
case ii=3
af="INS_TEMP "
endcase
else
do case
case ii=0
af="INSERTION"
case ii=1
af="SHOW     "
case ii=2
af="SHOW TIME"
case ii=3
af="PUT TIME "
endcase
endif
if ii=ss
set color to n/br
else
set color to n/w
endif
@(ii+17),5 say af
ii=ii+1
enddo
if cle=13
do sel1
do case
case ss=0
do ins_emp with l
case ss=1
do aff_emp with l
case ss=2
do aff_temp
endcase
close databases
exit
endif
**************************************************************
case .not.(g1.or.h1)
if l="fr"
@46,3 say "A propos de ce logitiel "
else
@46,3 say "About this software"
endif
if cle=13
@16,16 clear to 26,27
do h_prop
exit
endif
endcase
endif
*+++++++++++++++++++++++++++++++++++++++++
endif    &&p11
enddo
return





