Started w urls for Alexa top 1m sites, from Jul 2016 (https://gist.github.com/chilts/7229605) 

0. down them all (542,986).
1. delete empty files (-141,927) - filter21.sh
2. dedupe by url prefix (e.g. only take one out of google.com, google.ca, google.jp etc.)
2. remove non-img files (filter2.sh)
3. run `img_magick_parse.sh $imgdir 2> badmagick.txt` (where `$imgdir` is whichever directory contains all the favicon files)
4. run `cleanse_bad_magick.sh` (to remove corrupted files that ImageMagick couldn't parse)
5. Run `meta df.ipynb` notebook.

At this point, we have the full 'raw' dataset, and the metadata csv (`favicon_metadata.csv`).

To get the `16_16` subset... do stuff.

