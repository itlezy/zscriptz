CD /D %~dp0

START U01_lockcmd.cmd

powershell -command .\U02_startup_day.ps1

EXIT
