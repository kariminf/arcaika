{
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
±±       ±±                Cr‚er par:                  ±±       ±±
±±       ±±             ARIES Abd elkarim              ±±       ±±
±±       ±±       4iŠme ann‚e g‚nie informatique       ±±       ±±
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
±±±±±±±±±±±  ±±±±±±±±±±±±±±±±±  ±±±±±±±±±±  ±±±±±±±   ±±±±±±±±±±±±
±±±±±±±±±±    ±±±±±±±±±±±±±±±    ±±±±±±±±±  ±±±±±±  ±±±±±±±±±±±±±±
±±±±±±±±±  ±±  ±±±±±±±±±±±±±  ±±  ±±±±±±±±  ±±±±±  ±±±±±±±±±±±±±±±
±±±±±±±±  ±±±±  ±±±±±±±±±±±  ±±±±  ±±±±±±±  ±±±±  ±±±±±±±±±±±±±±±±
±±±±±±±  ±±±±±±  ±±±±±±±±±  ±±±±±±  ±±±±±±  ±±±  ±±±±±±±±±±±±±±±±±
±±±±±±  ±±±±±±±±  ±±±±±±±  ±±±±±±±±  ±±±±±  ±   ±±±±±±±±±±±±±±±±±±
±±±±±  ±±±±±±±±±±  ±±±±±  ±±±±±±±±±±  ±±±±     ±±±±±±±±±±±±±±±±±±±
±±±±                ±±±                ±±±  ±±   ±±±±±±±±±±±±±±±±±
±±±±  ±±±±±±±±±±±±  ±±±  ±±±±±±±±±±±±  ±±±  ±±±±   ±±±±±±±±±±±±±±±
±±±±  ±±±±±±±±±±±±  ±±±  ±±±±±±±±±±±±  ±±±  ±±±±±±   ±±±±±±±±±±±±±
±±±±  ±±±±±±±±±±±±  ±±±  ±±±±±±±±±±±±  ±±±  ±±±±±±±±   ±±±±±±±±±±±
±±±±  ±±±±±±±±±±±±  ±±±  ±±±±±±±±±±±±  ±±±  ±±±±±±±±±±   ±±±±±±±±±
±±±±  ±±±±±±±±±±±±  ±±±  ±±±±±±±±±±±±  ±±±  ±±±±±±±±±±±±    ±±±±±±
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±

±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
±±       ±±         L'unit‚e (K_SYNTAX.tpu)            ±±       ±±
±±       ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±       ±±
±±       Elle sert … sp‚cifier et contr“ler le graphique (les   ±±
±±dessins, les formes, les boites de dialogues, ...etc)         ±±
±±                                                              ±±
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
±±       ±±       Les fonctions de cette unit‚e:       ±±       ±±
±±       ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±       ±±
±±ÉÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»±±
±±                                                              ±±
±±                                                              ±±
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±}

unit k_syntax;

interface

   procedure PROG;
   procedure IDENT;
   procedure BLOC;
   procedure DECL;
   procedure INST;
   procedure CONST0;
   procedure CNST;
   procedure VAR0;
   procedure PROC0;
   procedure SIMPLE;
   procedure COMPOSE;
   procedure IDCONST;
   procedure SUITVAR;
   procedure PARAM;
   procedure LECT;
   procedure ECR;
   procedure AFF;
   procedure CALLPROC;
   procedure IF0;
   procedure WHILE0;
   procedure FOR0;
   procedure TYPE0;
   procedure EXPR;
   procedure COND;
   procedure NOMBRE;
   procedure ARITH;
   procedure CND;
   procedure LOGI;
   procedure MULT;
   procedure ET;
   procedure OPER;
   procedure OPDA;
   procedure OPDB;
   procedure erreur(code:integer);

implementation
uses k_lexica,crt;
var __symbole_courant:string;

function lettre(c:char):boolean;
begin
if (ord(upcase(c))>64)and(ord(upcase(c))<91) then
lettre:=true
else lettre:=false;
end;

{-------------}
procedure PROG;
begin
   __symbole_courant:=chercher_symbole;
   if __symbole_courant='algorithme' then
   begin
      __symbole_courant:=chercher_symbole;
      IDENT;
      if __symbole_courant='' then
      begin
         __symbole_courant:=chercher_symbole;
         BLOC;

      end
      else
         erreur(1);
   end
   else
      erreur(0);
end;

{--------------}
procedure IDENT;
var c:char;
begin
   c:=__symbole_courant[1];
   if (ord(upcase(c))>64)and(ord(upcase(c))<91) then
      __symbole_courant:=chercher_symbole
   else
      erreur(2);
end;

{-------------}
procedure BLOC;
begin
   DECL;
   if __symbole_courant='debut' then
   begin
      __symbole_courant:=chercher_symbole;
      if __symbole_courant='' then
      begin

         __symbole_courant:=chercher_symbole;
         while (__symbole_courant<>'fin')and (__symbole_courant<>'') do
         begin
            INST;
         end;

         if __symbole_courant= 'fin' then
            __symbole_courant:=chercher_symbole
         else
            erreur(4);
      end
      else
         erreur(1);
   end
   else
      erreur(3);
end;

{-------------}
procedure DECL;
begin

   if __symbole_courant='const' then
      CONST0;

   if __symbole_courant='def' then
      VAR0;

   if __symbole_courant='proc' then
      PROC0;

end;

{}
function est_compose(s:string):boolean;
var r:boolean;
begin
r:=false;
if (s='si') or (s='tq') or (s='pour') then
   r:=true;
est_compose:=r;
end;

{-------------}
procedure INST;
begin
   if est_compose(__symbole_courant) then
      COMPOSE
   else
      SIMPLE;
end;

{---------------}
procedure CONST0;
var s:string;
begin
   __symbole_courant:=chercher_symbole;
   if __symbole_courant=''then
   begin
      __symbole_courant:=chercher_symbole;
      CNST;
      while est_cnst do
      begin
         __symbole_courant:=chercher_symbole;
         CNST;
      end;
   end
   else
      erreur(1);
end;

{----------------}
procedure CNST;
begin
   IDENT;
   if __symbole_courant=':' then
   begin
      __symbole_courant:=chercher_symbole;
      IDCONST;
      if __symbole_courant=''then
         __symbole_courant:=chercher_symbole
      else
         erreur(1);
   end
   else
      erreur(5);
end;

{----------------}
procedure VAR0;
begin
   __symbole_courant:=chercher_symbole;

   if __symbole_courant='' then
   begin
      __symbole_courant:=chercher_symbole;
      SUITVAR;
      if __symbole_courant='' then
        __symbole_courant:=chercher_symbole
      else
         erreur(1);
      while (__symbole_courant<>'proc')and(__symbole_courant<>'debut') do
      begin
         SUITVAR;

         if __symbole_courant='' then
            __symbole_courant:=chercher_symbole
        else
           erreur(1);
      end;
   end
   else
      erreur(1);
end;

{-----------------}
procedure PROC0;
begin
   __symbole_courant:=chercher_symbole;
   IDENT;
   if __symbole_courant='(' then
   begin
      __symbole_courant:=chercher_symbole;
      PARAM;
      while __symbole_courant=';'do
      begin
         __symbole_courant:=chercher_symbole;
         PARAM;
      end;
      if __symbole_courant=')' then
         __symbole_courant:=chercher_symbole
      else
         erreur(7);
   end;
   if __symbole_courant='' then
      __symbole_courant:=chercher_symbole
   else
      erreur(1);
   BLOC;
   if __symbole_courant='' then
      __symbole_courant:=chercher_symbole
   else
      erreur(1);

end;

{------------------}
procedure SIMPLE;
begin
   if __symbole_courant='lire' then
      LECT
   else
      if __symbole_courant='ecrire'then
         ECR
      else
      begin
         IDENT;
         if __symbole_courant='=' then
            AFF
         else CALLPROC;
      end;
end;

{--------------------}
procedure COMPOSE;
begin
   if __symbole_courant='si' then
      IF0
   else
      if __symbole_courant='tq' then
         WHILE0
      else
         FOR0;

end;

{-----------------------}
function CHIFFRE(c:char):boolean;
begin
case c of
'0'..'9':CHIFFRE:=true;
 else CHIFFRE:=false;
end;
end;

{-----------------------}
procedure IDCONST;
begin
   if (CHIFFRE(__symbole_courant[1])or(__symbole_courant='+')or(__symbole_courant='-')) then
      NOMBRE
   else
      if __symbole_courant='''' then
      begin
         IDENT; {est une chaine de caractere , c'est pour faciliter la tache}
         if __symbole_courant='''' then
            __symbole_courant:=chercher_symbole
         else
            erreur(18);
      end
      else
         if (__symbole_courant='vrai') or (__symbole_courant='faux') then
            __symbole_courant:=chercher_symbole
         else
            erreur(8);

end;

{--------------------}
procedure SUITVAR;
begin
   IDENT;
   while __symbole_courant=',' do
   begin
      __symbole_courant:=chercher_symbole;
      IDENT;
   end;
   if __symbole_courant='comme' then
   begin
      __symbole_courant:=chercher_symbole;
      TYPE0;
   end
   else
      erreur(9);
end;

{-------------------------}
procedure PARAM;
begin
   if __symbole_courant='@' then
      __symbole_courant:=chercher_symbole;
   SUITVAR;
end;

{------------------------}
procedure LECT;
begin
   __symbole_courant:=chercher_symbole;
   if __symbole_courant='(' then
   begin
      __symbole_courant:=chercher_symbole;
      IDENT;
      while __symbole_courant=',' do
      begin
         __symbole_courant:=chercher_symbole;
         IDENT;
      end;
      if __symbole_courant=')' then
         __symbole_courant:=chercher_symbole
      else
         erreur(7);
      if __symbole_courant='lig' then
         __symbole_courant:=chercher_symbole;
      if __symbole_courant='' then
         __symbole_courant:=chercher_symbole
      else
         erreur(1);
   end
   else
      erreur(10);
end;

{--------------------}
procedure ECR;
begin
   __symbole_courant:=chercher_symbole;
   if __symbole_courant='(' then
   begin
      __symbole_courant:=chercher_symbole;
      IDENT;
      while __symbole_courant=',' do
      begin
         __symbole_courant:=chercher_symbole;
         IDENT;
      end;
      if __symbole_courant=')'then
         __symbole_courant:=chercher_symbole
      else
         erreur(7);
      if __symbole_courant='lig' then
         __symbole_courant:=chercher_symbole;
      if __symbole_courant='' then
         __symbole_courant:=chercher_symbole
      else
         erreur(1);

   end
   else
      erreur(10);
end;

{--------------}
procedure AFF;
begin
   __symbole_courant:=chercher_symbole;
   EXPR;
   if __symbole_courant='' then
      __symbole_courant:=chercher_symbole
   else
      erreur(1);
end;

{------------------}
procedure CALLPROC;
begin
   if __symbole_courant='(' then
   begin
      __symbole_courant:=chercher_symbole;
      IDENT;
      while __symbole_courant=',' do
      begin
         __symbole_courant:=chercher_symbole;
         IDENT;
      end;
      if __symbole_courant=')' then
         __symbole_courant:=chercher_symbole
      else
         erreur(10);
   end;
   if __symbole_courant='' then
      __symbole_courant:=chercher_symbole
   else
      erreur(1);
end;

{-------------}
procedure IF0;
begin
   __symbole_courant:=chercher_symbole;
   COND;
   if __symbole_courant='alors' then
   begin
      __symbole_courant:=chercher_symbole;
      if __symbole_courant='' then
      begin
         __symbole_courant:=chercher_symbole;

         while est_simple do
            SIMPLE;
         if __symbole_courant='sinon' then
         begin
            __symbole_courant:=chercher_symbole;
            if __symbole_courant='' then
            begin
               __symbole_courant:=chercher_symbole;
               while est_simple do
                SIMPLE;
            end
            else
               erreur(1);
         end;
         if __symbole_courant='fsi' then
         begin
            __symbole_courant:=chercher_symbole;
            if __symbole_courant='' then
               __symbole_courant:=chercher_symbole
            else
               erreur(1);
         end
         else
            erreur(12);
      end
      else
         erreur(1);
   end
   else
      erreur(11);
end;

{----------------}
procedure WHILE0;
begin
   __symbole_courant:=chercher_symbole;
   COND;
   if __symbole_courant='faire' then
   begin
      __symbole_courant:=chercher_symbole;
      if __symbole_courant='' then
      begin
         __symbole_courant:=chercher_symbole;
         while est_simple do
            SIMPLE;
         if __symbole_courant='ftq' then
         begin
            __symbole_courant:=chercher_symbole;
            if  __symbole_courant='' then
                __symbole_courant:=chercher_symbole
            else
               erreur(1);
         end
         else
            erreur(14);
      end
      else
         erreur(1);
   end
   else
      erreur(13);
end;

{--------------}
procedure FOR0;
begin
   __symbole_courant:=chercher_symbole;
   AFF;
   if __symbole_courant='vers' then
   begin
      __symbole_courant:=chercher_symbole;
      ARITH;
      if __symbole_courant='faire' then
      begin
         __symbole_courant:=chercher_symbole;
         if __symbole_courant='' then
         begin
            __symbole_courant:=chercher_symbole;
            while est_simple do
               SIMPLE;
            if __symbole_courant='fpour' then
            begin
               __symbole_courant:=chercher_symbole;
               if  __symbole_courant='' then
                   __symbole_courant:=chercher_symbole
               else
                  erreur(1);
            end
            else
              erreur(16);
         end
         else
            erreur(1);
      end
      else
         erreur(13);

   end
   else
      erreur(15);
end;

{----------------}
procedure NBR;
begin
   if CHIFFRE(__symbole_courant[1]) then
      __symbole_courant:=chercher_symbole
   else
      erreur(19);
end;

{---------------}
procedure TYPE0;
begin
   if __symbole_courant='ent' then
      __symbole_courant:=chercher_symbole
   else
      if __symbole_courant='reel' then
         __symbole_courant:=chercher_symbole
      else
         if __symbole_courant='car' then
            __symbole_courant:=chercher_symbole
         else
            if __symbole_courant='log' then
               __symbole_courant:=chercher_symbole
            else
               if __symbole_courant='tab' then
               begin
                  __symbole_courant:=chercher_symbole;
                  if __symbole_courant='(' then
                  begin
                     __symbole_courant:=chercher_symbole;
                     NBR;
                     if __symbole_courant=')' then
                        __symbole_courant:=chercher_symbole
                     else
                        erreur(7);
                  end
                  else
                     erreur(10);
               end
               else
                  erreur(17);
end;

{--------------}
procedure EXPR;
begin
   if upcase(__symbole_courant[1])=__symbole_courant[1] then
      ARITH
   else
      LOGI;

end;

{--------------}
procedure COND;
begin
   CND;
   while (__symbole_courant='et')or(__symbole_courant='ou') do
   begin
      __symbole_courant:=chercher_symbole;
      CND;
   end;
end;

{----------------}
procedure NOMBRE;
begin
   if (__symbole_courant='+') or (__symbole_courant='-') then
      __symbole_courant:=chercher_symbole;

   if CHIFFRE(__symbole_courant[1]) then
      __symbole_courant:=chercher_symbole
   else
      erreur(19);
end;


{----------------------}
procedure ARITH;
begin
   MULT;
   while (__symbole_courant='+')or (__symbole_courant='-') do
   begin
      __symbole_courant:=chercher_symbole;
      MULT;
   end;
end;


{---------------------}
procedure CND;
begin
   if __symbole_courant='(' then
   begin
      __symbole_courant:=chercher_symbole;
      if upcase(__symbole_courant[1])=__symbole_courant[1] then
      begin
         ARITH;
         OPER;
         ARITH;
      end
      else
      begin
         LOGI;
         if (__symbole_courant='=')or(__symbole_courant='<>') then
         begin
            __symbole_courant:=chercher_symbole;
            LOGI;
         end;
      end;
      if __symbole_courant=')' then
         __symbole_courant:=chercher_symbole
      else
         erreur(7);
   end
   else
      erreur(10);
end;

{--------------------}
procedure LOGI;
begin
   ET;
   while __symbole_courant='ou' do
   begin
      __symbole_courant:=chercher_symbole;
      ET;
   end;
end;


{----------------------}
procedure MULT;
begin
   OPDA;
   while (__symbole_courant='*')or (__symbole_courant='/')or(__symbole_courant='div') do
   begin
      __symbole_courant:=chercher_symbole;
      OPDA;
   end;
end;


{---------------------}
procedure ET;
begin
   OPDB;
   while __symbole_courant='et' do
   begin
      __symbole_courant:=chercher_symbole;
      OPDB;
   end;
end;


{--------------------}
procedure OPER;
begin
   if (__symbole_courant='<')or (__symbole_courant='>')or (__symbole_courant='=')then
      __symbole_courant:=chercher_symbole
   else
      if __symbole_courant='<=' then
         __symbole_courant:=chercher_symbole
      else
         if __symbole_courant='>=' then
            __symbole_courant:=chercher_symbole
         else
            if __symbole_courant='<>' then
               __symbole_courant:=chercher_symbole
            else
               erreur(20);
end;


{-----------------------}
procedure OPDA;
begin
   if (CHIFFRE(__symbole_courant[1]))or(__symbole_courant='-')or(__symbole_courant='+') then
      NOMBRE
   else
      if lettre(__symbole_courant[1])then
         IDENT
      else
         if __symbole_courant='(' then
         begin
            __symbole_courant:=chercher_symbole;
            ARITH;
            if __symbole_courant=')' then
               __symbole_courant:=chercher_symbole
            else
               erreur(7);
         end
         else
            erreur(21);

end;


{---------------}
procedure OPDB;
var bb:boolean;
begin
   bb:=false;

   if __symbole_courant='non' then
   begin
      bb:=true;
      __symbole_courant:=chercher_symbole
   end;

   if __symbole_courant='(' then
   begin
      __symbole_courant:=chercher_symbole;
      LOGI;
      if __symbole_courant=')' then
         __symbole_courant:=chercher_symbole
      else
         erreur(7);

   end
   else
   begin
      if lettre(__symbole_courant[1])and(__symbole_courant<>'vrai') and (__symbole_courant<>'faux') then
         IDENT
      else
      if (not bb) then
      begin
         if (__symbole_courant='vrai')or (__symbole_courant='faux') then
            __symbole_courant:=chercher_symbole
         else
            erreur(18);
      end
      else
         erreur(22);
   end;

end;


{===================ERREUR================}
procedure erreur(code:integer);
var i,j:integer;
begin
writeln('erreur syntaxique nø:',code);
position(i,j);
writeln('ligne: ',i,' colonne: ',j);
case code of
 0: writeln('pas de mot reservee "algorithme"');
 1: writeln('il faut revenir … la ligne');
 2: writeln('il faut un caractere au debut');
 3: writeln('pas de mot reservee "debut"');
 4: writeln('pas de mot reservee "fin"');
 5: writeln('il faut ":" pour la constante');
 6: writeln('pas de parametres de la fonction');
 7: writeln('pas de parenthese fermante ")"');
 8: writeln('une constante doit avoir une valeur');
 9: writeln('pas de mot reservee "comme"');
10: writeln('pas de parenthese ouvrante "("');
11: writeln('pas de mot reservee "alors"');
12: writeln('pas de mot reservee "fsi"');
13: writeln('pas de mot reservee "faire"');
14: writeln('pas de mot reservee "ftq"');
15: writeln('pas de mot reservee "vers"');
16: writeln('pas de mot reservee "fpour"');
17: writeln('type inconnu');
18: writeln('expression inconnue');
19: writeln('un nombre doit contenir un chiffre');
20: writeln('absence d''operation');
21: writeln('pas d''operande ou d''expression arithmetique');
22: writeln('il y a une parenthese "(" de plus');
end;
readkey;
halt(1);
end;

end.