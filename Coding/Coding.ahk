#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive ahk_exe Code.exe

^\::
sleep 10
send, ^z
send, ^z
send, ^z
send, ^z
send, ^z
send, {right}
SendRaw, [
Return


^`::
sleep 10
send, ^z
send, ^z
send, ^z
send, ^z
send, ^z
send, {right}
Return

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
OldClipboard:= Clipboard
;Clipboard := ""
Send, {Shift down}
KeyWait, Shift
Send, {Right}
Send, {Shift up}
Send, ^c
Send, {Left}
Sleep, 10
while(Clipboard = ")" or Clipboard = "]" or Clipboard = Chr(34)){
    Send, {Shift down}
KeyWait, Shift
Send, {Right}
Send, {Shift up}
Send, ^c
Send, {Right}
Sleep, 10
}
Send, {Left}
Send, {;}
Send, ^{Enter}
Clipboard:= OldClipboard
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

!::
OldClipboard:= Clipboard
;Clipboard := ""
Send, {Shift down}
KeyWait, Shift
Send, {Right}
Send, {Shift up}
Send, ^c
Send, {Left}
Sleep, 10
if(Clipboard = Chr(33)){
    Send, {Right}
    SendRaw, !
}else {
    SendRaw, !
}
Clipboard:= OldClipboard
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



`;::
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
    SendRaw, `;

}else {
    SendRaw, `;
}
Clipboard:= OldClipboard
return



;{RShift}{,}::
;OldClipboard:= Clipboard
;;Clipboard := ""
;Send, {Shift down}
;KeyWait, Shift
;Send, {Right}
;Send, {Shift up}
;Send, ^c
;Send, {Left}
;Sleep, 10
;if(Clipboard = "]"){
;    Send, {Right}
;    SendRaw, <
;}else {
;    SendRaw, <
;}
;Clipboard:= OldClipboard
;return
;
;{RShift}{.}::
;OldClipboard:= Clipboard
;;Clipboard := ""
;Send, {Shift down}
;KeyWait, Shift
;Send, {Right}
;Send, {Shift up}
;Send, ^c
;Send, {Left}
;Sleep, 10
;if(Clipboard = "]"){
;    Send, {Right}
;    Send, >
;}else {
;    Send, >
;}
;Clipboard:= OldClipboard
;return


