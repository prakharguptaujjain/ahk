#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^+x::
OldClipboard:= Clipboard
Clipboard:= ""
Send, ^c ;copies selected text
ClipWait
Run https://www.google.com/search?q=%Clipboard%
Sleep 200
Clipboard:= OldClipboard
return

^+z::
OldClipboard:= Clipboard
Clipboard:= ""
Send, ^c ;copies selected text
ClipWait
Run https://www.google.com/search?q="%Clipboard%"
Sleep 200
Clipboard:= OldClipboard
return


^+a::
OldClipboard:= Clipboard
Clipboard:= ""
Send, ^c ;copies selected text
ClipWait
Run https://www.google.com/search?tbm=bks&q="%Clipboard%"
Sleep 200
Clipboard:= OldClipboard
return





;Window always on Top
 ^SPACE:: Winset, Alwaysontop, , A ; Ctrl + SpaceMouseClick, left
return


^+p::
SendMode, Event
SetKeyDelay, 30,30
Send, %Clipboard%
return


