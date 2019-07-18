VERSION 5.00
Begin VB.Form Config 
   Caption         =   " (`·._.·´`·._ [ EzekieL Config 1.5 / 1.6 ] _.·´`·._.·´)"
   ClientHeight    =   6915
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9195
   ControlBox      =   0   'False
   Icon            =   "Config.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   6915
   ScaleWidth      =   9195
   StartUpPosition =   2  'CenterScreen
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "SALIR"
      BeginProperty Font 
         Name            =   "Hair of the dog"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   615
      Left            =   7320
      TabIndex        =   3
      Top             =   5880
      Width           =   1815
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "LINKS"
      BeginProperty Font 
         Name            =   "Hair of the dog"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   615
      Left            =   240
      TabIndex        =   2
      Top             =   6000
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "CREDITOS"
      BeginProperty Font 
         Name            =   "Hair of the dog"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   615
      Left            =   6240
      TabIndex        =   1
      Top             =   480
      Width           =   2775
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "INSTALAR"
      BeginProperty Font 
         Name            =   "Hair of the dog"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   615
      Left            =   240
      TabIndex        =   0
      Top             =   480
      Width           =   2895
   End
   Begin VB.Image Image1 
      Height          =   6915
      Left            =   0
      Picture         =   "Config.frx":1E72
      Top             =   0
      Width           =   9225
   End
End
Attribute VB_Name = "Config"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Label1_Click()
Setup.Show
Me.Hide
End Sub

Private Sub Label2_Click()
Me.Hide
Credits.Show
End Sub

Private Sub Label3_Click()
MsgBox "Si Nesesitas Ayuda en Algo Solo Agregame ... LooSeR.LooSeR@Hotmail.Com", , "Ayuda"
End Sub

Private Sub Label4_Click()
Me.Hide
Links.Show
End Sub

Private Sub Label5_Click()
If MsgBox("Kieres Visitar Mi Pagina Web?", vbYesNo, "EzekieL") = vbYes Then
Shell ("explorer.exe http://xDWeb.Tk")
End
Else
MsgBox "Weno Chau!", , "EzekieL"
End
End If
End Sub
