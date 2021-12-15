WinActivate, ahk_exe ProcessHacker.exe

if ErrorLevel
{
}
else
{
	WinWaitActive, ahk_exe ProcessHacker.exe,, 3
	Sleep 200
	Send #{Right}
	Sleep 200
	Send !{Space}
	Sleep 200
	Send {n}
}
