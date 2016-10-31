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
±±       ±±         L'unit‚e (K_SOURIS.tpu)            ±±       ±±
±±       ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±       ±±
±±       Elle sert … sp‚cifier et contr“ler la souris           ±±
±±                                                              ±±
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
±±       ±±       Les fonctions de cette unit‚e:       ±±       ±±
±±       ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±       ±±
±±ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»±±
±±ºnouvelle_regle º ®la c‚ation d'une nouvelle rŠgle¯          º±±
±±ºnouvelle_partieº ®la c‚ation d'une nouvelle partie¯         º±±
±±ºlit_regle      º ®la lecture d'une rŠgle sp‚cifi‚e¯         º±±
±±ºlit_partie     º ®la lecture d'une partie sp‚cifier¯        º±±
±±º               º                                            º±±
±±                                                              ±±
±±                                                              ±±
±±                                                              ±±
±±                                                              ±±
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
}
unit k_souris;
interface

   procedure position_souris(xmin,ymin,xmax,ymax:integer);
   procedure afficher_souris;
   procedure masquer_souris;
   function num_bouton:integer;
   function souris_bouton:integer;
   function num_barre:integer;
   function un_menu:integer;
   function bouton_ok_pointe:boolean;
   function btn_a_propos(x_pos,y_pos:integer):boolean;
   function souris_sur(var num:integer;nb:integer;var term:boolean):integer;
   function souris_scroll(x_pos,y_pos:integer):boolean;

implementation
uses dos;

{sp‚cifier la position du curseur}
procedure position_souris(xmin,ymin,xmax,ymax:integer);
begin
   asm
   mov ax,7h
   mov cx,[xmin]
   mov dx,[xmax]
   int 33h
   mov ax,8h
   mov cx,[ymin]
   mov dx,[ymax]
   int 33h
   end;
end;

{afficher le curseur}
procedure afficher_souris;
begin
   asm
   mov ax,1h
   int 33h
   end;
end;

{masquer le curseur}
procedure masquer_souris;
begin
   asm
   mov ax,2h
   int 33h
   end;
end;

{num‚ro du bouton sur leqel la souris pointe}
function num_bouton:integer;
var x,y,num,i:integer;
begin
   asm
      mov ax,3h
      int 33h
      mov x,cx
      mov y,dx
   end;
   num:=0;
   if (x>35) and (x<95) then
   begin
      if (y>135)and(y<165)then
         num:=5
      else
      for i:=1 to 4 do
         if (y>(70*i)+135)and(y<(70*i)+165)then
            num:=i;
   end;

   num_bouton:=num;
end;

{indique quel bouton a ‚t‚ cliqu‚}
function souris_bouton:integer;
var    btn:integer;
begin

   asm
      mov ax,3h
      int 33h
      mov btn,bx
   end;
   souris_bouton:=btn;
end;

{num‚ro du bouton barre sur leqel la souris pointe}
function num_barre:integer;
var x,y,num:integer;
begin
   asm
      mov ax,3h
      int 33h
      mov x,cx
      mov y,dx
   end;
   num:=0;
   if (x>600) and (x<630) then
      if (y>10) and (y<40) then
         num:=1;
   if (x>562)and(x<588) then
      if (y>12) and (y<38) then
         num:=2;

   num_barre:=num;
end;

{num‚ro du bouton barre sur leqel la souris pointe}
function un_menu:integer;
var x,y,num:integer;
begin
   asm
      mov ax,3h
      int 33h
      mov x,cx
      mov y,dx
   end;
   num:=0;
   if (x>30)and(x<100) then
   begin
      if (y>60)and(y<90) then
         num:=1;
      if (y>90)and(y<120) then
         num:=2;
   end;
   un_menu:=num;
end;

{renvoit si la souris pointe sur le bouton_ok}
function bouton_ok_pointe:boolean;
var x,y:integer;
    num:boolean;
begin
   asm
      mov ax,3h
      int 33h
      mov x,cx
      mov y,dx
   end;
   num:=false;
   if (x>320)and(x<400) then
      if (y>262)and(y<288) then
         num:=true;
   bouton_ok_pointe:=num;
end;

function btn_a_propos(x_pos,y_pos:integer):boolean;
var x,y:integer;
    num:boolean;
begin
   asm
      mov ax,3h
      int 33h
      mov x,cx
      mov y,dx
   end;
   num:=false;
   if (x>x_pos+370)and(x<x_pos+390) then
      if (y>y_pos+7)and(y<y_pos+27) then
         num:=true;
   btn_a_propos:=num;
end;

function souris_sur(var num:integer;nb:integer;var term:boolean):integer;
var x,y,i,clk:integer;
begin
   asm
      mov ax,3h
      int 33h
      mov clk,bx
      mov x,cx
      mov y,dx
   end;
   num:=-1;
   term:=false;

   if (x>120) and (x<220) then
      for i:=0 to nb do
         if (y>(12*i)+74)and(y<(12*i)+84)then
            num:=i;
   if (x>470) and (x<570) then
   begin
      for i:=0 to nb do
         if (y>(12*i)+74)and(y<(12*i)+84)then
            num:=i;
      term:=true;
   end;
   souris_sur:=clk;
end;

function souris_scroll(x_pos,y_pos:integer):boolean;
var x,y:integer;
    num:boolean;
begin
   asm
      mov ax,3h
      int 33h
      mov x,cx
      mov y,dx
   end;
   num:=false;
   if (x>x_pos)and(x<x_pos+20) then
      if (y>y_pos)and(y<y_pos+20) then
         num:=true;
   souris_scroll:=num;
end;
end.
