VERSION 5.00
Begin VB.Form ac 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   4290
   ClientLeft      =   2445
   ClientTop       =   2190
   ClientWidth     =   6960
   LinkTopic       =   "Form1"
   Picture         =   "ac.frx":0000
   ScaleHeight     =   4290
   ScaleWidth      =   6960
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Timer1 
      Interval        =   80
      Left            =   120
      Top             =   120
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "        Univarsité de Jijel           Abd elhakk ben hammouda"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   975
      Left            =   1080
      TabIndex        =   1
      Top             =   1320
      Width           =   5175
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Gestion bédagogique des étudiants_3ième année génie informatique"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   735
      Left            =   600
      TabIndex        =   0
      Top             =   120
      Width           =   5535
   End
   Begin VB.Image Image1 
      Height          =   1335
      Left            =   0
      Picture         =   "ac.frx":1116F
      Stretch         =   -1  'True
      Top             =   1080
      Width           =   1335
   End
End
Attribute VB_Name = "ac"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
bn = 0
End Sub

Private Sub Timer1_Timer()
bn = bn + 1
If bn = 20 Then
f2.Show
Unload Me
End If
End Sub
