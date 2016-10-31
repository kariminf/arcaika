program sim4;
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
   part:=(b-a)/(nb+1);

   integral:=0;
   for i:=1 to nb do
      integral:=integral+fonction(fct,deg,(i*part)+a);

   integral:=integral/nb;
   writeln('l''integral est : ',integral:8:4);
   readkey;

end.