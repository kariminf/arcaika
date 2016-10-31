VERSION 5.00
Begin VB.Form f3 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "A propos"
   ClientHeight    =   3675
   ClientLeft      =   3180
   ClientTop       =   2985
   ClientWidth     =   5490
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3675
   ScaleWidth      =   5490
   Begin VB.TextBox Text2 
      Height          =   975
      Left            =   1920
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   4
      Text            =   "f3.frx":0000
      Top             =   1920
      Width           =   3495
   End
   Begin VB.TextBox Text1 
      Height          =   975
      Left            =   1920
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   3
      Text            =   "f3.frx":010C
      Top             =   840
      Width           =   3495
   End
   Begin VB.CommandButton b0 
      Caption         =   "OK"
      Height          =   495
      Left            =   1920
      TabIndex        =   0
      Top             =   3000
      Width           =   1455
   End
   Begin VB.Label Label2 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "ARIES Abd elkarim"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2280
      TabIndex        =   2
      Top             =   360
      Width           =   2295
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Créer par "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   1800
      TabIndex        =   1
      Top             =   0
      Width           =   1035
   End
   Begin VB.Image Image1 
      Height          =   1920
      Left            =   0
      Picture         =   "f3.frx":01CB
      Top             =   120
      Width           =   1920
   End
End
Attribute VB_Name = "f3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub b0_Click()
Unload Me
End Sub


