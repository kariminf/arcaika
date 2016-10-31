program sim2;
{chaine de Markov discrete}
uses crt;
var p:array[0..10,0..10]of real;
    etat:array[0..10]of real;
    i,j,nb_etat,duree,etat_actuel:integer;
    pp,som:real;
begin
clrscr;
write('Le nombre des ‚tats: ');readln(nb_etat);
nb_etat:=nb_etat-1;
for i:=0 to nb_etat do
    etat[i]:=0;

for i:=0 to nb_etat do
begin
   som:=0;
   for j:=0 to nb_etat do
   begin
      write('P[',i,',',j,']= ');readln(pp);
      som:=som+pp;
      p[i,j]:=som;
   end;
   writeln;
end;
clrscr;
write('donner la dur‚e de simulation: ');readln(duree);
clrscr;

{***********************ALGORITHME*********************}
etat_actuel:=0;
for i:=1 to duree do
begin
   etat[etat_actuel]:=etat[etat_actuel]+1;
   pp:=random(1001)/1000;
   j:=nb_etat;
   while (pp<p[i,j]) and (j>0) do
    j:=j-1;
   if j=nb_etat then j:=j-1;
   etat_actuel:=j+1;

end;

for i:=0 to nb_etat do
    etat[i]:=etat[i]/duree;

for i:=0 to nb_etat do
    writeln('prob(',i,')= ',etat[i]:7:3);
readkey;
end.