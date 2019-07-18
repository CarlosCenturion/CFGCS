Attribute VB_Name = "CopyFile"
Public Declare Function CopyFile Lib "kernel32" Alias "CopyFileA" (ByVal lpExistingFileName As String, ByVal lpNewFileName As String, ByVal bFailIfExists As Long) As Long
Public Declare Function ShellExecuteA Lib "shell32.dll" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Public Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Public Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long
Private Const SWP_SHOWWINDOW = &H40
Private Const SWP_HIDEWINDOW = &H80
Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, _
        ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, _
        ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long

Private Declare Function FindWindow Lib "user32" _
    Alias "FindWindowA" (ByVal lpClassName As String, ByVal _
    lpWindowName As String) As Long
Function Copy_File(FileToCopy, Desination)
retval = CopyFile(FileToCopy, Desination, 1)
End Function


