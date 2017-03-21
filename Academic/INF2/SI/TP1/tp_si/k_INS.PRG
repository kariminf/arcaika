*** set procedure to tp_si\k_ins
*** do ins_cl
*** do ins_liv
*** do ins_pret
*** do ins_date
**************************client******************************
***------------------ins_client-----------------------------***
procedure ins_cl
** set status off
** set scoreboard off
 set escape on
** set talk off
 t="o"
use tp_si\cl_dbf
do while (t = "o")
do ins1 
set color to w+/br
@17,20 to 19,35
@18,21 say "continuer?  " get t picture "y"
read
enddo
**set color to gr+/r
close databases
set escape off
return
***------------------ins1---------------------------***
procedure ins1
n=space(15)
p=space(15)
n1=0
n2=0
ad=space(55)
co2=0
 x=space(15)
 y=space(15)
 z=space(55)
 w=0
 v=0
 i=0
 bl=.t.
 q="o"
 w= reccount() 
 do while i < reccount()
 locate for ncl = i
 if found()  then
 i=i+1
 else
 w=i
 exit
 endif
 enddo
set color to gr+/b 
clear 
set color to n / w
@21,1 to 23,78 double 
set color to gr+/b
@0,0 to 24,79 double
@1,1 to 20,78 double
@2,2 to 12,12
@2,13 to 4,29
@4,13 to 6,29
@6,13 to 8,29
@8,13 to 10,16
@10,13 to 12,69
@3,3 say "code:"           
set color to n/g 
@2,48 to 5,76 double
set color to n*/g
@3,49 say "   INSERTION DES NOUVEAUX  "
@4,49 say "        LIBRAIRES          "
set color to gr+/b
@3,14 say w 
@5,3 say "nom:    "                                 
@7,3 say "prenom: " 
@9,3 say "DROITS: "
@11,3 say "adresse:"
set color to n/w
@5,14 get x function "a!" picture "!!!!!!!!!!!!!!!" 
@7,14 get y function "a" picture "!xxxxxxxxxxxxxx"
@22,2 say "donner les information de neuveau libraire                                  "
read
if len(ltrim(trim(x)))=0 .or. len(ltrim(trim(y)))=0 then
@22,2 say "echec d'enregestrement                                                 "
else
locate for nom =trim(ltrim( x)) .and.upper( pre)= upper(trim(ltrim( y ) ))
if found() then
@22,2 say "il existe dans le fichier                                                  "
loop
else 
do while .t.
@9,14 get v picture "99"
set color to gr+/b
@9,14 say "  " 
set color to n/w
@22,2 say "les droits sont entre: 1 et 10                                             " 
read
if v > 0 .and. v < 11 then
exit
endif
enddo
@11,14 get z picture "xxxxxxxxxxxxxxxxxxxxxxxxxxxx code: 99999 de: aaaaaaaaaa"
@22,2 say "completer les information de neuveau libraire                              "
read
set color to w+/br
@17,20 to 19,35
@18,21 say "enregistrer?" get q picture "y"
set color to n/w
@22,2  say "voulez_vous enregistrer ce nouveau dans le fichier ?                      "
read
if q="o" then
append blank
do case
case reccount()=1 
replace nom with trim(ltrim( x))
replace pre with trim(ltrim(y))
replace ncl with w
replace adr with z
replace nbl with v
@22,2 say "elle est enregistr‚e                                                    "
reindex
case reccount()> 1
goto (reccount()-1)
n=nom
p=pre
ad=adr
n1=ncl
n2=nbl
co2=reccount()
do while n>trim(ltrim(x)) .and. co2>1
goto co2
replace nom with trim(ltrim( n))
replace pre with trim(ltrim(p))
replace ncl with n1
replace adr with ad
replace nbl with n2
co2=co2-1
if co2 > 1 then
goto (co2-1)
n=nom
p=pre
ad=adr
n1=ncl
n2=nbl
endif
enddo
do while (n=trim(ltrim(x)).and. p>trim(ltrim(y))) .and. co2>1
goto co2
replace nom with trim(ltrim( n))
replace pre with trim(ltrim(p))
replace ncl with n1
replace adr with ad
replace nbl with n2
co2=co2-1
if co2 > 1 then
goto (co2-1)
n=nom
p=pre
ad=adr
n1=ncl
n2=nbl
endif
enddo

goto co2
replace nom with trim(ltrim( x))
replace pre with trim(ltrim(y))
replace ncl with w
replace adr with z
replace nbl with v
@22,2 say "elle est enregistr‚e                                                    "
reindex
endcase
else
@22,2  say "voulez_vous cotinuer l'insertion des nouveaux libraire ?                  " 
endif
endif
endif
return
****************************livre***************************************
***------------------ins_liv-----------------------------***
procedure ins_liv
** set status off
** set scoreboard off
 set escape on
** set talk off
** set date french
** set century on
t="o"
use tp_si\liv_dbf
do while (t = "o")
do ins2 
set color to w+/br
@17,20 to 19,35
@18,21 say "continuer?  " get t picture "y"
read
enddo
**set color to gr+/r 
close databases
set escape off
return
***------------------ins2---------------------------***
procedure ins2
 x=space(30)
 y=space(15)
 z=space(15)  
 w=0
 n1=0
 n2=0
 n=space(15)
 p=space(15)
 ti=space(30)
 ad=ctod(space(10))
 r=0
 co2=0
 i=0
 q="o"
 w= reccount() 
 do while i < reccount()
 locate for nl = i
 if found()  then
 i=i+1
 else
 w=i
 exit
 endif
 enddo
set color to gr+/b ,w/b 
clear 
set color to n / w
@21,1 to 23,78 double 
set color to gr+/b
@0,0 to 24,79 double
@1,1 to 20,78 double
@2,2 to 14,15
@2,16 to 4,30
@4,16 to 6,47
@6,16 to 8,47
@8,16 to 10,21
@10,16 to 12,32
@12,16 to 14,32     
@3,3 say "code:     " 
@3,17 say w
@5,3 say "date achete"
@5,17 say cdow(date())  
@5,26 say day(date())
@5,31 say cmonth(date())
@5,42 say year(date())
set color to n/g 
@2,48 to 5,76 double
set color to n*/g
@3,49 say "   INSERTION DES NOUVEAUX  "
@4,49 say "        LIVRES             "
set color to gr+/b
@7,3 say "titre    :"                                 
@9,3 say "occurence:"
@11,3 say "editeur  :"
@13,3 say "auteur   :"
set color to n/w
@7,17 get x function "!" picture "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" 
@22,2 say "donner les information de neuveau livre                                     "
read
if len(trim(ltrim(x)))=0 then
@22,2 say "echec d'enregestrement                                                 "
else
locate for titre = trim(ltrim(x)) 
if found() then
@22,2 say "il existe dans le fichier                                                  "
else 
do while .t.
@9,17 get r picture "9999"
set color to gr+/b
@9,17 say "    "
set color to n/w
read
if r > 0 then
exit
else
@22,2 say "l'occurence est supperieur de z‚ro  !!!                                    " 
endif
enddo
@11,17 get y function "a!" picture "xxxxxxxxxxxxxxx" 
@13,17 get z function "a!" picture "xxxxxxxxxxxxxxx"
@22,2 say "completer les information de neuveau libraire                              "
read
set color to w+/br
@17,20 to 19,35
@18,21 say "enregistrer?" get q picture "y"
set color to n/w
@22,2  say "voulez_vous enregistrer ce nouveau dans le fichier ?                      "
read
if q="o" then
*******************
append blank
do case
case reccount()=1 
replace titre with trim(ltrim(x))
replace ned with trim(ltrim(y))
replace nl with w
replace nau with trim(ltrim(z))
replace occ with r
replace dt with date()
@22,2 say "elle est enregistr‚e                                                    "
reindex
case reccount()> 1
goto (reccount()-1)
n=ned
p=nau
ad=dt
n1=nl
n2=occ
ti=titre
co2=reccount()
do while ti>trim(ltrim(x)) .and. co2>1
goto co2
replace titre with ti
replace ned with n
replace nl with n1
replace nau with p
replace occ with n2
replace dt with ad
co2=co2-1
if co2 > 1 then
goto (co2-1)
n=ned
p=nau
ad=dt
n1=nl
n2=occ
ti=titre
endif
enddo
goto co2
replace titre with trim(ltrim(x))
replace ned with trim(ltrim(y))
replace nl with w
replace nau with trim(ltrim(z))
replace occ with r
replace dt with date()
@22,2 say "elle est enregistr‚e                                                    "
reindex
endcase
else
@22,2  say "voulez_vous cotinuer l'insertion des nouveaux livre ?                     " 
endif
endif
endif
return
****************************PRET***************************************
***------------------ins_pret-----------------------------***
procedure ins_pret
** set status off
** set scoreboard off
 set escape on
** set talk off
** set date french
** set century on
  t="o"
select 1
use tp_si\pr_dbf
select 2
use tp_si\cl_dbf
select 3
use tp_si\liv_dbf
do while (t = "o")
do ins3 
set color to w+/br
@17,20 to 19,35
@18,21 say "continuer?  " get t picture "y"
read
enddo
**set color to gr+/r
close databases
set escape off
return
***------------------ins3---------------------------***
procedure ins3
 x=space(15)
 y=space(15)
 z=space(30)  
 w=0
 r1=0             
 r2=0
 i=0
 n1=0
 pm=.f.
 n2=0
 q="o"
 p=.f.
 k1=space(30)
set color to gr+/b ,w/b 
clear 
set color to n / w
@21,1 to 23,78 double 
set color to gr+/b
@0,0 to 24,79 double
@1,1 to 20,78 double
@2,2 to 10,15
@2,16 to 4,32
@4,16 to 6,32
@6,16 to 8,47
@8,16 to 10,47
@3,3 say "nom:        " 
set color to n/g 
@2,48 to 5,76 double
set color to n*/g
@3,49 say "   INSERTION DES NOUVEAUX  "
@4,49 say "    PRETS DES LIBRAIRES    "
set color to gr+/b
@5,3 say "prenom:     "
@7,3 say "titre    :  "
@9,3 say "date pret:  "
           @9,17 say cdow(date())  
           @9,26 say day(date())
           @9,31 say cmonth(date())
           @9,42 say year(date())
set color to n/w
@22,2 say "donner le nom et le prenom de libraire                                      " 
do while .t.
if .not. pm then
select 2 
x=space(15)
y=space(15)
@3,17 get x function "a!" picture "xxxxxxxxxxxxxxx" 
@5,17 get y function "a"  picture "xxxxxxxxxxxxxxx"
read
   if len(ltrim(trim(x))) = 0 .or. len(ltrim(trim(y))) = 0 then
@22,2 say "absense de nom ou prenom ou les deux , r‚p‚ter ?                            " 
exit
else
go bottom
  locate for nom=trim(ltrim(x)) .and. upper(pre)=upper(trim(ltrim(y)))
 if found()  then
n1 =ncl
r1= nbl
do ch1
do case
case p
@22,2 say "il ne peut pas faire un pret ; il ne rendre pas au minimum un livre         "                                
case w >= r1 
@22,2 say "il ne peut pas faire un pret ;puisque il aura un d‚ppassement de droits     "
otherwise
pm=.t.
endcase
 else
@22,2 say "il n'y a pas un libreraie de ce nom et prenom                               "   
 endif 
 endif
else
if r2=0 then
@22,2 say "donner le titre de livre ...  svp                                           " 
endif
***lecture de titre de livre******************************
select 3
z=space(30)
@7,17 get z function "!" picture "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
read
if len(trim(z)) <> 0 then
k1=titre
locate for titre =ltrim( trim( z ))
if found() then
n2=nl
r2=occ
do ch2
if i >= r2 then
@22,2 say "coisir un autre livre ; ce livre est reserv‚ dans ce moment                 "   
else
select 1
set color to w+/br
@17,20 to 19,35
@18,21 say "enregistrer?" get q picture "y"
set color to n/w
@22,2  say "voulez_vous enregistrer ce nouveau dans le fichier ?                      "
read
if q="o" then
append blank
replace nl with n2
replace ncl with n1
replace dp with date()
@22,2 say "elle est enregistr‚e                                                        "
reindex
exit
else
@22,2  say "voulez_vous cotinuer l'insertion des nouveaux prets ?                      " 
exit
endif
endif
else
@22,2 say "coisir un autre livre ; ce livre n'existe pas                               "   
r2=1
endif
else
@22,2 say "echec ... voulez vous continuer ? (o/n)                                     "
exit
endif
endif
enddo
return
**-------------------------ch1---------------------------***
procedure ch1
w=0
p=.f.
i1=0
select 1
go top
do while i1 < reccount() 
i1=i1+ 1
goto i1
if ncl = n1 .and. dr=ctod(space(10)) then
w=w+1
if date() > dp + 8 then
p=.t.
endif
endif
loop
enddo
return
**-------------------------ch2------------------------***
procedure ch2
i1=0
i=0
select 1
go top
do while i1 < reccount()
i1=i1+1
goto i1
if nl = n2 .and. dr=ctod(space(10)) then
i=i+1
endif
loop
enddo
return
****************************RENDRE***************************************
***------------------ins_date-----------------------------***
procedure ins_date
** set status off
** set scoreboard off
 set escape on
** set talk off
** set date french
** set century on
t="o"
select 1
use tp_si\pr_dbf
select 2
use tp_si\cl_dbf
select 3
use tp_si\liv_dbf
do while (t = "o")
do ins4 
set color to w+/br
@17,20 to 19,35
@18,21 say "continuer?  " get t picture "y"
read
enddo
**set color to gr+/r
close databases
set escape off
return
***------------------ins4---------------------------***
procedure ins4
 x=space(15)
 y=space(15)
 d=ctod(space(10))
 w=0
 r1=0             
 r2=0
 i=0
 n1=0
 pm=.f.
 n2=0
 q="o"
 set color to gr+/b ,w/b 
clear 
set color to n / w
@21,1 to 23,78 double 
set color to gr+/b
@0,0 to 24,79 double
@1,1 to 20,78 double
@2,2 to 14,15
@2,16 to 4,32
@4,16 to 6,32
@6,16 to 8,32
@8,16 to 10,47
@10,16 to 12,47
@12,16 to 14,47
@3,3 say "nom:        " 
set color to n/g 
@2,48 to 5,76 double
set color to n*/g
@3,49 say "       RENDRE   DES        "
@4,49 say "           LIVRES          "
set color to gr+/b
@5,3 say "prenom:     "
@7,3 say "Nø pret:    "
@9,3 say "titre:      "
@11,3 say "date pret:  "
@13,3 say "date rendre:"
           @13,17 say cdow(date())  
           @13,26 say day(date())
           @13,31 say cmonth(date())
           @13,42 say year(date())
  set color to n/w
@22,2 say "donner le nom et le prenom de libraire                                      " 

do while .t.
select 2 
x=space(15)
y=space(15)
@3,17 get x function "a!" picture "xxxxxxxxxxxxxxx" 
@5,17 get y function "a"  picture "xxxxxxxxxxxxxxx"
read
   if len(ltrim(trim(x))) = 0 .or. len(ltrim(trim(y))) = 0 then
@22,2 say "absense de nom ou prenom ou les deux , r‚p‚ter ?                            " 
exit
   else
locate for nom=ltrim(trim(x)) .and. pre= ltrim(trim(y))
         if  found() then
n1=ncl
do ch1
                 if w>0 then
pm=.t.
exit
                 else
@22,2 say "il n'a pas des prets ou il rendre tous ses prets  !!!                       "
exit                
                 endif
          else
@22,2 say "il n'y a pas un libreraie de ce nom et prenom                               "
         endif

    endif
enddo
r1=0
i=1
   do while  i <= w .and. pm
r2=1
q="o"
select 1
do while r2 <= i
n2=0
d=ctod(space(10))
locate for ncl = n1 .and. dr=ctod(space(8)).and. recno() >r1 
if found() then
n2=nl       
d=dp
 endif
 r2=r2+1
 enddo
 r1= recno()
select 3       
go bottom
locate for nl=n2 
set color to gr+/b
             if found()   then
           @11,17 say cdow(d)  
           @11,26 say day(d)
           @11,31 say cmonth(d)
           @11,42 say year(d)
@9,17 say titre
           @7,20 say i picture "99"
           @7,23 say "/"
           @7,25 say w picture "99"
             endif
set color to w+/br
@17,20 to 19,35
@18,21 say "rendre ?    " get q picture "y"
set color to n/w
@22,2 say "s'il fait rendre ce livre appuyer sur (o) sinon appuyer sur (n)             "                   
read
       if q="o" then
 select 1
 go bottom
  goto r1
  replace dr with date()
  select 2
  endif
       i=i+1
enddo
return
