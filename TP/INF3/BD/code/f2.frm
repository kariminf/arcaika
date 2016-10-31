VERSION 5.00
Object = "{0ECD9B60-23AA-11D0-B351-00A0C9055D8E}#6.0#0"; "MSHFLXGD.OCX"
Begin VB.Form f2 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "Gestion bédagogique des étudiants_3ième année génie informatique"
   ClientHeight    =   8490
   ClientLeft      =   15
   ClientTop       =   0
   ClientWidth     =   11880
   Icon            =   "f2.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   Moveable        =   0   'False
   Picture         =   "f2.frx":08CA
   ScaleHeight     =   566
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   792
   Begin VB.Frame aff 
      BackColor       =   &H80000013&
      Height          =   5535
      Left            =   840
      TabIndex        =   13
      Top             =   2280
      Visible         =   0   'False
      Width           =   10455
      Begin VB.CommandButton mod_et 
         Caption         =   "Modifier étudiant"
         Height          =   615
         Left            =   480
         TabIndex        =   30
         Top             =   4680
         Width           =   1815
      End
      Begin VB.CommandButton ins_note 
         Caption         =   "Mise à jour des notes"
         Height          =   615
         Left            =   3000
         TabIndex        =   29
         Top             =   4680
         Width           =   2055
      End
      Begin VB.CommandButton sup_et 
         Caption         =   "Supprimer"
         Height          =   615
         Left            =   5880
         TabIndex        =   28
         Top             =   4680
         Width           =   1695
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Terminer"
         Height          =   615
         Left            =   8280
         TabIndex        =   27
         Top             =   4680
         Width           =   1575
      End
      Begin MSHierarchicalFlexGridLib.MSHFlexGrid Grid 
         Height          =   2655
         Left            =   720
         TabIndex        =   15
         Top             =   960
         Width           =   8805
         _ExtentX        =   15531
         _ExtentY        =   4683
         _Version        =   393216
         BackColor       =   -2147483629
         Cols            =   5
         FixedCols       =   0
         BackColorFixed  =   -2147483631
         BackColorBkg    =   -2147483629
         BackColorUnpopulated=   16761087
         AllowBigSelection=   0   'False
         ScrollBars      =   2
         SelectionMode   =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty FontFixed {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         _NumberOfBands  =   1
         _Band(0).Cols   =   5
         _Band(0).GridLinesBand=   3
         _Band(0).TextStyleBand=   0
         _Band(0).TextStyleHeader=   1
      End
      Begin VB.Label adrs 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Height          =   375
         Left            =   2040
         TabIndex        =   17
         Top             =   3720
         Width           =   7500
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Adresse"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   720
         TabIndex        =   16
         Top             =   3720
         Width           =   1215
      End
      Begin VB.Label Affichage 
         BackStyle       =   0  'Transparent
         Caption         =   "Affichage des étudiants "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF00FF&
         Height          =   495
         Left            =   2760
         TabIndex        =   14
         Top             =   240
         Width           =   4815
      End
   End
   Begin VB.Frame cv 
      BackColor       =   &H80000013&
      Height          =   6615
      Left            =   720
      TabIndex        =   18
      Top             =   1560
      Visible         =   0   'False
      Width           =   10575
      Begin VB.CommandButton Command4 
         Caption         =   "Terminer"
         Height          =   615
         Left            =   3840
         TabIndex        =   31
         Top             =   5880
         Width           =   1935
      End
      Begin MSHierarchicalFlexGridLib.MSHFlexGrid grid_note 
         Height          =   2655
         Left            =   720
         TabIndex        =   21
         Top             =   3000
         Width           =   9015
         _ExtentX        =   15901
         _ExtentY        =   4683
         _Version        =   393216
         BackColor       =   -2147483629
         Cols            =   5
         FixedCols       =   0
         BackColorFixed  =   -2147483631
         BackColorBkg    =   -2147483629
         ScrollBars      =   2
         SelectionMode   =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty FontFixed {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         _NumberOfBands  =   1
         _Band(0).Cols   =   5
         _Band(0).GridLinesBand=   3
         _Band(0).TextStyleBand=   0
         _Band(0).TextStyleHeader=   0
      End
      Begin MSHierarchicalFlexGridLib.MSHFlexGrid grid_et 
         Height          =   2055
         Left            =   240
         TabIndex        =   20
         Top             =   840
         Width           =   7995
         _ExtentX        =   14102
         _ExtentY        =   3625
         _Version        =   393216
         BackColor       =   -2147483629
         Cols            =   3
         FixedCols       =   0
         BackColorFixed  =   -2147483631
         ForeColorSel    =   255
         BackColorBkg    =   -2147483629
         ScrollBars      =   2
         SelectionMode   =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty FontFixed {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         _NumberOfBands  =   1
         _Band(0).Cols   =   3
         _Band(0).GridLinesBand=   3
         _Band(0).TextStyleBand=   0
         _Band(0).TextStyleHeader=   0
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "La moyenne générale"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   8400
         TabIndex        =   24
         Top             =   840
         Width           =   2055
      End
      Begin VB.Label rep_e 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   8520
         TabIndex        =   23
         Top             =   2160
         Width           =   1815
      End
      Begin VB.Label moy_e 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   8520
         TabIndex        =   22
         Top             =   1200
         Width           =   1815
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "La délibération  "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF00FF&
         Height          =   495
         Left            =   4080
         TabIndex        =   19
         Top             =   240
         Width           =   2295
      End
   End
   Begin VB.Frame ins 
      BackColor       =   &H80000013&
      Height          =   4575
      Left            =   1320
      TabIndex        =   1
      Top             =   2520
      Visible         =   0   'False
      Width           =   9735
      Begin VB.CommandButton Command2 
         Caption         =   "Terminer"
         Height          =   615
         Left            =   6120
         TabIndex        =   26
         Top             =   3720
         Width           =   1815
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H80000013&
         Caption         =   "Insérer"
         Height          =   615
         Left            =   1920
         TabIndex        =   25
         Top             =   3720
         Width           =   1575
      End
      Begin VB.TextBox adr 
         Height          =   375
         Left            =   2160
         MaxLength       =   50
         TabIndex        =   12
         Top             =   3120
         Width           =   6615
      End
      Begin VB.TextBox age 
         Height          =   375
         Left            =   2160
         MaxLength       =   2
         TabIndex        =   11
         Top             =   2520
         Width           =   2895
      End
      Begin VB.TextBox pre 
         Height          =   375
         Left            =   2160
         MaxLength       =   20
         TabIndex        =   10
         Top             =   1920
         Width           =   2895
      End
      Begin VB.TextBox nom 
         Height          =   375
         Left            =   2160
         MaxLength       =   20
         TabIndex        =   9
         Top             =   1320
         Width           =   2895
      End
      Begin VB.TextBox num 
         Height          =   375
         Left            =   2160
         Locked          =   -1  'True
         MaxLength       =   5
         TabIndex        =   8
         Top             =   720
         Width           =   2895
      End
      Begin VB.Image Image2 
         Height          =   2235
         Left            =   5040
         Picture         =   "f2.frx":257BA
         Stretch         =   -1  'True
         Top             =   720
         Width           =   4575
      End
      Begin VB.Label l5 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Adresse d'étudiant"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   7
         Top             =   3120
         Width           =   1695
      End
      Begin VB.Label l4 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Age d'étudiant"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   6
         Top             =   2520
         Width           =   1695
      End
      Begin VB.Label l3 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Prénom d'étudiant"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   5
         Top             =   1920
         Width           =   1695
      End
      Begin VB.Label l2 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Nom d'étudiant"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   4
         Top             =   1320
         Width           =   1695
      End
      Begin VB.Label l1 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Numéro d'étudiant"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   3
         Top             =   720
         Width           =   1695
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Insertion des nouveaux étudiants"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF00FF&
         Height          =   495
         Left            =   1680
         TabIndex        =   2
         Top             =   240
         Width           =   5175
      End
   End
   Begin VB.Image icon0 
      Height          =   570
      Index           =   5
      Left            =   9000
      Picture         =   "f2.frx":779BA
      Stretch         =   -1  'True
      ToolTipText     =   "Sortir"
      Top             =   675
      Width           =   570
   End
   Begin VB.Image icon0 
      Height          =   570
      Index           =   4
      Left            =   7500
      Picture         =   "f2.frx":91D83
      Stretch         =   -1  'True
      ToolTipText     =   "A propos"
      Top             =   675
      Width           =   570
   End
   Begin VB.Image icon0 
      Height          =   570
      Index           =   3
      Left            =   6000
      Picture         =   "f2.frx":AC315
      Stretch         =   -1  'True
      ToolTipText     =   "Aide"
      Top             =   675
      Width           =   570
   End
   Begin VB.Image icon0 
      Height          =   570
      Index           =   2
      Left            =   4500
      Picture         =   "f2.frx":C27A4
      Stretch         =   -1  'True
      ToolTipText     =   "Délibération"
      Top             =   675
      Width           =   570
   End
   Begin VB.Image icon0 
      Height          =   570
      Index           =   1
      Left            =   3000
      Picture         =   "f2.frx":DFCFD
      Stretch         =   -1  'True
      ToolTipText     =   "Affichage"
      Top             =   675
      Width           =   570
   End
   Begin VB.Image icon0 
      Height          =   570
      Index           =   0
      Left            =   1500
      Picture         =   "f2.frx":FE2A2
      Stretch         =   -1  'True
      ToolTipText     =   "Insertion"
      Top             =   675
      Width           =   570
   End
   Begin VB.Image ic 
      Height          =   375
      Left            =   120
      Top             =   0
      Width           =   495
   End
   Begin VB.Label la0 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   300
      Left            =   720
      TabIndex        =   0
      Top             =   45
      Width           =   90
   End
   Begin VB.Image i1 
      Height          =   480
      Index           =   0
      Left            =   11400
      Picture         =   "f2.frx":1174F9
      Top             =   0
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image i0 
      Height          =   350
      Index           =   2
      Left            =   11160
      Picture         =   "f2.frx":117741
      Stretch         =   -1  'True
      Top             =   0
      Width           =   350
   End
   Begin VB.Image i0 
      Height          =   345
      Index           =   1
      Left            =   10800
      Picture         =   "f2.frx":1179A8
      Stretch         =   -1  'True
      Top             =   0
      Width           =   345
   End
   Begin VB.Image i1 
      Height          =   480
      Index           =   1
      Left            =   10680
      Picture         =   "f2.frx":117BD5
      Top             =   0
      Width           =   480
   End
   Begin VB.Image i0 
      Height          =   345
      Index           =   0
      Left            =   11520
      Picture         =   "f2.frx":117E02
      Stretch         =   -1  'True
      Top             =   0
      Width           =   345
   End
   Begin VB.Image menu 
      Height          =   1095
      Left            =   360
      Picture         =   "f2.frx":11804A
      Stretch         =   -1  'True
      Top             =   420
      Width           =   11175
   End
End
Attribute VB_Name = "f2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Integer
Dim ind As Integer
Dim lign As Integer
Dim bb, minimise As Boolean
'***************************************
'pour le son
Private Declare Function PlaySoundFile Lib "winmm.dll" Alias "PlaySoundA" (ByVal lpszName As String, ByVal hModule As Long, ByVal dwFlags As Long) As Long
Private Const SND_FILENAME = &H20000     '  name is a file name
Private Const SND_ASYNC = &H1
'***************************************
Const SC_SIZE = &HF000
Const MF_BYCOMMAND = 0
Private Declare Function GetSystemMenu Lib "user32" (ByVal hWnd As Long, ByVal bRevert As Long) As Long
Private Declare Function DeleteMenu Lib "user32" (ByVal hMenu As Long, ByVal nPosition As Long, ByVal wFlags As Long) As Long
Sub mod_etud(ByVal num As Integer, nome As String, pree As String, agee As String, adre As String)
'lancer la boite de dialogue qui fait
'la modification des étudiants
rech_etudiat num
'cette fonction cherche les informations
'de l'étudiant à modifier

With rs
f3.num0.Text = !NUM_E
f3.nom0.Text = !NOM_E
f3.pre0.Text = !PRE_E
f3.age0.Text = !AGE_E
f3.adr0.Text = !ADR_E
End With

f3.Show 1
rech_etudiat num

With rs
nome = !NOM_E
pree = !PRE_E
agee = !AGE_E
adre = !ADR_E
End With

End Sub
Sub en_sort()
deselection
litle
End Sub
Sub litle()
If minimise Then
minimise = False
icon0(ind).Width = 38
icon0(ind).Height = 38
icon0(ind).Top = 45
icon0(ind).Left = 100 + (100 * ind)
End If
End Sub
Function Donner_New_Num() As Integer
Dim u As Integer
Dim max As Integer
u = 0
num_etudiant
If rs.EOF Then GoTo ilya
With rs
.MoveLast
max = !NUM_E
.MoveFirst
While u < max

While Not rs.EOF
If u = !NUM_E Then GoTo autre
.MoveNext
Wend
.Close
GoTo ilya

autre:
u = u + 1
.MoveFirst
Wend
.Close
End With
u = u + 1
ilya:
Donner_New_Num = u
End Function
Sub selection(k As Integer)
For i = 0 To 1
i1(i).Visible = False
i0(i).Visible = True
Next
If k <> 2 Then
i0(k).Visible = False
i1(k).Visible = True
End If
End Sub
Sub init_grid()

Grid.ColWidth(0) = 800
Grid.ColWidth(1) = 3400
Grid.ColWidth(2) = 3400
Grid.ColWidth(3) = 800
Grid.ColWidth(4) = 0
'*****************************
Grid.Row = 0
Grid.Clip = "N°"
Grid.Col = 1
Grid.Clip = "Nom"
Grid.Col = 2
Grid.Clip = "Prénom"
Grid.Col = 3
Grid.Clip = "Age"
End Sub
Sub init_affich_general()

grid_et.Rows = 2
grid_et.Refresh

grid_et.ColWidth(0) = 800
grid_et.ColWidth(1) = 3400
grid_et.ColWidth(2) = 3400

grid_et.Row = 0
grid_et.Clip = "N°"
grid_et.Col = 1
grid_et.Clip = "Nom"
grid_et.Col = 2
grid_et.Clip = "Prénom"

aff_etudiant2
'*****************************
If Not rs.EOF Then
ii = 1
With rs

.MoveFirst

While Not .EOF

grid_et.Row = ii
grid_et.Col = 0
grid_et.Clip = !NUM_E
grid_et.Col = 1
grid_et.Clip = !NOM_E
grid_et.Col = 2
grid_et.Clip = !PRE_E

.MoveNext
If Not .EOF Then
grid_et.AddItem !NUM_E
End If
ii = ii + 1
Wend
.Close
End With
grid_et.Row = 1
lign = 1
deliberer
cv.Visible = True
Else
MsgBox "Pas d'étudiant participé dans les éxamens!", vbInformation + vbOKOnly, "VIDE"
End If
End Sub
Sub deliberer()

Dim moy_g As Double
moy_g = 0
'*****************************
grid_note.Rows = 2
grid_note.Refresh
'************************************
grid_note.ColWidth(0) = 3400
grid_note.ColWidth(1) = 1300
grid_note.ColWidth(2) = 1300
grid_note.ColWidth(3) = 1300
grid_note.ColWidth(4) = 1300
'************************************
grid_note.Row = 0
grid_note.Clip = "Nom de module"
grid_note.Col = 1
grid_note.Clip = "Tp"
grid_note.Col = 2
grid_note.Clip = "Controle1"
grid_note.Col = 3
grid_note.Clip = "Controle2"
grid_note.Col = 4
grid_note.Clip = "Moyen"

etud_a_note Int(Val(grid_et.TextMatrix(grid_et.Row, 0)))
'*****************************
ii = 1
With rs

.MoveFirst

While Not .EOF

grid_note.Row = ii

grid_note.Col = 0
grid_note.Clip = !NOM_M
grid_note.Col = 1
grid_note.Clip = !tp
grid_note.Col = 2
grid_note.Clip = !ctrl1
grid_note.Col = 3
grid_note.Clip = !ctrl2
grid_note.Col = 4
grid_note.Clip = Round(!MOY, 2)
moy_g = moy_g + Round(!MOY, 2) * !COE_M
.MoveNext
If Not .EOF Then
grid_note.AddItem !NOM_M
End If
ii = ii + 1
Wend
.Close
End With
moy_g = Round(moy_g / 27, 2)
moy_e.Caption = moy_g
If moy_g >= 10 Then
rep_e.Caption = "Admis"
Else
rep_e.Caption = "Ajourné"
End If
End Sub
Sub Affichage_etudiant()

'*****************************
Grid.Rows = 2
Grid.Refresh
init_grid
aff_etudiant
'*****************************
If Not rs.EOF Then
ii = 1
With rs

.MoveFirst

While Not .EOF

Grid.Row = ii
Grid.Col = 0
Grid.Clip = !NUM_E
Grid.Col = 1
Grid.Clip = !NOM_E
Grid.Col = 2
Grid.Clip = !PRE_E
Grid.Col = 3
Grid.Clip = !AGE_E
Grid.Col = 4
Grid.Clip = !ADR_E
.MoveNext
If Not .EOF Then
Grid.AddItem !NUM_E
End If
ii = ii + 1
Wend
.Close
End With
aff.Visible = True
Else
MsgBox "Aucun étudiant est enrégistré", vbInformation + vbOKOnly, "VIDE"
End If

End Sub
Sub deselection()
For i = 0 To 1
i1(i).Visible = False
i0(i).Visible = True
Next
End Sub

Private Sub aff_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
litle
End Sub

Private Sub Command1_Click()
ins_etudiant Int(Val(num.Text)), nom.Text, pre.Text, Int(Val(age.Text)), adr.Text
num.Text = Donner_New_Num()
nom.Text = ""
pre.Text = ""
age.Text = ""
adr.Text = ""
End Sub

Private Sub Command2_Click()
ins.Visible = False
End Sub

Private Sub Command3_Click()
aff.Visible = False
End Sub

Private Sub Command4_Click()
cv.Visible = False
End Sub

Private Sub cv_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
litle
End Sub

Private Sub Form_Load()
Set db = OpenDatabase(App.Path & "\univ.mdb")
la0.Caption = f2.Caption
ic.Picture = f2.Icon

'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Dim hMenu As Long
hMenu = GetSystemMenu(Me.hWnd, 0)                   'Récupère le handle du menu système de la feuille
Call DeleteMenu(hMenu, SC_SIZE, MF_BYCOMMAND)
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Dim rg As Long
Dim X2 As Long
Dim Y2 As Long
Dim rg2 As Long
minimise = False
ind = -1
f2.Width = 13000
X2 = Me.ScaleWidth
Y2 = Me.ScaleHeight
rg = CreateRectRgn(0, 30, X2, Y2 + 35)
SetWindowRgn Me.hWnd, rg, False
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
deselection
litle
End Sub
Private Sub Form_Unload(Cancel As Integer)
en_sort
f2.WindowState = 0
Cancel = 1
'Lancer la boite de dialogue qui valide
'la demande de sortir
ok = False
f1.Show 1
If ok Then
db.Close
Cancel = 0
End If
If Cancel = 0 Then
End
End If
End Sub

Private Sub Grid_EnterCell()
adrs.Caption = Grid.TextMatrix(Grid.Row, 4)
End Sub

Private Sub grid_et_EnterCell()
If grid_et.Row <> lign Then
deliberer
lign = grid_et.Row
End If
End Sub

Private Sub i0_MouseMove(index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
selection (index)
End Sub
Private Sub i1_MouseDown(index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
i0(index).Visible = True
i1(index).Visible = False
Select Case index
Case 0:
Form_Unload (1)
Case 1:
f2.WindowState = 1
End Select
End If
End Sub
Private Sub icon0_MouseDown(index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)

If Button = 1 Then
' Ne fonctionne qu'avec le programme compilé
PlaySoundFile "START.wav", App.hInstance, SND_FILENAME + SND_ASYNC

Select Case index

Case 0:
If Not ins.Visible Then
aff.Visible = False
cv.Visible = False
num.Text = Donner_New_Num()
ins.Visible = True
End If

Case 1:
If Not aff.Visible Then
ins.Visible = False
cv.Visible = False
Affichage_etudiant

End If

Case 2:
If Not cv.Visible Then
ins.Visible = False
aff.Visible = False
init_affich_general
End If

Case 3:
litle
Shell App.Path + "\aide\help.exe", vbNormalFocus

Case 4:
litle
about.Show 1

Case 5:
Form_Unload (1)

End Select

End If
End Sub

Private Sub icon0_MouseMove(index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
If icon0(index).Width <> 68 And icon0(index).Height <> 80 Then
' Ne fonctionne qu'avec le programme compilé
PlaySoundFile "STRIT.wav", App.hInstance, SND_FILENAME + SND_ASYNC
For i = 0 To 5
If icon0(i).Width = 68 Then
icon0(i).Width = 38
icon0(i).Height = 38
icon0(i).Top = 45
icon0(i).Left = 100 + (100 * i)
End If
Next
ind = index
icon0(index).Top = 30
icon0(index).Left = 85 + (100 * index)
icon0(index).Width = 68
icon0(index).Height = 68
minimise = True
End If

End Sub

Private Sub ins_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
litle
End Sub

Private Sub ins_note_Click()
numero = Val(Grid.TextMatrix(Grid.Row, 0))
f4.nom.Text = Grid.TextMatrix(Grid.Row, 1)
f4.prenom.Text = Grid.TextMatrix(Grid.Row, 2)
f4.Show 1
End Sub
Private Sub menu_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
deselection
litle
End Sub

Private Sub mod_et_Click()
Dim nb As Integer
Dim s1 As String
Dim s2 As String
Dim s3 As String
Dim s4 As String
nb = Val(Grid.TextMatrix(Grid.Row, 0))
mod_etud nb, s1, s2, s3, s4
Grid.TextMatrix(Grid.Row, 1) = s1
Grid.TextMatrix(Grid.Row, 2) = s2
Grid.TextMatrix(Grid.Row, 3) = s3
Grid.TextMatrix(Grid.Row, 4) = s4
adrs.Caption = s4
End Sub

Private Sub sup_et_Click()
Dim rep As Integer
Dim nbr_e As Integer
nbr_e = Grid.Rows
rep = MsgBox("voulez vous Supprimer? " + Chr(13) + Grid.TextMatrix(Grid.Row, 1) + Chr(13) + Grid.TextMatrix(Grid.Row, 2), vbQuestion + vbYesNo, "Suppression")
If rep = vbYes Then
sup_etudiant Int(Val(Grid.TextMatrix(Grid.Row, 0)))
Affichage_etudiant
MsgBox "Il a été supprimé", vbOKOnly + vbInformation, "INFORMATION"
If nbr_e = 2 Then
aff.Visible = False
End If
End If

End Sub

