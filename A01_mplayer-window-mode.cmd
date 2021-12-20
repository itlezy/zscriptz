@ECHO OFF

COLOR 08
MODE 280,75

TSKILL mplayer
CLS
ECHO ------------------------------------------------------------------------------------------------------------------------------------------
ECHO %*
ECHO ------------------------------------------------------------------------------------------------------------------------------------------

REM CD /D "%PROGRAMFILES%\SMPlayer\mplayer"
CD /D "%G_BIN%\MPlayer-x86_64-r38322+g682bafdb12"

REM START "" /REALTIME /MIN mplayer.exe -idx -vo gl -zoom -x 1024 -y 768 -volume 55 %1
REM START "" /REALTIME mplayer.exe -vo gl -zoom -xy 1600 -vf scale -volume 55 %1

.\mplayer.exe -noautosub -quiet -vo gl -zoom -xy 1400 -vf scale -volume 55 %*
REM .\mplayer.exe -identify -noautosub -quiet -vo gl -zoom -xy 1600 -vf scale -volume 55 %*

EXIT 

ECHO %1
CD /D %~dp0


FOR /f "delims=" %%a IN ('%comspec% /c "wmic desktopmonitor get ScreenWidth /format:value" ^| find "0"') DO (
  SET %%a
  GOTO PR
)

:PR
ECHO %ScreenWidth%

IF "%ScreenWidth%" EQU "3840" GOTO K4
IF "%ScreenWidth%" LSS "3840" GOTO HD

REM IF "%ScreenWidth%"=="3840" GOTO K4
REM IF "%ScreenWidth%"=="1920" GOTO HD

EXIT
REM IF %ScreenWidth%"3840" 
REM GOTO HD

:K4
ECHO 4K
START "" /REALTIME /MIN mplayer.exe -idx -vo gl -zoom -x 1920 -y 1080 -volume 55 %1
GOTO END

:HD
ECHO HD
START "" /REALTIME /MIN mplayer.exe -idx -vo gl -fs -volume 50 %1
GOTO END

:END
