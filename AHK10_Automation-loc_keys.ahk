; ----

; ! Alt
; ^ Control
; + Shift

; MsgBox, % UriEncode("http://foo bar/ + + ")
 
; Modified from http://goo.gl/0a0iJq
UriEncode(Uri)
{
	VarSetCapacity(Var, StrPut(Uri, "UTF-8"), 0)
	StrPut(Uri, &Var, "UTF-8")
	f := A_FormatInteger
	SetFormat, IntegerFast, H
	While Code := NumGet(Var, A_Index - 1, "UChar")
		If (Code >= 0x30 && Code <= 0x39 ; 0-9
			|| Code >= 0x41 && Code <= 0x5A ; A-Z
			|| Code >= 0x61 && Code <= 0x7A) ; a-z
			Res .= Chr(Code)
		Else
			Res .= "%" . SubStr(Code + 0x100, -1)
	SetFormat, IntegerFast, %f%
	Return, Res
}

; Handy shortcuts
 #F7::Run, "%G_ZSCRIPTS%\A02_qbittorent.cmd",,Min
 #F8::Run, "%G_BIN%\ArchiveTorrents\ArchiveTorrents.exe"
 #F9::Run, "%USERPROFILE%\my\doc\security\DatabaseNewIreland4.kdbx"
#F11::Run, "%G_ZSCRIPTS%\U45_control-audio-devices.cmd",,Min
#F12::Run, "%SystemRoot%\System32\SndVol.exe"

; Define in Google
#5::
    Send, ^c
    ClipWait
    Sleep, 300
    SrchTerm = % UriEncode(clipboard)
    Run, "%gglchrm%" --profile-directory="%gglprof%" "%gglsrchEN%what is the meaning of %SrchTerm%" "http://dictionary.reverso.net/english-definition/%SrchTerm%"
return

; Translate in Google
#6::
    Send, ^c
    ClipWait
    Sleep, 300
    SrchTerm = % UriEncode(clipboard)
    Run, "%gglchrm%" --profile-directory="%gglprof%" "%gglsrchEN%translate %SrchTerm% from italian to english" "http://dictionary.reverso.net/italian-english/%SrchTerm%"
return

; Computer Control Commands
  #8::Run,   "%G_ZSCRIPTS%\U01_poweroff_full.cmd"
 ^#8::Run,   "%G_ZSCRIPTS%\U01_standby_loop.cmd"
  #9::Run,   "%G_ZSCRIPTS%\U01_reboot_full.cmd"
 ^#9::Run,   "%G_ZSCRIPTS%\U01_logoff_full.cmd"
!^#9::Run,   "%G_ZSCRIPTS%\U01_switch_user.cmd"

 !#b::Run, "%G_ZSCRIPTS%\U41_EnableBT.cmd",, Min
 ^#b::Run, "%G_ZSCRIPTS%\U42_EnableLogitech.cmd",, Min
+^#b::Run, "%G_ZSCRIPTS%\U43_EnableCreative.cmd",, Min
  #b::Run, "explorer" "ms-settings:bluetooth"

; Copy selection to plain text by pasting in Notepad2
#c::
    Send, ^c
    ClipWait
    Sleep, 300
    Run, "%ProgramFiles%\Notepad2\Notepad2.exe"
    Sleep, 600
    Send, ^v
    Sleep, 100
    Send, ^a
    Sleep, 100
    Send, ^c
    ClipWait
    Sleep, 100
    WinClose, A
    Send, n
return

; Copy selection to plain text by pasting in Notepad2 and keep it open for edit
^#c::
    Send, ^c
    ClipWait
    Sleep, 300
    Run, "%ProgramFiles%\Notepad2\Notepad2.exe"
    Sleep, 600
    Send, ^v
    Sleep, 100
    Send, ^a
    Sleep, 100
    Send, ^c
    ClipWait
    Send, {Left}
return

; Remap Explorer Shortcut
#e::Run, "%USERPROFILE%\Documents\Toolbar\Desktop.lnk"

; Search in Google
#g::
    Send, ^c
    ClipWait
    Sleep, 300

    StringGetPos, pos1, clipboard, http
    StringGetPos, pos2, clipboard, www.

    if (pos1 = 0 or pos2 = 0)
    {
        Run, "%gglchrm%" --profile-directory="%gglprof%" "%clipboard%"
    }
    else
    {
        SrchTerm = % UriEncode(clipboard)
        Run, "%gglchrm%" --profile-directory="%gglprof%" "%gglsrchEN%%SrchTerm%"
    }
return

; ALT + MS + G
; Prompt to Search in Google
!#g::
    InputBox, UserInput, Search for, Search for
    StringReplace, UserInput, UserInput, `", , All
    Run, "%gglchrm%" --profile-directory="%gglprof%" "%gglsrchEN%%UserInput%"
return

; CTRL + ALT + MS + G
; Prompt to Search in Google
^!#g::
    InputBox, UserInput, Search for, Search for
    StringReplace, UserInput, UserInput, `", , All
    Run, "%gglchrm%" --profile-directory="%gglprof%" "%gglsrchIT%%UserInput%"
return

; CTRL + MS + G (ITA)
; Search in Google Italian
^#g::
    Send, ^c
    ClipWait
    Sleep, 300

    StringGetPos, pos1, clipboard, http
    StringGetPos, pos2, clipboard, www.

    if (pos1 = 0 or pos2 = 0)
    {
        Run, "%gglchrm%" --profile-directory="%gglprof%" "%clipboard%"
    }
    else
    {
        SrchTerm = % UriEncode(clipboard)
        Run, "%gglchrm%" --profile-directory="%gglprof%" "%gglsrchIT%%SrchTerm%"
    }
return

; SHIFT + MS + G (QUOTES)
; Search in Google Exact Term
+#g::
    Send, ^c
    ClipWait
    Sleep, 300
    SrchTerm = % UriEncode(clipboard)
    Run, "%gglchrm%" --profile-directory="%gglprof%" "%gglsrchEN%`%22%SrchTerm%`%22"
return

; CTRL + SHIFT + MS + G (ITA QUOTES)
; Search in Google Italian Exact Term
^+#g::
    Send, ^c
    ClipWait
    Sleep, 300
    SrchTerm = % UriEncode(clipboard)
    Run, "%gglchrm%" --profile-directory="%gglprof%" "%gglsrchIT%`%22%SrchTerm%`%22"
return

; ! Alt
; ^ Control
; + Shift

; Ping Google IP (Check Internet)
#m::Run, "%G_ZSCRIPTS%\U20_pgoip.cmd"

; Launch Notepad2
#n::
    SetWorkingDir, %USERPROFILE%\Documents
    Run, "%ProgramFiles%\Notepad2\Notepad2.exe", , max
return

; Launch Command Prompt
#p::
    SetWorkingDir, %G_BIN%
    Run, %ComSpec%
    ;Run, c:\tools\Cmder\Cmder.exe
return

; Set Current Window Always On Top
#a::Winset, AlwaysOnTop, toggle, A
#t::WinSet, Style, ^0xC00000, A

; CTRL + MS + y Hide Current Window
^#y::WinHide, A

#u::
    Run, %G_BIN%\USB_Disk_Eject.exe
    Sleep, 2000
    IfWinExist, USB Disk Ejector
    {      
        WinActivate
    }
return

#y::Run, %SystemRoot%\System32\DisplaySwitch.exe

;#z::Run, "%PROGRAMFILES%\Mozilla Firefox\firefox.exe"

; --------------------------------------------------------------------------------

; #IfWinActive ahk_class MPlayer - The Movie Player
;   Click::Send {Up}
;   ;RightClick::Send {Up}
; #IfWinActive

#IfWinActive ahk_exe mplayer.exe
    Backspace::WinKill
    q::WinKill
    Enter::WinKill
    ;Run, "%G_ZSCRIPTS%\U30_killmpc.cmd", ,min
#IfWinActive

; Redefine only when the active window is a console window
#IfWinActive ahk_class ConsoleWindowClass
    ^d::
        Send, ^c
        Sleep, 300
        Send exit
        Send {Enter}
    return
    ; Paste in command window
    ^v::
        ; Spanish menu (Editar->Pegar, I suppose English version is the same, Edit->Paste)
        Send !{Space}ep
    return

    ^x::
        Send, ^c
        Sleep, 300
        Send, ^c
        Sleep, 300
        Send, ^c
        Sleep, 300
        Send, ^c
        Sleep, 300
        Send, ^c
        Sleep, 300
        Send, ^c
    return
    ^q::
    F4::
    !F4::
        WinGet, wpid, PID, A
        ;MsgBox "%G_BIN%\sysin\pskill.exe -t %wpid%"
        ;Run, %G_BIN%\sysin\pskill.exe -t %wpid%
        Run, TASKKILL /PID %wpid% /T /F
    return
#IfWinActive

; Sumatra PDF
#IfWinActive ahk_class SUMATRA_PDF_FRAME
  ,::WheelUp
  .::WheelDown
  F4::WinClose
#IfWinActive

; Chrome or Firefox Remap
#If WinActive("ahk_class Chrome_WidgetWin_1") or WinActive("ahk_class MozillaWindowClass")
    F2::MouseClick, Middle

    ^F2::
        MouseClick, Middle
        Sleep, 500
        Send ^w
    return

    F4::Send ^w

    F7::
        Send {WheelUp}
        Send {WheelUp}
        Send {WheelUp}
        Send {WheelUp}
    return

    F8::
        Send {WheelDown}
        Send {WheelDown}
        Send {WheelDown}
        Send {WheelDown}
    return

; alt-d - duplicate current tab
    !d::
        Send ^l
        Sleep 200
        Send !{Enter}
    return

; alt-b - search in BT4G
    !b::
        Send, ^c
        ClipWait
        Sleep, 300
        SrchTerm = % UriEncode(clipboard)
        Run, "%gglchrm%" --profile-directory="%gglprof%" "https://bt4g.org/search/%SrchTerm%/bysize/1"
    return

    ; NumpadSub::Send ^{NumpadSub}
    ; NumpadAdd::Send ^{NumpadAdd}
#If

; Outlook Window, to zoom message with F2
#IfWinActive ahk_class rctrl_renwnd32
    F2::
        Click
        Send ^{WheelUp}
        Send ^{WheelUp}
        Send ^{WheelUp}
        Send ^{WheelUp}
        Send ^{WheelUp}
        Send ^{WheelUp}
        Send {Home}
    return
#IfWinActive

; Click with the F1 Keyboard
F1::Click

; CTRL+Q Close Window
^q::WinClose, A

; CTRL+SHIFT+Q Kill Window Process Tree
+^q::
    WinGet, wpid, PID, A
    Run, TASKKILL /PID %wpid% /T /F
return

#,::WheelUp
#.::WheelDown

  #0::Run, "%G_ZSCRIPTS%\U30_killmpc.cmd", ,min
 ^#0::Run, "%G_ZSCRIPTS%\U30_restartExplorer.cmd", ,min
^!#0::Run, "%G_ZSCRIPTS%\U30_restartExplorer-nvidia.cmd", ,min

; x (left), y (top), cx (W), cy (H)
; ! Alt
; ^ Control
; + Shift

; ALT-Down Move all center without resize
!#Down::
    WinRestore, A
    WinGetPos, X, Y, W, H, A  ; "A" to get the active window's pos.
    ; MsgBox, The active window is at %X%`,%Y% %W% %H%
    DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", (A_ScreenWidth - W) / 2, "Int", (A_ScreenHeight - H) / 2, "Int", W, "Int", H, "UInt", 0x400)
return

; ALT-LEFT Move all left without resize
!#Left::
    WinRestore, A
    WinGetPos, X, Y, W, H, A  ; "A" to get the active window's pos.
    ; MsgBox, The active window is at %X%`,%Y% %W% %H%
    DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", (0), "Int", Y, "Int", W, "Int", H, "UInt", 0x400)
return

; ALT-RIGHT Move all right without resize
!#Right::
    WinRestore, A
    WinGetPos, X, Y, W, H, A
    DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", (A_ScreenWidth - W), "Int", Y, "Int", W, "Int", H, "UInt", 0x400)
return

; step by 30 pixels
^!#Left::
    WinRestore, A
    WinGetPos, X, Y, W, H, A  ; "A" to get the active window's pos.
    ; MsgBox, The active window is at %X%`,%Y% %W% %H%
    DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", (X - 30), "Int", Y, "Int", W, "Int", H, "UInt", 0x400)
return

; step by 30 pixels
^!#Right::
    WinRestore, A
    WinGetPos, X, Y, W, H, A
    DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", (X + 30), "Int", Y, "Int", W, "Int", H, "UInt", 0x400)
return

; step by 30 pixels
^!#Up::
    WinRestore, A
    WinGetPos, X, Y, W, H, A
    DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", X, "Int", (Y - 30), "Int", W, "Int", H, "UInt", 0x400)
return

; step by 30 pixels
^!#Down::
    WinRestore, A
    WinGetPos, X, Y, W, H, A
    DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", X, "Int", (Y + 30), "Int", W, "Int", H, "UInt", 0x400)
return

; left half
; - ; #Left::
; - ;     WinRestore, A
; - ;     DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", 0, "Int", 0, "Int", (A_ScreenWidth/2), "Int", (A_ScreenHeight - 27), "UInt", 0x400)
; - ; return

; shift + ms, upper left corner
+#Left::
    WinRestore, A
    DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", 0, "Int", 0, "Int", (A_ScreenWidth/2), "Int", (A_ScreenHeight/2), "UInt", 0x400)
return

; ctrl + ms, lower left corner
^#Left::
    WinRestore, A
    DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", 0, "Int", (A_ScreenHeight/2), "Int", (A_ScreenWidth/2), "Int", (A_ScreenHeight/2 - 27), "UInt", 0x400)
return

; - ; #Right::
; - ;     WinRestore, A
; - ;     DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", (A_ScreenWidth/2), "Int", 0, "Int", (A_ScreenWidth/2), "Int", (A_ScreenHeight - 27), "UInt", 0x400)
; - ; return

; shift + ms, upper right corner
+#Right::
    WinRestore, A
    DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", (A_ScreenWidth/2), "Int", 0, "Int", (A_ScreenWidth/2), "Int", (A_ScreenHeight/2), "UInt", 0x400)
return

; ctrl + ms, lower right corner
^#Right::
    WinRestore, A
    DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", (A_ScreenWidth/2), "Int", (A_ScreenHeight/2), "Int", (A_ScreenWidth/2), "Int", (A_ScreenHeight/2 - 27), "UInt", 0x400)
return

; ctrl + ms + up, center window small size
^#Up::
    WinRestore, A
    DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", (A_ScreenWidth/4), "Int", (A_ScreenHeight/4.2), "Int", (A_ScreenWidth/2), "Int", (A_ScreenHeight/1.6), "UInt", 0x400)
return

; shift + ms + up, center window full height
+#Up::
    WinRestore, A
    DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", (A_ScreenWidth/4), "Int", 0, "Int", (A_ScreenWidth/2), "Int", (A_ScreenHeight - 27), "UInt", 0x400)
return

; alt + ms + up, max, by pixels
!#Up::
    WinRestore, A
    DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", 0, "Int", 0, "Int", (A_ScreenWidth), "Int", (A_ScreenHeight - 27), "UInt", 0x400)
return

; ctrl shift up, , center window large size
+^#Up::
    WinRestore, A
    DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", (A_ScreenWidth/6), "Int", (A_ScreenHeight/4.2), "Int", (A_ScreenWidth/(6/4)), "Int", (A_ScreenHeight/1.6), "UInt", 0x400)
return

; ctrl shift 0 set to 1024x768
+^#0::
    WinRestore, A
    DllCall("SetWindowPos", "UInt", WinExist("A"), "UInt", 0, "Int", (A_ScreenWidth/6), "Int", (A_ScreenHeight/4.2), "Int", 1024, "Int", 768, "UInt", 0x400)
return

 #Down::WinRestore,   A
^#Down::WinMinimize, A

;  #Up::WinMaximize, A
; ^#Up::WinRestore,  A

#Up::
  WinRestore, A
  WinMaximize, A
return

; Volume Controls with NumPad

;^#Numpad0::SoundSet, 1, Microphone, mute  ; mute the microphone
#Numpad0::Send {Volume_Mute}

#Numpad1::
Send {Volume_Up}
SoundSet, 10
return

#Numpad2::
Send {Volume_Up}
SoundSet, 20
return

#Numpad3::
Send {Volume_Up}
SoundSet, 30
return

#Numpad4::
Send {Volume_Up}
SoundSet, 40
return

#Numpad5::
Send {Volume_Up}
SoundSet, 50
return

#Numpad6::
Send {Volume_Up}
SoundSet, 60
return

#Numpad7::
Send {Volume_Up}
SoundSet, 70
return

#Numpad8::
Send {Volume_Up}
SoundSet, 80
return

#Numpad9::
Send {Volume_Up}
SoundSet, 100
return

#NumpadSub::Send {Volume_Down}
#NumpadAdd::Send {Volume_Up}

; ----
