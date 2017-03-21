program Mon_algo;
uses k_graph,crt;
var
x:integer;
begin
   init_graph;
   barre_window;
   barre_texte(30,100,570,360,false);

   while (barre_execute)do
   begin

      nouv_bouton_souris(10000);
      souris_sur_barre;
      souris_hors_barre;
      barre_clique(__btn_gauche);
      editer(30,100);
      {if bouton_execute(x) then
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

      end;}
   end;
{***************************************************************}
fin_graph;
end.