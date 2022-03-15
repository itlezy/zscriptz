REM MAIN
CD /D %~dp0
CALL A05_chrome_main.cmd

REM PLUS
SLEEP 6
CD /D %~dp0
CALL A05_chrome_plus.cmd

IF NOT DEFINED WEEKEND (
  REM WORK PROFILE
  SLEEP 8
  CD /D %~dp0
  CALL A05_chrome_work.cmd
)
