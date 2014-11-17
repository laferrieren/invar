#!/bin/bash

#this is a wrapper function for re-rendering the world at level 1-5 zoom,
#north america at 6-10, the north east at 11-12, MA at 12-14 and boston area to 18
#
# run by {path} {xml path} {processor count} {queue size}
#
# example run ./render.sh /etc/mapnik-osm-carto-data/osm.xml 4 10000

#world
echo "Rendering the US now"
./ivtile $1 dist 77.2 -168.0 -60.2 184.6 1 5 -q $3 --process_count $2 -P

#us
echo "Rendering the US now"
./ivtile $1 dist 49.27 -125.51 23.16 -66.71 6 10 -q $3 --process_count $2 -P

#north east
echo "Rendering the North East now"
./ivtile $1 dist 45.368 -76.992 39.707 -67.214 11 12 -q $3 --process_count $2 -P

#MA
echo "Rendering MA now"
./ivtile $1 dist 42.876 -73.526 41.232 -69.829 12 14 -q $3 --process_count $2 -P

#boston
echo "Rendering Boston now"
./ivtile $1 dist 42.5 -71.25 42.21 -70.9 15 18 -q $3 --process_count $2 -P






