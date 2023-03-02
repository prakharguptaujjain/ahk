#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;!Left::Send   {Media_Prev}
;!Down::Send   {Media_Play_Pause}
;!Right::Send  {Media_Next}

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


;#IfWinActive, ahk_exe msedge.exe
;
;MButton::
;if GetKeyState("MButton", "P") ; Check if MButton is pressed
;{
;    old_clipboard := ClipboardAll ; Save the current clipboard contents
;    Send, ^c ; Copy the selected text
;    ClipWait, 1 ; Wait for the clipboard to contain data for up to 1 second
;    If ErrorLevel ; Check if there was an error with ClipWait
;    {
;        Clipboard := old_clipboard ; Restore the original clipboard contents
;        return
;    }
;    If Clipboard = old_clipboard ; Check if the copied text is the same as the previous contents of the clipboard
;    {
;        Clipboard := old_clipboard ; Restore the original clipboard contents
;        return
;    }
;    Send, ^x ; Cut the selected text
;}
;return
;
;#IfWinActive



;Window always on Top
 ^SPACE:: Winset, Alwaysontop, , A ; Ctrl + SpaceMouseClick, left
return


^+p::
SendMode, Event
SendRaw, %Clipboard%
SetKeyDelay, 30,30
return

#If WinActive("ahk_exe msedge.exe")
{
\::
Send, {Enter}
return
}

;#IfWinActive ahk_exe UnrealEditor.exe
;Esc::
;Send, {Esc}
;sleep 2000
;Send, {Esc}
;sleep 2000
;Send, ^r
;return




