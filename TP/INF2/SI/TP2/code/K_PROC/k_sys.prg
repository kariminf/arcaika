procedure security
*=====--------------------
password=space(10)
yes=0
set color to w/n
@11,25 clear to 21,66
set color to n/br
@10,24 clear to 20,65
@10,24 to 20,65 double
set color to gr+/n
@11,30 clear to 13,60
@11,30 to 13,60 double
if l="fr"
@12,35 say "MOT DE PASSE"
else
@12,35 say "    PASSWORD"
endif
set color to n/bg
@17,25 clear to 19,64
@17,25 to 19,64 double
set color to n/w
@45,2 clear to 47,77        
@45,2 to 47,77 double
*=========*
do sel0                        
select c
if reccount()=0
***************
if l="fr"
@46,3 say "ESPACE:pour dire OUI;ENTREE:pour dire NON"
else
@46,3 say "SPACE:to say YES;ENTER:to say NO"
endif
set color to n/bg
if l="fr"
@18,26 say "CREER UNE MOT DE PASSE ?"
else
@18,26 say "CREATE A PASSWORD ?"
endif
do while yes<>13.and.yes<>32
yes=inkey()
enddo
if yes=32
set color to n/bg
@17,25 clear to 19,64
@17,25 to 19,64 double
if l="fr"
@18,26 say "DONNER LE MOT DE PASSE"
else
@18,26 say "GET THE PASSWORD "
endif
set color to n/w
@45,2 clear to 47,77        
@45,2 to 47,77 double
if l="fr"
@46,3 say "donner le mot de passe ...svp"
else
@46,3 say "get the password ...please"
endif
set color to w/b,w/b
@14,38 to 16,49 double
@15,39 get password picture "xxxxxxxxxx"
read
append blank
replace pas with password
endif
************************if reccount()
    else
if l="fr"
@46,3 say "donner l'ancien mot de passe "
else
@46,3 say "get the old password"
endif
set color to n/bg
if l="fr"
@18,26 say "ANCIEN MOT DE PASSE "
else
@18,26 say "OLD PASSWORD "
endif
set color to w/b,w/b
@14,38 to 16,49 double
@15,39 get password picture "xxxxxxxxxx"
read
**===========
    if pas=password
set color to n/w
@45,2 clear to 47,77        
@45,2 to 47,77 double
if l="fr"
@46,3 say "M:pour modifier;S:pour supprimer;ENTREE:pour dire ne fait rien"
else
@46,3 say "M:to modify;S:to delete;ENTER:to say don't do any thing "
endif
set color to n/bg
@17,25 clear to 19,64
@17,25 to 19,64 double
if l="fr"
@18,26 say "MODIFIER LE MOT DE PASSE ?"
else
@18,26 say "MODIFY THE PASSWORD ?"
endif
do while yes<>13.and.((yes<>77.and.yes<>109).and.(yes<>83.and.yes<>115))
yes=inkey()
enddo
do case
case yes=83.or.yes=115
delete
pack
case yes=77.or.yes=109
set color to n/w
@45,2 clear to 47,77        
@45,2 to 47,77 double
if l="fr"
@46,3 say "donner le nouveau mot de passe"
else
@46,3 say "get the new password "
endif
set color to n/bg
@17,25 clear to 19,64
@17,25 to 19,64 double
if l="fr"
@18,26 say "LE NOUVEAU MOT DE PASSE ?"
else
@18,26 say "THE NEW PASSWORD ?"
endif
password=space(10)
@15,39 get password picture "xxxxxxxxxx"
read
replace pas with password
endcase
     endif
endif
close databases
return
*****************
**=================================================================
**=================================================================
procedure h_prop
set color to w/n
@11,18 clear to 31,66
set color to n/br
@12,17 clear to 30,65

set color to n/bg
@27,18 clear to 29,64
@27,18 to 29,64 double
if l="fr"
@28,19 say "pousser un botton pour sortir"
else
@28,19 say "push a botton to exit"
endif

set color to n/w
@10,17 clear to 11,65
if l="fr"
@11,20 say "A PROPOS DE CE LOGITIEL ..."
else
@11,20 say "   ABOUT THIS SOFTWARE ... "
endif

@45,2 clear to 47,77        
@45,2 to 47,77 double
if l="fr"
@46,3 say "pousser un botton pour sortir"
else
@46,3 say "push a botton to exit"
endif
*=========*
set color to g/b
@11,18 say "K"
@13,18 clear to 22,26
set color to n/g
@14,19 clear to 21,20
@17,21 clear to 18,22
@14,23 clear to 15,24
@15,22 clear to 16,23
@19,22 clear to 20,23
@20,23 clear to 21,24
*=========*
set color to w+/br
if l="fr"
@13,28 say "PRODUIT PAR:"
@16,28 say "LE PROJET:"
@19,28 say "DIRIGE PAR:"
else
@13,28 say "PRODUCT BY:"
@16,28 say "THE PROJECT:"
@19,28 say "DIRECT BY:"
endif
@22,28 say "DATE:"
set color to n/br
@14,35 say "ARIES Abdelkarim "
@17,35 say "TP2 SI 2Šme ann‚e Informatique"
@20,35 say "Mr: LEMOUARI Ali "
if l="fr"
@23,35 say "F‚vrier-Mai 2006"
else
@23,35 say "Febrery-May 2006"
endif
set color to gr+/n
do while inkey()=0
@43,69 say time()
enddo
return
************************************
************************************
************************************
procedure h_begin
set color to n/br
clear
set color to n/b
@1,1 clear to 48,78
set color to w/n
@11,18 clear to 31,66
set color to n/br
@12,17 clear to 30,65

set color to n/bg
@27,18 clear to 29,64
@27,18 to 29,64 double
if true
if l="fr"
@28,19 say "VEILLEZ PATIENTER QUELQUES MINUTES...SVP"
else
@28,19 say "WAIT JUST SOME MINUTES...PLEASE"
endif
else
if l="fr"
@28,19 say "LE MOT DE PASSE EST FAUX"
else
@28,19 say "THE PASSEWORD IS WRONG"
endif
endif
set color to n/w
@10,17 clear to 11,65
if l="fr"
@11,20 say "A PROPOS DE CE LOGITIEL ..."
else
@11,20 say "   ABOUT THIS SOFTWARE ... "
endif
@45,2 clear to 47,77        
@45,2 to 47,77 double

if l="fr"
@46,3 say "VEILLEZ PATIENTER QUELQUES MINUTES...SVP"
else
@46,3 say "WAIT JUST SOME MINUTES...PLEASE"
endif

*=========*
set color to g/b
@11,18 say "K"
@13,18 clear to 22,26
set color to n/g
@14,19 clear to 21,20
@17,21 clear to 18,22
@14,23 clear to 15,24
@15,22 clear to 16,23
@19,22 clear to 20,23
@20,23 clear to 21,24
*=========*
set color to w+/br
if l="fr"
@13,28 say "PRODUIT PAR:"
@16,28 say "LE PROJET:"
@19,28 say "DIRIGE PAR:"
else
@13,28 say "PRODUCT BY:"
@16,28 say "THE PROJECT:"
@19,28 say "DIRECT BY:"
endif
@22,28 say "DATE:"
set color to n/br
@14,35 say "ARIES Abdelkarim "
@17,35 say "TP2 SI 2Šme ann‚e Informatique"
@20,35 say "Mr: LEMOUARI Ali "
if l="fr"
@23,35 say "F‚vrier-Mai 2006"
else
@23,35 say "Febrery-May 2006"
endif
hr=time()
do while mod(val(substr(time(),7,2)),val(substr(hr,7,2))+5)<>0
enddo
return
************************************
************************************
************************************
procedure h_bye
set color to n/br
clear
set color to n/b
@1,1 clear to 48,78
set color to w/n
@11,18 clear to 31,66
set color to n/br
@12,17 clear to 30,65

set color to n/bg
@27,18 clear to 29,64
@27,18 to 29,64 double
if l="fr"
@28,19 say "AU REVOIR  AU REVOIR  AU REVOIR  AU REVOIR"
else
@28,19 say "GOOD_BYE  GOOD_BYE  GOOD_BYE  GOOD_BYE"
endif
set color to n/w
@10,17 clear to 11,65
if l="fr"
@11,20 say "A PROPOS DE CE LOGITIEL ..."
else
@11,20 say "   ABOUT THIS SOFTWARE ... "
endif
@45,2 clear to 47,77        
@45,2 to 47,77 double

if l="fr"
@46,3 say "VEILLEZ PATIENTER QUELQUES MINUTES...SVP"
else
@46,3 say "WAIT JUST SOME MINUTES...PLEASE"
endif

*=========*
set color to g/b
@11,18 say "K"
@13,18 clear to 22,26
set color to n/g
@14,19 clear to 21,20
@17,21 clear to 18,22
@14,23 clear to 15,24
@15,22 clear to 16,23
@19,22 clear to 20,23
@20,23 clear to 21,24
*=========*
set color to w+/br
if l="fr"
@13,28 say "PRODUIT PAR:"
@16,28 say "LE PROJET:"
@19,28 say "DIRIGE PAR:"
else
@13,28 say "PRODUCT BY:"
@16,28 say "THE PROJECT:"
@19,28 say "DIRECT BY:"
endif
@22,28 say "DATE:"
set color to n/br
@14,35 say "ARIES Abdelkarim "
@17,35 say "TP2 SI 2Šme ann‚e Informatique"
@20,35 say "Mr: LEMOUARI Ali "
if l="fr"
@23,35 say "F‚vrier-Mai 2006"
else
@23,35 say "Febrery-May 2006"
endif
hr=time()
do while mod(val(substr(time(),7,2)),val(substr(hr,7,2))+5)<>0
enddo
return





