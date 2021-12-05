Run Properties c:\tmp\dele

Sleep 2000

IfWinExist, dele Properties
{
	WinActivate
 
	Send ^{Tab}
	Sleep 250
	Send ^{Tab}
	Sleep 250
	Send !v
	Sleep 250
	Send !c
	Sleep 250
	Send !i
	Sleep 250
	Send !p
	Sleep 250
	Send !a
	Sleep 250
	Send !y
	Sleep 250
	Send {Esc}
	Sleep 250
	Send {Esc}
	Sleep 250
	Send {Esc}
	Sleep 250
	Send {Esc}
	Sleep 250
	Send {Esc}
}