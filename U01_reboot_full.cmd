@ECHO OFF

COLOR 03

CD /D %~dp0

ECHO:
ECHO:
ECHO   ########  ######## ########   #######   #######  ######## #### ##    ##  ######   
ECHO   ##     ## ##       ##     ## ##     ## ##     ##    ##     ##  ###   ## ##    ##  
ECHO   ##     ## ##       ##     ## ##     ## ##     ##    ##     ##  ####  ## ##        
ECHO   ########  ######   ########  ##     ## ##     ##    ##     ##  ## ## ## ##   #### 
ECHO   ##   ##   ##       ##     ## ##     ## ##     ##    ##     ##  ##  #### ##    ##  
ECHO   ##    ##  ##       ##     ## ##     ## ##     ##    ##     ##  ##   ### ##    ##  
ECHO   ##     ## ######## ########   #######   #######     ##    #### ##    ##  ######   
ECHO:
ECHO:
ECHO   PRESS CTRL+Q TO CANCEL
ECHO:
ECHO:
SLEEP 5

CALL U01_preshutdown.cmd

CD /D %~dp0
CALL U01_rebootcmd.cmd
