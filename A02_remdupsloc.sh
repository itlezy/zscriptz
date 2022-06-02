unset HISTFILE

TORR_DOWNLOADED="$USERPROFILE/Downloads"
TORR_INCOMING="/x/torr_incoming"
TORR_ARCHIVED="/x/torr_archived"

if [ ! -d "$TORR_INCOMING" ]; then
    echo "Directory unavailable. Please, mount $TORR_INCOMING"
    sleep 4
    exit
fi

echo "Torrent files will be copied from [$TORR_DOWNLOADED] to [$TORR_INCOMING]"
cd "$TORR_DOWNLOADED"

pwd
sleep 2

# remove duplicate downloads in the first place, like "abc (1).torrent"
rm *\ \(?\).torrent

# check for duplicates in the archive and remove them
for f in *.torrent
do

  fz=`basename "$f"`

  if [ ! -f "$f" ]; then
    echo "No downloaded torrents found in [$TORR_DOWNLOADED], exiting.."
    sleep 4
    exit
  fi

  # remove duplicate torrent which is existent in the archive
  if [ -f "$TORR_ARCHIVED/$fz" ]; then
    echo "Removing duplicate $fz"
    rm "$fz"
  fi

  # save torrent to the archive
  if [ -f "$f" ] && [ ! -f "$TORR_ARCHIVED/$fz" ]; then
    echo "Saving torrent to  $TORR_ARCHIVED/$fz"
    cp "$f" "$TORR_ARCHIVED/$fz"
  fi

done

# move unique and new torrents to the incoming directory
mv *.torrent "$TORR_INCOMING/"

echo "Done, exiting.."
sleep 4
