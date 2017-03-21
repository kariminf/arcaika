Attribute VB_Name = "m1"
'//////////////////////////////////////////////////////////////
'//                       INTRODUCTION                       //
'//////////////////////////////////////////////////////////////
Global bn As Integer


'   Salut,
' Apparemment tu voudrais un peut d'aide pour faire des feuilles
' non-rectangulaires ...

'Voilà :

'Pour faire des fenêtres non-rectangulaire, on doit d'abord
'créer une Région : c'est comme une sorte de dessin à deux
'couleurs (plein ou vide) que l'on va ensuite appliquer à une
'fenêtre.

'Les zones de la fenêtre correspondant à le couleur "plein"
'seront visibles.
'Celles correspondant à la couleur "vide" seront invisibles.

'Les zones crée sont identifiées grace à leur Handle. Il sagit
'd'un numéro unique attribué pour identifier tous les objets :
'Boutons, Fenêtres, Régions, TextBox, etc.

'Note : Pour utiliser ces fonctions, il te suffira de rajouter
'ce module à ton projet.

'//////////////////////////////////////////////////////////////
'//                    CREER DES REGIONS                     //
'//////////////////////////////////////////////////////////////

' Pour Créer des régions il faut utiliser une des fonctions
' suivante :
'(Les coordonnée des points sont exprimées en pixels)


'CREER DES RECTANGLES
'Pour créer un région en forme de rectangle :
 Declare Function CreateRectRgn Lib "gdi32" ( _
ByVal X1 As Long, _
ByVal Y1 As Long, _
ByVal X2 As Long, _
ByVal Y2 As Long) _
As Long
'X1 et Y1 indiquent les coordonnées du coin supérieur droit
'X2 et Y2 indiquent les coordonnées du coin inférieur gauche
'Cette fonction revoie le Handle de la région crée


'CREER DES ELLIPSES
'Pour créer une région en forme d'ellipse :

Declare Function CreateEllipticRgn Lib "gdi32" ( _
ByVal X1 As Long, _
ByVal Y1 As Long, _
ByVal X2 As Long, _
ByVal Y2 As Long) _
As Long
'Cette fonction crée une ellipse qui rentre dans le rectangle
'formée avec les coordonées X1, X2, Y1, Y2
'Cette fonction revoie le Handle de la région crée


'CREER DES POLYGONES
'Pour créer une région ayant la forme d'un polygone
Declare Function CreatePolygonRgn Lib "gdi32" ( _
lpPoint As POINTAPI, _
ByVal nCount As Long, _
ByVal nPolyFillMode As Long _
) As Long

'lpPoint est un tableau désignant les coins du polygone
'Il est de type POINTAPI :
Type POINTAPI
        X As Long
        Y As Long
End Type

'nCount désigne le nombre de coins du polygone.

'nPolyFillMode désigne le mode de remplissage.
'tu peux utiliser les constantes suivantes
Public Const ALTERNATE = 1
Public Const WINDING = 2
'J'avoue que je ne comprend pas la différence entre les deux,
'Tu peut mettre 1, ça marche bien.



'//////////////////////////////////////////////////////////////
'//                  COMBINER DES REGIONS                    //
'//////////////////////////////////////////////////////////////


'Maintenant que nous pouvons créer des régions, voici comment
'les combiner pour créer des régions complexes.

'Il faut utiliser la fonction :

Declare Function CombineRgn Lib "gdi32" ( _
ByVal hDestRgn As Long, _
ByVal hSrcRgn1 As Long, _
ByVal hSrcRgn2 As Long, _
ByVal nCombineMode As CombineMode _
) As Long

'hDestRgn désigne le Handle de la région de destination.
'/--------------------------------------------------------\
'|ATTENTION : POUR QUE CELA FONCTIONNE, IL FAUT ABSOLUMENT|
'|QUE LA REGION SOIT DEJA INITIALISEE A L'AIDE D'UNE DES  |
'|FONCTIONS VUE CI-DESSUS.                                |
'\--------------------------------------------------------/

'hSrcRgn1 désigne le Handle de la première Région à combiner
'hSrcRgn2 désigne le Handle de la deuxième Région à combiner

'nCombineMode désigne le mode utilisé pour la Combinaison
'Tu peux utiliser une des constantes suivante :

Public Enum CombineMode
    RGN_AND = 1  ' Créé l'intersection des deux
                 'régions
    RGN_COPY = 5 ' Copie la Région1
    RGN_DIFF = 4 ' Combine les parties de Région1
                 'qui ne font pas partie de région2
    RGN_OR = 2   ' Créé l'union des deux régions
    RGN_XOR = 3  ' Créé l'union des deux régions à
                 'laquelle on enleve l'intersection
                 'des dex régions
End Enum



'//////////////////////////////////////////////////////////////
'//                  APPLIQUER DES REGIONS                   //
'//////////////////////////////////////////////////////////////

'Pour appliquer une région à une fenêtre, on utilise la
'fonction suivante :

Declare Function SetWindowRgn Lib "user32" ( _
ByVal hWnd As Long, _
ByVal hRgn As Long, _
ByVal bRedraw As Boolean _
) As Long

'hWnd indique le Handle de la fenêtre à laquelle on veut
'appliquer la région.

'hRgn indique le Handle de la région à appliquer.

'bRedraw indique s'il faut redessiner la fenêtre.
         'Mettre True si la fenêtre est visible
         'On peut mettre False si elle est cachée.

'Note : On peut utiliser cette fonction avec le handle d'un
'contrôle au lieu de celui d'une Fenêtre



'//////////////////////////////////////////////////////////////
'//                  SUPPRIMER DES REGIONS                   //
'//////////////////////////////////////////////////////////////

'Une fois que l'on a plus besoin d'une région, il faut la
'supprimer pour libérer de la mémoire.

'Pour cela, on peut utiliser la fonction :

Declare Function DeleteObject Lib "gdi32" ( _
ByVal hObject As Long _
) As Long

'hObject désigne le Handle de la région à supprimer.

'ATTENTION  : NE PAS SUPPRIMER UNE REGION QUI EST APPLIQUEE
'A UNE FENETRE. CELA AURAIT POUR EFFET DE LAISSER LA FENETRE
'IMPRIMEE SUR LE BUREAU (CA FAIT PAS BEAU)





'Voilà, maintenant si vous arrivez à faire des feuilles jolie
'N'hésitez pas à m'envoyer une copie du code source à

'Detoux@club-internet.fr
