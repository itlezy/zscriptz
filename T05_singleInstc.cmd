@echo off

2>nul (
9>zzz.txt (
  echo hi
  set stt=1
  call :doit
  exit /B
)
)

:doit
echo doing it..
pause

goto :eof