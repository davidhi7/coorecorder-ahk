#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance Force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetTitleMatchMode, RegEx  ; Allow regular expressions for window title matching

#If WinActive("ahk_exe CooRecorder[0-9]*.exe")
; enable simple mouse scrolling
WheelUp::Send {Up}
WheelDown::Send {Down}
WheelLeft::Send {Left}
WheelRight::Send {Right}

; enable zooming with ctrl + mousewheel
^WheelUp::
Send z
MouseClick
Send z
Return
^WheelDown::Send ^z

; cheap and dirty hack to enable going to the top or bottom of the picture
Home::Send {Up 1000}
End::Send {Down 1000}
#If