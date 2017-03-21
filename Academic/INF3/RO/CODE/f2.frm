VERSION 5.00
Begin VB.Form f2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Insertion"
   ClientHeight    =   2355
   ClientLeft      =   2655
   ClientTop       =   2640
   ClientWidth     =   6450
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2355
   ScaleWidth      =   6450
   Begin VB.Frame putit 
      Height          =   2175
      Left            =   120
      TabIndex        =   6
      Top             =   120
      Visible         =   0   'False
      Width           =   6255
      Begin VB.TextBox v 
         Height          =   315
         Index           =   4
         Left            =   3480
         MaxLength       =   5
         TabIndex        =   26
         Top             =   600
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.TextBox v 
         Height          =   315
         Index           =   3
         Left            =   2640
         MaxLength       =   5
         TabIndex        =   25
         Top             =   600
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.TextBox v 
         Height          =   315
         Index           =   2
         Left            =   1800
         MaxLength       =   5
         TabIndex        =   24
         Top             =   600
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.TextBox v 
         Height          =   315
         Index           =   1
         Left            =   960
         MaxLength       =   5
         TabIndex        =   23
         Top             =   600
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.ListBox cont 
         Height          =   1035
         ItemData        =   "f2.frx":0000
         Left            =   1920
         List            =   "f2.frx":0002
         TabIndex        =   18
         Top             =   960
         Width           =   4215
      End
      Begin VB.CommandButton okk 
         Caption         =   "OK"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   240
         TabIndex        =   10
         Top             =   1200
         Width           =   1575
      End
      Begin VB.TextBox BB 
         Height          =   315
         Left            =   5280
         MaxLength       =   6
         TabIndex        =   9
         Top             =   600
         Width           =   855
      End
      Begin VB.TextBox v 
         Height          =   315
         Index           =   0
         Left            =   120
         MaxLength       =   5
         TabIndex        =   8
         Top             =   600
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.ComboBox eq 
         Height          =   315
         ItemData        =   "f2.frx":0004
         Left            =   4320
         List            =   "f2.frx":0011
         TabIndex        =   7
         Top             =   600
         Width           =   855
      End
      Begin VB.Label ll 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Bi"
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
         Index           =   6
         Left            =   5280
         TabIndex        =   17
         Top             =   240
         Width           =   855
      End
      Begin VB.Label ll 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "EQ"
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
         Index           =   5
         Left            =   4320
         TabIndex        =   16
         Top             =   240
         Width           =   855
      End
      Begin VB.Label ll 
         Alignment       =   2  'Center
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
         Height          =   375
         Index           =   4
         Left            =   3480
         TabIndex        =   15
         Top             =   240
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label ll 
         Alignment       =   2  'Center
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
         Height          =   375
         Index           =   3
         Left            =   2640
         TabIndex        =   14
         Top             =   240
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label ll 
         Alignment       =   2  'Center
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
         Height          =   375
         Index           =   2
         Left            =   1800
         TabIndex        =   13
         Top             =   240
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label ll 
         Alignment       =   2  'Center
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
         Height          =   375
         Index           =   1
         Left            =   960
         TabIndex        =   12
         Top             =   240
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label ll 
         Alignment       =   2  'Center
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
         Height          =   375
         Index           =   0
         Left            =   120
         TabIndex        =   11
         Top             =   240
         Visible         =   0   'False
         Width           =   735
      End
   End
   Begin VB.Frame maxmin 
      Height          =   2175
      Left            =   120
      TabIndex        =   19
      Top             =   120
      Visible         =   0   'False
      Width           =   6255
      Begin VB.TextBox x 
         Height          =   375
         Index           =   4
         Left            =   4680
         MaxLength       =   5
         TabIndex        =   30
         Top             =   720
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.TextBox x 
         Height          =   375
         Index           =   3
         Left            =   3840
         MaxLength       =   5
         TabIndex        =   29
         Top             =   720
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.TextBox x 
         Height          =   375
         Index           =   2
         Left            =   3000
         MaxLength       =   5
         TabIndex        =   28
         Top             =   720
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.TextBox x 
         Height          =   375
         Index           =   1
         Left            =   2160
         MaxLength       =   5
         TabIndex        =   27
         Top             =   720
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.ComboBox mxn 
         Height          =   315
         ItemData        =   "f2.frx":0020
         Left            =   120
         List            =   "f2.frx":002A
         TabIndex        =   22
         Top             =   720
         Width           =   975
      End
      Begin VB.TextBox x 
         Height          =   375
         Index           =   0
         Left            =   1320
         MaxLength       =   5
         TabIndex        =   21
         Top             =   720
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.CommandButton oui 
         Caption         =   "OK"
         Height          =   495
         Left            =   2040
         TabIndex        =   20
         Top             =   1440
         Width           =   1695
      End
      Begin VB.Label mm 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Height          =   375
         Index           =   4
         Left            =   4680
         TabIndex        =   35
         Top             =   360
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label mm 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Height          =   375
         Index           =   3
         Left            =   3840
         TabIndex        =   34
         Top             =   360
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label mm 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Height          =   375
         Index           =   2
         Left            =   3000
         TabIndex        =   33
         Top             =   360
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label mm 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Height          =   375
         Index           =   1
         Left            =   2160
         TabIndex        =   32
         Top             =   360
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label mm 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Height          =   375
         Index           =   0
         Left            =   1320
         TabIndex        =   31
         Top             =   360
         Visible         =   0   'False
         Width           =   735
      End
   End
   Begin VB.Frame nbr 
      Height          =   2175
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6255
      Begin VB.TextBox m2 
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
         Left            =   4440
         MaxLength       =   1
         TabIndex        =   5
         Top             =   960
         Width           =   855
      End
      Begin VB.TextBox m1 
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
         Left            =   4440
         MaxLength       =   1
         TabIndex        =   4
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton ok 
         Caption         =   "OK"
         Default         =   -1  'True
         Height          =   495
         Left            =   2400
         TabIndex        =   3
         Top             =   1440
         Width           =   1215
      End
      Begin VB.Label l1 
         AutoSize        =   -1  'True
         BackColor       =   &H00FF80FF&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Donner le nombre des variables <=5   "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   120
         TabIndex        =   2
         Top             =   960
         Width           =   4005
      End
      Begin VB.Label l2 
         AutoSize        =   -1  'True
         BackColor       =   &H00FF80FF&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Donner le nombre des contraintes <=5"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   3990
      End
   End
End
Attribute VB_Name = "f2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim nombre As Integer
Dim compteur As Integer

Private Sub Form_Load()
f1.List1.Clear
f1.List2.Clear
compteur = 0
End Sub



Private Sub ok_Click()
Dim ii As Integer
If Val(m1.Text) < 1 Then
  MsgBox " le nombre des contraintes < 1", vbInformation + vbOKOnly, "Contraintes < 1"
  Else
    If Val(m1.Text) > 5 Then
    MsgBox " le nombre des contraintes > 5", vbInformation + vbOKOnly, "Contraintes > 5"
    Else
      If Val(m2.Text) < 1 Then
      MsgBox " le nombre des variables < 1", vbInformation + vbOKOnly, "Variables < 1"
      Else
        If Val(m2.Text) > 5 Then
        MsgBox " le nombre des variables > 5", vbInformation + vbOKOnly, "Variables > 5"
        Else
          nbr_contrainte = Int(Val(m1.Text)) - 1
          nbr_variable = Int(Val(m2.Text)) - 1
          eq.ListIndex = 0
          mxn.ListIndex = 0
         
          For ii = 0 To nbr_variable
          
          x(ii).Visible = True
          mm(ii).Visible = True
          mm(ii).Caption = "X" & ii
          
          v(ii).Visible = True
          ll(ii).Visible = True
          ll(ii).Caption = "X" & ii
          
          Next
          
          maxmin.Visible = True
          nbr.Visible = False
        End If
      End If
    End If
  End If
End Sub

Private Sub okk_Click()
Dim ii As Integer
Dim stri As String

stri = " "
For ii = 0 To nbr_variable - 1
stri = stri & Val(v(ii).Text) & " X" & ii & " + "
Next
stri = stri & Val(v(nbr_variable).Text) & " X " & nbr_variable
stri = stri & " " & eq.List(eq.ListIndex) & " " & Val(BB.Text)

cont.AddItem stri
f1.List2.AddItem stri

Select Case eq.ListIndex

Case 0:

For ii = 0 To nbr_variable
a(compteur, ii) = Val(v(ii).Text)
Next
B(compteur) = Val(BB.Text)
compteur = compteur + 1

Case 1:

For ii = 0 To nbr_variable
a(compteur, ii) = Val(v(ii).Text)
Next
B(compteur) = Val(BB.Text)
compteur = compteur + 1

For ii = 0 To nbr_variable
a(compteur, ii) = -Val(v(ii).Text)
Next
B(compteur) = -Val(BB.Text)
compteur = compteur + 1
Case 2:

For ii = 0 To nbr_variable
a(compteur, ii) = -Val(v(ii).Text)
Next
B(compteur) = -Val(BB.Text)
compteur = compteur + 1

End Select

For ii = 0 To nbr_variable
v(ii).Text = ""
Next
BB.Text = ""
eq.ListIndex = 0
nombre = nombre + 1

If nombre = nbr_contrainte + 1 Then
nbr_contrainte = compteur - 1
f1.done.Enabled = True
f1.Label1.Caption = ""
f1.List1.Clear
Unload Me
End If
End Sub

Private Sub oui_Click()
Dim ii As Integer
Dim str As String

str = mxn.Text & " Z = "

If mxn.ListIndex = 0 Then

For ii = 0 To nbr_variable
C(ii) = Val(x(ii).Text)
If ii <> nbr_variable Then
str = str & Val(x(ii).Text) & " X " & ii & "+"
Else
str = str & Val(x(ii).Text) & " X " & ii
End If
Next

Else

For ii = 0 To nbr_variable
C(ii) = -Val(x(ii).Text)
If ii <> nbr_variable Then
str = str & Val(x(ii).Text) & " X " & ii & "+"
Else
str = str & Val(x(ii).Text) & " X " & ii
End If
Next

End If
cont.AddItem str
cont.AddItem "----------------"
f1.List2.AddItem str
f1.List2.AddItem "----------------"

          nombre = 0
          compteur = 0
          putit.Visible = True
          maxmin.Visible = False
          
End Sub
