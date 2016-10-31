VERSION 5.00
Begin VB.Form f1 
   Caption         =   "Simlexe"
   ClientHeight    =   2820
   ClientLeft      =   3000
   ClientTop       =   2460
   ClientWidth     =   6105
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2820
   ScaleWidth      =   6105
   Begin VB.ListBox List1 
      Height          =   1620
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   1935
   End
   Begin VB.ListBox List2 
      Height          =   1620
      Left            =   2520
      TabIndex        =   1
      Top             =   120
      Width           =   3135
   End
   Begin VB.Label Label1 
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   2040
      Width           =   2175
   End
   Begin VB.Menu insert 
      Caption         =   "&Insertion"
   End
   Begin VB.Menu done 
      Caption         =   "&Exécution"
      Enabled         =   0   'False
   End
   Begin VB.Menu about 
      Caption         =   "&A propos"
   End
End
Attribute VB_Name = "f1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Const SC_SIZE = &HF000
Const MF_BYCOMMAND = 0
Private Declare Function GetSystemMenu Lib "user32" (ByVal hWnd As Long, ByVal bRevert As Long) As Long
Private Declare Function DeleteMenu Lib "user32" (ByVal hMenu As Long, ByVal nPosition As Long, ByVal wFlags As Long) As Long

Private Sub about_Click()
f3.Show 1
End Sub

Private Sub done_Click()
Dim BB As Boolean
Dim ii As Integer
Dim tb(10) As Double
done.Enabled = False
Z = 0
frm_canon
BB = Dual_Simplexe()
Z = -Z
BB = Primal_Simplexe()
List1.Clear

Z = -Z
Label1.Caption = "z= " & Z
For ii = 0 To nbr_contrainte
tb(ii) = 0
Next
For ii = 0 To nbr_contrainte
tb(I(ii)) = B(ii)
Next
For ii = 0 To nbr_variable
List1.AddItem "x" & ii & "= " & tb(ii)
Next
End Sub
Private Sub Form_Load()
'nbr_contrainte = 1
'nbr_variable = 1
'B(0) = 160
'B(1) = 120
'a(0, 0) = 5
'a(0, 1) = 2
'a(1, 0) = 3
'a(1, 1) = 2

'C(0) = 400
'C(1) = 180

'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Dim hMenu As Long
hMenu = GetSystemMenu(Me.hWnd, 0)                   'Récupère le handle du menu système de la feuille
Call DeleteMenu(hMenu, SC_SIZE, MF_BYCOMMAND)
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
End Sub

Private Sub insert_Click()
f2.Show 1
End Sub

