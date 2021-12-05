@ECHO OFF

TITLE BACKUP RARS WITH PASSWD

CD /D %~dp0
CALL B00_secret_SET_PASSWD.cmd

CD /D %~dp0
CALL B01_doc_rezip.cmd

CD /D %~dp0
CALL B01_prj_rezip.cmd

CD /D %~dp0
CALL B01_prj_gbest_rezip.cmd

REM START "" "%ProgramFiles%\Google\Drive\googledrivesync.exe"
REM 
REM IF EXIST "%LOCALAPPDATA%\Tresorit\v0.8\Tresorit.exe" (
REM 	START "" "%LOCALAPPDATA%\Tresorit\v0.8\Tresorit.exe"
REM )
