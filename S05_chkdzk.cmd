(FOR %%C IN (%ALL_DRIVES%) DO (
	CALL :DOCHK %%C
))

GOTO :EOF

:DOCHK

	IF EXIST %~1:\ (
		CHKDSK /F %~1:
	)

GOTO :EOF