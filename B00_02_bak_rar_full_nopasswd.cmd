@ECHO OFF

CD /D %~dp0

(FOR %%C IN (%ALL_DRIVES_NOC%) DO (
	CALL :DOBKP %%C
))

GOTO :EOF

:DOBKP
	SET TGTZ=%~1

	IF NOT EXIST %TGTZ%:\meta\bak.full_rar.dat (
		ECHO NOT A BACKUP TARGET %TGTZ% SKIPPING..
		GOTO :EOF
	)

	SET BKDSTA=%TGTZ%:\bak_mir\backup-current

	ECHO CREATING BACKUP SET TO %BKDSTA%
	TITLE CREATING BACKUP SET TO %BKDSTA%

	IF NOT EXIST %BKDSTA% MKDIR %BKDSTA%

	IF NOT EXIST %BKDSTA% (
		ECHO TARGET IS STILL MISSING %BKDSTA%
		GOTO :EOF
	)

	CD /D %BKDSTA%

	CALL :DOBACKUP my,"%USERPROFILE%\my"
	CALL :DOBACKUP Documents,"%USERPROFILE%\Documents"
	CALL :DOBACKUP Downloads,"%USERPROFILE%\Downloads"
	CALL :DOBACKUP prj,"%G_PRJ%"
	CALL :DOBACKUP bin,"%G_BIN%"
GOTO :EOF

:DOBACKUP
	SET FBB=ZZ_FullBackup_%~1
	ECHO Backing up to %FBB% from %~2

	IF EXIST %FBB%.bak DEL /F /Q %FBB%.bak
	IF EXIST %FBB%.rar RENAME %FBB%.rar %FBB%.bak
	REM %RAR% a -m0 -ma5 -r -x*.ova -x*.vmem -x*.vmdk %FBB%.rar "%~2" > mybackup_output.msg 2>> mybackup_output.err
	rar a -m1 -mt4 -ma5 -r -md1G -inul %FBB%.rar "%~2"
	IF EXIST %FBB%.bak DEL /F /Q %FBB%.bak
GOTO :EOF
