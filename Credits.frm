VERSION 5.00
Begin VB.Form Credits 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Credits"
   ClientHeight    =   5760
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7590
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5760
   ScaleWidth      =   7590
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   1500
      Left            =   6480
      Top             =   3840
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   $"Credits.frx":0000
      BeginProperty Font 
         Name            =   "Scribblicious"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   5775
      Left            =   1440
      TabIndex        =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   4935
   End
   Begin VB.Image Image1 
      Height          =   5760
      Left            =   0
      Picture         =   "Credits.frx":01EB
      Top             =   0
      Width           =   7680
   End
End
Attribute VB_Name = "Credits"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Image1_Click()
Me.Hide
Config.Show
End Sub

Private Sub Label1_Click()
Label1.Visible = False
End Sub

Private Sub Timer1_Timer()
Label1.Visible = True
Timer1.Enabled = False
End Sub
