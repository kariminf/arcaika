procedure t1_emp
parameters l , ce1
b1=.t.
b2=.t.
i=0
set procedure to k_proc\k_fun
nsec1=space(15)
date1=date()
do while dow(date1)<>7
date1=date1+1
enddo
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
select 7
locate for date()<date1 .and. date()>(date1+6)
if found() 
set color to n/w
@25,11 clear to 27,69
@25,11 to 27,69 double
*******
@45,2 clear to 47,77
@45,2 to 47,77 double
if l="fr"
@26,12 say "la semaine prochaine est program‚e"
@46,3 say "la semaine prochaine est programm‚e ...pousser un botton"
else
@26,12 say "the next week is programed"
@46,3 say "the next week is programed  ...push a botton"
endif
do while i=0
i=inkey()
enddo
else
do while b1
set color to n/w
@25,11 clear to 27,69
@25,11 to 27,69 double
*******
@45,2 clear to 47,77
@45,2 to 47,77 double
b2=.t.
set color to n/gb
if l="fr"
@15,11 say youm(date1) picture "xxxxxxxxxxxx"
else
@15,11 say cdow(date1) picture "xxxxxxxxxxxx"
endif
@16,11 say date1
if dow(date1)=6
b1=.f.
endif
date1=date1+1
enddo
endif &&if found()
return








