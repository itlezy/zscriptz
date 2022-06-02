CD /D %~dp0

REM CALL U02_startup_chrome_clean.cmd

POWERCFG /H off

REM START /MIN "" "%ComSpec%" /C U20_syncstartmenu.cmd

CD /D "%USERPROFILE%"

START /MAX /ABOVENORMAL "" "%G_BIN_TCMD%\TOTALCMD64.EXE"

SLEEP 4
START /MIN /ABOVENORMAL "" "%PROGRAMFILES%\Process Hacker 2\ProcessHacker.exe"

SLEEP 7

CD /D %~dp0
REM START /MIN "" AHK20_Startup.ahk
START /MIN "" U02_startup_AHK.cmd

IF "%COMPUTERNAME%" == "ZZLEN" (
    CD /D %~dp0
    START /MIN "" A02_qbittorent.cmd
    START /MIN "" A02_emule.cmd
)

EXIT
