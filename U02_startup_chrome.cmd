CD /D %~dp0
CD /D "%USERPROFILE%"

REM MAIN
START "" /MAX /ABOVENORMAL "%ProgramFiles%\Google\Chrome\Application\chrome.exe" %G_CHROME_CMDLINE_OPT% --profile-directory="%G_CHROME_PROF_USRS%"

REM PLUS
SLEEP 6
START "" /MAX /ABOVENORMAL "%ProgramFiles%\Google\Chrome\Application\chrome.exe" %G_CHROME_CMDLINE_OPT% --profile-directory="%G_CHROME_PROF_UMSC%"

IF NOT DEFINED WEEKEND (
  REM WORK PROFILE
  SLEEP 8
  START "" /MAX /ABOVENORMAL "%ProgramFiles%\Google\Chrome\Application\chrome.exe" %G_CHROME_CMDLINE_OPT% --profile-directory="%G_CHROME_PROF_UWRK%"
)