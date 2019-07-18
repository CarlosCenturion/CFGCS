Attribute VB_Name = "BrowseFolder"
Option Explicit


'Do not modify this source, because
'it do a lot in the memory
'and if you modify it, perhaps it wouldn't work
'anymore!!!

Private Const MAX_PATH = 260

'*********************************************************
' The filestructure "BrowseInfo" is for the configuration
' of the folder-browse dialog.

Private Type BrowseInfo
  hWndOwner As Long
  'Handle of the user (ask with GetActiveWindow())
  pIDLRoot As Long
  'Adress of the IID-List.
  'It set the position of the first folder
  pszDisplayName As Long
  'Name of the selected folder.
  lpszTitle As Long
  'Displays the title of the dialog.
  ulFlags As Long
  'Flags, they show the effects of the dialog
  lpfnCallback As Long
  'Callback function
  lParam As Long
  'Gives the folder or a error back.
  iImage As Long
  'Displays the icon of a folder
End Type

'*********************************************************
' the following constants are the flags.

Private Const BIF_BROWSEFORCOMPUTER = &H1000
'Only computers are displayed.

Private Const BIF_BROWSEFORPRINTER = &H2000
'Only printers are displayed.

Private Const BIF_BROWSEINCLUDEFILES = &H4000
'The dialog will show files too.

Private Const BIF_DONTGOBELOWDOMAIN = &H2
'The dialog will not display networkfolders below a domain.

Private Const BIF_RETURNFSANCESTORS = &H8
'Only filesystemobjects are displayed.

Private Const BIF_RETURNONLYFSDIRS = &H1
'Only filesystemfolders are displayed.

Private Const BIF_STATUSTEXT = &H4
'The dialog will show a statusbar.

Private Declare Sub CoTaskMemFree Lib "ole32.dll" _
  (ByVal hMem As Long)

Private Declare Function lstrcat Lib "kernel32" Alias _
  "lstrcatA" (ByVal lpString1 As String, _
  ByVal lpString2 As String) As Long
'Get active window
Private Declare Function GetActiveWindow Lib "user32" () _
  As Long

Private Declare Function SHGetPathFromIDList Lib "shell32" _
  (ByVal pidList As Long, ByVal lpBuffer As String) As Long

Private Declare Function SHBrowseForFolder Lib "shell32" _
  (lpbi As BrowseInfo) As Long

Public Function BrowseForFolder(Prompt As String) As String
  
  Dim n As Integer
  Dim IDList As Long
  Dim Result As Long
  Dim ThePath As String
  Dim BI As BrowseInfo

  'create filestructure
  With BI
    'Get handle of the active window
    .hWndOwner = GetActiveWindow()
    'Title of the dialog
    .lpszTitle = lstrcat(Prompt, "")
    'Only filesystemfolders are allowed.
    .ulFlags = BIF_RETURNONLYFSDIRS
  End With

  'Show the dialog and give it to the IID-List
  IDList = SHBrowseForFolder(BI)

  'If IDList > 0, then edit the selected
  If IDList Then
    'Get memory
    ThePath = String$(MAX_PATH, 0)
    'convert IID-List to path
    Result = SHGetPathFromIDList(IDList, ThePath)
    'delete memory for the IDList
    Call CoTaskMemFree(IDList)
    'delete all bytes behind Nullbyte
    n = InStr(ThePath, vbNullChar)
    If n Then ThePath = Left$(ThePath, n - 1)
  End If

  'Set callback
  BrowseForFolder = ThePath
End Function


