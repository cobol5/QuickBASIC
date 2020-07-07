'   Help engine declarations.
 
'  Commands to pass WinHelp()
Global Const HELP_CONTEXT = &H1     ' Display topic identified by number in Data
Global Const HELP_QUIT = &H2        ' Terminate help
Global Const HELP_INDEX = &H3       ' Display index
Global Const HELP_HELPONHELP = &H4  ' Display help on using help
Global Const HELP_SETINDEX = &H5    ' Set an alternate Index for help file with more than one index
Global Const HELP_KEY = &H101       ' Display topic for keyword in Data
Global Const HELP_MULTIKEY = &H201  ' Lookup keyword in alternate table and display topic

Declare Function WinHelp Lib "User" (ByVal hWnd As Integer, ByVal lpHelpFile As String, ByVal wCommand As Integer, dwData As Any) As Integer
 
Type MULTIKEYHELP
    mkSize As Integer
    mkKeylist As String * 1
    szKeyphrase As String * 253
End Type

