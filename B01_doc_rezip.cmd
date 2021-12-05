@ECHO OFF

CD /D %USERPROFILE%\my\gdrive\bak

SET BKSETNAME=doc

DEL /F /Q YY_%BKSETNAME%_*.rar

ECHO %CD% %BKSETNAME% COMPRESSING..
rar a -hp%PAZZWD_DOC% -m5 -v500000k -mt2 -ma5 -r -rr10 -md1G -s -inul -ag_YYYY-MM-DD YY_%BKSETNAME%.rar %USERPROFILE%\my\%BKSETNAME%

DEL /F /Q %USERPROFILE%\my\gdrive\bak\*.kdbx
COPY /B /V /Y %USERPROFILE%\my\doc\security\*.kdbx %USERPROFILE%\my\gdrive\bak



GOTO :EOF

(FOR %%C IN (%ALL_DRIVES_NOC%) DO (
	CALL :DOBKP %%C
))




GOTO :EOF

:DOBKP
	SET TGTZ=%~1

	IF NOT EXIST %TGTZ%:\meta\bak.%BKSETNAME%.dat (
		ECHO NOT A BACKUP TARGET %TGTZ% SKIPPING..
		GOTO :EOF
	)

	ECHO COPYING BACKUP SET FROM YY_%BKSETNAME%_*.rar TO %TGTZ%:\bak\

	IF NOT EXIST %TGTZ%:\bak (
		MKDIR %TGTZ%:\bak
	)

	IF EXIST %TGTZ%:\bak (
		DEL /F /Q %TGTZ%:\bak\YY_%BKSETNAME%_*.rar
		COPY /B /V /Y YY_%BKSETNAME%_*.rar %TGTZ%:\bak\

		DEL /F /Q %TGTZ%:\bak\*.kdbx
		COPY /B /V /Y %USERPROFILE%\my\doc\security\*.kdbx %TGTZ%:\bak\
	)
GOTO :EOF
