'Time: 9:28 AM 5/3/2014
'Ref: http://www.vbforums.com/showthread.php?324369-Self-Delete-RESOLVED
'Name: Ryan Bekabe
'EMail: bekabeipa@gmail.com
'Descript: [VB] Delete it self file, Bat file

Private Sub Form_Unload(Cancel As Integer)
Dim MyPath As String
MyPath = App.Path & "\" & App.EXEName & ".exe"
    Open App.Path & "\Kill.bat" For Output As #1
        Print #1, "DEL " & MyPath
        Print #1, "DEL " & App.Path & "\Kill.bat"
    Close #1
Shell App.Path & "\Kill.bat", vbHide
End Sub
