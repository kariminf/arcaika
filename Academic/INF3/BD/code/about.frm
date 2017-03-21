VERSION 5.00
Begin VB.Form about 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "A propos ..."
   ClientHeight    =   4650
   ClientLeft      =   2445
   ClientTop       =   2325
   ClientWidth     =   6960
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "about.frx":0000
   ScaleHeight     =   4650
   ScaleWidth      =   6960
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3120
      TabIndex        =   0
      Top             =   3840
      Width           =   1455
   End
   Begin VB.Image Image2 
      Height          =   3750
      Left            =   1320
      Picture         =   "about.frx":1116F
      Top             =   -120
      Width           =   6000
   End
   Begin VB.Image Image1 
      Height          =   1770
      Left            =   -120
      Picture         =   "about.frx":A32D2
      Top             =   0
      Width           =   1875
   End
End
Attribute VB_Name = "about"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()
Unload Me
End Sub
