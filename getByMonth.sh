#!/bin/bash

# Where the wallpapers are saved
DEST="wallpapers"

# Get year and month
[ -n "$1" ] && YEAR="$1"  || YEAR="$(date '+%Y')"
[ -n "$2" ] && MONTH="$2" || MONTH="$(date '+%m')"

case "$MONTH" in
   "01") W_MONTH=jan;;
   "02") W_MONTH=feb;;
   "03") W_MONTH=mar;;
   "04") W_MONTH=apr;;
   "05") W_MONTH=may;;
   "06") W_MONTH=jun;;
   "07") W_MONTH=jul;;
   "08") W_MONTH=aug;;
   "09") W_MONTH=sept;;
   "10") W_MONTH=oct;;
   "11") W_MONTH=nov;;
   "12") W_MONTH=dec;;
   *) exit ;;
esac		

# Set up the directory
mkdir -p "$DEST"

echo "Downloading $MONTH/$YEAR"

# Maximum number of wallpaper by month
for NUMBER in {1..100}; do
	URL="http://ngm.nationalgeographic.com/wallpaper/img/${YEAR}/${MONTH}/${W_MONTH}${YEAR:2:2}wallpaper-${NUMBER}_1600.jpg"
	NAME="$DEST/${YEAR}-${MONTH}-${NUMBER}.jpg"
	wget -q --no-clobber "$URL" -O "$NAME" || { rm "$NAME" ; exit; }
	echo "Wallpaper $NAME saved"
done

