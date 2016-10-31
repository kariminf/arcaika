program Ma_gram;
uses k_graph;
var
x:integer;
begin
   init_graph;
   barre_window;
   barre_texte(120,70,120,70,false);
   barre_texte(470,70,120,70,false);
   barre_axiome;
   barre_texte(120,160,470,280,true);
   barre_menu;
   while barre_execute do
   begin
      nouv_bouton_souris(10000);
      souris_sur_menu;
      souris_hors_menu;
      menu_clique(__btn_gauche);
      souris_sur_bouton;
      souris_hors_bouton;
      bouton_clique(__btn_gauche);
      souris_sur_barre;
      souris_hors_barre;
      barre_clique(__btn_gauche);
      {scroll pour les non terminaux N}
      scrol_haut(120,70,120,70,1);
      scrol_bas(120,70,120,70,1);
      {scroll pour les terminaux V}
      scrol_haut(470,70,120,70,2);
      scrol_bas(470,70,120,70,2);
      {scroll pour les regles}
      scrol_haut(120,160,470,280,3);
      scrol_bas(120,160,470,280,3);

      if bouton_execute(x) then
      begin
         case x of
            1:begin
                 lire_terminal(true);
                 inserer_le(res_lec,70,true);
                 lister_terminal(470,70,120,70,true);
                 fin_execute;
              end;
            2:begin
                 lire_terminal(false);
                 inserer_le(res_lec,70,false);
                 lister_terminal(120,70,120,70,false);
                 fin_execute;
              end;
            3:begin
                 lecture_axiome;
                 fin_execute;
              end;
            4:begin
                 lire_regle(280);
                 fin_execute;
              end;
            5:begin
                 de_type_2;
                 fin_execute;
              end;
            6:Affichage_de_fct;
            7:Affichage_de_fnc;
            8:Affichage_de_fng;
            9:begin
                 initialisation;
                 fin_execute;
              end;
         end;

      end;
   end;
{***************************************************************}
fin_graph;
end.