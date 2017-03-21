program karime50;
uses crt,base,k_fil,k_pile;
var a,b:fil;f:pile;
     s:string;
     bol:boolean;
{***************************************************}
procedure lect(s:string;var a:fil ;bol:boolean);
var i:integer;
begin
bol:=true;
if (length(s)=0)then bol:=false
else
begin
ajouter('$',a);
for i:=1 to length(s) do
if s[i]<>'$' then
ajouter(s[i],a);
ajouter('$',a);
end;
end;

{****************************************************}
procedure post_fixe(a:fil;var b:fil;var s:string;var bl:boolean);
var c:pile;
begin
bl:=true;s:='';
empiler(c,premier(a),0);
retirer(a);
while bl do
   if premier(a) in['a'..'z','A'..'Z','0'..'9'] then
   begin
ajouter(premier(a),b);
s:=s+premier(a);
retirer(a);
   end
   else
case sommet(c) of
'$':
{------------------}
       case premier(a) of
      '$':begin
retirer(a);
depiler(c);
bl:=false;
          end;
      '+','-','*','/','(':begin
empiler(c,premier(a),0);
retirer(a);
                          end;
      ')':begin
bl:=false;
          end;
         end;
{-------------------}
'+','-':
{------------------}
case premier(a) of
'$','+','-',')':begin
ajouter(sommet(c),b);
s:=s+sommet(c);
depiler(c);
    end;
'*','/','(':begin
empiler(c,premier(a),0);
retirer(a);
    end;
   end;
{-------------------}
'*','/':
{------------------}
case premier(a) of
'$','+','-','*','/',')':begin
ajouter(sommet(c),b);
s:=s+sommet(c);
depiler(c);
    end;
'(':begin
empiler(c,premier(a),0);
retirer(a);
    end;
   end;
{-------------------}
'(':
{------------------}
case premier(a) of
'$':begin
bl:=false;
    end;
'+','-','*','/','(':begin
empiler(c,premier(a),0);
retirer(a);
    end;
')':begin
retirer(a);
depiler(c);
    end;
    end;
{-------------------}
end;{case}{do while}
if videf(a) then bl:=true;
end;
{****************procedure remplir*********************}
procedure remplir(var f:pile;s:string);
var i,j,k,nb,cd:integer;bb:boolean; t:va;
begin
for i:=1 to 30 do
begin
t[i].c:='$';
t[i].v:=0;
end;
t[1].c:=s[1];
k:=1;
for i:=2 to length(s)do
begin
bb:=true; j:=1;
if s[i] in ['A'..'Z','a'..'z'] then
while bb and (j<=length(s))do
if s[i]=t[j].c then bb:=false
else if t[j].c<>'$'then j:=j+1
     else begin
          k:=k+1;
          t[k].c:=s[i];
          end;
end;
for i:=1 to k do
begin
write('LA VALEUR DE  ',t[i].c,': ');
readln(t[i].v);
end;


for i:=length(s)downto 1 do
if s[i]in['A'..'Z','a'..'z']then
begin
j:=1;
while s[i]<>t[j].c do j:=j+1;
empiler(f,s[i],t[j].v);
end
else
  if s[i]in['1'..'9']then
  begin
  val(s[i],nb,cd);
  empiler(f,s[i],nb);
  end
  else empiler(f,s[i],0);
end;
{****************function evaluer**********************}
function evaluer(var f:pile):real;
var i:integer;t2:va2;ev:real;
begin
while not videp(f)do
begin
t2[1].c:=sommet(f);t2[1].v:=fond(f);
depiler(f);
if videp(f) then evaluer:=t2[1].v
else
            begin
for i:=2 to 3 do
begin
t2[i].c:=sommet(f);
t2[i].v:=fond(f);
depiler(f);
end;
   if t2[3].c in ['*','-','/','+']then
   begin
case t2[3].c of
'*':begin t2[1].v:=t2[1].v * t2[2].v; t2[1].c:='$';end;
'/':begin t2[1].v:=t2[1].v / t2[2].v; t2[1].c:='$';end;
'-':begin t2[1].v:=t2[1].v - t2[2].v; t2[1].c:='$';end;
'+':begin t2[1].v:=t2[1].v + t2[2].v; t2[1].c:='$';end;
end;{case}
empiler(f,t2[1].c,t2[1].v);
   end
   else
   if sommet(f)in ['*','-','/','+'] then
   begin
   case sommet(f) of
'*':begin t2[2].v:=t2[2].v * t2[3].v; t2[2].c:='$';end;
'/':begin t2[2].v:=t2[2].v / t2[3].v; t2[2].c:='$';end;
'-':begin t2[2].v:=t2[2].v - t2[3].v; t2[2].c:='$';end;
'+':begin t2[2].v:=t2[2].v + t2[3].v; t2[2].c:='$';end;
end;{case}
depiler(f);
empiler(f,t2[2].c,t2[2].v);
empiler(f,t2[1].c,t2[1].v);

   end;

           end;
           end;
end;
{****************************************************}
begin{programe karime50}
{dessin}
textcolor(0);
textbackground(7);
clrscr;
write('                   ');
textbackground(5);
writeln('********************************');
textbackground(7);
write('                   ');
textbackground(5);
writeln('L''EVALUATION D''UNE EXPRESSION   ');
textbackground(7);
write('                   ');
textbackground(5);
writeln('********************************');
textbackground(7);
{end dessin}
writeln;
writeln;
writeln('-----------------------------------------------------------------');
write('INFIXE:' );
bol:=true;
readln(s);
lect(s,a,bol);
if bol then
begin
post_fixe(a,b,s,bol);
if bol then
begin
write('POSTEFIXE: ');
writeln(s);
writeln('-----------------------------------------------------------------');
readkey;
remplir(f,s);
writeln('-----------------------------------------------------------------');
textbackground(3);
write('LA SOLUTION: ');
writeln(evaluer(f):10:3);
end
else
writeln('une erreur d''analyse est apparue');
readkey;
end;
end.



