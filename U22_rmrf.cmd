@ECHO OFF
CD /D %1
CHOICE /M "rm -rf directory %CD% ?"
IF ERRORLEVEL 2 GOTO end
IF ERRORLEVEL 1 GOTO one
GOTO end

:one
RMDIR /S /Q .

:end
REM PAUSE
