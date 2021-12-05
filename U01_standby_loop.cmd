@ECHO OFF

COLOR 05

CD /D %~dp0

ECHO:
ECHO:
ECHO    ######  ########    ###    ##    ## ########  ########  ##    ## 
ECHO   ##    ##    ##      ## ##   ###   ## ##     ## ##     ##  ##  ##  
ECHO   ##          ##     ##   ##  ####  ## ##     ## ##     ##   ####   
ECHO    ######     ##    ##     ## ## ## ## ##     ## ########     ##    
ECHO         ##    ##    ######### ##  #### ##     ## ##     ##    ##    
ECHO   ##    ##    ##    ##     ## ##   ### ##     ## ##     ##    ##    
ECHO    ######     ##    ##     ## ##    ## ########  ########     ##    
ECHO:
ECHO:
ECHO   PRESS CTRL+Q TO CANCEL
ECHO:
ECHO:
SLEEP 5

REM CALL U01_preshutdown.cmd

SLEEP 5

CALL U01_standbycmd.cmd

:BGG
    SLEEP 120
    CALL U01_standbycmd.cmd
GOTO BGG
