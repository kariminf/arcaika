**set procedure to tp_si\k_aff
**do aff_cl with .t.&&recherche par nom
**do aff_cl with .f.&&affichage complet
*** do aff_liv
*** do aff_pret
************* AFFICHAGE DES CLIENTS ********************************
***================aff_cl===================================***
procedure aff_cl         
parameters bol
t="o"
**set talk off
**set scoreboard off
**set status off
set escape on
select 1
use tp_si\pr_dbf
select 2
use tp_si\cl_dbf
if bol then
do while t="o"
do aff1
@22,2 say "voulez vous continuer  ???                                                  "               
set color to w+/br
@17,20 to 19,35
@18,21 say "continuer?  " get t picture "y"
read
enddo
else
do aff3
endif
**set color to gr+/r
close databases
set escape off
return
**------------------aff1---------------------------------***
procedure aff1
c=0
p=.f.
i=0
w=0
l=0
g1=0
x=space(15)
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
@3,3 say "nom:"
@5,3 say "prenom:"
@7,3 say "Nø:"
@9,3 say "code:"
@11,3 say "adresse:"
@13,3 say "d‚tails:"
set color to n/g
@2,48 to 5,76 double
set color to n*/g
@3,49 say " RECHERCHE  DES  LIBRAIRES "
@4,49 say "        PAR  NOM           "
set color to n/w
@22,2 say "donner le nom que vous cherchez ...  svp                                    "
do while .t.
c=0
if .not. p then
x=space(15)
@3,14 get x function "a!" picture "xxxxxxxxxxxxxxx"
read
if len(trim(ltrim(x)))<>0 then
locate for nom=trim(ltrim(x))
if found() then
p=.t.
i=1
g1 = ncl
set color to n/rg
@7,55 to 9,64 double
do ch1 with x , 1 , .t.
do ch1 with x ,1 ,.f.
@7,20 say "/"
@7,21 say w picture "99999"
set color to n/w
@22,2 say "appuer sur les flŠche:haut , bas pour mouvement et ENTREE pour sortir       "
set escape off
else
@22,2 say "il n'y a aucun libraire de ce nom !! donner un autre nom ...svp             " 
endif
else
@22,2 say "il n'y a aucun nom ... continuer la recherche????                           "
exit
endif
else
set color to n/rg
@8,56 say time()
set color to n/w
c=inkey()
if c=5 .or. c=24 .or. c=13 then
do case 
case c=13
exit
case c=5 
l=-1
if i>1 then
i=i-1
l=0
endif
case c=24 
l=1
if i<w then
l=0
i=i+1
endif
endcase
do case
case l=-1
@22,2 say "il n'y a aucun libraire a un numero inferieur de 1 ...                      "
case l=0
@22,2 say "appuer sur les flŠche:haut , bas pour mouvement et ENTREE pour sortir       "
case l=1
@22,2 say "c'est le maximum des libraires qu'ont ce nom                                "
endcase
do ch1 with x , i , .f.
set color to n/w
endif
endif
enddo
set escape on
return
***-----------------ch1---------------------------------------**
procedure ch1
parameters a , b , c 
i1=0
i2=0
r=1
k=0
k2=0
go bottom
if c then  
do while i1 < reccount()
i1=i1+1
goto i1
if nom=trim (ltrim(a)) then
 w=w+1
 endif
 enddo
 else  &&.not.c
do while i1 < reccount()
i1=i1+1
goto i1
if nom=trim (ltrim(a)) then
 i2=i2+1
    if i2 = b 
    r = i1
    g1=ncl
    endif
 endif
 enddo
do ch with .t.
select 2
goto r
set color to gr+/b
@5,14 say pre
@7,14 say b picture "99999"
@9,17 say ncl
@11,14 say adr
@13,14 say "il a:"
@13,20 say k picture "99"
@13,23 say "emprunt(s)pret(s):"
@13,41 say k2 picture "99"
@13,44 say "de ces prets sont retards"
endif
return
**----------------ch-----------------------------------**
procedure ch
parameters v
j1=0
             if v then
select 1
go bottom
do while j1 < reccount()
j1=j1+1
goto j1
if ncl = g1.and. dr = ctod(space(10)) then
  k=k+1
     if date() > dp + 8 then
     k2=k2+1
     endif
endif
enddo
               else
select 1
go bottom
do while j1< reccount()
j1=j1+1
goto j1
if nl= g1.and. dr=ctod(space(10)) then
k=k+1
  if date() > dp+8 then
  k2=k2+1
  endif
  endif
  enddo
               endif
return
***************** AFFICHAGE   DES  LIVRES ***************************
***=================aff_liv========================================***
procedure aff_liv
**set talk off
**set scoreboard off
**set status off
set escape on
select 1
use tp_si\pr_dbf
select 2
use tp_si\liv_dbf
do aff2
**set color to gr+/r
close databases
set escape off
return
**------------------aff2---------------------------------***
procedure aff2
c=0
p=.f.
i=1
w=0
d=ctod(space(8))
i1=1
l=0
g=0
x=space(15)
y=space(15)
set color to gr+/b
clear
set color to n/w ,w/b
@21,1 to 23,78 double
set color to gr+/b
@0,0 to 24,79 double
@1,1 to 20,78 double
@2,2 to 15,47 double
@4,3 to 4,46  double
@3,34 to 14,34 double
@3,40 to 14,40 double
@10,48 to 15,56
@10,57 to 15,76
@11,49 say " Nø:"
@12,49 say "AUTEUR"
@13,49 say "EDITEUR"
@14,49 say "PRETS:"
@16,2 to 18,21 double
@17,3 say "DATE D'ACHETTE:"
@16,30 to 18,60 double
@3,4 say "LES TITRES DES LIVRES:"
@3,35 say "CODE:"
@3,41 say "NOMBRE"
set color to n/g
@2,48 to 5,76 double
set color to n*/g
@3,49 say "     affichage  des        "
@4,49 say "         livres            "
set color to n/w
@22,2 say "appuer sur les flŠche: haut ,bas pour mouvement et ENTREE pour sortir       "
set escape off
select 2
do while c<>13
c=0
if.not. p then 
set color to n/gr
@7,55 to 9,64 double
p=.t.
g=1
do ch2
else
set color to n/gr
@8,56 say time()
set color to n/w
c=inkey()
if c=5 .or. c=24 then
do case 
case c=5 
l=-1
if i>1 then
i=i-1
l=0
endif
if g=1 .and.(i-i1) <> 0 then
i1=i1-1
endif

if g>1 then
g=g-1
endif
case c=24 
l=1
if g < 10 .and. i < reccount() then
g=g+1
endif
if i<reccount() then
l=0
i=i+1
endif
if  ( i - i1) > 9 .and. g=10 then
i1=i1+1
endif
endcase
do case
case l=-1
@22,2 say "il n'y aucun livre a un numero inferieur de 1 ...                           "
case l=0
@22,2 say "appuer sur les flŠche: haut ,bas pour mouvement et ENTREE pour sortir       "
case l=1
@22,2 say "c'est le maximum des livres dans la bibliothŠque                            "
endcase
do ch2
set color to n/w
endif
endif
enddo
set escape on
return
***-----------------ch2---------------------------------------**
procedure ch2
i2=0
m = i1-1
l=0
k2=0
g1=0
k=0
go bottom
do while m < reccount() .and. i2 < 10 
i2=i2+1
m=m+1 
goto m
if  i2 <> g then
set color to gr+/b
else
l=m
g1=nl
x=nau
y=ned
d=dt
set color to n/br
endif
@(i2+4),3 say titre
@(i2+4),35 say nl 
@(i2+4),43 say occ 
enddo
set color to gr+/b
@11,58 say l picture "99999"
@11,64 say "/"
@11,66 say reccount() picture "99999"
@12,58 say x
@13,58 say y
@17,31 clear to 17,55
@17,31 say cdow(d)
@17,38 say day(d)
@17,42 say cmonth(d) 
@17,50 say year(d)
do ch with .f.
select 2
@14,58 say k picture "9999"
@14,63 say "de"
@14,66 say k2 picture "9999"
@14,70 say "retard"
return
**************AFFICHAGE DES CLIENTS *********************************
***--------------aff3------------------------------------****
procedure aff3
c=0
p=.f.
i=1
w=0
d=ctod(space(8))
i1=1
l=0
g=0
x=space(55)
set color to gr+/b
clear
set color to n/w ,w/b
@21,1 to 23,78 double
set color to gr+/b
@0,0 to 24,79 double
@1,1 to 20,78 double
@2,2 to 15,47 double
@4,3 to 4,46  double
@3,18 to 14,18 double
@3,34 to 14,34 double
@3,40 to 14,40 double
@10,48 to 15,56
@10,57 to 15,76
@11,49 say " Nø:"
@12,49 to 12,55
@12,58 to 12,75
@13,49 say "PRETS:"
@14,49 say "RETARD:"
@16,2 to 18,16 double
@17,3 say "ADRESSE :"
@16,18 to 18,75 double
@3,4 say "LE NOM:"
@3,19 say " PRENOM:"
@3,35 say "CODE:"
@3,41 say "DROIT:"
set color to n/g
@2,48 to 5,76 double
set color to n*/g
@3,49 say "     affichage  des        "
@4,49 say "        libraires          "
set color to n/w
@22,2 say "appuer sur les flŠche: haut ,bas pour mouvement et ENTREE pour sortir       "
set escape off
select 2
do while c<>13
c=0
if.not. p then 
set color to n/gr
@7,55 to 9,64 double
p=.t.
g=1
do ch3
else
set color to n/gr
@8,56 say time()
set color to n/w
c=inkey()
if c=5 .or. c=24 then
do case 
case c=5 
l=-1
if i>1 then
i=i-1
l=0
endif
if g=1 .and.(i-i1) <> 0 then
i1=i1-1
endif 
if g>1 then
g=g-1
endif
case c=24 
l=1
if g < 10 .and. i < reccount() then
g=g+1
endif
if i<reccount() then
l=0
i=i+1
endif
if  ( i - i1) > 9 .and. g=10 then
i1=i1+1
endif
endcase
do case
case l=-1
@22,2 say "il n'y aucun libraire a un numero inferieur de 1 ...                        "
case l=0
@22,2 say "appuer sur les flŠche: haut ,bas pour mouvement et ENTREE pour sortir       "
case l=1
@22,2 say "c'est le maximum des libraires dans la bibliothŠque                         "
endcase
do ch3
set color to n/w
endif
endif
enddo
set escape on
return
***-----------------ch3---------------------------------------**
procedure ch3
i2=0
m = i1-1
l=0
k2=0
g1=0
k=0
do while m < reccount() .and. i2 < 10 
i2=i2+1
m=m+1 
goto m
if  i2 <> g then
set color to gr+/b
else
l=m
g1=ncl
x=adr
set color to n/br
endif
@(i2+4),3 say nom
@(i2+4),19 say pre
@(i2+4),35 say ncl 
@(i2+4),43 say nbl 
enddo
set color to gr+/b
@11,58 say l picture "99999"
@11,64 say "/"
@11,66 say reccount() picture "99999"
@17,20 say x
do ch with .t.
select 2
@13,58 say k picture "9999"
@13,63 say "prets"
@14,58 say k2 picture "9999"
@14,63 say "livre retard"
return
***************** AFFICHAGE   DES  PRETS ***************************
***=================aff_pret========================================***
procedure aff_pret
**set talk off
**set scoreboard off
**set status off
set escape on
set century off 
select 1
use tp_si\pr_dbf
select 2
use tp_si\liv_dbf
select 3
use tp_si\cl_dbf
do aff4
**set color to gr+/r
close databases
set escape off
set century on 
return
**------------------aff4---------------------------------***
procedure aff4
c=0
p=.f.
i=1
i1=1
l=0
g=0
x=space(15)
y=space(15)
set color to gr+/b
clear
set color to n/w ,w/b
@21,1 to 23,78 double
set color to gr+/b
@0,0 to 24,79 double
@1,1 to 20,78 double
@2,2 to 15,47 double
@4,3 to 4,46  double
@3,28 to 14,28 double
@3,37 to 14,37 double
@10,48 to 15,56
@10,57 to 15,76
@11,49 say " Nø:"
@12,49 say "AUTEUR"
@13,49 say "EDITEUR"
@14,49 say "NOMBRE:"
@16,2 to 19,67 double
@17,3 say "NOM:"
@17,27 say "PRENOM:"
@18,3 say "ADRESSE:"
@3,4 say "LES TITRES DES LIVRES:"
@3,29 say "PRET:"
@3,38 say "RENDRE"
set color to n/g
@2,48 to 5,76 double
set color to n*/g
@3,49 say "   AFFICHAGE DES PRETS     "
@4,49 say "        DES LIVRES         "
set color to n/w
@22,2 say "appuer sur les flŠche: haut ,bas pour mouvement et ENTREE pour sortir       "
set escape off
select 1
do while c<>13
c=0
if.not. p then 
set color to n/gr
@7,55 to 9,64 double
p=.t.
g=1
do ch4
select 1
go bottom
else
set color to n/gr
@8,56 say time()
set color to n/w
c=inkey()
if c=5 .or. c=24 then
do case 
case c=5 
l=-1
if i>1 then
i=i-1
l=0
endif
if g=1 .and.(i-i1) <> 0 then
i1=i1-1
endif  
if g>1 then
g=g-1
endif
case c=24 
l=1
if g < 10 .and. i < reccount() then
g=g+1
endif
if i<reccount() then
l=0
i=i+1
endif
if  ( i - i1) > 9 .and. g=10 then
i1=i1+1
endif
endcase
do case
case l=-1
@22,2 say "il n' y aucun pret a un numero inferieur de 1 ...                           "
case l=0
@22,2 say "appuer sur les flŠche: haut ,bas pour mouvement et ENTREE pour sortir       "
case l=1
@22,2 say "c'est le maximum des prets depuis trois mois                                "
endcase
do ch4
select 1
go bottom
set color to n/w
endif
endif
enddo
set escape on
return
***-----------------ch4---------------------------------------**
procedure ch4
i2=0
m1=0
m = i1-1
l=0
g2=0
g1=0
do while m < reccount() .and. i2 < 10 
i2=i2+1
m=m+1 
goto m
if  i2 <> g then
set color to gr+/b
else
l=m
g1=nl
g2=ncl
set color to n/br
endif
@(i2+4),29 say dp
@(i2+4),38 say dr 
m1=nl
select 2
go bottom 
locate for nl=m1
@(i2+4),3 say titre  picture "xxxxxxxxxxxxxxxxxxxxxxxx"
select 1  
go bottom
enddo
set color to gr+/b
@11,58 say l picture "99999"
@11,64 say "/"
@11,66 say reccount() picture "99999"
select 2
go bottom
locate for nl=g1
if found() then
@12,58 say nau
@13,58 say ned
@14,58 say occ
endif
select 3
go bottom
locate for ncl=g2
if found() then
@17,8 say nom
@17,35 say pre
@18,12 say adr
endif
select 1
return










