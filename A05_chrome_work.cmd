CD /D "%USERPROFILE%"

REM WORK PROFILE
START "" /MAX /ABOVENORMAL "%ProgramFiles%\Google\Chrome\Application\chrome.exe" %G_CHROME_CMDLINE_OPT% --profile-directory="%G_CHROME_PROF_UWRK%"
