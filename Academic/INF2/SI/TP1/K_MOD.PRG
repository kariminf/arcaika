*** set procedure to tp_si\k_mod
*** do mod_cl
*** do mod_liv
********************* MODIFICATION DES CLIENTS *********************
***====================mod_cl===================================***
procedure mod_cl
**set status off
**set scoreboard off
**set talk off
set escape on
t="o"
use tp_si\cl_dbf
do while t="o"
do mod1
set color to w+/br
@17,20 to 19,35
@18,21 say "continuer?  " get t picture "y"
read
enddo
**set color to gr+/r
close databases
set escape off
return
**----------------------mod1---------------------------------------***
procedure mod1
x = space(15)
y = space(15)
ad=space(55)
l=0
q="o"
p=.t.
set color to gr+/b
clear
@0,0 to 24,79 double
@1,1 to 20,78 double
@2,2 to 12,12
@2,13 to 4,30
@4,13 to 6,30
@6,13 to 8,30
@8,13 to 10,16
@10,13 to 12,69
@3,3 say "nom:"
@5,3 say "prenom:"
@7,3 say "code:"
@9,3 say "droit:"
@11,3 say "adresse:"
set color to n/g
@2,48 to 5,76 double
set color to n*/g
@3,49 say "     MODIFICATION DES      "
@4,49 say "         LIBRAIRES         "  
set color to n/w,w/b
@21,1 to 23,78 double
@22,2 say "donner le nom et le prenom ...  svp                                         "
go bottom
do while .t.
if p then
x= space(15)
y= space(15)
@3,14 get x function "a!" picture "xxxxxxxxxxxxxxx"
@5,14 get y function "a"  picture "xxxxxxxxxxxxxxx"
read
if len(ltrim(trim(x)))=0 .or. len(ltrim(trim(y)))=0 then
@22,2 say "il n'y a pas de nom ou prenom ou les deux  !!!!                             "
exit
else &&&if len
locate for nom=trim(ltrim(x)).and. pre=trim(ltrim(y))
if found() then
ad=adr
l=nbl
set color to rg+/b
@7,17 say ncl
set color to n/w
p=.f.
@22,2 say "modifier son droit entre 1 et 10 ; ou apuyer sur ENTREE sinon               "
else  &&&if found
@22,2 say "il n'y a aucun libraire de ce nom et prenom  !!!                            "
endif  &&&if found
endif &&&if len
else &&&if p
@9,14 get l picture "99"
read
if l<1 .or. l>10 then
l=0
@22,2 say "le droit doit etre entre 1 et 10  ..........                                "
loop
else &&&if l
@22,2 say "donnez l'adresse si vous voulez la modifier !!                              "
@11,14 get ad picture "xxxxxxxxxxxxxxxxxxxxxxxxxxxx code: 99999 de: aaaaaaaaaa"
 read
@22,2 say "voulez vous modifier les informations                                       " 
set color to w+/br
@17,20 to 19,35
@18,21 say "modifier ?  " get q picture "y"
read   
set color to n/w
if q="o" then
replace nbl with l
replace adr with ad
@22,2 say "il est modifier , voulez vous continuer la modification des libraires? (O/N)"
exit
else &&if q
@22,2 say "voulez vous continuer la modification des libraires ?                       "     
exit
endif &&if q
endif &&&if l
endif &&&if p 
enddo  &&&do while
return
************** MODIFICATION DES LIVRES *********************
**==================mod_liv=============================***
procedure mod_liv
**set status off
**set scoreboard off
set escape on
**set talk off
**set deleted off
t="o"
select 1
use tp_si\pr_dbf
select 2
use tp_si\liv_dbf
do while t="o"
do mod2
set color to w+/br
@17,20 to 19,35
@18,21 say "continuer?  " get t picture "y"
read
enddo
select 2
pack
select 1
pack
**set color to gr+/r
close databases
set escape off
return
***------------------------mod2----------------------------***
procedure mod2
x=space(30)
q="o"
n=0
n1=0
p=.f.
w=0
set color to gr+/b
clear
@0,0 to 24,79 double
@1,1 to 20,78 double
@2,2 to 14,15
@2,16 to 4,47 
@4,16 to 6,21
@4,21 to 6,31
@4,31 to 6,47
@6,16 to 8,32
@8,16 to 10,32
@10,16 to 12,32
@12,16 to 14,32
@3,3 say "titre:"
@5,3 say "quantite:"
@5,22 say "prets:"
@7,3 say "code:"
@9,3 say "occurence:"
@11,3 say "auteur:"
@13,3 say "editeur:"
set color to n/g
@2,48 to 5,76 double
set color to n*/g
@3,49 say "   MODIFICATION  DES       "
@4,49 say "       LIVRES              "
set color to n/w,w/b
@21,1 to 23,78 double
@22,2 say "donner le titre de livre que vous voulez modifier  ... svp                  "
do while .t.
x=space(30)
@3,17 get x function "!" picture "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
read
if len(trim(ltrim(x)))=0 then 
@22,2 say "il n'y a aucun titre ; voulez vous continuer ?                              "
exit
else
locate for titre=ltrim(trim(x))
if  found().and.(.not.deleted()) then  &&2
n2=recno()
set color to gr+/b
@7,20 say nl picture "99999"
@9,21 say occ picture "9999"
@11,17 say nau
@13,17 say ned
n1=nl
do ch2 with .f.
select 2
@5,32 say w picture "9999"
@5,37 say "prets"
set color to n/w                                                                      
@22,2 say "donner la nouvelle quantite de ce livre                                     "
n=-1
do while n< 0
n=0
@5,17 clear to 5,18
@5,17 get n picture "9999"
read
if n<0 then &&3
@22,2 say "donner une quantite supperieur de: 0                                        "
endif &&3
enddo
goto n2
do case
case n=occ
@22,2 say "aucun modification ; voulez vous continuer ?                                "
exit
case n<> occ .and. n<>0
set color to w+/br
@17,20 to 19,35
@18,21 say "modifier ?  " get q picture "y"
set color to n/w
@22,2 say "voulez vous vraiment modifier la quantite de ce livre ?                     "
read
if q="o" then&&7
replace occ with n
@22,2 say "remlacement d'occurence est fini ... continuer ?                            "
exit
else &&7
@22,2 say "echec d'enregistrer ; voulez vous continuer la modification des livres ?    "
exit
endif
case n=0 then  &&4
set color to w+/br
@17,20 to 19,35
@18,21 say "supprimer?  " get q picture "y"
set color to n/w
@22,2 say "ATTENTION! lorsque vous supprimer les enr‚gistrements de pret vont ‚ffacer  "
read
if q="o" then&&5
goto n2
delete
do ch2 with .t.
select 2
@22,2 say "il est supprim‚ comme vous voulez !! continuer ?                            "
exit
else  &&5
@22,2 say "echec de suppression ; voulez vous continuer la modification des livres ?   "      
exit 
endif
endcase
else
@22,2 say "il n'y a aucun livre de ce titre dans la bibliothŠque                       "
endif
endif
endif
enddo
return
***-----------------ch2-------------------------***
procedure ch2
parameters p1
w=0
i=0
select 1
do while i<reccount()
i=i+1
goto i
if nl=n1 then
if dr=ctod(space(10)) then
w=w+1
endif
if p1 then
delete
endif
endif
enddo
return


















