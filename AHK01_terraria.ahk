#MaxThreadsPerHotkey 2

#IfWinActive ahk_exe Terraria.exe

; keep clicked, like for mining..
z::Click, Down

; auto-fire, like for weapons
x::
  $stop := 0
  Loop, 
  { 
    Click 
    Sleep 10
    if ($stop)
    {
      return
    }
  }

c:: $stop := 1

#IfWinActive