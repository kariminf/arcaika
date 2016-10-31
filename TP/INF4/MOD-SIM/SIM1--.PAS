program sim1;
{simulation des arrivees dans des caisses}
uses crt;
var i,j,k,l,cumule,nbr_arrivant,nbr_caisse,nbr_servis:integer;
    temp,duree:integer;
    arrivant:array[1..10,1..2]of integer;
    caisse:array[1..10,1..2]of integer;
    cl_arriv:array[1..10]of integer;
    cl_servis:array[1..10]of integer;
    queue:array[1..10]of integer;
    attent_moy,servis,arrivee,moy_at:real;
begin
clrscr;
randomize;
{l'arrivee des clients}
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
clrscr;

{la dur‚e de la simulation}
write('donner la dur‚e de la simulation :  ');readln(duree);
clrscr;
writeln('Les arriv‚e pendant la dur‚e de ',duree);
writeln('*********************************************************');
writeln('temps            nbr al‚atoire           clients arriv‚es');
writeln('*********************************************************');

for i:=1 to duree do
begin
temp:=random(100);
j:=nbr_arrivant;
while (temp<arrivant[j,2]) and (j>0) do
    j:=j-1;
cl_arriv[i]:=arrivant[j+1,1];
writeln(i,'              ',temp,'                ',cl_arriv[i]);
end;

writeln('une touche pour complir');
readkey;

{le passage des clients dans les caisses}
for i:=1 to duree do
    cl_servis[i]:=0;

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

for i:=1 to nbr_caisse do
begin
    clrscr;
    writeln('La caisse Nø:',i);
    writeln('********************');
    writeln('Les arriv‚e pendant la dur‚e de ',duree);
    writeln('*********************************************************');
    writeln('temps            nbr al‚atoire           clients servis');
    writeln('*********************************************************');
    for k:=1 to duree do
    begin

       temp:=random(100);
       l:=nbr_caisse;
       while (temp<caisse[l,2]) and (l>0) do
          l:=l-1;

       cl_servis[k]:=cl_servis[k]+caisse[l+1,1];
       writeln(i,'              ',temp,'                ',caisse[l+1,1]);
    end;
    writeln('une touche pour complir');
    readkey;

end;

{recherche du queue}
j:=0;attent_moy:=0;servis:=0;arrivee:=0;
for i:=1 to duree do
begin
   queue[i]:=j+cl_arriv[i]-cl_servis[i];
   servis:=servis+cl_servis[i];
   arrivee:=arrivee+cl_arriv[i];
   if queue[i]<0 then
      queue[i]:=0;
   attent_moy:=attent_moy+queue[i];
   j:=queue[i];
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