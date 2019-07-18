VERSION 5.00
Begin VB.Form Links 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Links"
   ClientHeight    =   6900
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9210
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6900
   ScaleWidth      =   9210
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "CS ADVANCED"
      BeginProperty Font 
         Name            =   "Hair of the dog"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   1095
      Left            =   3360
      TabIndex        =   1
      Top             =   2880
      Width           =   2655
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "MI WEB"
      BeginProperty Font 
         Name            =   "Hair of the dog"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   735
      Left            =   3360
      TabIndex        =   0
      Top             =   1560
      Width           =   2175
   End
   Begin VB.Image Image1 
      Height          =   6915
      Left            =   0
      Picture         =   "Links.frx":0000
      Top             =   0
      Width           =   9225
   End
End
Attribute VB_Name = "Links"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Image1_Click()
Me.Hide
Config.Show
End Sub

Private Sub Label1_Click()
Shell ("explorer.exe http://xDWeb.Tk")
End Sub

Private Sub Label3_Click()
Shell ("explorer.exe http://csadvanced.com")
End Sub
