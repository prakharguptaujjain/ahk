#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive ahk_exe Code.exe

;Numpad1::
;Send, ^a
;Sleep 100
;Send, ^c
;Sleep 100
;Send, {Right}
;Return
;
;Numpad5::
;Send, ^v
;Return
;
;Numpad2::
;Send, ^a
;sleep 100
;Send, ^v
;Sleep 100
;Send, {Right}
;Return
;
;Numpad4::
;Send, ^c
;Return
;
;Numpad3::
;Send, ^s
;Return

`::
Send, {Right}
Send, {;}
Send, ^{Enter}
Send, {Enter}
return

#::
Send, {Right}
Send, <<endl;
Send, ^{Enter}
return

@::
Send, {Spacebar}
Send, cout<<"
Send, {Right}
Send, <<endl;
Send, ^{Left}
Send, {Left}
Send, {Left}
Send, {Left}
return 

9::
Send, (
return


8::
Send, *
return

[::
Send, ^{Enter}
SendRaw, {}
Send, {Left} 
Send, {Enter}
Send, {Up}
return

]::
SendRaw, }
return

^[::
SendRaw, [
return


^]::
SendRaw, ]
return