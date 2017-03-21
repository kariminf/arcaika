program sim1;
{simulation des arrivees dans des caisses}
uses crt;
var i,j,k,l,cumule,nbr_arrivant,nbr_caisse,nbr_servis:integer;
    temp,duree,queue:integer;
    arrivant:array[1..10,1..2]of integer;
    caisse:array[1..10,1..2]of integer;
    attent_moy,servis,arrivee,moy_at:real;
begin
clrscr;
j:=0;attent_moy:=0;servis:=0;arrivee:=0;
randomize;


{lecture d'arrivee des clients}
{_____________________________}
cumule:=0;i:=1;
writeln('l''arriv‚e des clients:');
writeln('**********************');
while cumule<100 do
begin
   write('nombre de clients:   ');readln(arrivant[i,1]);
   write('probabilit‚ d''arriv‚e:   ');readln(arrivant[i,2]);
   cumule:=cumule+arrivant[i,2];
   arrivant[i,2]:=cumule;
   i:=i+1;
end;
nbr_arrivant:=i-1;

{lecture de service}
{__________________}
    clrscr;
    writeln('Le service');
    writeln('********************');
    cumule:=0;j:=1;
    while cumule<100 do
    begin
       write('nombre de clients servis:   ');readln(caisse[j,1]);
       write('probabilit‚ d''arriv‚e:   ');readln(caisse[j,2]);
       cumule:=cumule+caisse[j,2];
       caisse[j,2]:=cumule;
       j:=j+1;
    end;
    nbr_servis:=j-1;
    clrscr;

write('donner le nombre des caisses:  ');readln(nbr_caisse);
write('donner la dur‚e de la simulation :  ');readln(duree);
clrscr;


{            La simulation            }
{_____________________________________}


attent_moy:=0;
servis:=0;
arrivee:=0;
moy_at:=0;

for i:=1 to duree do
begin

{les arriv‚es}
temp:=random(100);
j:=nbr_arrivant;
queue:=0;
while (temp<arrivant[j,2]) and (j>0) do
    j:=j-1;
arrivee:=arrivee+arrivant[j+1,1];

{les services}
cumule:=0;
for k:=1 to nbr_caisse do
begin
      temp:=random(100);
       l:=nbr_caisse;
       while (temp<caisse[l,2]) and (l>0) do
          l:=l-1;

      cumule:=cumule+caisse[l+1,1];
end;
   servis:=servis+cumule;
   queue:=queue+arrivant[j+1,1]-cumule;
   arrivee:=arrivee+arrivant[j+1,1];
   if queue<0 then
      queue:=0;
   attent_moy:=attent_moy+queue;
end;

attent_moy:=attent_moy/duree;
servis:=servis/duree;
arrivee:=arrivee/duree;
moy_at:= attent_moy/arrivee;

clrscr;
writeln('nombre moyen des clients en attente :',attent_moy:8:2);
writeln('taux moyen des clients servis:',servis:8:2);
writeln('taux moyen des clients arriv‚s:',arrivee:8:2);
writeln('temp d''attente moyen:',moy_at:8:2);
readkey;
end.