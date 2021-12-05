TASKKILL /T /F /IM software_reporter_tool.exe
TASKKILL /T /F /IM GoogleCrashHandler.exe
TASKKILL /T /F /IM GoogleCrashHandler64.exe

CD /D "%TEMP%"
"%G_PRJ%\net\IetyTools\target\RecuDelete.exe" -r -q -i "%LOCALAPPDATA%\Google"      -s software_reporter_tool.exe
"%G_PRJ%\net\IetyTools\target\RecuDelete.exe" -r -q -i "%PROGRAMFILES(X86)%\Google" -s GoogleCrashHandler*.exe
