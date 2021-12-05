#MaxThreadsPerHotkey 2

#IfWinActive ahk_exe CraftWorld.exe

z::Click
x::Click, Right

; keep clicked, like for mining..
n::Click, Down

; auto-fire, like for weapons
m::
  $stop := 0
  Loop, 
  { 
    Click 
    Sleep 1900
;     Send, {Left}
;     SendPlay, {Left}
;     Sleep 300
;     SendEvent, a
;     Sleep 300
        
    if ($stop)
    {
      return
    }
  }

b:: $stop := 1

#IfWinActive