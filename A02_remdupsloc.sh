unset HISTFILE

if [ ! -d "/x/torr_incoming/" ]; then
    echo "Please, mount x:"
    sleep 4
    exit
fi

cd $USERPROFILE
cd Downloads

pwd
sleep 1

# remove duplicate downloads in the first place
rm *\ \(?\).torrent

# check for duplicates in the archive and remove them
for f in *.torrent
do

  fz=`basename "$f"`

  if [ ! -f "$f" ]; then
    exit
  fi

  if [ -f "/x/torr_archived/$fz" ]; then
    echo "Removing dup $fz"
    rm "$fz"
  fi
  
  if [ ! -f "/x/torr_archived/$fz" ]; then
    echo "Creating placeholder /x/torr_archived/$fz"
    echo -n "1">"/x/torr_archived/$fz"
    # attrib +H +S "zwadwnldd/$fz"
  fi

done

# cp *.torrent zwa-dwnldd/

# rm -f *.torrent

mv *.torrent /x/torr_incoming/

sleep 4
