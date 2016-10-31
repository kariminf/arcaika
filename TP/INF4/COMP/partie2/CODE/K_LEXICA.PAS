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
±±       ±±         L'unit‚e (K_LEXICA.tpu)            ±±       ±±
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

unit k_lexica;

interface
   function chercher_symbole:string;
   procedure overture;
   procedure afficher;
   function est_cnst:boolean;
   function est_simple:boolean;
   procedure position(var l,c:integer);

implementation
uses crt;
type
   chaine=^ch;
   ch=record
      str:string[50];
      suiv:chaine;
   end;
var __xPos,__yypos:integer;
    __yPos,__tete:chaine;

{-----------------------------------------}
function dt_suivant(debut:integer):integer;
var res:integer;
begin
   case debut of
   0:res:=10;
   10:res:=61;
   61:res:=64;
   end;
   dt_suivant:=res;
end;

{-------------------------------}
function chercher_symbole:string;
var xpos,inttmp,etat,debut:integer;
    car:char;
    bool:boolean;
    result,temp:string;
begin
   xpos:=__xPos;
   etat:=0;
   debut:=0;
   bool:=true;

while bool do
begin

   case etat of
   0:begin
       car:=__yPos^.str[xpos];xpos:=xpos+1;
       case car of
          '<':etat:=1;
          '>':etat:=2;
          '=':etat:=3;
          ' ':etat:=72;
          else etat:=4;
       end;
     end;{0}

   1:begin
       car:=__yPos^.str[xpos];xpos:=xpos+1;
       case car of
          '=':etat:=5;
          '>':etat:=6;
          else etat:=7;
       end;
     end;{1}

   2:begin
       car:=__yPos^.str[xpos];xpos:=xpos+1;
       if car='='then etat:=8
       else etat:=9;
     end;{2}

   3:begin
       __xPos:=xpos;
       result:='=';
       bool:=false;
     end;{3}

   4:begin
       xpos:=xpos-1;
       debut:=dt_suivant(debut);
       etat:=debut;
     end;{4}

   5:begin
       __xPos:=xpos;
       result:='<=';
       bool:=false;
     end;{5}

   6:begin
       __xPos:=xpos;
       result:='<>';
       bool:=false;
     end;{6}

   7:begin
       __xPos:=xpos-1;
       result:='<';
       bool:=false;
     end;{7}

   8:begin
       __xPos:=xpos;
       result:='>=';
       bool:=false;
     end;{8}

   9:begin
       __xPos:=xpos-1;
       result:='>';
       bool:=false;
     end;{9}

   10:begin
       car:=__yPos^.str[xpos];xpos:=xpos+1;
       case car of
          'a':etat:=11;
          'c':etat:=12;
          'd':etat:=13;
          'e':etat:=14;
          'f':etat:=15;
          'l':etat:=16;
          'n':etat:=17;
          'o':etat:=18;
          'p':etat:=19;
          'r':etat:=20;
          's':etat:=21;
          't':etat:=22;
          'v':etat:=23;
          '@':etat:=24;
          '''':etat:=25;
          '+':etat:=26;
          '-':etat:=27;
          '*':etat:=28;
          '/':etat:=29;
          ',':etat:=30;
          ';':etat:=31;
          '':etat:=67;
          '':etat:=68;
          '(':etat:=70;
          ')':etat:=71;
          else etat:=32;
       end;
     end;{10}

   11:begin {a}
       temp:=Copy(__yPos^.str, xpos ,10);
       if temp='lgorithme ' then
       begin
          xpos:=xpos+9;
          etat:=33;
       end
       else
       begin
          temp:=Copy(temp,1,5);
          if temp='lors ' then
          begin
             xpos:=xpos+4;
             etat:=34;
          end
          else etat:=32;
       end;
     end;{11}

   12:begin {c}
       temp:=Copy(__yPos^.str, xpos ,5);
       if temp='omme ' then
       begin
          xpos:=xpos+4;
          etat:=35;
       end
       else
          if temp='onst ' then
          begin
             xpos:=xpos+4;
             etat:=36;
          end
          else etat:=32;

     end;{12}

   13:begin {d}
       temp:=Copy(__yPos^.str, xpos ,5);
       if temp='ebut ' then
       begin
          xpos:=xpos+4;
          etat:=37;
       end
       else
       begin
          temp:=Copy(temp, 1 ,3);
          if temp='ef ' then
          begin
             xpos:=xpos+2;
             etat:=38;
          end
          else
             if temp='iv ' then
             begin
                xpos:=xpos+2;
                etat:=39;
             end
             else etat:=32;
       end;

     end;{13}

   14:begin {e}
       temp:=Copy(__yPos^.str, xpos ,6);
       if temp='crire ' then
       begin
          xpos:=xpos+5;
          etat:=40;
       end
       else
       begin
          temp:=Copy(temp, 1 ,3);
          if temp='nt ' then
          begin
             xpos:=xpos+2;
             etat:=41;
          end
          else
          begin
             temp:=Copy(temp, 1 ,2);
             if temp='t ' then
             begin
                xpos:=xpos+1;
                etat:=42;
             end
             else etat:=32;
          end;
       end;

     end;{14}

   15:begin {f}
       temp:=Copy(__yPos^.str, xpos ,5);
       if temp='aire ' then
       begin
          xpos:=xpos+4;
          etat:=43;
       end
       else
       if temp='pour ' then
       begin
          xpos:=xpos+4;
          etat:=44;
       end
       else
       begin
          temp:=Copy(temp, 1 ,4);
          if temp='aut ' then
          begin
             xpos:=xpos+3;
             etat:=45;
          end
          else
          begin
             temp:=Copy(temp, 1 ,3);
             if temp='in ' then
             begin
                xpos:=xpos+2;
                etat:=46;
             end
             else
             if temp='tq ' then
             begin
                xpos:=xpos+2;
                etat:=47;
             end
             else
             if temp='si ' then
             begin
                xpos:=xpos+2;
                etat:=48;
             end
             else etat:=32;
          end;
       end;

     end;{15}

   16:begin {l}
       temp:=Copy(__yPos^.str, xpos ,4);
       if temp='ire ' then
       begin
          xpos:=xpos+3;
          etat:=49;
       end
       else
       begin
          temp:=Copy(temp, 1 ,3);
          if temp='ig ' then
          begin
             xpos:=xpos+2;
             etat:=50;
          end
          else
             if temp='og ' then
             begin
                xpos:=xpos+2;
                etat:=51;
             end
             else etat:=32;
       end;

     end;{16}

   17:begin {n}
       temp:=Copy(__yPos^.str, xpos ,3);
       if temp='on ' then
       begin
          xpos:=xpos+2;
          etat:=52;
       end
       else etat:=32;
     end;{17}

   18:begin {o}
       temp:=Copy(__yPos^.str, xpos ,2);
       if temp='u ' then
       begin
          xpos:=xpos+1;
          etat:=53;
       end
       else etat:=32;
     end;{17}

   19:begin {p}
       temp:=Copy(__yPos^.str, xpos ,4);
       if temp='our ' then
       begin
          xpos:=xpos+3;
          etat:=54;
       end
       else
       if temp='roc ' then
       begin
          xpos:=xpos+3;
          etat:=55;
       end
       else etat:=32;
     end;{19}

   20:begin {r}
       temp:=Copy(__yPos^.str, xpos ,4);
       if temp='eel ' then
       begin
          xpos:=xpos+3;
          etat:=56;
       end
       else etat:=32;
     end;{20}

   21:begin {s}
       temp:=Copy(__yPos^.str, xpos ,5);
       if temp='inon ' then
       begin
          xpos:=xpos+4;
          etat:=57;
       end
       else
       begin
          temp:=Copy(temp, 1 ,2);
          if temp='i ' then
          begin
             xpos:=xpos+1;
             etat:=58;
          end
          else etat:=32;
       end

     end;{21}

   22:begin {t}
       temp:=Copy(__yPos^.str, xpos ,3);
       if temp='ab ' then
       begin
          xpos:=xpos+2;
          etat:=59;
       end
       else etat:=32;
     end;{22}

   23:begin {v}
       temp:=Copy(__yPos^.str, xpos ,4);
       if temp='rai ' then
       begin
          xpos:=xpos+3;
          etat:=60;
       end
       else
       if temp='ers ' then
       begin
          xpos:=xpos+3;
          etat:=69;
       end
       else etat:=32;
     end;{23}

   24:begin
       __xPos:=xpos;
       result:='@';
       bool:=false;
     end;{24}

   25:begin
       __xPos:=xpos;
       result:='''';
       bool:=false;
     end;{25}

   26:begin
       __xPos:=xpos;
       result:='+';
       bool:=false;
     end;{26}

   27:begin
       __xPos:=xpos;
       result:='-';
       bool:=false;
     end;{27}

   28:begin
       __xPos:=xpos;
       result:='*';
       bool:=false;
     end;{28}

   29:begin
       __xPos:=xpos;
       result:='/';
       bool:=false;
     end;{29}

   30:begin
       __xPos:=xpos;
       result:=',';
       bool:=false;
     end;{30}

   31:begin
       __xPos:=xpos;
       result:=';';
       bool:=false;
     end;{31}

   32:begin
       xpos:=xpos-1;
       debut:=dt_suivant(debut);
       etat:=debut;
     end;{32}

   33:begin
       __xPos:=xpos;
       result:='algorithme';
       bool:=false;
     end;{33}

   34:begin
       __xPos:=xpos;
       result:='alors';
       bool:=false;
     end;{34}

   35:begin
       __xPos:=xpos;
       result:='comme';
       bool:=false;
     end;{35}

   36:begin
       __xPos:=xpos;
       result:='const';
       bool:=false;
     end;{36}

   37:begin
       __xPos:=xpos;
       result:='debut';
       bool:=false;
     end;{37}

   38:begin
       __xPos:=xpos;
       result:='def';
       bool:=false;
     end;{38}

   39:begin
       __xPos:=xpos;
       result:='div';
       bool:=false;
     end;{39}

   40:begin
       __xPos:=xpos;
       result:='ecrire';
       bool:=false;
     end;{40}

   41:begin
       __xPos:=xpos;
       result:='ent';
       bool:=false;
     end;{41}

   42:begin
       __xPos:=xpos;
       result:='et';
       bool:=false;
     end;{42}

   43:begin
       __xPos:=xpos;
       result:='faire';
       bool:=false;
     end;{43}

   44:begin
       __xPos:=xpos;
       result:='fpour';
       bool:=false;
     end;{44}

   45:begin
       __xPos:=xpos;
       result:='faux';
       bool:=false;
     end;{45}

   46:begin
       __xPos:=xpos;
       result:='fin';
       bool:=false;
     end;{46}

   47:begin
       __xPos:=xpos;
       result:='ftq';
       bool:=false;
     end;{47}

   48:begin
       __xPos:=xpos;
       result:='fsi';
       bool:=false;
     end;{48}

   49:begin
       __xPos:=xpos;
       result:='lire';
       bool:=false;
     end;{49}

   50:begin
       __xPos:=xpos;
       result:='lig';
       bool:=false;
     end;{50}

   51:begin
       __xPos:=xpos;
       result:='log';
       bool:=false;
     end;{51}

   52:begin
       __xPos:=xpos;
       result:='non';
       bool:=false;
     end;{52}

   53:begin
       __xPos:=xpos;
       result:='ou';
       bool:=false;
     end;{53}

   54:begin
       __xPos:=xpos;
       result:='pour';
       bool:=false;
     end;{54}

   55:begin
       __xPos:=xpos;
       result:='proc';
       bool:=false;
     end;{55}

   56:begin
       __xPos:=xpos;
       result:='reel';
       bool:=false;
     end;{56}

   57:begin
       __xPos:=xpos;
       result:='sinon';
       bool:=false;
     end;{57}

   58:begin
       __xPos:=xpos;
       result:='si';
       bool:=false;
     end;{58}

   59:begin
       __xPos:=xpos;
       result:='tab';
       bool:=false;
     end;{59}

   60:begin
       __xPos:=xpos;
       result:='vrai';
       bool:=false;
     end;{60}

   61:begin
         car:=__yPos^.str[xpos];xpos:=xpos+1;
         if (ord(UpCase(car))>64) and (ord(UpCase(car))<91) then
            etat:=62
         else
            etat:=63;
      end;{61}

   62:begin
         xpos:=xpos-1;
         inttmp:=xpos;
         while __yPos^.str[inttmp]<>' ' do
            inttmp:=inttmp+1;
         inttmp:=inttmp-xpos;
         result:=Copy(__yPos^.str , xpos , inttmp);
         __xPos:=xpos+inttmp;
         bool:=false;
      end;{62}

   63:begin
       xpos:=xpos-1;
       debut:=dt_suivant(debut);
       etat:=debut;
      end;{63}

   64:begin
         car:=__yPos^.str[xpos];xpos:=xpos+1;
         if (ord(UpCase(car))>47) and (ord(UpCase(car))<58) then
            etat:=65
         else
            etat:=66;
      end;{64}

   65:begin
         xpos:=xpos-1;
         inttmp:=xpos+1;
         car:=__yPos^.str[inttmp];
         while ((ord(UpCase(car))>47) and (ord(UpCase(car))<58))do
         begin
            inttmp:=inttmp+1;
            car:=__yPos^.str[inttmp];
         end;

         if car='.' then
         begin
            inttmp:=inttmp+1;
            car:=__yPos^.str[inttmp];

            while ((ord(UpCase(car))>47) and (ord(UpCase(car))<58))do
            begin
               inttmp:=inttmp+1;
               car:=__yPos^.str[inttmp];
            end;

         end;

         inttmp:=inttmp-xpos;
         result:=Copy(__yPos^.str , xpos , inttmp);
         __xPos:=xpos+inttmp;
         bool:=false;
      end;{65}

   66:begin
         writeln('erreur lexical: ce lexeme n''existe pas!!');
         readkey;
         Halt(1);
      end;{66}

   67:begin
       __xPos:=1;
       __yPos:=__ypos^.suiv;
       __yypos:=__yypos+1;
       result:='';
       bool:=false;
     end;{67}

   68:begin
       result:='';
       bool:=false;
     end;{68}

   69:begin
       __xPos:=xpos;
       result:='vers';
       bool:=false;
     end;{69}

   70:begin
       __xPos:=xpos;
       result:='(';
       bool:=false;
     end;{70}

   71:begin
       __xPos:=xpos;
       result:=')';
       bool:=false;
     end;{71}

   72:begin
       etat:=0;
       debut:=0;
     end;{72}

   end;{case}
end;{while}

chercher_symbole:=result;
end;

{-----------------}
procedure overture;
var f:file of char;
    c:char;
    s:string;
    p:chaine;
begin
   assign(f,'test.alg');
   reset(f);
   new(p);
   __tete:=p;
   __yPos:=__tete;
   s:='';
   while not eof(f) do
   begin
      read(f,c);
      if ord(c)=10 then
      begin
         s:=s+'';
         __yPos^.str:=s;
         s:='';
         new(p);
         __yPos^.suiv:=p;
         __yPos:=p;
      end
      else
      if ord(c)=13 then
      begin
      end
      else
         s:=s+c;
      if eof(f) then
      begin
         s:=s+'';
         __yPos^.str:=s;
      end;
   end;
   __yPos^.suiv:=nil;
   __yPos:=__tete;
   close(f);
end;

{------------------}
procedure afficher;
var bb:chaine;
begin
   bb:=__tete;
   textbackground(2);
   textcolor(4);
   while bb<>nil do
   begin
   writeln(bb^.str);
   bb:=bb^.suiv;
   end;
end;

{-----------------------------}
function est_cnst:boolean;
var xpos:integer;
begin
xpos:=__xPos;
{eliminer les blancs avant de traiter le dt}
   while __yPos^.str[xpos]= ' 'do
      xpos:=xpos+1;
if __yPos^.str[xpos]= ':' then
   est_cnst:=true
else
   est_cnst:=false;
end;

{---------------------------}
function est_simple:boolean;
var xpos:integer;
    s:string;
begin
xpos:=__xPos;
{eliminer les blancs avant de traiter le dt}
   while __yPos^.str[xpos]= ' 'do
      xpos:=xpos+1;
if __yPos^.str[xpos]= '=' then
   est_simple:=true
else
if __yPos^.str[xpos]= '(' then
   est_simple:=true
else
   est_simple:=false;
end;
{
begin
   s:=copy(__yPos^.str,xpos,6);
   if s='ecrire' then
      est_simple:=true
   else
   begin
      s:=copy(s,1,4);
      if s='lire' then
         est_simple:=true
      else
         est_simple:=false;
   end;

end;

end;
}

{----------------------------}
procedure position(var l,c:integer);
begin
c:=__xPos;
l:=__yypos;
end;

begin
   __xPos:=1;
   __yypos:=1;
end.
