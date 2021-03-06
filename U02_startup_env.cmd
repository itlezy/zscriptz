@ECHO OFF

REM MAIN BACKUP DISK (SOURCE)
REM SETX BAK_SRC_DRV           "w"
REM RAR WITH PASSWORD DEST (can be not encrypted)
REM SETX BAK_XXRARWPASS_DST_DRV  "d j m o q"
REM ROBOCOPY MIR DEST (DOC AND RARs, must be encrypted)
REM SETX BAK_XXMIR_DST_DRV       "d j o q"

SETX ALL_DRIVES            "c d e f g h i j k l m n o p q r s t u v w x y z"
SETX ALL_DRIVES_NOC          "d e f g h i j k l m n o p q r s t u v w x y z"

SETX G_TORRPATH            "x:\torr_OK"

REM MAIN
SETX G_CHROME_PROF_USRS    "Profile 2"
REM PLUSO
SETX G_CHROME_PROF_UMSC    "Profile 1"
REM WRK
SETX G_CHROME_PROF_UWRK    "Profile 6"

SETX G_CHROME_CMDLINE_OPT  "--disable-smooth-scrolling --disable-crash-reporter --start-maximized --disable-features=TabGroups,TabGroupsAutoCreate,TabGroupsCollapse,TabGroupsCollapseFreezing,TabHoverCardImages"

SETX G_BIN                 "c:\bin"                  /M
SETX G_BIN_SYSIN           "c:\bin\sysin"            /M
SETX G_BIN_TCMD            "c:\bin\totalcmd"         /M
SETX G_ZSCRIPTS            "c:\bin\zscripts"         /M
SETX G_PRJ                 "c:\prj"                  /M

SETX PROMPT                 $p$_:                    /M