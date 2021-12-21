CD /D %~dp0

IF NOT DEFINED G_ZSCRIPTS (
	ECHO PLEASE RUN FIRST IN A SEPARATE PROMPT U02_startup_env.cmd
	PAUSE
	GOTO :EOF
)

START U02_startup_tasksched_create_task.cmd

SETX PATH %G_BIN%\overrides;%G_ZSCRIPTS%\global;%PATH% /M

CD /D %~dp0

reg import A04_AccentPalette.reg
reg import A04_ColorPrevalence.reg
reg import A05_WindowsClassicAltTab.reg
reg import A06_HideUserLogon.reg
