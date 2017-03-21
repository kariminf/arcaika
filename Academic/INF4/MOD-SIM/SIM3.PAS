program sim3;
{les integrales}
uses crt;
type f=array[1..10,1..2]of integer;
var fct:f;
    i,deg,nb:integer;
    a,b,part,integral:real;

function fonction(ff:f;nbb:integer;e:real):real;
var ii,jj:integer;
    fff,x:real;
begin
  fff:=0;
  for ii:=1 to nbb do
  begin
      x:=1;
      for jj:=1 to ff[ii,2] do
          x:=x*e;
      fff:=fff+ff[ii,1]*x;
  end;
  fonction:=fff;
end;

begin
   clrscr;
   randomize;
   writeln('lecture du fonction:');
   write('donner le nbr de degres de la fonction:');readln(deg);
   for i:=1 to deg do
   begin
      write('coefficient',i,'= ');readln(fct[i,1]);
      write('degres     ',i,'= ');readln(fct[i,2]);
   end;
   clrscr;

   writeln('L''integral');
   writeln('**********');
   write('donner le min: ');readln(a);
   write('donner le max: ');readln(b);
   write('donner le nombre d''it‚rations: ');readln(nb);
   clrscr;

   writeln ('pour la fonction:');
   write('F(X)= ');
   for i:=1 to deg do
      write(fct[i,1],'X^',fct[i,2],' + ');
   writeln('0');
   integral:=0;
   writeln('*************************************************');
   writeln('i              ksi(i)               f(ksi(i))    ');
   writeln('*************************************************');
   for i:=1 to nb do
   begin
      part:=a+(b-a)*random(1001)/1000;
      integral:=integral+fonction(fct,deg,part);
      writeln(i,'             ',part:7:3,'              ',integral:7:3);
   end;

   integral:=integral/nb;
   writeln('l''integral est : ',integral:7:3);
   readkey;

end.