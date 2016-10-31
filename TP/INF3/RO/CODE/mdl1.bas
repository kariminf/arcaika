Attribute VB_Name = "mdl1"
Global nbr_contrainte As Integer
Global nbr_variable As Integer
Global I(9) As Integer
Global B(9) As Double
Global a(9, 9) As Double
Global C(9) As Double
Global Z As Double
Sub frm_canon()

Dim countI As Integer
Dim countJ As Integer

'ajouter les variables d'écart
For countI = 0 To nbr_contrainte
For countJ = nbr_variable + 1 To nbr_contrainte + nbr_variable + 1

If countI + nbr_variable + 1 = countJ Then
a(countI, countJ) = 1
Else
a(countI, countJ) = 0
End If

Next
Next
'mise à jour du vecteur coùt
For countJ = nbr_variable + 1 To nbr_variable + nbr_contrainte + 1
C(countJ) = 0
Next
'mise à jour de vecteur de base
For countI = 0 To nbr_contrainte
I(countI) = countI + nbr_variable + 1
Next
End Sub
Function Dual_Simplexe() As Boolean

Dim countI As Integer
Dim countJ As Integer
Dim S_min As Integer
Dim bool As Boolean
Dim R_min As Integer
Dim min As Double

'bool pour dire qu'on peut contigner avec
'le primal simlexe
bool = True
'Rendre B>=0
lab2:
S_min = 0
'calculer S_min = min{B(i)}
For countI = 0 To nbr_contrainte
If B(countI) < B(S_min) Then
S_min = countI
End If
Next

'si B(S_min) >= 0 on sortant vers le primal simlexe
If B(S_min) >= 0 Then GoTo lab3


'examiner la ligne s (S_min)
countJ = 0
bool = False
'pour chercher si un A(s,j)<0 au moin
'pour ne pas sortir avec false
'Ici false signifie qu'il n'ya pas de solution
R_min = 0
While countJ <= nbr_variable + nbr_contrainte + 1 And Not bool
If (a(S_min, countJ) < 0 And C(countJ) < 0) Then
R_min = countJ
bool = True
Else
countJ = countJ + 1
End If
Wend

'S'il n'a pas de A(s,i)<0 donc pas de solution
If bool = False Then GoTo lab3

'Sinon on continue l'algorithme de dual

'R_min=min{C(j):A(s,j) /A(s,j)<0 et C(j)<0

min = C(R_min) / a(S_min, R_min)
countI = R_min
'chercher le min
For countJ = countI To nbr_variable + nbr_contrainte + 1
If C(countJ) < 0 And a(S_min, countJ) < 0 Then
If C(countJ) / a(S_min, countJ) < min Then
R_min = countJ
min = C(countJ) / a(S_min, countJ)
End If
End If
Next

'************pivotage*******************
'************pivotage*******************
'************pivotage*******************
'************sur C
For countJ = 0 To nbr_variable + nbr_contrainte + 1
C(countJ) = C(countJ) - (a(S_min, countJ) * min)
Next
C(R_min) = 0
Z = Z - (B(S_min) * min)
'************sur B et A
For countI = 0 To nbr_contrainte
If (countI <> S_min) Then
min = a(countI, R_min) / a(S_min, R_min)
B(countI) = B(countI) - (B(S_min) * min)
For countJ = 0 To nbr_variable + nbr_contrainte - 1
a(countI, countJ) = a(countI, countJ) - (a(S_min, countJ) * min)
Next
End If
Next
'************la ligne de pivot sur B
B(S_min) = B(S_min) / a(S_min, R_min)
'la ligne de pivot sera divisee sur le pivot
For countJ = 0 To nbr_variable + nbr_contrainte + 1
If countJ <> R_min Then
a(S_min, countJ) = a(S_min, countJ) / a(S_min, R_min)
End If
Next
a(S_min, R_min) = 1
'determiner la nouvelle base
I(S_min) = R_min
'**********fin pivotage*****************
'**********fin pivotage*****************
'**********fin pivotage*****************
GoTo lab2
'fin de dual simlexe
lab3:
Dual_Simplexe = bool
End Function
Function Primal_Simplexe() As Boolean
Dim countI As Integer
Dim countJ As Integer
Dim S_max As Integer
Dim bool As Boolean
Dim R_min As Integer
Dim min As Double

'Initialement on dit que la solution existe
bool = True

etiq2:
'determiner C(s_max)=max(C(j)/C) not in I
S_max = 0
For countJ = 1 To nbr_variable + nbr_contrainte + 1
If (C(S_max) < C(countJ)) Then
S_max = countJ
End If
Next
'verification si la solution est atteinte
If C(S_max) <= 0 Then GoTo etiq3
'Sinon on continue l'algorithme

'examiner la colonne S_max
countI = 0
bool = False
'pour chercher si un A(i,s)>0 au moin
'pour ne pas sortir avec false
'Ici false signifie qu'il n'ya pas de solution
R_min = 0

While countI <= nbr_contrainte And Not bool
If a(countI, S_max) > 0 Then
R_min = countI
bool = True
Else
countI = countI + 1
End If
Wend

'S'il n y'a pas de A(i,r)>0 donc pas de solution
'===> solution non bornée
If bool = False Then GoTo etiq3
'Sinon on continue l'algorithme de dual

'R_min=min{B(i):A(i,s) /A(i,s)>0
min = B(S_max) / a(R_min, S_max)
countJ = R_min
'chercher le min
For countI = countJ + 1 To nbr_contrainte
If a(countI, S_max) > 0 Then
If B(countI) / a(countI, S_max) < min Then
R_min = countI
min = B(countI) / a(countI, S_max)
End If
End If
Next
'************pivotage*******************
'************pivotage*******************
'************pivotage*******************
'*****************sur C
min = C(S_max) / a(R_min, S_max)

For countJ = 0 To nbr_variable + nbr_contrainte + 1
C(countJ) = C(countJ) - (a(R_min, countJ) * min)
Next
C(S_max) = 0
Z = Z - (B(R_min) * min)

'************sur B et A
For countI = 0 To nbr_contrainte
If (countI <> R_min) Then
min = a(countI, S_max) / a(R_min, S_max)
B(countI) = B(countI) - (B(R_min) * min)
For countJ = 0 To nbr_variable + nbr_contrainte + 1
a(countI, countJ) = a(countI, countJ) - (a(R_min, countJ) * min)
Next
End If
Next
'*****************************************
For countI = 0 To nbr_contrainte
If countI <> R_min Then
a(countI, S_max) = 0
End If
Next
'***la ligne de pivot sur B
B(R_min) = B(R_min) / a(R_min, S_max)
'la ligne de pivot sera divisee sur le pivot
For countJ = 0 To nbr_variable + nbr_contrainte + 1
If countJ <> S_max Then
a(R_min, countJ) = a(R_min, countJ) / a(R_min, S_max)
End If
Next
a(R_min, S_max) = 1
'determiner la nouvelle base
I(R_min) = S_max
'**********fin pivotage***************
'**********fin pivotage***************
'**********fin pivotage***************
GoTo etiq2
etiq3:
Primal_Simplexe = bool
End Function

