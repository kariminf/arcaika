program karime;
uses Crt;
var
 j,i: integer;
  c:char;b:boolean;
begin
textbackground(7);
clrscr;
textbackground(1);
for i:=1 to 2 do
begin
gotoxy (1,i);
write('                                                                                ');
end;
textcolor(2);
gotoxy (8,2);write('EDIT   SEARCH   RUN   COMPILE    DEBUG  TOOLS  ?');
textcolor(22);
gotoxy(2,2);write('FILE  ');
textbackground(4);
textcolor(23);
gotoxy (2,9);
write('poussez sur une tauche...svp:');
c:=' ';b:=true;
j:=0;
textcolor(0);
textbackground(3);
while b do
begin
gotoxy(2,20);
case j of
0:write('karime');
2:write('ARIME ');
4:write('RIME  ');
6:write('IME   ');
8:write('KARIME');
end;
j:=(j+1)mod(10);
c:=readkey;
gotoxy (2,10);
write('caractere: ',c,'       ASCII= ',ord(c));
if ord(c)=13 then b:=false;
end;
end.