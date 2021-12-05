@ECHO OFF

CD /D %~dp0

NODE %G_PRJ%\js\subtitlez\index.js %*

PAUSE