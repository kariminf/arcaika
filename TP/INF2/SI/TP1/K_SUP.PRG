*** set procedure to tp_si\k_sup
*** do sup_cl
*** do sup_pret
************ supression des clients ********************************
**=================sup_cl========================================***
procedure sup_cl
**set status off
**set scoreboard off
set escape on
**set talk off
**set deleted off
t="o"
select 1
use tp_si\pr_dbf                          
select 2
use tp_si\cl_dbf
select 3
use tp_si\liv_dbf
do while t = "o"
select 1
do sup1
set color to w+/br
@17,20 to 19,35
@18,21 say "continuer?  " get t picture "y"
read
enddo
select 3
pack
select 2
pack
select 1
pack
**set color to gr+/r
close databases
set escape off
return
***--------------------sup1---------------------------****
procedure sup1
x=space(15)
y=space(15)
q="o"
n1=0
w=0
i=0
n2=0
set color to gr+/b
clear
set color to n/w ,w/b
@21,1 to 23,78 double
set color to gr+/b
@0,0 to 24,79 double
@1,1 to 20,78 double
@2,2 to 14,12
@2,13 to 4,30
@4,13 to 6,30
@6,13 to 8,30
@8,13 to 10,30
@10,13 to 12,69
@12,13 to 14,69
@3,3 say "nom: "
@5,3 say "prenom:"
@7,3 say "code:"
@9,3 say "droit:"
@11,3 say "adresse:"
@13,3 say "prets: "
set color to n/g
@2,48 to 5,76 double
set color to n*/g
@3,49 say "     SUPPRESSION  DES      "
@4,49 say "        LIBRAIRES          "
set color to n/w
@22,2 say "donnez  le nom et le prenom que vous voulez supprimer                       "
select 2
do while .t.
x=space(15)
y=space(15)
q="o"
@3,14 get x function "a!" picture "xxxxxxxxxxxxxxx"
@5,14 get y function "a"  picture "xxxxxxxxxxxxxxx"
read
if len(trim(ltrim(x))) <>0 .and. len(trim(ltrim(y))) <>0 then
locate for nom =trim(ltrim(x)) .and. upper(pre)=upper(trim(ltrim(y))) 
if found().and.(.not.deleted()) then
set color to gr+/b
n1= ncl
n2=recno()
@7,18 say ncl picture "99999"
@9,21 say nbl picture "99"
@11,14 say adr
do ch1 with .f.
@13,14 say  "ce libraire a:"
@13,30 say w picture "99"
@13,33 say "emprunt(s)"
@13,44 say i picture "99" 
@13,47 say "d‚passe(ent)la durŠe"
select 2
set color to w+/br
@17,20 to 19,35
@18,21 say "supprimer?  " get q picture "y"
set color to n/w
@22,2 say "voulez vous supprimer ce libraire ( O / N )                                 "         
read       
if q="o" then 
goto n2
delete 
do ch1 with .t.
@22,2 say "il est supprim‚ , voulez vous continuer la suppression?                     " 
exit
else
@22,2 say "voulez vous continuer la suppression des libraires?                         " 
exit
endif
else
@22,2 say "il n'y a aucun libraire de ce nom et prenom  !!!                            "   
endif
else
@22,2 say "il n'y a pas le nom ou le prenom ou les deux , r‚p‚ter                      "
exit                                                                                                                       
endif
enddo
select 1
return
***---------------------ch1---------------------------------------***
procedure ch1
parameters p
i=0
w=0
i1=0
a1=0
select 1
go bottom
do while i1 < reccount()
i1 = i1 + 1
goto i1
if ncl = n1 then 
   if dr = ctod(space(10)) then
w=w+1
      if date() > dp + 8 then
i=i+1
      endif
   endif
   if p then
   a1=nl
   delete
   select 3
      locate for nl=a1 
       if found() then
         if occ=1 then
         delete
         else
         replace occ with (occ-1)
         endif
         select 1
       endif
   endif
endif
enddo
return
***suppression automatique des enrigestrements aprŠs 3 mois***********
***==================sup_pret==================================******
procedure sup_pret
i=0
use tp_si\pr_dbf
do while i < reccount()
i=i+1
goto i
if date() > dp +90 then
delete
endif
enddo
pack
close databases
return








