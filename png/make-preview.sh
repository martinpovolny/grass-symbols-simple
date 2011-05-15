#!/bin/sh

# render symbols to PNG

echo 'this must be run inside GRASS session'

export GRASS_WIDTH=50
export GRASS_HEIGHT=50 

for i in $(cd ..; ls | grep -vE '(png|README)') ; do 
  export GRASS_PNGFILE=$i.png
  
  d.mon start=PNG
  echo "symbol ujc/$i 40 50 50 black black" | d.graph
  d.mon stop=PNG 
done
