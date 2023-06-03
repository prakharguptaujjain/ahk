#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

storedClipboard := ""

#IfWinActive ahk_exe Code.exe



MButton::
MouseGetPos, x, y
If (y > (A_ScreenHeight/2)) {
Send, {Click}
;Send , ^+v
;sleep, 100
;Send, {Enter}
    SendRaw, %storedClipboard%
    sleep, 100
    send, {enter}
} else {
    Send, {MButton}
}
return

^\::
sleep 10
send, ^z
send, ^z
send, ^z
send, ^z
send, ^z
send, ^z
;send, {right}
SendRaw, [
Return

\::
;clipboardContent := ""
;filePath := "C:/Users/prakh/Desktop/Mimir/input.txt"
;clipboardContent := clipboard
;FileDelete, %filePath%, 0
;FileAppend, %clipboardContent%, %filePath%
storedClipboard := clipboard
;Send, !r
;sleep 400
;Send, ^+v
;Send, {Enter}
return

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
send, {end}
send, {;}
Send, ^{Enter}
;OldClipboard:= Clipboard
;Clipboard := ""
;Send, {Shift down}
;KeyWait, Shift
;Send, {Right}
;Send, {Shift up}
;Send, ^c
;Send, {Left}
;Sleep, 10
;while(Clipboard = ")" or Clipboard = "]" or Clipboard = Chr(34)){
;    Send, {Shift down}
;KeyWait, Shift
;Send, {Right}
;Send, {Shift up}
;Send, ^c
;Send, {Right}
;Sleep, 10
;}
;Send, {Left}
;Send, {;}
;Send, ^{Enter}
;Clipboard:= OldClipboard
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

^[::
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
if(Clipboard = "arr" or Clipboard = "rr1" or Clipboard = "rr2" or SubStr(Clipboard, 2, 2) = "dp"){
Send, {Right}
SendRaw, [
Clipboard:= OldClipboard
return
}
Send, {Right}
Clipboard := ""
Send, {Shift down}
KeyWait, Shift
Send, {Right}
Send, {Shift up}
Send, ^c
Sleep, 15
if(Clipboard = "]"){
Send, {Right}
SendRaw, [
Clipboard:= OldClipboard
return
}
else {
send, {Left}
Send, ^{Enter}
SendRaw, {}
Send, {Left}
Send, {Enter}
Send, {Up}
Send, {Tab}
Send, {Right}
Send, {Enter}
Send, {Tab}
Clipboard:= OldClipboard
return
}
Clipboard:= OldClipboard
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

#q::
Send, ^a
Send, cb
sleep, 250
send, p
sleep, 200
send, {Enter}
return

#w::
Send, ^a
Send, cb
sleep, 250
send, b
send, {Enter}
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


