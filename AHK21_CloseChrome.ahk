WinActivate, ahk_exe chrome.exe

if ErrorLevel
{
}
else
{
	WinWaitActive, ahk_exe chrome.exe,, 3
	Send !{f}
	Sleep 100
	Send {x}
	Sleep 300
}
