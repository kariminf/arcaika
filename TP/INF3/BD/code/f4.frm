VERSION 5.00
Begin VB.Form f4 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Insertion et modification des notes "
   ClientHeight    =   4560
   ClientLeft      =   915
   ClientTop       =   2475
   ClientWidth     =   9720
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4560
   ScaleWidth      =   9720
   Begin VB.Frame exam 
      BackColor       =   &H80000013&
      Height          =   4575
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9735
      Begin VB.CommandButton fin 
         Caption         =   "Terminer"
         Height          =   615
         Left            =   6000
         TabIndex        =   14
         Top             =   3720
         Width           =   1695
      End
      Begin VB.CommandButton ins_note 
         Caption         =   "Insérer"
         Height          =   615
         Left            =   1560
         TabIndex        =   13
         Top             =   3720
         Width           =   1695
      End
      Begin VB.TextBox ntp 
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
         Left            =   3480
         MaxLength       =   5
         TabIndex        =   12
         Top             =   3000
         Width           =   1575
      End
      Begin VB.TextBox ctr2 
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
         Left            =   3480
         MaxLength       =   5
         TabIndex        =   11
         Top             =   2520
         Width           =   1575
      End
      Begin VB.TextBox ctr1 
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
         Left            =   3480
         MaxLength       =   5
         TabIndex        =   10
         Top             =   2040
         Width           =   1575
      End
      Begin VB.TextBox prenom 
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
         Left            =   5400
         Locked          =   -1  'True
         MaxLength       =   20
         TabIndex        =   6
         Top             =   720
         Width           =   3615
      End
      Begin VB.TextBox nom 
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
         Left            =   2280
         Locked          =   -1  'True
         MaxLength       =   20
         TabIndex        =   4
         Top             =   720
         Width           =   2895
      End
      Begin VB.ComboBox module0 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         ItemData        =   "f4.frx":0000
         Left            =   2280
         List            =   "f4.frx":0002
         TabIndex        =   2
         Top             =   1320
         Width           =   3135
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Note de contrôle TP"
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
         Left            =   840
         TabIndex        =   9
         Top             =   3000
         Width           =   2415
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Note de contrôle N°02"
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
         Left            =   840
         TabIndex        =   8
         Top             =   2520
         Width           =   2415
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Note de contrôle N°01"
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
         Left            =   840
         TabIndex        =   7
         Top             =   2040
         Width           =   2415
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Nom de module"
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
         Left            =   120
         TabIndex        =   5
         Top             =   1320
         Width           =   1935
      End
      Begin VB.Label l1 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Nom et prénom"
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
         Left            =   120
         TabIndex        =   3
         Top             =   720
         Width           =   1935
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Insertion et modification des notes "
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
         Height          =   375
         Left            =   1800
         TabIndex        =   1
         Top             =   120
         Width           =   5175
      End
      Begin VB.Image Image1 
         Height          =   2205
         Left            =   5160
         Picture         =   "f4.frx":0004
         Stretch         =   -1  'True
         Top             =   1560
         Width           =   4155
      End
   End
End
Attribute VB_Name = "f4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Tcodem(7) As Integer
Private Sub fin_Click()
Unload Me
End Sub

Private Sub Form_Load()
Dim i As Integer
aff_module
i = 0
With rs
module0.Text = !NOM_M
        Do While Not .EOF
        module0.AddItem !NOM_M
        Tcodem(i) = !COD_M
         .MoveNext
         i = i + 1
        Loop
        .Close
    End With
    module0.ListIndex = 0
End Sub

Private Sub ins_note_Click()

If ins_note.Caption = "Modifier" Then
mod_examen numero, Tcodem(module0.ListIndex), Val(ntp.Text), Val(ctr1.Text), Val(ctr2.Text)
Else
ins_examen numero, Tcodem(module0.ListIndex), Val(ntp.Text), Val(ctr1.Text), Val(ctr2.Text)
ins_note.Caption = "Modifier"
End If

End Sub

Private Sub module0_Click()

rech_note numero, Tcodem(module0.ListIndex)

If Not rs.EOF Then
With rs
ctr1.Text = !ctrl1
ctr2.Text = !ctrl2
ntp.Text = !tp
ins_note.Caption = "Modifier"
End With
Else
ctr1.Text = ""
ctr2.Text = ""
ntp.Text = ""
ins_note.Caption = "Insérer"
End If
End Sub
