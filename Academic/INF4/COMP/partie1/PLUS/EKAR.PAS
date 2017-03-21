uses crt,k_struct,k_gramm;
var
dr,ga1,ga:partie;
grammaire,r_fnc,gr:la_regle;
str:string;
d:boolean;
begin
clrscr;
nouvelle_partie(ga,'A',false);
nouvelle_partie(dr,'B',false);
nouvelle_partie(dr,'a',true);
nouvelle_partie(dr,'B',false);
nouvelle_regle(grammaire,ga,dr);
ga:=nil;
dr:=nil;
nouvelle_partie(ga,'B',false);
nouvelle_partie(dr,'C',false);
nouvelle_partie(dr,'b',true);
nouvelle_regle(grammaire,ga,dr);
ga:=nil;
dr:=nil;
nouvelle_partie(ga,'B',false);
nouvelle_partie(dr,'b',true);
nouvelle_regle(grammaire,ga,dr);
ga:=nil;
dr:=nil;
nouvelle_partie(ga,'C',false);
nouvelle_partie(dr,'B',false);
{nouvelle_partie(dr,'c',true);}
nouvelle_regle(grammaire,ga,dr);

ga:=nil;
dr:=nil;
nouvelle_partie(ga,'C',false);
nouvelle_partie(dr,'c',true);
nouvelle_regle(grammaire,ga,dr);

(***********************************************)

productive(grammaire,r_fnc,'A');
accessible(r_fnc,'A');
str:='A';
sans_epsilon(r_fnc,str);

pas_unitaire(grammaire,'A');{
FNG(grammaire,r_fnc);}
{recur_gauche(grammaire);}r_fnc:=grammaire;
   while r_fnc<>nil do
   begin
      lit_regle(r_fnc,gr,ga,dr);
      r_fnc:=gr;
      lit_partie(ga,ga1,str,d);
      write(str,'====>');
      while dr<>nil do
      begin
         lit_partie(dr,ga1,str,d);
         dr:=ga1;
         if str<>'' then
         write(str,'  ')
         else
         write('î');
      end;
      writeln;
   end;
readkey;
end.