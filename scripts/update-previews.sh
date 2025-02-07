#!/bin/bash

cp .build/*.pdf ./

magick convert -colorspace sRGB -alpha opaque -density 600 -resize 50% CV.pdf CV.png
