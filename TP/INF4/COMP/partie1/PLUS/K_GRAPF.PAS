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
±±       ±±         L'unit‚e (K_GRAPH.tpu)             ±±       ±±
±±       ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±       ±±
±±       Elle sert … sp‚cifier et contr“ler le graphique (les   ±±
±±dessins, les formes, les boites de dialogues, ...etc)         ±±
±±                                                              ±±
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
±±       ±±       Les fonctions de cette unit‚e:       ±±       ±±
±±       ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±       ±±
±±ÉÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»±±
±±ºinit_graph   º ®initialisation d'unit‚e graphique(egavga)¯  º±±
±±ºfin_graph    º ®la fin du programme(fermeture du graphe)¯   º±±
±±ºa_propos     º ®afiche la boite d'… propos¯                 º±±
±±ºbarre_window º ®dessine la fenˆtre¯                         º±±
±±º             º                                              º±±
±±                                                              ±±
±±                                                              ±±
±±                                                              ±±
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±}

unit k_graph;

interface
var __btn_actuel,__btn_precedent,__btn_clique:integer;
    __menu:boolean;

   procedure init_graph;
   procedure fin_graph;
   procedure a_propos(x,y:integer);
   procedure barre_window;
   procedure barre_texte(x,y:integer;long,haut:word);
   procedure barre_menu(menu:boolean);
   procedure souris_sur_bouton(menu:boolean;btn_actuel:integer;var btn_prec:integer;clique:integer);
   procedure souris_hors_bouton(menu:boolean;btn_actuel:integer;var btn_prec:integer;clique:integer);
   procedure bouton_clique(menu:boolean;btn_actuel:integer;type_btn:integer;var clique:integer);

implementation
uses graph,k_souris;

{Initialisation du mode graphique}
{================================}
procedure init_graph;
var
  Gd, Gm: Integer;
begin
  Gd := Detect;
  InitGraph(Gd, Gm, '');
  if GraphResult <> grOk then
    Halt(1);
end;

{Fin du mode graphique}
{================================}
procedure fin_graph;
begin
  Closegraph;
end;

{Initialisation du mode graphique}
{================================}
procedure a_propos(x,y:integer);
Begin
   setfillstyle(1,1);
   setcolor(15);
   line(x+10,y+30,x+320,y+30);
   line(x+320,y+30,x+350,y);
   line(x+350,y,x+400,y);
   line(x+400,y,x+400,y+200);
   line(x+400,y+200,x+10,y+200);
   line(x+10,y+200,x+10,y+30);
   line(x+10,y+100,x,y+90);
   line(x,y+90,x,y+10);
   line(x,y+10,x+340,y+10);
   {-----------le remplissage------------}
   setfillstyle(1,1);
   floodfill(x+20,y+20,15);
   setfillstyle(1,8);
   floodfill(x+380,y+20,15);
   setfillstyle(1,7);
   bar(x+15,y+35,x+395,y+195);
   fillellipse(x+380,y+17,13,13);
   setfillstyle(1,4);
   setcolor(0);
   fillellipse(x+380,y+17,10,10);
   setlinestyle(0,0,3);
   line(x+375,y+12,x+385,y+22);
   line(x+385,y+12,x+375,y+22);
   setcolor(15);
   outtextxy(x+14,y+14,'A propos ...');

   setfillstyle(1,10);
   bar(x+20,y+40,x+55,y+90);
   settextstyle(10,0,4);
   outtextxy(x+25,y+25,'K');
   setfillstyle(1,5);
   floodfill(x+30,y+50,15);
   {les informations}
   setcolor(0);
   settextstyle(0,0,1);
   outtextxy(x+60,y+50,'Cr‚‚ par:');
   outtextxy(x+70,y+60,'ARIES Abd elkarim');
   outtextxy(x+60,y+70,'Universit‚ de:');
   outtextxy(x+70,y+80,'Jijel');
   outtextxy(x+60,y+90,'4iŠme ann‚e g‚nie informatique');
   outtextxy(x+60,y+100,'Groupe:');
   outtextxy(x+70,y+110,'02');
   outtextxy(x+60,y+120,'Nø');
   outtextxy(x+70,y+130,'14');
   outtextxy(x+60,y+140,'R‚sponsable du module:');
   outtextxy(x+70,y+150,'Mme. KERADA RAMDANE Widad');

end;

{La barre de window}
{================================}
procedure barre_window;
var mx,my:integer;
Begin
   mx:=getmaxx;
   my:=getmaxy;
   setcolor(15);
   setfillstyle(1,1);
   sector(mx-124,8,270,315,32,32);
   line(mx-56,0,mx-20,0);
   line(mx,20,mx,my);
   line(mx-80,10,mx-110,40);
   line(20,10,mx-80,10);
   line(20,40,mx-110,40);
   line(10,50,10,my);
   line(0,30,0,200);
   line(0,30,20,10);
   line(10,my,mx,my);
   line(20,40,10,50);
   sector(5,200,180,360,5,5);
   bar(1,200,9,200);
   bar(mx-124,11,mx-124,39);
   bar(mx-121,11,mx-102,30);
   floodfill(20,30,15);
   sector(20,30,90,180,20,20);
   bar(19,11,21,31);
   bar(1,29,31,31);
   setfillstyle(1,8);
   sector(mx-20,20,0,90,20,20);
   bar(mx-21,1,mx-19,21);
   bar(mx-21,19,mx-1,21);
   sector(mx-56,34,90,135,34,34);
   bar(mx-57,1,mx-55,45);
   bar(mx-80,11,mx-55,35);
   sector(20,50,90,180,10,10);
   bar(19,41,21,51);
   bar(11,49,21,51);
   floodfill(20,my-30,15);
   bar(mx-118,40,mx-100,40);
   setfillstyle(1,7);
   bar(20,50,mx-10,my-10);
   fillellipse(mx-25,25,20,20);
   setcolor(0);
   setfillstyle(1,4);
   fillellipse(mx-25,25,15,15);
   setcolor(15);
   setlinestyle(0,0,3);
   line(mx-32,17,mx-17,32);
   line(mx-17,17,mx-32,32);
   setcolor(8);
   line(mx-110,40,mx-102,33);
   setfillstyle(1,0);
   bar(mx-126,7,mx-122,9);
   {-------l'icone------}
   setfillstyle(1,14);
   setcolor(4);
   bar(20,15,40,35);
   settextstyle(0,0,2);
   outtextxy(23,18,'K');
   setcolor(15);
   outtextxy(45,20,'Grammaire');
end;

{La barre de texte}
{================================}
procedure barre_texte(x,y:integer;long,haut:word);
begin
   setfillstyle(1,1);
   bar(x,y,x+long,y+haut);
   setfillstyle(9,4);
   bar(x+long,y+20,x+long+20,y+haut-20);
   bar(x+20,y+haut,x+long-20,y+haut+20);
   {les boutons}
   setfillstyle(1,4);
   setcolor(4);
   PieSlice(x+long-20, y+haut, 270,360,20);
   PieSlice(x+20, y+haut,180,270,20);
   PieSlice(x+long, y+20, 0,90,20);
   PieSlice(x+long, y+haut-20, 270,360,20);
   {les directions des boutons}
   setcolor(0);
   settextstyle(0,0,2);
   outtextxy(x+long+3, y+5,'');
   outtextxy(x+long+3, y+haut-18,'');
   settextstyle(0,1,2);
   outtextxy(x+21, y+haut+1,'');
   outtextxy(x+long-2, y+haut+1,'');
end;

{La barre de texte}
{================================}
procedure barre_menu(menu:boolean);
var i:integer;
begin
   setlinestyle(0,0,1);
   setfillstyle(1,2);
   bar(30,121,100,460);
   {les boutons}
   setfillstyle(1,6);
   for i:=1 to 4 do
      fillellipse(65,(70*i)+120,30,15);
   if menu then {Cr‚ation}
   begin
      setfillstyle(1,13);
      bar(30,60,100,90);
      setfillstyle(1,5);
      bar(30,90,100,120);
      settextstyle(10,0,1);
      outtextxy(58,166,'V');
      outtextxy(58,236,'N');
      outtextxy(58,306,'S');
      outtextxy(58,376,'P');
      setcolor(14);
      settextstyle(0,0,1);
      outtextxy(35,70,'Cr‚ation');
      setcolor(0);
      outtextxy(35,100,'Fonction');
   end
   else
   begin
      setfillstyle(1,5);
      bar(30,60,100,90);
      setfillstyle(1,13);
      bar(30,90,100,120);
      settextstyle(0,0,1);
      outtextxy(43,185,'Type1?');
      outtextxy(43,255,'Fonct');
      outtextxy(43,325,' FNC');
      outtextxy(43,395,' FNG');
      setcolor(14);
      outtextxy(35,100,'Fonction');
      setcolor(0);
      outtextxy(35,70,'Cr‚ation');
   end;
   rectangle(30,60,100,90);
   rectangle(30,90,100,120);
end;

{Si la souris est sur le bouton d'un des deux menus}
{==================================================}
procedure souris_sur_bouton(menu:boolean;btn_actuel:integer;var btn_prec:integer;clique:integer);
begin
   if (btn_actuel<>0)and(btn_actuel<>btn_prec)and(btn_actuel<>clique) then
   begin
      btn_prec:=btn_actuel;
      {les boutons}
      setcolor(15);
      setfillstyle(1,12);
      masquer_souris;
      fillellipse(65,(70*btn_actuel)+120,30,15);
      if menu then {Cr‚ation}
      begin
         settextstyle(10,0,1);
         case btn_actuel of
            1:outtextxy(58,166,'V');
            2:outtextxy(58,236,'N');
            3:outtextxy(58,306,'S');
            else outtextxy(58,376,'P');
         end;
      end
      else
      begin
         settextstyle(0,0,1);
         case btn_actuel of
            1:outtextxy(43,185,'Type1?');
            2:outtextxy(43,255,'Fonct');
            3:outtextxy(43,325,' FNC');
         else outtextxy(43,395,' FNG');
         end;
      end;
      afficher_souris;
   end;
end;

{Si la souris est hors bouton d'un des deux menus}
{==================================================}
procedure souris_hors_bouton(menu:boolean;btn_actuel:integer;var btn_prec:integer;clique:integer);
var i:integer;
begin
   if (btn_prec<>0)and(btn_prec<>btn_actuel)and (btn_prec<>clique) then
   begin
      {les boutons}
      setcolor(15);
      setfillstyle(1,6);
      masquer_souris;
      fillellipse(65,(70*btn_prec)+120,30,15);
      afficher_souris;
      if menu then {Cr‚ation}
      begin
         settextstyle(10,0,1);
         case btn_prec of
            1:outtextxy(58,166,'V');
            2:outtextxy(58,236,'N');
            3:outtextxy(58,306,'S');
            else outtextxy(58,376,'P');
         end;
      end
      else
      begin
         settextstyle(0,0,1);
         case btn_prec of
            1:outtextxy(43,185,'Type1?');
            2:outtextxy(43,255,'Fonct');
            3:outtextxy(43,325,' FNC');
            else outtextxy(43,395,' FNG');
         end;
      end;
      btn_prec:=0;
   end;
end;

{Si le bouton d'un des deux menus est cliqu‚}
{==================================================}
procedure bouton_clique(menu:boolean;btn_actuel:integer;type_btn:integer;var clique:integer);
begin
   if souris_bouton=type_btn then
   if (btn_actuel<>0)and(btn_actuel<>clique) then
   begin
      {les boutons}
      setcolor(15);
      masquer_souris;
      if clique<>0 then
      begin
         setfillstyle(1,6);
         fillellipse(65,(70*clique)+120,30,15);
         if menu then {Cr‚ation}
         begin
            settextstyle(10,0,1);
            case clique of
               1:outtextxy(58,166,'V');
               2:outtextxy(58,236,'N');
               3:outtextxy(58,306,'S');
               else outtextxy(58,376,'P');
            end;
         end
         else
         begin
            settextstyle(0,0,1);
            case clique of
               1:outtextxy(43,185,'Type1?');
               2:outtextxy(43,255,'Fonct');
               3:outtextxy(43,325,' FNC');
               else outtextxy(43,395,' FNG');
            end;
         end;
      end;
      setfillstyle(1,12);
      fillellipse(65,(70*btn_actuel)+120,30,15);
      if menu then {Cr‚ation}
      begin
         settextstyle(10,0,1);
         case btn_actuel of
            1:outtextxy(58,166,'V');
            2:outtextxy(58,236,'N');
            3:outtextxy(58,306,'S');
            else outtextxy(58,376,'P');
         end;
      end
      else
      begin
         settextstyle(0,0,1);
         case btn_actuel of
            1:outtextxy(43,185,'Type1?');
            2:outtextxy(43,255,'Fonct');
            3:outtextxy(43,325,' FNC');
         else outtextxy(43,395,' FNG');
         end;
      end;
      afficher_souris;
      clique:=btn_actuel;
   end;
end;

begin{initialisation}
    __btn_actuel:=0;
    __btn_precedent:=0;
    __btn_clique:=0;
    __menu:=true;


end.