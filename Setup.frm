VERSION 5.00
Begin VB.Form Setup 
   BorderStyle     =   1  'Fixed Single
   Caption         =   " Setup"
   ClientHeight    =   4545
   ClientLeft      =   3960
   ClientTop       =   3285
   ClientWidth     =   5730
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4545
   ScaleWidth      =   5730
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   1500
      Left            =   4680
      Top             =   1200
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H80000000&
      Height          =   285
      Left            =   360
      TabIndex        =   0
      Text            =   "C:\Archivos de Programa\Valve"
      Top             =   2040
      Visible         =   0   'False
      Width           =   5175
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "CAMBIAR DIRECTORIO"
      BeginProperty Font 
         Name            =   "Hair of the dog"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   615
      Left            =   360
      TabIndex        =   3
      Top             =   1200
      Visible         =   0   'False
      Width           =   5775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "VOLVER"
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
      Left            =   1920
      TabIndex        =   2
      Top             =   3360
      Visible         =   0   'False
      Width           =   2295
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
      Left            =   1680
      TabIndex        =   1
      Top             =   2520
      Visible         =   0   'False
      Width           =   2895
   End
   Begin VB.Image Image1 
      Height          =   4620
      Left            =   -120
      Picture         =   "Setup.frx":0000
      Top             =   0
      Width           =   6150
   End
End
Attribute VB_Name = "Setup"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Label1_Click()
On Error Resume Next
'Crear Directorios
MkDir Text1.Text + "\cstrike"
MkDir Text1.Text + "\cstrike\configs"
MkDir Text1.Text + "\cstrike\configs\5"
MkDir Text1.Text + "\cstrike\configs\6"
MkDir Text1.Text + "\cstrike\configs\ZBotFun"
MkDir Text1.Text + "\cstrike\maps"
MkDir Text1.Text + "\cstrike\sound"
MkDir Text1.Text + "\cstrike\sound\Misc"
MkDir Text1.Text + "\cstrike\sound\EzekieL"
MkDir Text1.Text + "\cstrike\sprites"
'Copiar Archivos
Call Copy_File(App.Path + "\Data\1.EzekieL", Text1.Text + "/cstrike/config.cfg")
Call Copy_File(App.Path + "\Data\2.EzekieL", Text1.Text + "/cstrike/userconfig.cfg")
Call Copy_File(App.Path + "\Data\3.EzekieL", Text1.Text + "/cstrike/listenserver.cfg")
Call Copy_File(App.Path + "\Data\4.EzekieL", Text1.Text + "/cstrike/server.cfg")
Call Copy_File(App.Path + "\Data\5.EzekieL", Text1.Text + "/cstrike/TEMPDECAL.wad")
Call Copy_File(App.Path + "\Data\6.EzekieL", Text1.Text + "/cstrike/5.cfg")
Call Copy_File(App.Path + "\Data\7.EzekieL", Text1.Text + "/cstrike/6.cfg")
Call Copy_File(App.Path + "\Data\8.EzekieL", Text1.Text + "/cstrike/EzekielZBots.cfg")
Call Copy_File(App.Path + "\Data\9.EzekieL", Text1.Text + "/cstrike/commandmenu.txt")
Call Copy_File(App.Path + "\Data\10.EzekieL", Text1.Text + "/cstrike/mapcycle.txt")
Call Copy_File(App.Path + "\Data\11.EzekieL", Text1.Text + "/cstrike/motd.txt")
Call Copy_File(App.Path + "\Data\12.EzekieL", Text1.Text + "/cstrike/titles.txt")
'Config 1.5
Call Copy_File(App.Path + "\Data\1\1\1.EzekieL", Text1.Text + "/cstrike/configs/5/Avreviaturas.cfg")
Call Copy_File(App.Path + "\Data\1\1\2.EzekieL", Text1.Text + "/cstrike/configs/5/Binds.cfg")
Call Copy_File(App.Path + "\Data\1\1\3.EzekieL", Text1.Text + "/cstrike/configs/5/Comandos.cfg")
Call Copy_File(App.Path + "\Data\1\1\4.EzekieL", Text1.Text + "/cstrike/configs/5/Compras.cfg")
Call Copy_File(App.Path + "\Data\1\1\5.EzekieL", Text1.Text + "/cstrike/configs/5/FPS.cfg")
Call Copy_File(App.Path + "\Data\1\1\6.EzekieL", Text1.Text + "/cstrike/configs/5/Radios.cfg")
Call Copy_File(App.Path + "\Data\1\1\7.EzekieL", Text1.Text + "/cstrike/configs/5/Scripts.cfg")
Call Copy_File(App.Path + "\Data\1\1\8.EzekieL", Text1.Text + "/cstrike/configs/5/SetInfo.cfg")
Call Copy_File(App.Path + "\Data\1\1\9.EzekieL", Text1.Text + "/cstrike/configs/5/Sonidos.cfg")
'Config 1.6
Call Copy_File(App.Path + "\Data\1\2\1.EzekieL", Text1.Text + "/cstrike/configs/5/Waits.cfg")
Call Copy_File(App.Path + "\Data\1\2\2.EzekieL", Text1.Text + "/cstrike/configs/5/Binds.cfg")
Call Copy_File(App.Path + "\Data\1\2\3.EzekieL", Text1.Text + "/cstrike/configs/5/Comandos.cfg")
Call Copy_File(App.Path + "\Data\1\2\4.EzekieL", Text1.Text + "/cstrike/configs/5/Compras.cfg")
Call Copy_File(App.Path + "\Data\1\2\5.EzekieL", Text1.Text + "/cstrike/configs/5/FPS.cfg")
Call Copy_File(App.Path + "\Data\1\2\6.EzekieL", Text1.Text + "/cstrike/configs/5/Radios.cfg")
Call Copy_File(App.Path + "\Data\1\2\7.EzekieL", Text1.Text + "/cstrike/configs/5/Scripts.cfg")
Call Copy_File(App.Path + "\Data\1\2\8.EzekieL", Text1.Text + "/cstrike/configs/5/SetInfo.cfg")
Call Copy_File(App.Path + "\Data\1\2\9.EzekieL", Text1.Text + "/cstrike/configs/5/Sonidos.cfg")
'Config ZBot
Call Copy_File(App.Path + "\Data\1\3\1.EzekieL", Text1.Text + "/cstrike/configs/ZBotFun/binds.cfg")
'Mapas
Call Copy_File(App.Path + "\Data\2\1.EzekieL", Text1.Text + "/cstrike/Maps/cs_paintball.bsp")
Call Copy_File(App.Path + "\Data\2\2.EzekieL", Text1.Text + "/cstrike/Maps/he_bombbox.bsp")
'Models
Call Copy_File(App.Path + "\Data\3\1.EzekieL", Text1.Text + "/cstrike/Models/dEVIL.mdl")
'Sounds
Call Copy_File(App.Path + "\Data\4\1\1.EzekieL", Text1.Text + "/cstrike/Sound/EzekieL/Prepare.wav")
Call Copy_File(App.Path + "\Data\4\2\1.EzekieL", Text1.Text + "/cstrike/Sound/Misc/firstblood.wav")
Call Copy_File(App.Path + "\Data\4\2\2.EzekieL", Text1.Text + "/cstrike/Sound/Misc/headshot.wav")
Call Copy_File(App.Path + "\Data\4\2\3.EzekieL", Text1.Text + "/cstrike/Sound/Misc/humiliation.wav")
Call Copy_File(App.Path + "\Data\4\2\4.EzekieL", Text1.Text + "/cstrike/Sound/Misc/killingspree.wav")
Call Copy_File(App.Path + "\Data\4\2\5.EzekieL", Text1.Text + "/cstrike/Sound/Misc/monsterkill.wav")
Call Copy_File(App.Path + "\Data\4\2\6.EzekieL", Text1.Text + "/cstrike/Sound/Misc/multikill.wav")
Call Copy_File(App.Path + "\Data\4\2\7.EzekieL", Text1.Text + "/cstrike/Sound/Misc/prepare.wav")
Call Copy_File(App.Path + "\Data\4\2\8.EzekieL", Text1.Text + "/cstrike/Sound/Misc/ultrakill.wav")
'Sprites
Call Copy_File(App.Path + "\Data\5\1.EzekieL", Text1.Text + "/cstrike/Sprites/ch_sniper.spr")
Call Copy_File(App.Path + "\Data\5\1.EzekieL", Text1.Text + "/cstrike/Sprites/muzzleflash1.spr")
Call Copy_File(App.Path + "\Data\5\1.EzekieL", Text1.Text + "/cstrike/Sprites/muzzleflash2.spr")
Call Copy_File(App.Path + "\Data\5\1.EzekieL", Text1.Text + "/cstrike/Sprites/muzzleflash3.spr")
Call Copy_File(App.Path + "\Data\5\1.EzekieL", Text1.Text + "/cstrike/Sprites/muzzleflash4.spr")
Call Copy_File(App.Path + "\Data\5\1.EzekieL", Text1.Text + "/cstrike/Sprites/sniper_scope.spr")
MsgBox "Instalacion Completada!", , "EzekieL Config"
Me.Hide
Config.Show
End Sub
Private Sub Label2_Click()
Me.Hide
Config.Show
End Sub
Private Sub Label3_Click()
Dim a As String
  a = BrowseForFolder("Seleccione el Directorio ""Valve""")
  If a <> "" Then
    Text1.Text = a
  End If
End Sub

Private Sub Timer1_Timer()
Text1.Visible = True
Label1.Visible = True
Label2.Visible = True
Label3.Visible = True
End Sub
