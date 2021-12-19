WinActivate, ahk_exe chrome.exe
Sleep 300
WinActivate, ahk_exe chrome.exe
Sleep 200

if ErrorLevel
{
}
else
{
	WinWaitActive, ahk_exe chrome.exe,, 5
	Send !{f}
	Sleep 50
	Send {x}
	Sleep 300
}
