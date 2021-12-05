unset HISTFILE

for f in *.torrent
do

  fz=`basename "$f"`

  if [ ! -f "$f" ]; then
    exit
  fi

  if [ -f "zwadwnldd/$fz" ]; then
    echo "Removing dup $fz"
    rm "$fz"
  fi
  
  if [ ! -f "zwadwnldd/$fz" ]; then
    echo "Creating placeholder $fz"
    echo -n "1">"zwadwnldd/$fz"
  fi

done

# cp *.torrent zwa-dwnldd/

cmd.exe /C autoupload.scp.cmd