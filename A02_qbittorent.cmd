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

	REM CD /D "%PROGRAMFILES%\qBittorrent"
	REM START "" "%PROGRAMFILES%\qBittorrent\qbittorrent.exe"
	CD /D "c:\prj\p2p\qBittorent-lezy-422\build\"
	START "" "c:\prj\p2p\qBittorent-lezy-422\build\qbittorrent.exe"
)
