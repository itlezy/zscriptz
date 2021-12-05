exit
# cmd.exe /C A1autodld.scp.cmd
# "$ProgramFiles(x86)/WinSCP/WINSCP.COM" /script=$USERPROFILE/Downloads/autodld.scp

/c/Program\ Files\ \(x86\)/WinSCP/WinSCP.com /script=$USERPROFILE/Downloads/autodld.scp

cd $USERPROFILE/Downloads/dld-tmp
pwd
pause
# . /c/bin/cclean.sh .
# cmd.exe /C B1autodld.move.cmd