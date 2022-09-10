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
OldClipboard:= Clipboard
;Clipboard := ""
Send, {Shift down}
KeyWait, Shift
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Shift up}
Send, ^c
Sleep, 25
if(Clipboard = "arr" or Clipboard = "rr1" or Clipboard = "rr2"){
Send, {Right}
SendRaw, [
Clipboard:= OldClipboard
return
}else {
Send, ^{Enter}
SendRaw, {}
Send, {Left}
Send, {Enter}
Send, {Enter}
Send, {Up}
Send, {Tab}
Clipboard:= OldClipboard
return
}
Clipboard:= OldClipboard
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

=::
OldClipboard:= Clipboard
;Clipboard := ""
Send, {Shift down}
KeyWait, Shift
Send, {Right}
Send, {Shift up}
Send, ^c
Send, {Left}
Sleep, 10
if(Clipboard = "]"){
    Send, {Right}
    Send, =
}else {
    Send, =
}
Clipboard:= OldClipboard
return

,::
OldClipboard:= Clipboard
;Clipboard := ""
Send, {Shift down}
KeyWait, Shift
Send, {Right}
Send, {Shift up}
Send, ^c
Send, {Left}
Sleep, 10
if(Clipboard = "]"){
    Send, {Right}
    Send, ,
}else {
    Send, ,
}
Clipboard:= OldClipboard
return

<::
OldClipboard:= Clipboard
;Clipboard := ""
Send, {Shift down}
KeyWait, Shift
Send, {Right}
Send, {Shift up}
Send, ^c
Send, {Left}
Sleep, 10
if(Clipboard = "]"){
    Send, {Right}
    SendRaw, <
}else {
    SendRaw, <
}
Clipboard:= OldClipboard
return

>::
OldClipboard:= Clipboard
;Clipboard := ""
Send, {Shift down}
KeyWait, Shift
Send, {Right}
Send, {Shift up}
Send, ^c
Send, {Left}
Sleep, 10
if(Clipboard = "]"){
    Send, {Right}
    Send, >
}else {
    Send, >
}
Clipboard:= OldClipboard
return