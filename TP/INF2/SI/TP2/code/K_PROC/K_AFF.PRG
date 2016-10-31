procedure sal_emp
parameters l , ce1 , nom1 , pre1
sal1=0
k1=0
set color to n/n,w/b
@11,11 clear to 31,71
set color to n/gb
@10,10 clear to 28,70
@10,10 to 28,70 double
@17,11 to 17,69 double
@18,13 to 18,67 double
@22,13 to 22,67 double
@23,11 to 23,69 double
if l="fr"
@20,13 say "salaire"
else
@20,13 say "pay"
endif
set color to n/gr
@11,11 clear to 13,69
@11,11 to 13,69 double
@12,14 say ce1 picture "999"
@12,22 say nom1 picture "!!!!!!!!!!!!!!!"
@12,44 say pre1 picture "!aaaaaaaaaaaaaa"
set color to gr+/b
@19,30 clear to 21,39
@19,30 to 21,39 double
@19,41 clear to 21,53
@19,41 to 21,53 double
if l="fr"
@20,42 say chahr(date())
else
@20,42 say cmonth(date())
endif
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
@24,11 clear to 26,69
@24,11 to 26,69 double
set color to n/gb
select 5
locate for (ce=ce1).and.(dts=month(date()))
if found()
if l="fr"
@15,12 say "il est pay‚ ce mois "
else
@15,12 say "he is payed this month"
endif
set color to gr+/b
@20,31 say sal picture "99999.99"
set color to n/w
if l="fr"
@46,3 say "pour sortir pousser sur un botton   "
@25,12 say "pour sortir pousser sur un botton  "
else
@46,3 say "to leave push a botton        "
@25,12 say "to leave push a botton       "
endif
do while k1=0
k1=inkey()
enddo
else
if l="fr"
@15,12 say "donner le salaire"
else
@15,12 say "get the pay"
endif
set color to n/w
if l="fr"
@46,3 say "le salaire n'est pas nul   "
@25,12 say "le salaire n'est pas nul   "
else
@46,3 say "the pay isn't null"
@25,12 say "the pay isn't null"
endif
do while sal1=0
@20,31 get sal1 picture "99999.99"
read
enddo
set color to n/gb
if l="fr"
@15,12 say "enregistrer?      "
else
@15,12 say "record?           "
endif
set color to n/w
if l="fr"
@46,3 say "OUI:espace ... NON:entr‚e   "
@25,12 say "OUI:espace ... NON:entr‚e  "
else
@46,3 say "YES:space ... NO:enter   "
@25,12 say "YES:space ... NO:enter  "
endif
do while (k1<>13).and.(k1<>32)
k1=inkey()
enddo
if k1=32
append blank
replace ce with ce1
replace sal with sal1
replace dts with month(date())
endif
endif 
return
****************************************************
****************************************************
****************************************************
procedure sup_emp
parameters l , ce1,nom1,pre1
set color to n/n,w/b
@11,11 clear to 31,71
set color to n/gb
@10,10 clear to 28,70
@10,10 to 28,70 double
@17,11 to 17,69 double
@18,13 to 18,67 double
@22,13 to 22,67 double
@23,11 to 23,69 double
set color to n/gr
@11,11 clear to 13,69
@11,11 to 13,69 double
@12,14 say ce1 picture "999"
@12,22 say nom1 picture "!!!!!!!!!!!!!!!"
@12,44 say pre1 picture "!aaaaaaaaaaaaaa"
return
*****************************************************
*****************************************************
*****************************************************
procedure mod_emp
parameters l,ce1
gr1=space(15)
tau1=0
set scoreboard off
if l="fr"
set date french
else
set date american
endif
*********************************
*********************************
select 1
seek ce1
set color to gr+/b,w/b
clear
@6,12 to 8,28
@8,12 to 10,28
@10,12 to 12,43
@7,60 to 9,71
@10,60 to 12,71
@6,50 to 12,71
@13,7 to 15,11
@13,26 to 15,41
@16,3 to 16,77 double
@14,3 say "code"
@14,12 say "Nøtelephone"
@11,3 say "adress"
@8,51 say "date"
if l="fr"
@7,3 say "nom"
@9,3 say "prenom"
@11,9 say "e"
@6,55 say "naissance"
@11,51 say "lieu"
set color to n/gb
@2,20 clear to 4,60
@2,20 to 4,60 double
@3,28 say "INSERTION DES EMPLOYES"
else
@7,3 say "familly"
@9,3 say "first name"
@6,55 say "birth"
@11,51 say "place"
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
adr1=adr
tl1=tl
fon1=0
select 2
seek ce1
if found()
fon1=fon
endif
ecr="00:00:00"
j=0
ser1=ser
select 3
seek ce1
nm1=space(15)
if found()
nm1=nm
endif
select 4
cont=1
if reccount()<>0
do while cont<=reccount()
goto cont
if ce=ce1
gr1=gr
tau1=tau
enreg=cont
endif
cont=cont+1
enddo
endif
gr2=gr1
ta=0
i=0
r1=.t.
********
do case
case fon1=1
if l="fr"
@18,13 say "m‚dical"
else
@18,13 say "medical"
endif
do case
case ser1=1
if l="fr"
@18,41 say "infirmiŠre"
else
@18,41 say "(male)nurse"
endif
case ser1=0
if l="fr"
@18,41 say "v‚t‚rinaire"
else
@18,41 say "veterinary"
endif
endcase 
case fon1=2
@18,13 say "survaillance"
do case
case ser1=1
if l="fr"
@18,41 say "gardien"
else
@18,41 say "guardian"
endif
case ser1=0
if l="fr"
@18,41 say "chef s‚cteur"
else
@18,41 say "sector head"
endif
endcase
case fon1=0
if l="fr"
@18,13 say "administratif"
else
@18,13 say "administrative"
endif
do case
case ser1=1
if l="fr"
@18,41 say "comptable"
else
@18,41 say "responsible"
endif
case ser1=0
if l="fr"
@18,41 say "s‚cr‚taire"
else
@18,41 say "secretary"
endif
endcase
endcase
******
select 1
seek ce1
set color to gr+/b
@14,8 say ce1 picture "999"
@45,2 clear to 47,77
@45,2 to 47,77 double
@7,13 say nom picture "!!!!!!!!!!!!!!!"
@9,13 say pre picture "!aaaaaaaaaaaaaa"
@8,61 say dtn
@11,61 say lin picture "aaaaaaaaaa"
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
if l="fr"
@46,3 say "entrer l'adresse,nøtelephone...svp"
else
@46,3 say "enter adresse,telephone...please"
endif
@11,13 get adr1 picture "xxxxxxxxxxxxxxxxxxxx code99999"
@14,27 get tl1 picture "(999)-99-99-99"
read
if nm1<> space(15)
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
@46,3 say "voulez vous enregistrer ces informationsmodifi‚e?,l'espace pour repondre"
     else
@46,3 say "did you want to record this changed informations?,the space to answer"
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
ecr=time()
do while i<>13
i=inkey()
if mod(val(substr(ecr,7,2))+1,60)=val(substr(time(),7,2))
ecr=time()
do case
case j=0
j=1
if l="fr" 
@35,33 say "nregistrer?  e"
else
@35,33 say "ecord?       r"
endif
case j=1
j=2
if l="fr"
@35,33 say "registrer?  en"
else
@35,33 say "cord?       re"
endif
case j=2
j=3
if l="fr"
@35,33 say "egistrer?  enr"
else
@35,33 say "ord?       rec"
endif
case j=3
j=4
if l="fr"
@35,33 say "gistrer?  enre"
else
@35,33 say "rd?       reco"
endif
case j=4
j=5
if l="fr"
@35,33 say "istrer?  enreg"
else
@35,33 say "d?       recor"
endif
case j=5
j=6
if l="fr"
@35,33 say "strer?  enregi"
else
@35,33 say "?       record"
endif
case j=6
j=7
if l="fr"
@35,33 say "trer?  enregis"
else
@35,33 say "       record?"
endif
case j=7
j=9
if l="fr"
@35,33 say "rer?  enregist"
else
@35,33 say "      record? "
endif
case j=9
j=10
if l="fr"
@35,33 say "er?  enregistr"
else
@35,33 say "     record?  "
endif
case j=10
j=11
if l="fr"
@35,33 say "r?  enregistre"
else
@35,33 say "    record?   "
endif
case j=11
j=12
if l="fr"
@35,33 say "?  enregistrer"
else
@35,33 say "   record?    "
endif
case j=12
j=13
if l="fr"
@35,33 say "  enregistrer?"
else
@35,33 say "  record?     "
endif
case j=13
j=14
if l="fr"
@35,33 say " enregistrer? "
else
@35,33 say " record?      "
endif
case j=14
j=0
if l="fr"
@35,33 say "enregistrer?  "
else
@35,33 say "record?       "
endif
endcase
endif
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
  select 1
  seek ce1
replace adr with adr1
replace tl with tl1
if nm1<>space(15) 
select 3
seek ce1
replace nm with nm1
endif
if fon1=2.and.ser1=1
if gr1<>gr2
select 4
append blank
replace ce with ce1
replace gr with gr1
replace dtg with date()
replace tau with tau1
endif
endif
endif
return
**************************************************
**************************************************
**************************************************
procedure temp_emp
parameters l ,ce1,nom1,pre1
set procedure to k_proc\k_fun
i=0
j=0
i0=0
prec=date()
suiv=date()
nsec1=space(15)
date1=date()
do while dow(date1)<>7
date1=date1-1
enddo
do while dow(suiv)<>6
suiv=suiv+1
enddo
prec=date1
set color to w/br
clear
set color to gr+/b
@1,1 clear to 48,78
set color to r/gb
@8,15 clear to 10,64
@8,15 to 10,64 double
@9,16 say ce1 picture "999"
@9,25 say nom1 picture "!!!!!!!!!!!!!!!"
@9,45 say pre1 picture "!aaaaaaaaaaaaaa"
set color to n/w
@3,15 clear to 5,64
@3,15 to 5,64 double
if l="fr"
@4,26 say "AFFICHAGE DU TEMPS DE CE GARDIEN"
else
@4,26 say "  TIME'S SHOW OF THIS GUARDIAN"
endif
@45,2 clear to 47,77
@45,2 to 47,77 double
if l="fr"
@46,3 say "entrer pour sortir ; les flŠches bas,haut pour mouvement"
else
@46,3 say "enter to go out  ; the pointers down,high to move"
endif
@24,5 clear to 26,74
@34,5 clear to 36,74
if l="fr"
@25,5 say "PARCELLE"
@35,5 say "PARCELLE"
else
@25,5 say "LOT"
@35,5 say "LOT"
endif
set color to n/br
@18,5 clear to 23,74
@28,5 clear to 33,74
@18,5 to 20,74 double
@28,5 to 30,74 double
if l="fr"
@19,30 say "LA DUREE DU MATIN "
@22,5 say "TEMP(am)"
@29,30 say "LA DUREE DU SOIR  "
@32,5 say "TEMP(pm)"
else
@19,30 say "MORNING'S DURATION"
@22,5 say "TIME(am)"
@29,30 say "EVENING'S DURATION"
@32,5 say "TIME(pm)"
endif
i=1
do while i<= 12
j=(8+(5*i))
set color to n/w
@24,j to 26,j double
@34,j to 36,j double
set color to n/br
@21,j to 23,j double
@22,(j+2) say i picture "99"
@31,j to 33,j double
@32,(j+2) say i picture "99"
i=i+1
enddo
set color to b/gr
@11,15 clear to 13,64
@11,15 to 13,64 double
@14,25 clear to 16,54 
@14,25 to 16,54 double
@12,34 say day(date1) picture "99"
@12,57 say year(date1)
if l="fr"
@12,20 say youm(date1) picture "xxxxxxxxxxxx"
@12,40 say chahr(date1) picture "xxxxxxxxxxxx"
else
@12,20 say cdow(date1) picture "xxxxxxxxxxxx"
@12,40 say cmonth(date1) picture"xxxxxxxxxxxx"
endif
select 7
locate for ce=ce1 .and. date=date1
if found()
nsec1=nsec
endif
select 8
   if nsec1=space(15)
if l="fr"
@15,26 say "il est repos‚ ce jour la"
else
@15,26 say "he take a rest this day"
endif
i0=1
do while i0<= 12
j=(10+(5*i0))
set color to n/w
@25,j say "/ "
@35,j say "/ "
i0=i0+1
enddo
  else
if l="fr"
@15,26 say "secteur:"
else
@15,26 say "sector:"
endif
@15,36 say nsec1 picture "xxxxxxxxxxxxxxx"
i0=1
set color to n/w
do while i0<= 12
j=(10+(5*i0))
locate for (ce=ce1 .and. date=date1).and. heur=i0
if found()
@25,j say npa picture "99"
i0=i0+1
else
@25,j say "/ "
endif
enddo
do while i0<= 24
j=(10+(5* mod(i0,12)))
locate for (ce=ce1 .and. date=date1).and. heur=i0
if found()
@35,j say npa picture "99"
i0=i0+1
else
@35,j say "/ "
endif
enddo
endif
*****************************
i=0
do while i<>13
i=inkey()                                
if i=24 .or. i=5
@45,2 clear to 47,77
@45,2 to 47,77 double
if l="fr"
@46,3 say "entrer pour sortir ; les flŠches bas,haut pour mouvement"
else
@46,3 say "enter to go out  ; the pointers down,high to move"
endif
select 7
    if i=5
         if dow(date1)<>6
date1=date1+1
         else
         
locate for date>date1
              if found()
date1=date
do while dow(date1)<>7
date1=date1-1
enddo
              else
              if date1<prec
              date1=prec
              else
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
if l="fr"
@46,3 say "pousser la flŠche bas "
else
@46,3 say "press the pointer down"
endif
              endif
              endif
         endif
    else
         if dow(date1)<>7
date1=date1-1
         else
         
locate for date<date1
              if found()
date1=date
do while dow(date1)<>6
date1=date1+1
enddo
              else
              if date1>suiv
              date1=suiv
              else
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
if l="fr"
@46,3 say "pousser la flŠche haut "
else
@46,3 say "press the pointer high"
endif
              endif
              endif
         endif

    endif
nsec1=space(15)
set color to b/gr
@11,15 clear to 13,64
@11,15 to 13,64 double
@14,25 clear to 16,54 
@14,25 to 16,54 double
@12,34 say day(date1) picture "99"
@12,57 say year(date1)
if l="fr"
@12,20 say youm(date1) picture "xxxxxxxxxxxx"
@12,40 say chahr(date1) picture "xxxxxxxxxxxx"
else
@12,20 say cdow(date1) picture "xxxxxxxxxxxx"
@12,40 say cmonth(date1) picture"xxxxxxxxxxxx"
endif
locate for ce=ce1 .and. date=date1
if found()
nsec1=nsec
endif
select 8
  if nsec1=space(15)
if l="fr"
@15,26 say "il est repos‚ ce jour la"
else
@15,26 say "he take a rest this day"
endif
i0=1
set color to n/w
do while i0<= 12
j=(10+(5*i0))
@25,j say "/ "
@35,j say "/ "
i0=i0+1
enddo
  else
set color to b/gr
if l="fr"
@15,26 say "secteur:"
else
@15,26 say "sector:"
endif
@15,36 say nsec1 picture "xxxxxxxxxxxxxxx"

i0=1
set color to n/w
  do while i0<= 12
j=(10+(5*i0))
locate for (ce=ce1 .and. date=date1).and. heur=i0
   if found()
@25,j say npa picture "99"
i0=i0+1
   else
@25,j say "/ "
    endif
    i0=i0+1
 enddo
 do while i0 <= 24
j=(10+(5* mod(i0,12)))
if i0=24
j=70
endif
locate for (ce=ce1 .and. date=date1).and. heur=i0
   if found()
@35,j say npa picture "99"
   else
@35,j say "/ "
   endif
   i0=i0+1
 enddo
endif
endif
enddo
return
     




