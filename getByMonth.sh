#!/bin/bash

# Where the wallpapers are saved
DEST="wallpapers"

# Set up the directory
mkdir -p $DEST
cd $DEST

# Get year and month
YEAR=$1
MONTH=$2

echo "Downloading $MONTH/20$YEAR"

case $MONTH in
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

# Maximum number of wallpaper by month
for NUMBER in {1..100}
do
	URL="http://ngm.nationalgeographic.com/wallpaper/img/20"$YEAR"/"$MONTH"/"$W_MONTH$YEAR"wallpaper-"$NUMBER"_1600.jpg"
	NAME="20"$YEAR"-"$MONTH"-"$NUMBER".jpg"
	if wget -q --no-clobber $URL -O $NAME
		then echo "Wallpaper "$NAME" saved in "$DEST 
		else rm $NAME ; exit
	fi
done
	
