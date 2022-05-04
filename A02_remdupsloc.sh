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
    echo "Removing dup AR $fz"
    rm "$fz"
  fi

#   if [ -f "$f" ] && [ -f "/x/zprn/VUZE_ZTOR_ARC/$fz" ]; then
#     echo "Removing dup AZ $fz"
#     rm "$fz"
#   fi

  if [ -f "$f" ] && [ ! -f "/x/torr_archived/$fz" ]; then
    echo "Saving tor /x/torr_archived/$fz"
    #echo -n "1">"/x/torr_archived/$fz"
    cp "$f" "/x/torr_archived/$fz"
    # attrib +H +S "zwadwnldd/$fz"
  fi

done

# cp *.torrent zwa-dwnldd/

# rm -f *.torrent

mv *.torrent /x/torr_incoming/

sleep 8
