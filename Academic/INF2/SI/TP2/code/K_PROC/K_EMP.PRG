****************
procedure ins_emp
parameters l
r=.t.
*********************************
set color to gr+/b,w/b
clear
@6,12 to 8,28
@8,12 to 10,28
@10,12 to 12,43
@7,60 to 9,71
@10,60 to 12,71
@6,50 to 12,71
@13,47 to 15,58
@13,67 to 15,71
@13,7 to 15,11
@13,26 to 15,41
@16,3 to 16,77 double
@14,3 say "code"
@14,12 say "Nøtelephone"
@11,3 say "adress"
@8,51 say "date"
@14,42 say "sex"
if l="fr"
@14,45 say"e"
@7,3 say "nom"
@9,3 say "prenom"
@11,9 say "e"
@6,55 say "naissance"
@11,51 say "lieu"
@14,59 say "mari‚e?"
set color to n/gb
@2,20 clear to 4,60
@2,20 to 4,60 double
@3,28 say "INSERTION DES EMPLOYES"
else
@7,3 say "familly"
@9,3 say "first name"
@6,55 say "birth"
@11,51 say "place"
@14,59 say "married?"
set color to n/gb
@2,20 clear to 4,60
@2,20 to 4,60  double
@3,30 say "EMPLOYEE'S INSERTION"
endif
set color to gr+/br
@0,0 clear to 1,79
@0,0 clear to 49,1
@48,0 clear to 49,79
@1,78 clear to 49,79
set color to gr+/b
@17,12 to 19,28
@17,40 to 19,56
@18,3 say "function"
@18,29 say "service"
if l="fr"
@18,4 say "o"
endif
@20,3 to 20,77 double
**********************************
    
****************************
do while r=.t.
******
nom1=space(15)
pre1=space(15)
dtn1=ctod(space(10))
lin1=space(10)
adr1=space(30)
tl1=space(14)
fon1=0
ecr="00:00:00"
j=0
ser1=0
nm1=space(15)
gr1=space(15)
tau1=0
ta=0
ce1=0
i=0
sexe=.t.
mri=.f.
r1=.t.
if l="fr"
@14,48 say "masculin"
@14,68 say "non"
else
@14,48 say "masculine"
@14,68 say "no"
endif
******
select 1
do while i <= reccount()
seek i
if found()
i=i+1
else
exit
endif
enddo
ce1=i
******
@14,8 say ce1 picture "999"
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
if l="fr"
@46,3 say "entrer le nom et le prenom ...svp"
else
@46,3 say "enter familly name and first name ...please"
endif
****
@7,13 get nom1 picture "!!!!!!!!!!!!!!!"
@9,13 get pre1 picture "!aaaaaaaaaaaaaa"
read
if len(trim(ltrim(nom1)))<>0 .and.len(trim(ltrim(pre1)))<>0
@45,2 clear to 47,77
@45,2 to 47,77 double
if l="fr"
@46,3 say "entrer l'adresse,nøtelephone,..etc ...svp"
else
@46,3 say "enter adresse,telephone,..etc...please"
endif
@11,13 get adr1 picture "xxxxxxxxxxxxxxxxxxxx code99999"
@8,61 get dtn1
@11,61 get lin1 picture "aaaaaaaaaa"
@14,27 get tl1 picture "(999)-99-99-99"
read
@45,2 clear to 47,77
@45,2 to 47,77 double
     if l="fr"
@46,3 say "appuyer sur l'espace pour moudifier le sexe"
     else
@46,3 say "press the space botton to modify the sex"
     endif
i=0
set color to gr+/b
while i<> 13
i=inkey()
if i=32
@14,48 clear to 14,57
do case
case sexe
sexe=.f.
if l="fr"
@14,48 say "f‚minin"
else
@14,48 say "feminine"
endif
case .not. sexe
sexe=.t.
if l="fr"
@14,48 say "masculin"
else
@14,48 say "masculine"
endif
endcase
endif
enddo
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
     if l="fr"
@46,3 say "appuyer sur l'espace pour r‚pendre si vous Štes mari‚(e) ou non"
     else
@46,3 say "press the space botton for answer if you married or not"
     endif
set color to gr+/b
i=0
do while i<>13
i=inkey()
if i=32
@14,68 clear to 14,70
do case
case mri
mri=.f.
if l="fr"
@14,68 say "non"
else
@14,68 say "no"
endif
case .not.mri
mri=.t.
if l="fr"
@14,68 say "oui"
else
@14,68 say "yes"
endif
endcase
endif
enddo
if l="fr"
@18,13 say "administratif"
@18,41 say "secr‚taire"
else
@18,13 say "administrative"
@18,41 say "secritary"
endif
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
     if l="fr"
@46,3 say "appuyer sur l'espace pour modifier la fonction "
     else
@46,3 say "press the space botton to modify the function "
     endif
set color to gr+/b
i=0
do while i<>13
i=inkey()
if i=32
@18,13 clear to 18,27
@18,41 clear to 18,55
do case
case fon1=0
fon1=1
if l="fr"
@18,13 say "m‚dical"
@18,41 say "v‚t‚rinaire"
else
@18,13 say "medical"
@18,41 say "veterinary"
endif
case fon1=1
fon1=2
@18,13 say "survaillance"
if l="fr"
@18,41 say "chef s‚cteur"
else
@18,41 say "sector head"
endif
case fon1=2
fon1=0
if l="fr"
@18,13 say "administratif"
@18,41 say "secr‚taire"
else
@18,13 say "administrative"
@18,41 say "secritary"
endif
endcase
endif
enddo
******
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
     if l="fr"
@46,3 say "appuyer sur l'espace pour modifier le service "
     else
@46,3 say "press the space botton to modify the service "
     endif
set color to gr+/b
i=0
do while i<>13
i=inkey()
if i=32
@18,41 clear to 18,55
do case
    case fon1=0
do case
case ser1=0
ser1=1
if l="fr"
@18,41 say "comptable"
else
@18,41 say "responsible"
endif
case ser1=1
ser1=0
if l="fr"
@18,41 say "s‚cr‚taire"
else
@18,41 say "secretary"
endif
endcase
    case fon1=1
do case
case ser1=0
ser1=1
if l="fr"
@18,41 say "infirmiŠre"
else
@18,41 say "(male)nurse"
endif
case ser1=1
ser1=0
if l="fr"
@18,41 say "v‚t‚rinaire"
else
@18,41 say "veterinary"
endif
endcase 
    case fon1=2
do case
case ser1=0
ser1=1
if l="fr"
@18,41 say "gardien"
else
@18,41 say "guardian"
endif
case ser1=1
ser1=0
if l="fr"
@18,41 say "chef s‚cteur"
else
@18,41 say "sector head"
endif
endcase
    endcase
endif
enddo
if mri .and.(.not.sexe)
***************paint2*******************************
set color to gr+/b
@21,40 to 23,56
if l="fr"
@22,25 say "nom marital"
else
@22,25 say "marital name"
endif
@24,3 to 24,77 double
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
     if l="fr"
@46,3 say "entrer le nom marital...svp"
     else
@46,3 say "enter the marital name ...please "
     endif
@22,41 get nm1 picture "!!!!!!!!!!!!!!!"
read
endif
if fon1=2 .and. ser1=1
*****************paint3*******************
set color to gr+/b
@25,10 to 27,26
@25,33 to 27,49
@25,64 to 27,71
@26,27 say "date"
if l="fr"
@26,3 say "grade"
@26,54 say "taux"
else
@26,3 say "rank"
@26,50 say "fixed price"
endif
@28,3 to 28,77 double
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
     if l="fr"
@46,3 say "entrer les informations du gardien...svp"
     else
@46,3 say "enter the gardien's informations ...please "
     endif
set color to gr+/b
@26,34 say date()
@26,11 get gr1 picture "xxxxxxxxxxxxxxx"
@26,65 get tau1 picture "999.99"
read
endif
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
     if l="fr"
@46,3 say "voulez vous enregistrer ces informations?,l'espace pour repondre"
     else
@46,3 say "did you want to record this informations?,the space to answer"
     endif
set color to n/n
@32,22 clear to 42,62
set color to gr+/br
@30,20 clear to 33,60
@31,24 say "question"
set color to n/w
@31,22 say "k"
@33,20 clear to 40,60
@34,32 to 36,47 double
@37,37 to 39,41 double
if l="fr"
@35,33 say "enregistrer?  "
@38,38 say "oui"
else
@35,33 say "record?       "
@38,38 say "yes"
endif
i=0
**ecr=time()
do while i<>13
i=inkey()
**if mod(val(substr(ecr,7,2))+1,60)=val(substr(time(),7,2))
j=mod(j+1,70000)
do case
case j=0
**j=1
if l="fr" 
@35,33 say "nregistrer?  e"
else
@35,33 say "ecord?       r"
endif
case j=5000  &&1
**j=2
if l="fr"
@35,33 say "registrer?  en"
else
@35,33 say "cord?       re"
endif
case j=10000 &&2
**j=3
if l="fr"
@35,33 say "egistrer?  enr"
else
@35,33 say "ord?       rec"
endif
case j=15000 &&3
**j=4
if l="fr"
@35,33 say "gistrer?  enre"
else
@35,33 say "rd?       reco"
endif
case j=20000  &&4
**j=5
if l="fr"
@35,33 say "istrer?  enreg"
else
@35,33 say "d?       recor"
endif
case j=25000 &&5
*j=6
if l="fr"
@35,33 say "strer?  enregi"
else
@35,33 say "?       record"
endif
case j=30000   &&6
*j=7
if l="fr"
@35,33 say "trer?  enregis"
else
@35,33 say "       record?"
endif
case j=35000  &&7
*j=9
if l="fr"
@35,33 say "rer?  enregist"
else
@35,33 say "      record? "
endif
case j=40000  &&9
*j=10
if l="fr"
@35,33 say "er?  enregistr"
else
@35,33 say "     record?  "
endif
case j=45000 &&10
*j=11
if l="fr"
@35,33 say "r?  enregistre"
else
@35,33 say "    record?   "
endif
case j=50000 &&11
*j=12
if l="fr"
@35,33 say "?  enregistrer"
else
@35,33 say "   record?    "
endif
case j=55000 &&12
*j=13
if l="fr"
@35,33 say "  enregistrer?"
else
@35,33 say "  record?     "
endif
case j=60000 &&13
*j=14
if l="fr"
@35,33 say " enregistrer? "
else
@35,33 say " record?      "
endif
case j=65000  &&14
*j=0
if l="fr"
@35,33 say "enregistrer?  "
else
@35,33 say "record?       "
endif
endcase
**endif
if i=32
do case
case r1
r1=.f.
if l="fr"
@38,38 say "non"
else
@38,38 say "no "
endif
case .not.r1
r1=.t.
if l="fr"
@38,38 say "oui"
else
@38,38 say "yes"
endif
endcase
endif
enddo
  if r1
append blank
replace ce with ce1
replace nom with nom1
replace pre with pre1
replace dtn with dtn1
replace lin with lin1
replace adr with adr1
replace tl with tl1
reindex
select 2
append blank
replace ce with ce1
replace fon with fon1
replace ser with ser1
reindex
if mri .and.(.not.sexe)
select 3
append blank
replace ce with ce1
replace nm with nm1
reindex
endif
if fon1=2.and.ser1=1
select 4
append blank
replace ce with ce1
replace gr with gr1
replace dtg with date()
replace tau with tau1
endif
if l="fr"
@46,3 say "les informations sont enregister...continuer?"
else
@46,3 say "the informations have recorded ...continue?"
endif
else
if l="fr"
@46,3 say "ne pas enregistrer...continuer?"
else
@46,3 say "didn't record ...continue?"
endif

endif

else &&len
@45,2 clear to 47,77
@45,2 to 47,77 double
if l="fr"
@46,3 say "absence de nom ou de pr‚nom ...continuer?"
else
@46,3 say "absence of familly name or first name ...continue?"
endif
endif &&len
set color to n/n
@32,22 clear to 42,62
set color to gr+/br
@30,20 clear to 33,60
@31,24 say "question"
set color to n/w
@31,22 say "k"
@33,20 clear to 40,60
@34,21 to 36,59 double
@37,37 to 39,41 double
if l="fr"
@35,22 say "voulez vous continuer?  "
@38,38 say "oui"
else
@35,22 say "do you want to continue?  "
@38,38 say "yes"
endif
i=0
do while i<>13
i=inkey()
if i=32
if r
r=.f.
if l="fr"
@38,38 say "non"
else
@38,38 say "no "
endif
else
r=.t.
if l="fr"
@38,38 say "oui"
else
@38,38 say "yes"
endif
endif
endif
enddo
set color to gr+/b
@21,3 clear to 43,77
enddo &&while
return
****************************************
****************************************
****************************************
procedure aff_emp
parameters l
ligne=0
sel=1
page=0
i=1
c=0
fon1=0
ser1=0
p=.t.
set color to b/br
clear
set color to gr+/b
@1,1 clear to 48,78
@1,1 to 48,78 double
set color to n/gb
@2,25 clear to 4,60
@2,25 to 4,60 double
if l="fr"
@3,26 say "  AFFICHAGE DES EMPLOYES"
else
@3,26 say "       EMPLOYS SHOW "
endif
set color to w/br
@11,3 clear to 37,39
@11,41 clear to 37,75
************
@11,7 to 37,7 double
@11,23 to 37,23 double
@11,3 to 37,39 double
@11,41 to 37,75 double
@13,42 to 15,74 double
@17,42 to 19,74 double
@20,59 to 22,74 double
@24,42 to 26,74 double
@27,57 to 29,74 double
**********
@21,43 say "TELEPHONE"
@23,58 say "SERVICE"
if l="fr"
@12,43 say "DATE ET LIEU DE NAISSANCE"
@16,43 say "ADRESSE"
@23,43 say "FONCTION"
@28,43 say "NOM MARITAL"
else
@12,43 say "BIRTH'S DATE AND PLACE"
@16,43 say "ADRESS"
@23,43 say "FUNCTION"
@28,43 say "MARITAL NAME"
endif
set color to gr+/n
********
@7,3 clear to 9,39
@7,7 to 9,7 double
@7,23 to 9,23 double
@7,3 to 9,39 double
@8,4 say "Nø"
if l="fr"
@8,8 say "NOM"
@8,24 say "PRENOM"
else
@8,8 say "FAMILY NAME"
@8,24 say "FIRST NAME"
endif
@7,41 clear to 9,75
@7,41 to 9,75 double
*********
@42,2 clear to 44,77
@42,2 to 44,40 double
@42,41 to 44,67 double
@43,16 say day(date())
@43,35 say year(date())
if l="fr"
@43,3 say youm(date()) picture "xxxxxxxxxxxx"
@43,21 say chahr(date()) picture "xxxxxxxxxxxx"
else
@43,3 say cdow(date()) picture "xxxxxxxxxxxx"
@43,21 say cmonth(date()) picture "xxxxxxxxxxxx"
endif
@42,68 to 44,77 double
****************

set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
     if l="fr"
@46,3 say "flŠches HAUT,BAS:mouvement ;ENTREE:choisir ;ESPACE:sortir "
     else
@46,3 say "pointers UP,DOWN:to move ;ENTER:to choose ;SPACE:to go out"
     endif
********
select 1
go bottom
if reccount()<>0
do while i<=(25+page) .and. i<=reccount()
goto i
if i <>sel 
set color to n/br
else
ce1=ce
nom1=nom
pre1=pre
set color to gr+/n
@8,43 say nom picture "!!!!!!!!!!!!!!!"
@8,59 say pre picture "!xxxxxxxxxxxxxx"
set color to n/br
@14,44 say dtn
@14,54 say lin
@18,44 say adr
@21,60 say tl
***********
select 2
seek ce1
fon1=fon
ser1=ser
do case
case fon=0
if l="fr"
@25,44 say "administratif"
else
@25,44 say "administrative"
endif

     if ser=0
if l="fr"
@25,60 say "secr‚taire"
else
@25,60 say "secretary"
endif
     else
if l="fr"
@25,60 say "comptable"
else
@25,60 say "responsible"
endif
     endif
case fon=1
if l="fr"
@25,44 say "m‚dical"
else
@25,44 say "medical"
endif

     if ser=0
if l="fr"
@25,60 say "v‚t‚rinaire"
else
@25,60 say "veterinary"
endif
     else
if l="fr"
@25,60 say "infirmiŠre"
else
@25,60 say "(male)nurse"
endif
     endif
case fon=2
@25,44 say "survaillance"
     if ser=0
if l="fr"
@25,60 say "chef secteur"
else
@25,60 say "sector head"
endif
     else
if l="fr"
@25,60 say "gardien"
else
@25,60 say "guardian"
endif
     endif
endcase
select 3
seek ce1
if found()
@28,58 say nm
else
@28,58 say "***************"
endif

select 1
seek ce1
**************
set color to r/gb
endif
ligne=((i-page)+11)
@ligne,4 say ce
@ligne,8 say nom
@ligne,24 say pre
i=i+1
enddo
endif
***********************
do while c<>32
if p
set color to gr+/n
@43,69 say time()

c=inkey()
if c=5 .or. c=24 .or. c=13
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
     if l="fr"
@46,3 say "flŠches HAUT,BAS:mouvement ;ENTREE:choisir ;ESPACE:sortir "
     else
@46,3 say "pointers UP,DOWN:to move ;ENTER:to choose ;SPACE:to go out"
     endif
do case 
case c=13.and.reccount()<>0
c=0
p=.f.
case c=5
if sel>1
sel=sel-1
if sel=page
page=page-1
endif
else
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
     if l="fr"
@46,3 say "c'est le premier employant,la flŠche bas ...svp "
     else
@46,3 say "he's the first employ ,the pointer down ...please"
     endif

endif
case c=24
if sel<reccount() 
sel=sel+1
if sel=page+26
page=page+1
endif
else
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
     if l="fr"
@46,3 say "c'est le dernier employant,la flŠche haut ...svp "
     else
@46,3 say "he's the last employ ,the pointer up ...please"
     endif

endif
endcase
******
i=page+1
select 1
go bottom
if reccount()<>0
do while i<=(25+page) .and. i<=reccount()
goto i
if i <>sel 
set color to n/br
else
ce1=ce
nom1=nom
pre1=pre
set color to gr+/n
@8,43 say nom picture "!!!!!!!!!!!!!!!"
@8,59 say pre picture "!xxxxxxxxxxxxxx"
set color to n/br
@14,44 say dtn
@14,54 say lin
@18,44 say adr
@21,60 say tl
**************
select 2
seek ce1
fon1=fon
ser1=ser

do case
case fon=0
if l="fr"
@25,44 say "administratif " 
else
@25,44 say "administrative" 
endif

     if ser=0
if l="fr"
@25,60 say "secr‚taire    " 
else
@25,60 say "secretary     "  
endif
     else
if l="fr"
@25,60 say "comptable     "  
else
@25,60 say "responsible   "
endif
     endif
case fon=1
if l="fr"
@25,44 say "m‚dical       "  
else
@25,44 say "medical       "  
endif

     if ser=0
if l="fr"
@25,60 say "v‚t‚rinaire   "  
else
@25,60 say "veterinary    "   
endif
     else
if l="fr"
@25,60 say "infirmiŠre    "   
else
@25,60 say "(male)nurse   "  
endif
     endif
case fon=2
@25,44 say "survaillance  " 
     if ser=0
if l="fr"
@25,60 say "chef secteur  " 
else
@25,60 say "sector head   " 
endif
     else
if l="fr"
@25,60 say "gardien       " 
else
@25,60 say "guardian      "
endif
     endif
endcase
select 3
seek ce1
if found()
@28,58 say nm
else
@28,58 say "***************"
endif

select 1
seek ce1
**************

set color to r/gb
endif
ligne=((i-page)+11)
@ligne,4 say ce
@ligne,8 say nom
@ligne,24 say pre
i=i+1
enddo
endif
endif
  else    &&if p
**********
ligne=((sel-page)+11)
set color to n/w
@ligne,24 clear to (ligne+6),38
@ligne,24 to (ligne+6),38 double
i=1
ii=0
******dessin******
       do while ii<4
ii=ii+1
if l="fr"
do case
case ii=1
af="SORTIR      "
case ii=2
af="MODIFICATION"
case ii=3
af="SUPPRITION  "
case ii=4
if fon1=2 .and.ser1=1
af="TRAVAIL     "
else
af="PAYEE       "
endif
endcase
else
do case
case ii=1
af="GO OUT      "
case ii=2
af="MODIFICATION"
case ii=3
af="SUPPRISSION "
case ii=4
if fon1=2 .and.ser1=1
af="WORK        "
else
af="PAY         "
endif
endcase

endif
  if ii=i 
set color to r/b
  else
set color to n/w
  endif
@(ligne+ii),25 say af
             enddo
******************
    do while c<>13
set color to gr+/n
@43,69 say time()

c=inkey()
       if c=32.or.c=24.or.c=5
ii=0
do case
case c=5 .and. i>1
i=i-1
case c=5 .and. i=1
i=4
case c=24 .and. i<4
i=i+1
case c=24 .and. i=4
i=1
endcase
*****dessin*************
             do while ii<4
ii=ii+1
if l="fr"
do case
case ii=1
af="SORTIR      "
case ii=2
af="MODIFICATION"
case ii=3
af="SUPPRITION  "
case ii=4
if fon1=2 .and.ser1=1
af="TRAVAIL     "
else
af="PAYEE       "
endif
endcase
else
do case
case ii=1
af="GO OUT      "
case ii=2
af="MODIFICATION"
case ii=3
af="SUPPRISSION "
case ii=4
if fon1=2 .and.ser1=1
af="WORK        "
else
af="PAY         "
endif
endcase

endif
  if ii=i 
set color to r/b
  else
set color to n/w
  endif
@(ligne+ii),25 say af
             enddo
******************
       endif
  enddo
**************
**************
if c=13
if i<>1
do case
case i=2
do mod_emp with l,ce1
case i=4
if fon1=2 .and. ser1=1
do temp_emp with l,ce1,nom1,pre1
else
do sal_emp with l,ce1,nom1,pre1
endif
endcase
********dessin du deriere plan***
set color to b/br
clear
set color to gr+/b
@1,1 clear to 48,78
@1,1 to 48,78 double
set color to n/gb
@2,25 clear to 4,60
@2,25 to 4,60 double
if l="fr"
@3,26 say "  AFFICHAGE DES EMPLOYANTS"
else
@3,26 say "       EMPLOY'S SHOW "
endif
set color to w/br
@11,3 clear to 37,39
@11,41 clear to 37,75
************
@11,7 to 37,7 double
@11,23 to 37,23 double
@11,3 to 37,39 double
@11,41 to 37,75 double
@13,42 to 15,74 double
@17,42 to 19,74 double
@20,59 to 22,74 double
@24,42 to 26,74 double
@27,57 to 29,74 double
**********
@21,43 say "TELEPHONE"
@23,58 say "SERVICE"
if l="fr"
@12,43 say "DATE ET LIEU DE NAISSANCE"
@16,43 say "ADRESSE"
@23,43 say "FONCTION"
@28,43 say "NOM MARITAL"
else
@12,43 say "BIRTH'S DATE AND PLACE"
@16,43 say "ADRESS"
@23,43 say "FUNCTION"
@28,43 say "MARITAL NAME"
endif
set color to gr+/n
********
@7,3 clear to 9,39
@7,7 to 9,7 double
@7,23 to 9,23 double
@7,3 to 9,39 double
@8,4 say "Nø"
if l="fr"
@8,8 say "NOM"
@8,24 say "PRENOM"
else
@8,8 say "FAM_NAME"
@8,24 say "FIRST_NAME"
endif
@7,41 clear to 9,75
@7,41 to 9,75 double
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
     if l="fr"
@46,3 say "flŠches HAUT,BAS:mouvement ;ENTREE:choisir ;ESPACE:sortir "
     else
@46,3 say "pointers UP,DOWN:to move ;ENTER:to choose ;SPACE:to go out"
     endif
********reecrire
i=page+1
select 1
go bottom
if reccount()<>0
do while i<=(25+page) .and. i<=reccount()
goto i
if i <>sel 
set color to n/br
else
ce1=ce
set color to gr+/n
@8,43 say nom picture "!!!!!!!!!!!!!!!"
@8,59 say pre picture "!xxxxxxxxxxxxxx"
set color to n/br
@14,44 say dtn
@14,54 say lin
@18,44 say adr
@21,60 say tl
***********
select 2
seek ce1
fon1=fon
ser1=ser

do case
case fon=0
if l="fr"
@25,44 say "administratif"
else
@25,44 say "administrative"
endif

     if ser=0
if l="fr"
@25,60 say "secr‚taire"
else
@25,60 say "secretary"
endif
     else
if l="fr"
@25,60 say "comptable"
else
@25,60 say "responsible"
endif
     endif
case fon=1
if l="fr"
@25,44 say "m‚dical"
else
@25,44 say "medical"
endif

     if ser=0
if l="fr"
@25,60 say "v‚t‚rinaire"
else
@25,60 say "veterinary"
endif
     else
if l="fr"
@25,60 say "infirmiŠre"
else
@25,60 say "(male)nurse"
endif
     endif
case fon=2
@25,44 say "survaillance"
     if ser=0
if l="fr"
@25,60 say "chef secteur"
else
@25,60 say "sector head"
endif
     else
if l="fr"
@25,60 say "gardien"
else
@25,60 say "guardian"
endif
     endif
endcase
select 3
seek ce1
if found()
@28,58 say nm
else
@28,58 say "***************"
endif
select 1
seek ce1
**************

set color to r/gb
endif
ligne=((i-page)+11)
@ligne,4 say ce
@ligne,8 say nom
@ligne,24 say pre
i=i+1
enddo
endif


*********************************
*********************************
else
******effacer**********
set color to gr+/b
@37,23 clear to 44,39
set color to w/br
@11,3 clear to 37,39
@11,7 to 37,7 double
@11,23 to 37,23 double
@11,3 to 37,39 double
********rewrite***************
i=page+1
select 1
go bottom
if reccount()<>0
do while i<=(25+page) .and. i<=reccount()
goto i
if i <>sel 
set color to n/br
else
ce1=ce
set color to gr+/n
@8,43 say nom picture "!!!!!!!!!!!!!!!"
@8,59 say pre picture "!xxxxxxxxxxxxxx"
set color to n/br
@14,44 say dtn
@14,54 say lin
@18,44 say adr
@21,60 say tl
set color to r/gb
endif
ligne=((i-page)+11)
@ligne,4 say ce
@ligne,8 say nom
@ligne,24 say pre
i=i+1
enddo
endif
endif
***************
set color to gr+/n
@42,2 clear to 44,77
@42,2 to 44,40 double
@42,41 to 44,67 double
@43,16 say day(date())
@43,35 say year(date())
if l="fr"
@43,3 say youm(date()) picture "xxxxxxxxxxxx"
@43,21 say chahr(date()) picture "xxxxxxxxxxxx"
else
@43,3 say cdow(date()) picture "xxxxxxxxxxxx"
@43,21 say cmonth(date()) picture "xxxxxxxxxxxx"
endif
@42,68 to 44,77 double
******************************
 c=0
 p=.t.
endif

*********
endif &&if p
enddo &&do
*********
return
************************************
************************************
************************************
procedure aff_temp
set color to gr+/b
@1,1 clear to 48,78
@1,1 to 48,78 double
set color to n/bg
@2,20 clear to 4,48
@2,20 to 4,48 double
if l="fr"
@3,25 say "AFFICHAGE DU TEMPS"
else
@3,25 say "TIME'S SHOW"
endif

set color to n/gr
@5,2 clear to 7,27
@5,2 to 7,27
@5,40 clear to 7,77
@5,40 to 7,77
@6,41 say "DATE"
if l="fr"
@6,3 say "SECTEUR"
else
@6,3 say "SECTOR"
endif
set color to gr+/n
@9,12 clear to 11,77
@9,12 to 11,77 double
*********
@42,2 clear to 44,77
@42,2 to 44,40 double
@42,41 to 44,67 double
@43,16 say day(date())
@43,35 say year(date())
if l="fr"
@43,3 say youm(date()) picture "xxxxxxxxxxxx"
@43,21 say chahr(date()) picture "xxxxxxxxxxxx"
else
@43,3 say cdow(date()) picture "xxxxxxxxxxxx"
@43,21 say cmonth(date()) picture "xxxxxxxxxxxx"
endif
@42,68 to 44,77 double
****************

set color to n/w
@13,12 clear to 15,77
*=======
@13,28 to 15,28 double
@13,44 to 15,44 double
@13,60 to 15,60 double
*=======
@45,2 clear to 47,77
@45,2 to 47,77 double
     if l="fr"
@46,3 say "flŠches :mouvement ;1..7:la date ;PGUP PGDOWN:secteur;ESPACE:sortir"
     else
@46,3 say "pointers :to move ;1..7:the date ;PGUP PGDOWN:sector;SPACE:exit"
     endif
set color to w/r
@16,2 clear to 40,11
****************
am=1
do while am<=12
@(15+2*am),3 say am picture "99:00"
if am<>12
@(16+2*am),3 to (16+2*am),11 double
endif
am=am+1
enddo
****************
set color to n/br
@16,12 clear to 40,77
*=======
@16,28 to 40,28 double
@16,44 to 40,44 double
@16,60 to 40,60 double
*=======
**************AFFICHAGE**************
ii=1
i00=0
j00=0
k00=0
sel=1
jj=1
dat00=date()
select 6
nsec0=nsec
do while dow(dat00)<>7
dat00=dat00-1
enddo
select 7
do while ii<=reccount()
goto ii
if dat00=date
exit
endif
ii=ii+1
enddo
*////////////////////////////////
set color to b/gr
if l="fr"
@6,46 say youm(dat00)
@6,61 say dow(dat00)
@6,64 say chahr(dat00)
@6,70 say year(dat00)
else
@6,46 say cdow(dat00)
@6,61 say ","+cmonth(dat00)
@6,77 say dow(dat00)
@6,71 say year(dat00)
endif
@6,12 say nsec
*///////////////////////////////
c=0
do while c<>32
c=inkey()
set color to gr+/n
@43,69 say time()

enddo
return
