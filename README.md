National Geographic Downloader
==============================

First, thanks to the National Geographic for their stunning wallpapers !

But unfortunately, it's painful to fetch them all using the website interface at http://ngm.nationalgeographic.com/wallpaper/download

How to use them ?
------------

There are two scripts :

* `getByYear.sh` : fetches all the wallpapers for the specified year. You can use it with something like `./getByYear.sh 10` for 2010.
* `getByMonth.sh` : fetches all the wallpapers for the specified year and month. You can use it with something like `./getByMonth.sh 10 10` for october 2010.

Wallpapers are downloaded in the `wallpapers` folder. If you run the script one more time, it will update the folder with the new files (wget uses the `no-clobber` option).

What are the limits of these scripts ?
--------------------------------------
They currently work with 2009-09 + wallpapers.

Before, naming and/or resolution was different.

I want to add / change something 
--------------------------------

You are welcome !
Fork this repo :)
