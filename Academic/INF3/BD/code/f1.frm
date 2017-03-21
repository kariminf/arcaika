VERSION 5.00
Begin VB.Form f1 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   2250
   ClientLeft      =   3135
   ClientTop       =   2550
   ClientWidth     =   4905
   LinkTopic       =   "Form1"
   ScaleHeight     =   150
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   327
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton c2 
      Caption         =   "Oui"
      Height          =   375
      Left            =   1440
      TabIndex        =   1
      Top             =   1440
      Width           =   975
   End
   Begin VB.CommandButton c1 
      Caption         =   "Non"
      Height          =   375
      Left            =   2760
      TabIndex        =   0
      Top             =   1440
      Width           =   975
   End
   Begin VB.Image Image1 
      Height          =   375
      Left            =   3600
      Picture         =   "f1.frx":0000
      Stretch         =   -1  'True
      Top             =   120
      Width           =   375
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Question"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   330
      Left            =   840
      TabIndex        =   3
      Top             =   120
      Width           =   1095
   End
   Begin VB.Image Image3 
      Height          =   540
      Left            =   120
      Picture         =   "f1.frx":02A3
      Stretch         =   -1  'True
      Top             =   0
      Width           =   4695
   End
   Begin VB.Image Image2 
      Height          =   960
      Left            =   360
      Picture         =   "f1.frx":1AEC
      Top             =   600
      Width           =   960
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Voulez-vous sortir ?"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   315
      Left            =   1680
      TabIndex        =   2
      Top             =   840
      Width           =   2265
   End
   Begin VB.Image i1 
      Height          =   2250
      Left            =   0
      Picture         =   "f1.frx":3136
      Stretch         =   -1  'True
      Top             =   0
      Width           =   4905
   End
End
Attribute VB_Name = "f1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function PlaySoundFile Lib "winmm.dll" Alias "PlaySoundA" (ByVal lpszName As String, ByVal hModule As Long, ByVal dwFlags As Long) As Long
Private Const SND_FILENAME = &H20000     '  name is a file name
Private Const SND_ASYNC = &H1
Private Sub C1_Click()
Unload Me
End Sub
Private Sub C2_Click()
ok = True
Unload Me
End Sub
Private Sub Form_Load()
Dim rg As Long
Dim rg1 As Long
Dim rg3 As Long
Dim X2 As Long
Dim Y2 As Long
Dim rg2 As Long
X2 = Me.ScaleWidth
Y2 = Me.ScaleHeight
rg1 = CreateEllipticRgn(5, 0, X2 / 2, Y2)
rg2 = CreateRectRgn(X2 / 4, 0, 3 * X2 / 4, Y2)
rg3 = CreateRectRgn(0, 0, X2, Y2)
CombineRgn rg3, rg1, rg2, RGN_OR
rg1 = CreateEllipticRgn(X2 / 2, 0, X2, Y2)
rg = CreateRectRgn(0, 0, X2, Y2)
CombineRgn rg, rg1, rg3, RGN_OR
SetWindowRgn Me.hWnd, rg, False
DeleteObject rg1
DeleteObject rg2
DeleteObject rg3
' Ne fonctionne qu'avec le programme compilé
PlaySoundFile "k.wav", App.hInstance, SND_FILENAME + SND_ASYNC
End Sub

