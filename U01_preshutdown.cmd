@ECHO OFF

CD /D %~dp0

START AHK21_CloseChrome.ahk
START U42_EnableLogitech.cmd

CALL U02_startup_env.cmd

CALL U30_rm_recyledbin.cmd
REM ECHO Y | PowerShell.exe -NoProfile -Command Clear-RecycleBin

START /WAIT "" "%ProgramFiles%\CCleaner\CCleaner64.exe" /AUTO
REM "%ProgramFiles%\CCleaner\CCleaner64.exe" /AUTO

TASKKILL /IM qbittorrent.exe
REM TASKKILL /IM uTorrent.exe

SLEEP 4

TSKILL qbittorrent
REM TSKILL uTorrent

SLEEP 4

"%G_BIN_SYSIN%\sync.exe"

REM "%ProgramFiles%\VeraCrypt\VeraCrypt.exe" /dismount /force /silent /quit
