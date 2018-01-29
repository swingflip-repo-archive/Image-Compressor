#!/bin/bash

echo starting image compression...
echo
for file in images/*.png
do
  echo running compression on image: $file...
  ./decodepng "$file" | xz -cze > $file.xz
done
echo
echo finished image compression...
