set scoreboard off
set century on
set exact on
set escape off
set deleted off
close databases
set procedure to k_proc\k_sel
set procedure to k_proc\k_fun
set procedure to k_proc\k_sys
set procedure to k_proc\k_aff
set procedure to k_proc\k_emp
set procedure to k_proc\k_prof
password=space(10)
true=.t.
do sel0
select a
l=la
select c
if reccount()<>0
set color to w/br
clear
set color to gr+/b
@1,1 clear to 48,78
@1,1 to 48,78 double
set color to n/w
@45,2 clear to 47,77
@45,2 to 47,77 double
if l="fr"
@46,3 say "entrer le mot de passe ...svp"
else
@46,3 say "enter the password ...please"
endif
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
if l="fr"
@18,26 say "DONNER LE BON MOT DE PASSE"
else
@18,26 say "GET THE TRUE PASSWORD "
endif
set color to w/b,w/b
@14,38 to 16,49 double
@15,39 get password picture "xxxxxxxxxx"
read
if password<>pas
true=.f.
endif
endif
******************
do h_begin
******************
if true
select b
prof=pro
close databases
work=.t.
g1=.t.
h1=.t.
i11=0
do while work
if l="fr"
set date french
else
set date american
endif
if prof=1
do k_prof1
else
do k_prof2
endif
enddo
do sel0
select a
replace la with l
select b
replace pro with prof
do h_bye
endif
close databases
