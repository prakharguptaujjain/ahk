#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



9::
Send, (
return


8::
Send, *
return

#IfWinActive ahk_exe msedge.exe
MButton::
WinGetTitle, title, A
If (InStr(title, ".ipynb")) {
MouseGetPos, x, y
If (y > 100) {
;Send, MouseClick[Left]
sleep, 100
send, ^{enter}
}
}
 else {
Send, {MButton}
}
return
#IfWinActive