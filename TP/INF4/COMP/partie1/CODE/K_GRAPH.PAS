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
const
   __btn_nul=0;
   __btn_gauche=1;
   __btn_droite=2;
   __btn_centre=4;


   procedure init_graph;
   procedure fin_graph;
   procedure a_propos(x,y:integer);
   procedure barre_window;
   procedure barre_texte(x,y:integer;long,haut:word;horiz:boolean);
   procedure barre_menu;
   procedure souris_sur_bouton;
   procedure souris_hors_bouton;
   procedure bouton_clique(type_btn:integer);
   function bouton_execute(var fct_exec:integer):boolean;
   procedure souris_sur_barre;
   procedure souris_hors_barre;
   procedure barre_clique(type_btn:integer);
   function barre_execute:boolean;
   procedure fin_execute;
   procedure souris_sur_menu;
   procedure souris_hors_menu;
   procedure menu_clique(type_btn:integer);
   procedure lecture(x,y:integer;txt,nbr:word;term:boolean);
   procedure lire_terminal(term:boolean);
   function res_lec:string;
   procedure lecture_axiome;
   procedure lister_terminal(x_pos,y_pos,long,haut:integer;term:boolean);
   procedure inserer_le(s:string;haut:integer;b:boolean);
   procedure lire_regle(haut:integer);
   procedure scrol_haut(x_pos,y_pos,long,haut,qui:integer);
   procedure scrol_bas(x_pos,y_pos,long,haut,qui:integer);
   procedure nouv_bouton_souris(nb:integer);
   procedure lister_regle(x_pos,y_pos,long,haut:integer);
   procedure de_type_2;
   procedure Affichage_de_fct;
   procedure Affichage_de_fnc;
   procedure Affichage_de_fng;
   procedure barre_axiome;
   procedure initialisation;

implementation
uses graph,crt,k_souris,k_gramm;
var __btn_actuel,__btn_prec,__btn_clique:integer;
    __btn_menu,__a_executer:boolean;
    __barre_actuel,__barre_prec,__barre_clique:integer;
    __menu_actuel,__menu_prec:integer;
    __chaine_carac:string;
    __Vpos,__Npos,__nbV,__nbN,__Rpos,__nbR,__TypeR:integer;
    __scroll_up,__scroll_down,__souris_btn,__synch:integer;
    __up_clic,__down_clic,__nouv_G,__G_type2:boolean;
    __nbFCT,__nbFNC,__nbFNG:integer;

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
  position_souris(0,0,630,470);
  afficher_souris;
end;

{Fin du mode graphique}
{================================}
procedure fin_graph;
begin
  masquer_souris;
  Closegraph;
end;

{Initialisation du mode graphique}
{================================}
procedure a_propos(x,y:integer);
var act,prec,clic:boolean;
    ou:integer;
    P: Pointer;
    Size: Word;
Begin
   Size := ImageSize(x-10,y-10, x+400, y+200);
   GetMem(P, Size);   { Allocate memory on heap }
   GetImage(x-10,y-10, x+400, y+200, P^);
   act:=false;
   prec:=false;
   clic:=false;
   masquer_souris;
   setfillstyle(1,0);
   setlinestyle(0,0,1);
   bar(x-10,y-10,x+390,y+190);
   bar(x+10,y+190,x+400,y+200);
   bar(x+390,y,x+400,y+200);
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
   setcolor(15);
   line(x+375,y+12,x+385,y+22);
   line(x+385,y+12,x+375,y+22);
   setfillstyle(1,10);
   bar(x+20,y+40,x+55,y+90);
   settextstyle(10,0,4);
   outtextxy(x+25,y+25,'K');
   setfillstyle(1,5);
   floodfill(x+30,y+50,15);
   settextstyle(0,0,1);
   outtextxy(x+14,y+14,'A propos ...');

   {les informations}
   setcolor(0);
   outtextxy(x+60,y+50,'Cr‚‚ par:');
   outtextxy(x+100,y+60,'ARIES Abd elkarim');
   outtextxy(x+60,y+70,'Universit‚ de:');
   outtextxy(x+100,y+80,'Jijel');
   outtextxy(x+60,y+90,'4iŠme ann‚e g‚nie informatique');
   outtextxy(x+60,y+100,'Groupe:');
   outtextxy(x+100,y+110,'02');
   outtextxy(x+60,y+120,'Nø');
   outtextxy(x+100,y+130,'14');
   outtextxy(x+60,y+140,'R‚sponsable du module:');
   outtextxy(x+100,y+150,'Mme. KERADA RAMDANE Widad');
   afficher_souris;
   while not clic do
   begin
      act:=btn_a_propos(x,y);
      if act and (not prec) then
      begin
         setlinestyle(0,0,1);
         setfillstyle(1,12);
         setcolor(0);
         masquer_souris;
         fillellipse(x+380,y+17,10,10);
         setlinestyle(0,0,3);
         setcolor(14);
         line(x+375,y+12,x+385,y+22);
         line(x+385,y+12,x+375,y+22);
         afficher_souris;
         prec:=true;
      end;
      if (not act)and prec then
      begin
         setlinestyle(0,0,1);
         setfillstyle(1,4);
         setcolor(0);
         masquer_souris;
         fillellipse(x+380,y+17,10,10);
         setlinestyle(0,0,3);
         setcolor(15);
         line(x+375,y+12,x+385,y+22);
         line(x+385,y+12,x+375,y+22);
         afficher_souris;
         prec:=false;
      end;
      if act and (souris_bouton=1) then
         clic:=true;
   end;
   masquer_souris;
   PutImage(x-10,y-10, P^, NormalPut);
   afficher_souris;
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
   masquer_souris;
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
   fillellipse(mx-65,25,13,13);
   setcolor(15);
   settextstyle(7,0,3);
   outtextxy(640-70,10,'?');
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
   afficher_souris;
end;

{La barre de texte}
{================================}
procedure barre_texte(x,y:integer;long,haut:word;horiz:boolean);
begin
   setfillstyle(1,1);
   masquer_souris;
   bar(x,y,x+long,y+haut);
   setfillstyle(9,4);
   bar(x+long,y+20,x+long+20,y+haut-20);
   if horiz then
      bar(x+20,y+haut,x+long-20,y+haut+20);
   {les boutons}
   setfillstyle(1,4);
   setcolor(4);
   if horiz then
   begin
      PieSlice(x+long-20, y+haut, 270,360,20);
      PieSlice(x+20, y+haut,180,270,20);
   end;
   PieSlice(x+long, y+20, 0,90,20);
   PieSlice(x+long, y+haut-20, 270,360,20);
   {les directions des boutons}
   setcolor(0);
   settextstyle(0,0,2);
   outtextxy(x+long+3, y+5,'');
   outtextxy(x+long+3, y+haut-18,'');
   if horiz then
   begin
      settextstyle(0,1,2);
      outtextxy(x+21, y+haut+1,'');
      outtextxy(x+long-2, y+haut+1,'');
   end;
   afficher_souris;
end;

{La barre de texte}
{================================}
procedure barre_menu;
var i:integer;
begin
   __btn_actuel:=0;
   __btn_prec:=0;
   __btn_clique:=0;
   setcolor(15);
   setlinestyle(0,0,1);
   setfillstyle(1,2);
   masquer_souris;
   bar(30,121,100,460);
   {les boutons}
   setfillstyle(1,6);
   for i:=1 to 4 do
      fillellipse(65,(70*i)+150,30,15);
   if __btn_menu then {Cr‚ation}
   begin
      fillellipse(65,150,30,15);
      setfillstyle(1,2);
      bar(30,60,100,90);
      setfillstyle(1,5);
      bar(30,90,100,120);
      settextstyle(10,0,1);
      outtextxy(58,196,'V');
      outtextxy(58,266,'N');
      outtextxy(58,336,'S');
      outtextxy(58,406,'P');
      settextstyle(0,0,1);
      outtextxy(48,146,'Nouv');
      setcolor(14);
      outtextxy(35,70,'Cr‚ation');
      setcolor(0);
      outtextxy(35,100,'Fonction');

   end
   else
   begin
      setfillstyle(1,5);
      bar(30,60,100,90);
      setfillstyle(1,2);
      bar(30,90,100,120);
      settextstyle(0,0,1);
      outtextxy(43,215,'Type1?');
      outtextxy(43,285,'Fonct');
      outtextxy(43,355,' FNC');
      outtextxy(43,425,' FNG');
      setcolor(14);
      outtextxy(35,100,'Fonction');
      setcolor(0);
      outtextxy(35,70,'Cr‚ation');
   end;
   rectangle(30,60,100,90);
   rectangle(30,90,100,120);
   afficher_souris;
end;

{Si la souris est sur le bouton d'un des deux menus}
{==================================================}
procedure souris_sur_bouton;
begin
   __btn_actuel:=num_bouton;
   if (__btn_actuel=5)and(not __btn_menu)then
      __btn_actuel:=0;
   if (__btn_actuel<>0)and(__btn_actuel<>__btn_prec)and(__btn_actuel<>__btn_clique) then
   begin
      __btn_prec:=__btn_actuel;
      {les boutons}
      setlinestyle(0,0,1);
      setcolor(15);
      setfillstyle(1,12);
      masquer_souris;
      if __btn_actuel<>5 then
         fillellipse(65,(70*__btn_actuel)+150,30,15);

      if __btn_menu then {Cr‚ation}
      begin
         settextstyle(10,0,1);
         case __btn_actuel of
            1:outtextxy(58,196,'V');
            2:outtextxy(58,266,'N');
            3:outtextxy(58,336,'S');
            4:outtextxy(58,406,'P');
            else begin
                    fillellipse(65,150,30,15);
                    settextstyle(0,0,1);
                    outtextxy(48,146,'Nouv');
                 end;

         end;
      end
      else
      begin
         settextstyle(0,0,1);
         case __btn_actuel of
            1:outtextxy(43,215,'Type1?');
            2:outtextxy(43,285,'Fonct');
            3:outtextxy(43,355,' FNC');
            else outtextxy(43,425,' FNG');
         end;
      end;
      afficher_souris;
   end;

end;

{Si la souris est hors bouton d'un des deux menus}
{==================================================}
procedure souris_hors_bouton;
var i:integer;

begin
   if (__btn_prec<>0)and(__btn_prec<>__btn_actuel)and (__btn_prec<>__btn_clique) then
   begin
      {les boutons}
      setlinestyle(0,0,1);
      setcolor(15);
      setfillstyle(1,6);
      masquer_souris;
      if __btn_prec<>5 then
         fillellipse(65,(70*__btn_prec)+150,30,15);

      if __btn_menu then {Cr‚ation}
      begin
         settextstyle(10,0,1);
         case __btn_prec of
            1:outtextxy(58,196,'V');
            2:outtextxy(58,266,'N');
            3:outtextxy(58,336,'S');
            4:outtextxy(58,406,'P');
            else begin
                    fillellipse(65,150,30,15);
                    settextstyle(0,0,1);
                    outtextxy(48,146,'Nouv');
                 end;
         end;
      end
      else
      begin
         settextstyle(0,0,1);
         case __btn_prec of
            1:outtextxy(43,215,'Type1?');
            2:outtextxy(43,285,'Fonct');
            3:outtextxy(43,355,' FNC');
            else outtextxy(43,425,' FNG');
         end;
      end;
      afficher_souris;
      __btn_prec:=0;
   end;

end;

{Si le bouton d'un des deux menus est cliqu‚}
{==================================================}
procedure bouton_clique(type_btn:integer);
label fin;
begin
   if __souris_btn=type_btn then
   if (__btn_actuel<>0)and(__btn_actuel<>__btn_clique) then
   begin
      {les boutons}
      setlinestyle(0,0,1);
      setcolor(15);
      masquer_souris;
      if __btn_clique<>0 then
      begin
         setfillstyle(1,6);
         if __btn_clique<>5 then
            fillellipse(65,(70*__btn_clique)+150,30,15);

         if __btn_menu then {Cr‚ation}
         begin
            settextstyle(10,0,1);
            case __btn_clique of
               1:outtextxy(58,196,'V');
               2:outtextxy(58,266,'N');
               3:outtextxy(58,336,'S');
               4:outtextxy(58,406,'P');
               else begin
                       fillellipse(65,150,30,15);
                       settextstyle(0,0,1);
                       outtextxy(48,146,'Nouv');
                    end;
            end;
         end
         else
         begin
            settextstyle(0,0,1);
            case __btn_clique of
               1:outtextxy(43,215,'Type1?');
               2:outtextxy(43,285,'Fonct');
               3:outtextxy(43,355,' FNC');
               else outtextxy(43,425,' FNG');
            end;
         end;
      end;
      setfillstyle(1,10);
      if __btn_actuel=5 then
         fillellipse(65,150,30,15)
      else
         fillellipse(65,(70*__btn_actuel)+150,30,15);

      if __btn_menu then {Cr‚ation}
      begin
         settextstyle(10,0,1);
         case __btn_actuel of
            1:outtextxy(58,196,'V');
            2:outtextxy(58,266,'N');
            3:outtextxy(58,336,'S');
            4:outtextxy(58,406,'P');
            else begin
                    settextstyle(0,0,1);
                    outtextxy(48,146,'Nouv');
                 end;
         end;
      end
      else
      begin
         settextstyle(0,0,1);
         case __btn_actuel of
            1:outtextxy(43,215,'Type1?');
            2:outtextxy(43,285,'Fonct');
            3:outtextxy(43,355,' FNC');
         else outtextxy(43,425,' FNG');
         end;
      end;
      afficher_souris;
      __btn_clique:=__btn_actuel;
      __a_executer:=true;
   end;
fin:
end;

{Si le bouton d'un des deux menus est cliqu‚}
{==================================================}
function bouton_execute(var fct_exec:integer):boolean;
begin
   if __a_executer then
   begin
      if __btn_menu then
      begin
         fct_exec:=__btn_clique;
         if fct_exec=5 then
            fct_exec:=9;
      end
      else
         fct_exec:=__btn_clique+4;
      __a_executer:=false;
      bouton_execute:=true;
   end
   else
      bouton_execute:=false;
end;

{la fin d'execution}
{==================}
procedure fin_execute;
begin
      {les boutons}
      setlinestyle(0,0,1);
      setcolor(15);
      setfillstyle(1,6);
      masquer_souris;
      fillellipse(65,(70*__btn_clique)+150,30,15);
      if __btn_menu then {Cr‚ation}
      begin
         settextstyle(10,0,1);
         case __btn_clique of
            1:outtextxy(58,196,'V');
            2:outtextxy(58,266,'N');
            3:outtextxy(58,336,'S');
            else outtextxy(58,406,'P');
         end;
      end
      else
      begin
         settextstyle(0,0,1);
         case __btn_clique of
            1:outtextxy(43,215,'Type1?');
            2:outtextxy(43,285,'Fonct');
            3:outtextxy(43,355,' FNC');
            else outtextxy(43,425,' FNG');
         end;
      end;
      afficher_souris;
      __btn_prec:=0;
      __btn_clique:=0;
      __btn_prec:=0;
end;

{Si la souris est sur le bouton de fin ou d'a propos du barre}
{============================================================}
procedure souris_sur_barre;
begin
   __barre_actuel:=num_barre;
   if (__barre_actuel<>0)and(__barre_actuel<>__barre_prec)then
   begin
      masquer_souris;
      if __barre_actuel=1 then
      begin
         setlinestyle(0,0,1);
         setcolor(0);
         setfillstyle(1,12);
         fillellipse(615,25,15,15);
         setcolor(14);
         setlinestyle(0,0,3);
         line(getmaxx-32,17,getmaxx-17,32);
         line(getmaxx-17,17,getmaxx-32,32);
      end
      else
      begin
         setlinestyle(0,0,1);
         setcolor(0);
         setfillstyle(1,12);
         fillellipse(getmaxx-65,25,13,13);
         setcolor(14);
         settextstyle(7,0,3);
         outtextxy(getmaxx-70,10,'?');
      end;
      afficher_souris;
      __barre_prec:=__barre_actuel;
   end;
end;

{Si la souris est hors du bouton de fin ou d'a propos du barre}
{============================================================}
procedure souris_hors_barre;
begin
   if (__barre_prec<>0)and(__barre_actuel<>__barre_prec)then
   begin
      masquer_souris;
      if __barre_prec=1 then
      begin
         setlinestyle(0,0,1);
         setcolor(0);
         setfillstyle(1,4);
         fillellipse(615,25,15,15);
         setcolor(15);
         setlinestyle(0,0,3);
         line(getmaxx-32,17,getmaxx-17,32);
         line(getmaxx-17,17,getmaxx-32,32);
      end
      else
      begin
         setlinestyle(0,0,1);
         setcolor(0);
         setfillstyle(1,4);
         fillellipse(getmaxx-65,25,13,13);
         setcolor(15);
         settextstyle(7,0,3);
         outtextxy(getmaxx-70,10,'?');
      end;
      afficher_souris;
      __barre_prec:=0;
   end;
end;

{Si l'un des deux boutons du barre window a ‚t‚ cliqu‚}
{=====================================================}
procedure barre_clique(type_btn:integer);
begin
   if __souris_btn=type_btn then
      if (__barre_actuel<>0) then
         __barre_clique:=__barre_actuel;
end;

{Si l'un des deux boutons du barre window a ‚t‚ cliqu‚}
{=====================================================}
function barre_execute:boolean;
begin
   case __barre_clique of
      1:barre_execute:=false;
      2:begin
           a_propos(140,140);
           barre_execute:=true;
           __barre_clique:=0;
        end;
      else barre_execute:=true;
   end;

end;

{Si la souris est sur le menu}
{============================}
procedure souris_sur_menu;
begin
   __menu_actuel:=un_menu;
   if (__menu_actuel<>0)and(__menu_actuel<>__menu_prec) then
   begin
      if __btn_menu and (__menu_actuel=2)then
      begin
         masquer_souris;
         setfillstyle(1,13);
         bar(31,91,99,119);
         setcolor(14);
         settextstyle(0,0,1);
         outtextxy(35,100,'Fonction');
         afficher_souris;
         __menu_prec:=__menu_actuel;
      end;
      if (not __btn_menu) and (__menu_actuel=1)then
      begin
         masquer_souris;
         setfillstyle(1,13);
         bar(31,61,99,89);
         setcolor(14);
         settextstyle(0,0,1);
         outtextxy(35,70,'Cr‚ation');
         afficher_souris;
         __menu_prec:=__menu_actuel;
      end;

   end;
end;

{Si la souris est hors menu}
{============================}
procedure souris_hors_menu;
begin
   if (__menu_prec<>0)and(__menu_prec<>__menu_actuel) then
   begin
      if __btn_menu then
      begin
         masquer_souris;
         setfillstyle(1,5);
         bar(31,91,99,119);
         setcolor(0);
         settextstyle(0,0,1);
         outtextxy(35,100,'Fonction');
         afficher_souris;
      end
      else
      begin
         masquer_souris;
         setfillstyle(1,5);
         bar(31,61,99,89);
         setcolor(0);
         settextstyle(0,0,1);
         outtextxy(35,70,'Cr‚ation');
         afficher_souris;
      end;
      __menu_prec:=0;
   end;
end;

{Si l'un des deux boutons du menu a ‚t‚ cliqu‚}
{=====================================================}
procedure menu_clique(type_btn:integer);
begin
   if __souris_btn=type_btn then
      if (__menu_actuel<>0) then
      begin
         if __btn_menu and(__menu_actuel=2)then
         begin
            __btn_menu:=not __btn_menu;
            barre_menu;
            if __nouv_G then
            begin
               {mise … jour des transformations}
               mise_a_jour(__nbFCT,__nbFNC,__nbFNG,__G_type2);

               if laxiome(true)<>'' then
                  __nouv_G:=false;

               setcolor(1);
               setfillstyle(1,4);
               bar(305,100,405,140);
               settextstyle(0,0,1);
               outtextxy(310,115,laxiome(false));
            end;
         end;
         if (not __btn_menu) and(__menu_actuel=1)then
         begin
            __btn_menu:=not __btn_menu;
            barre_menu;
            __Rpos:=0;
            __TypeR:=0;
            setcolor(1);
            setfillstyle(1,4);
            bar(305,100,405,140);
            settextstyle(0,0,1);
            outtextxy(310,115,laxiome(true));
            lister_regle(120,160,470,280);
         end;
      end;
end;

{le bouton ok}
function bouton_ok(var b_prec:boolean):boolean;
var b_act:boolean;
begin
   b_act:=bouton_ok_pointe;
   bouton_ok:=true;
   if b_act and (not b_prec) then
   begin
      setlinestyle(0,0,1);
      settextstyle(7,0,1);
      setcolor(15);
      setfillstyle(1,13);
      masquer_souris;
      fillellipse(360,275,40,13);
      outtextxy(350,262,'OK');
      afficher_souris;
      b_prec:=true;
   end;
   if (not b_act)and b_prec then
   begin
      setlinestyle(0,0,1);
      settextstyle(7,0,1);
      setcolor(15);
      setfillstyle(1,5);
      masquer_souris;
      fillellipse(360,275,40,13);
      outtextxy(350,262,'OK');
      afficher_souris;
      b_prec:=false;
   end;
   if  (souris_bouton=1)and b_act then
       bouton_ok:=false;

end;

{la procedure de lecture avec affichage sur ‚cran}
{=====================================================}
procedure lecture(x,y:integer;txt,nbr:word;term:boolean);
var tmp:char;
    i:integer;
    str:string;
    btn:boolean;
begin
   {vidage du tompon de lecture clavier}
   while keypressed do
      tmp:=readkey;
   settextstyle(0,0,1);
   setfillstyle(1,1);
   masquer_souris;
   bar(x-5,y-5,x+(8*nbr)+5,y+15);
   setcolor(12);
   outtextxy(x,y+2,'Ü');
   afficher_souris;
   i:=1;
   tmp:='';
   btn:=false;
   while bouton_ok(btn) do
   begin
   {|}if keypressed then
   {|}   tmp:=readkey;
   {|}if (tmp<>'') then
   {|}begin
   {|}   if (i<=nbr) then
         case term of
   {|}  {|} true: if (ord(tmp)>31)and(ord(tmp)<255) then
   {|}  {|}       begin
   {|}  {|}          str[i]:=tmp;
   {|}  {|}          settextstyle(0,0,1);
                     setfillstyle(1,1);
                     masquer_souris;
   {|}  {|}          bar(x,y,x+8,y+10);
   {|}  {|}          setcolor(txt);
                     outtextxy(x,y,tmp);
   {|}  {|}          i:=i+1;
   {|}  {|}          x:=x+8;
   {|}  {|}          if i<=nbr then
                     begin
   {|}  {|}             setcolor(12);
                        outtextxy(x,y+2,'Ü');
                     end;
   {|}  {|}          afficher_souris;
   {|}  {|}       end;
   {|}  {|} false:if (ord(UpCase(tmp))>64)and(ord(UpCase(tmp))<91) then
   {|}  {|}       begin
   {|}  {|}          str[i]:=UpCase(tmp);
   {|}  {|}          settextstyle(0,0,1);
                     setfillstyle(1,1);
                     masquer_souris;
   {|}  {|}          bar(x,y,x+8,y+10);
   {|}  {|}          setcolor(txt);
                     outtextxy(x,y,UpCase(tmp));
   {|}  {|}          i:=i+1;
   {|}  {|}          x:=x+8;
   {|}  {|}          if i<=nbr then
                     begin
   {|}  {|}             setcolor(12);
                        outtextxy(x,y+2,'Ü');
                     end;
   {|}  {|}          afficher_souris;
   {|}  {|}       end;
   {|}   end;
   {|}   if (i>1)and(ord(tmp)=8) then
   {|}   begin
   {|}      i:=i-1;
   {|}      x:=x-8;
            settextstyle(0,0,1);
            setfillstyle(1,1);
   {|}      masquer_souris;
   {|}      bar(x,y,x+8,y+10);
            if i<>nbr then
               bar(x+8,y,x+16,y+10);
            setcolor(12);
   {|}      outtextxy(x,y+2,'Ü');
   {|}      afficher_souris;
   {|}   end;
   {|}end;
   {|}tmp:='';
   end;
   i:=i-1;
   if i>0 then
      __chaine_carac:= Copy(str,1,i);

end;

{la procedure de lecture d'une symbole}
{=====================================}
procedure lire_terminal(term:boolean);
var P: Pointer;
    Size: Word;
begin
   Size := ImageSize(230, 190, 440, 300);
   GetMem(P, Size);   { Allocate memory on heap }
   GetImage(230, 190, 440, 300, P^);
   setlinestyle(0,0,1);
   setfillstyle(1,0);
   masquer_souris;
   bar(230,190,430,290);
   bar(250,290,340,300);
   bar(330,200,340,300);
   setfillstyle(1,1);
   setcolor(15);
   line(250,230,360,230);
   line(360,230,390,200);
   line(390,200,440,200);
   line(440,200,440,300);
   line(440,300,250,300);
   line(250,300,250,230);
   line(250,270,240,260);
   line(240,260,240,210);
   line(240,210,380,210);
   {-----------le remplissage------------}
   setfillstyle(1,1);
   floodfill(260,220,15);
   setfillstyle(1,8);
   floodfill(420,220,15);
   setfillstyle(1,7);
   bar(255,235,435,295);
   fillellipse(420,217,13,13);
   setcolor(15);
   setfillstyle(1,10);
   bar(260,240,295,290);
   settextstyle(10,0,4);
   outtextxy(265,225,'K');
   setfillstyle(1,5);
   floodfill(270,250,15);
   {----Bouton "OK"----}
   settextstyle(7,0,1);
   setfillstyle(1,5);
   fillellipse(360,275,40,13);
   outtextxy(350,262,'OK');
   {--------OK---------}
   {---Bouton fermer---}
   setfillstyle(1,4);
   setcolor(0);
   fillellipse(420,217,10,10);
   setlinestyle(0,0,3);
   line(415,212,425,222);
   line(425,212,415,222);
   {-------fermer------}
   settextstyle(0,0,1);
   if term then
      outtextxy(254,214,'Terminal')
   else
      outtextxy(254,214,'Non terminal');
   afficher_souris;
   lecture(320,245,14,10,term);
   masquer_souris;
   PutImage(230, 190, P^, NormalPut);
   afficher_souris;
end;

{la fonction qui renvoit la chaine}
{=================================}
function res_lec:string;
begin
   res_lec:=__chaine_carac;
   __chaine_carac:='';
end;

{la procedure de scrolling(le listing) des symboles (non) terminaux}
{==================================================================}
procedure lister_terminal(x_pos,y_pos,long,haut:integer;term:boolean);
var i:integer;
    st:string;
begin
   {vidage du tampon lecture}
   while keypressed do
      readkey;
   i:=4;
   setfillstyle(1,1);
   bar(x_pos,y_pos,x_pos+long,y_pos+haut);
   settextstyle(0,0,1);
   setcolor(14);
   positioner_ensemble(__Vpos,__Npos,term);
   masquer_souris;
   repeat
      st:=lecture_ensemble(term);
      if st<>'' then
         outtextxy(x_pos+5,y_pos+i,st);
      i:=i+12;
   until fin_ensemble(term) or(i+10>haut);
   afficher_souris;
end;

{insertion d'un (non)terminal avec mod‚fication de ses nombres}
{==================================================================}
procedure inserer_le(s:string;haut:integer;b:boolean);
var nb:integer;
begin
   nouv_terminal(s,__nbV,__nbN,b);
   nb:=(haut-4) div(12);
   if __nbN>nb then
      __Npos:=__nbN - nb;
   if __nbV>nb then
      __Vpos:=__nbV - nb;
end;

{la lecture d'une rŠgle}
{======================}
procedure lire_regle(haut:integer);
var num,x,y,bb,nb,sort:integer;
    term,nonterm:boolean;
    ss:string;
label fin_proc;
begin
   bb:=__btn_nul;
   nb:=(haut-14) div(12);
   if __nbR>nb then
   begin
      __Rpos:=__nbR-nb;
      lister_regle(120,160,470,haut);
      y:=165+(12*nb);
   end
   else
      y:=165+(12*__nbR);
   x:=124;
   sort:=0;
   nonterm:=false;
   while (bb<>__btn_droite)and(sort<>27)and(sort<>13) do
   begin
      bb:=souris_sur(num,4,term);
      nouv_bouton_souris(1);
      {scroll pour les non terminaux N}
      scrol_haut(120,70,120,70,1);
      scrol_bas(120,70,120,70,1);
      {scroll pour les terminaux V}
      scrol_haut(470,70,120,70,2);
      scrol_bas(470,70,120,70,2);
      settextstyle(0,0,1);
      if num<>-1 then
      begin
         if term then
            num:=num+__Vpos
         else
            num:=num+__Npos;
      end;
      if (bb=__btn_gauche) and (num<>-1)then
      begin
         if (term and (num<__nbV))or((not term) and (num<__nbN))then
         begin
            ss:=nouv_struct(0,num,term);
            if (not term) then
               nonterm:=true;

            if term then
               setcolor(14)
            else
               setcolor(12);
            outtextxy(x,y,ss);
            x:=x+8*length(ss)+8;
         end;
      end;
      if keypressed then
         sort:=ord(readkey);
      delay(24000);
   end;

   {s'il n'y a pas de non terminal … gauche on va … la fin}
   if (not nonterm)or(sort=27) then
   begin
      nouv_struct(4,0,true);{suppression de ce qu'on a fait(partie gauche)}
      setfillstyle(1,1);
      bar(124,y,275,y+10);
      goto fin_proc;
   end;

   sort:=0;
   bb:=__btn_nul;
   setcolor(15);
   masquer_souris;
   outtextxy(x,y,'===>');
   afficher_souris;
   x:=x+40;
   delay(10000);

   {vidage du tampon lecture}
   while keypressed do
      readkey;
   {la partie droite}
   while (bb<>__btn_droite)and(sort<>27)and(sort<>13) do
   begin
      bb:=souris_sur(num,4,term);
      nouv_bouton_souris(1);
      {scroll pour les non terminaux N}
      scrol_haut(120,70,120,70,1);
      scrol_bas(120,70,120,70,1);
      {scroll pour les terminaux V}
      scrol_haut(470,70,120,70,2);
      scrol_bas(470,70,120,70,2);
      settextstyle(0,0,1);
      if num<>-1 then
      begin
         if term then
            num:=num+__Vpos
         else
            num:=num+__Npos;
      end;
      if (bb=__btn_gauche) and (num<>-1)then
      begin
         if (term and (num<__nbV))or((not term) and (num<__nbN))then
         begin
            ss:=nouv_struct(1,num,term);
            nonterm:=false;
            if term then
               setcolor(14)
            else
               setcolor(12);
            outtextxy(x,y,ss);
            x:=x+8*length(ss)+8;
         end;
      end;
      if keypressed then
         sort:=ord(readkey);
      delay(25000);
   end;

   if sort<>27 then
   begin
      {s'il n'y a aucune symbole … droite,on le cons‚dŠre comme î}
      if nonterm then
      begin
         setcolor(15);
         outtextxy(x,y,'î');
         nouv_struct(2,0,true);
      end;
      {cr‚ation de la rŠgle}
      nouv_struct(3,0,true);{le 0 et true n'ont aucune signification ici}
      __nbR:=__nbR+1;
      __nouv_G:=true;{la grammaire a ‚t‚ modifier par ajout d'une rŠgle}
   end
   else
   begin
      nouv_struct(5,0,true);{suppression de ce qu'on a fait(les 2 parties)}
      setfillstyle(1,1);
      bar(124,y,275,y+10);
   end;
fin_proc:
end;

{le bouton haut du scroll }
procedure scrol_haut(x_pos,y_pos,long,haut,qui:integer);
begin

   if (not souris_scroll(x_pos+long,y_pos))and(__scroll_up=qui) then
   begin
      masquer_souris;
      setlinestyle(0,0,1);
      setcolor(4);
      setfillstyle(1,4);
      PieSlice(x_pos+long, y_pos+20, 0,90,20);
      {les directions de bouton}
      setcolor(0);
      settextstyle(0,0,2);
      outtextxy(x_pos+long+3, y_pos+5,'');
      afficher_souris;
      __up_clic:=false;
      __scroll_up:=0;
   end;

   if (souris_scroll(x_pos+long,y_pos))and(__scroll_up<>qui) then
   begin
      masquer_souris;
      setlinestyle(0,0,1);
      setcolor(0);
      setfillstyle(1,12);
      PieSlice(x_pos+long, y_pos+20, 0,90,20);
      {les directions de bouton}
      setcolor(14);
      settextstyle(0,0,2);
      outtextxy(x_pos+long+3, y_pos+5,'');
      afficher_souris;
      __up_clic:=true;
      __scroll_up:=qui;
   end;
   if (__synch=0)then
      if (__scroll_up=qui)and (__souris_btn=__btn_gauche)then
         case __scroll_up of
            1:if __Npos>0 then
              begin
                 __Npos:=__Npos-1;
                 lister_terminal(x_pos,y_pos,long,haut,false);
              end;
            2:if __Vpos>0 then
              begin
                 __Vpos:=__Vpos-1;
                 lister_terminal(x_pos,y_pos,long,haut,true);
              end;
            3:if __Rpos>0 then
              begin
                 __Rpos:=__Rpos-1;
                 lister_regle(x_pos,y_pos,long,haut);
              end;
         end;
end;

{le bouton bas du scroll }
procedure scrol_bas(x_pos,y_pos,long,haut,qui:integer);
var i,nb:integer;
begin
   i:=(haut-4)div 12;
   case __TypeR of
      0:nb:=__nbR;
      1:nb:=__nbFCT;
      2:nb:=__nbFNC;
      3:nb:=__nbFNG;
   end;
   if (not souris_scroll(x_pos+long,y_pos+haut-20))and(__scroll_down=qui) then
   begin
      masquer_souris;
      setlinestyle(0,0,1);
      setcolor(4);
      setfillstyle(1,4);
      PieSlice(x_pos+long, y_pos+haut-20, 270,360,20);
      {les directions des boutons}
      setcolor(0);
      settextstyle(0,0,2);
      outtextxy(x_pos+long+3, y_pos+haut-18,'');
      afficher_souris;
      __down_clic:=false;
      __scroll_down:=0;
   end;

   if (souris_scroll(x_pos+long,y_pos+haut-20))and(__scroll_down<>qui) then
   begin
      masquer_souris;
      setlinestyle(0,0,1);
      setcolor(0);
      setfillstyle(1,12);
      PieSlice(x_pos+long, y_pos+haut-20, 270,360,20);
      {les directions des boutons}
      setcolor(14);
      settextstyle(0,0,2);
      outtextxy(x_pos+long+3, y_pos+haut-18,'');
      afficher_souris;
      __down_clic:=true;
      __scroll_down:=qui;
   end;
   if (__synch=0)then
      if (__scroll_down=qui)and (__souris_btn=__btn_gauche)then
         case __scroll_down of
            1:if (__nbN-__Npos)>i then
              begin
                 __Npos:=__Npos+1;
                 lister_terminal(x_pos,y_pos,long,haut,false);
              end;
            2:if (__nbV-__Vpos)>i then
              begin
                 __Vpos:=__Vpos+1;
                 lister_terminal(x_pos,y_pos,long,haut,true);
              end;
            3:if (nb-__Rpos)>i then
              begin
                 __Rpos:=__Rpos+1;
                 lister_regle(x_pos,y_pos,long,haut);
              end;
         end;
end;

procedure lister_regle(x_pos,y_pos,long,haut:integer);
var x,y:integer;
    st:string;
    bo:boolean;
begin
   y:=4;
   setfillstyle(1,1);
   masquer_souris;
   bar(x_pos,y_pos,x_pos+long-5,y_pos+haut);
   settextstyle(0,0,1);
   setcolor(14);
   positioner_regle(__Rpos,__TypeR);
   while (not fin_lect_regle)and(y<haut-10)do
   begin
      x:=4;
      {affichage de la partie gauche}
      while not fin_lect_partie(true) do
      begin
         lecture_partie(true,st,bo);
         if bo then
            setcolor(14)
         else
            setcolor(12);
         outtextxy(x_pos+x,y_pos+y,st);
         x:=x+(8*length(st))+8;
      end;

      setcolor(15);
      outtextxy(x_pos+x,y_pos+y,'===>');
      x:=x+40;

      {affichage partie droite}
      while not fin_lect_partie(false) do
      begin
         lecture_partie(false,st,bo);
         if bo then
            setcolor(14)
         else
            setcolor(12);
         if st<>'' then
            outtextxy(x_pos+x,y_pos+y,st)
         else
         begin
            setcolor(15);
            outtextxy(x_pos+x,y_pos+y,'î');
         end;
         x:=x+(8*length(st))+8;
      end;
      y:=y+12;
      regle_suiv;
   end;
   afficher_souris;
end;

procedure nouv_bouton_souris(nb:integer);
begin
   if __synch<nb then
      __synch:=__synch+1
   else
      __synch:=0;
   __souris_btn:=souris_bouton;
end;

procedure de_type_2;
var P: Pointer;
    Size: Word;
    btn:boolean;
begin
   Size := ImageSize(230, 190, 440, 300);
   GetMem(P, Size);   { Allocate memory on heap }
   GetImage(230, 190, 440, 300, P^);
   setlinestyle(0,0,1);
   setfillstyle(1,0);
   masquer_souris;
   bar(230,190,430,290);
   bar(250,290,340,300);
   bar(330,200,340,300);
   setfillstyle(1,1);
   setcolor(15);
   line(250,230,360,230);
   line(360,230,390,200);
   line(390,200,440,200);
   line(440,200,440,300);
   line(440,300,250,300);
   line(250,300,250,230);
   line(250,270,240,260);
   line(240,260,240,210);
   line(240,210,380,210);
   {-----------le remplissage------------}
   setfillstyle(1,1);
   floodfill(260,220,15);
   setfillstyle(1,8);
   floodfill(420,220,15);
   setfillstyle(1,7);
   bar(255,235,435,295);
   fillellipse(420,217,13,13);
   setcolor(15);
   setfillstyle(1,10);
   bar(260,240,295,290);
   settextstyle(10,0,4);
   outtextxy(265,225,'K');
   setfillstyle(1,5);
   floodfill(270,250,15);
   {----Bouton "OK"----}
   settextstyle(7,0,1);
   setfillstyle(1,5);
   fillellipse(360,275,40,13);
   outtextxy(350,262,'OK');
   {--------OK---------}
   {---Bouton fermer---}
   setfillstyle(1,4);
   setcolor(0);
   fillellipse(420,217,10,10);
   setlinestyle(0,0,3);
   line(415,212,425,222);
   line(425,212,415,222);
   {-------fermer------}
   settextstyle(0,0,1);
   setcolor(15);
   outtextxy(254,214,'Type2 ?');
   setcolor(0);
   if __nbR=0 then
   begin
      outtextxy(300,240,'Elle n''existe pas');
      outtextxy(304,250,'de rŠgle ins‚r‚e');
   end
   else
   begin
      if laxiome(true)='' then
      begin
         outtextxy(300,240,'Il n''existe pas');
         outtextxy(314,250,'de l''axiome');
      end
      else
      begin
         if __G_type2 then
            outtextxy(335,240,'Elle est')
         else
            outtextxy(310,240,'Elle n''est pas');
         outtextxy(330,250,'de type 2');
      end;
   end;
   afficher_souris;
   btn:=false;
   while bouton_ok(btn) do;
   masquer_souris;
   PutImage(230, 190, P^, NormalPut);
   afficher_souris;
end;

procedure Affichage_de_fct;
begin
   if __TypeR<>1 then
   begin
      __TypeR:=1;
      __Rpos:=0;
      lister_regle(120,160,470,280);
   end;
end;

procedure Affichage_de_fnc;
begin
   if __TypeR<>2 then
   begin
      __TypeR:=2;
      __Rpos:=0;
      lister_regle(120,160,470,280);
   end;
end;

procedure Affichage_de_fng;
begin
   if __TypeR<>3 then
   begin
      __TypeR:=3;
      __Rpos:=0;
      lister_regle(120,160,470,280);
   end;
end;

procedure lecture_axiome;
var s:string;
    bb,num:integer;
    term,sort:boolean;
begin
   bb:=__btn_nul;
   sort:=false;
   if __nbN>0 then
   begin
      while not sort do
      begin
         bb:=souris_sur(num,4,term);
         nouv_bouton_souris(1);
         {scroll pour les non terminaux N}
         scrol_haut(120,70,120,70,1);
         scrol_bas(120,70,120,70,1);

         if bb=__btn_gauche then
            if (num<>-1) and (not term)then
            begin
               num:=num+__Npos;
               sort:=true;
            end;
         delay(24000);
      end;
      donne_axiome(s,num);
      setcolor(1);
      setfillstyle(1,4);
      bar(305,100,405,140);
      settextstyle(0,0,1);
      outtextxy(310,115,s);
   end;
end;

procedure barre_axiome;
begin
   masquer_souris;
   setfillstyle(1,5);
   bar(305,70,405,100);
   setfillstyle(1,4);
   bar(305,100,405,140);
   setcolor(14);
   settextstyle(0,0,2);
   outtextxy(310,75,'Axiome');
   afficher_souris;
end;

procedure initialisation;
label fin;
begin
   if (__nbV=0) and (__nbN=0) and (__nbR=0) then
      goto fin;
   __Vpos:=0;
   __Npos:=0;
   __Rpos:=0;
   __nbV:=0;
   __nbN:=0;
   __nbR:=0;
   __nbFCT:=0;
   __nbFNC:=0;
   __nbFNG:=0;

   __scroll_up:=0;
   __scroll_down:=0;
   __up_clic:=false;
   __down_clic:=false;
   __souris_btn:=0;
   __synch:=0;
   __TypeR:=0; {0:grammaire  1:avec fonction 2:fnc 3:fng}

   __nouv_G:=false;{si la grammaire a ‚t‚ chang‚e}
   __G_type2:=false;
   destruction;
   barre_texte(120,70,120,70,false);
   barre_texte(470,70,120,70,false);
   barre_axiome;
   barre_texte(120,160,470,280,true);
fin:
end;

begin{initialisation}
   __btn_actuel:=0;       { le bouton actuel  }
   __btn_prec:=0;         { le bouton pr‚c‚dent }
   __btn_clique:=0;       { le bouton qui a ‚t‚ cliqu‚}
   __a_executer:=false;   { le num‚ro du programme … ex‚cuter}

   __menu_actuel:=0;      {le bouton menu actuel }
   __menu_prec:=0;        {le bouton menu pr‚c‚dent}
   __btn_menu:=true;      { cliqu‚e?}

   __barre_actuel:=0;
   __barre_prec:=0;
   __barre_clique:=0;

   __Vpos:=0;
   __Npos:=0;
   __Rpos:=0;
   __nbV:=0;
   __nbN:=0;
   __nbR:=0;
   __nbFCT:=0;
   __nbFNC:=0;
   __nbFNG:=0;

   __scroll_up:=0;
   __scroll_down:=0;
   __up_clic:=false;
   __down_clic:=false;
   __souris_btn:=0;
   __synch:=0;
   __TypeR:=0; {0:grammaire  1:avec fonction 2:fnc 3:fng}

   __nouv_G:=false;{si la grammaire a ‚t‚ chang‚e}
   __G_type2:=false;
end.