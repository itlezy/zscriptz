@ECHO OFF

CD /D %~dp0

SET TORRPATH=%G_TORRPATH%

IF NOT EXIST %TORRPATH% (
	ECHO %TORRPATH% NOT MOUNTED, PLEASE MOUNT
	SLEEP 30
)

IF NOT EXIST %TORRPATH% (
	ECHO %TORRPATH% NOT MOUNTED, PLEASE MOUNT
	EXIT
)

IF EXIST %TORRPATH% (
	ECHO %TIME% > %TORRPATH%\wakeup.dat
	DEL %TORRPATH%\wakeup.dat

	CD /D "%PROGRAMFILES%\qBittorrent"
	START "" "%PROGRAMFILES%\qBittorrent\qbittorrent.exe"
)
