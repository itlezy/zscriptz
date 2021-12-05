@ECHO OFF

CD /D %~dp0

REM MODE 15,1

ECHO Y | PowerShell.exe -NoProfile -Command Clear-RecycleBin

CALL :DORMRDIR "%TMP%"
CALL :DORMRDIR "%TEMP%"
CALL :DORMRDIR "%APPDATA%\Telegram Desktop\tdata\user_data\cache"
CALL :DORMRDIR "%APPDATA%\Telegram Desktop\tdata\user_data\media_cache"
CALL :DORMRDIR "%APPDATA%\WhatsApp\Cache"
CALL :DORMRDIR "%APPDATA%\WhatsApp\Code Cache"
CALL :DORMRDIR "%APPDATA%\WhatsApp\GPUCache"
CALL :DORMRDIR "%APPDATA%\WhatsApp\Service Worker\CacheStorage"
CALL :DORMRDIR "%LOCALAPPDATA%\cache"
CALL :DORMRDIR "%LOCALAPPDATA%\npm-cache"
CALL :DORMRDIR "%LOCALAPPDATA%\NVIDIA\GLCache"
CALL :DORMRDIR "%LOCALAPPDATA%\OneDrive\cache"
CALL :DORMRDIR "%LOCALAPPDATA%\SumatraPDF\sumatrapdfcache"

(FOR %%C IN (%ALL_DRIVES_NOC%) DO (
	CALL :DORMR %%C
))

GOTO :EOF

:DORMRDIR
	ECHO RMRDIR "%~1"
	IF EXIST "%~1" (
		CD /D "%~1" && RMDIR /S /Q .
	)
GOTO :EOF

:DORMR
	ECHO RMV "%~1:\RECYCLE BIN" etc..

	RMDIR /S /Q "%~1:\RECYCLE BIN"
	RMDIR /S /Q "%~1:\$RECYCLE.BIN"
	RMDIR /S /Q "%~1:\RECYCLED"
	RMDIR /S /Q "%~1:\RECYCLER"
GOTO :EOF
