#!/bin/bash

cp .build/*.pdf ./

# Using pdftoppm (from poppler-utils) + ImageMagick
pdftoppm -png -r 600 Mocy_CV.pdf .build/CV_temp
for page in .build/CV_temp-*.png; do
    if [[ -f "$page" ]]; then
        base=$(basename "$page" .png)
        magick "$page" -colorspace sRGB -alpha opaque -resize 50% "${base/CV_temp/Mocy_CV}.png"
    fi
done
rm .build/CV_temp-*.png
