VERSION 5.00
Begin VB.Form f3 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Modification des étudiants"
   ClientHeight    =   4545
   ClientLeft      =   915
   ClientTop       =   2310
   ClientWidth     =   9720
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4545
   ScaleWidth      =   9720
   Begin VB.Frame mod 
      BackColor       =   &H80000013&
      Height          =   4575
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9735
      Begin VB.CommandButton Command1 
         Caption         =   "Terminer"
         Height          =   615
         Left            =   5760
         TabIndex        =   13
         Top             =   3840
         Width           =   1695
      End
      Begin VB.CommandButton mdf 
         Caption         =   "Modifier"
         Height          =   615
         Left            =   960
         TabIndex        =   12
         Top             =   3840
         Width           =   1695
      End
      Begin VB.TextBox adr0 
         Height          =   375
         Left            =   1920
         MaxLength       =   50
         TabIndex        =   5
         Top             =   3240
         Width           =   6615
      End
      Begin VB.TextBox age0 
         Height          =   375
         Left            =   1920
         MaxLength       =   2
         TabIndex        =   4
         Top             =   2640
         Width           =   2895
      End
      Begin VB.TextBox pre0 
         Height          =   375
         Left            =   1920
         MaxLength       =   20
         TabIndex        =   3
         Top             =   2160
         Width           =   2895
      End
      Begin VB.TextBox nom0 
         Height          =   375
         Left            =   1920
         MaxLength       =   20
         TabIndex        =   2
         Top             =   1680
         Width           =   2895
      End
      Begin VB.TextBox num0 
         Height          =   375
         Left            =   1920
         Locked          =   -1  'True
         MaxLength       =   5
         TabIndex        =   1
         Text            =   "5"
         Top             =   1200
         Width           =   2895
      End
      Begin VB.Image Image1 
         Height          =   2145
         Left            =   4920
         Picture         =   "f3.frx":0000
         Stretch         =   -1  'True
         Top             =   1080
         Width           =   4575
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Modification des étudiants"
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
         Height          =   360
         Left            =   1440
         TabIndex        =   11
         Top             =   360
         Width           =   3855
      End
      Begin VB.Label Label2 
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
         Left            =   120
         TabIndex        =   10
         Top             =   3240
         Width           =   1695
      End
      Begin VB.Label Label4 
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
         Left            =   120
         TabIndex        =   9
         Top             =   2640
         Width           =   1695
      End
      Begin VB.Label Label5 
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
         Left            =   120
         TabIndex        =   8
         Top             =   2160
         Width           =   1695
      End
      Begin VB.Label Label6 
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
         Left            =   120
         TabIndex        =   7
         Top             =   1680
         Width           =   1695
      End
      Begin VB.Label Label7 
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
         Left            =   120
         TabIndex        =   6
         Top             =   1200
         Width           =   1695
      End
   End
End
Attribute VB_Name = "f3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub mdf_Click()
mod_etudiant Int(Val(num0.Text)), nom0.Text, pre0.Text, Int(Val(age0.Text)), adr0.Text
Unload Me
End Sub
