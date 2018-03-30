#!/bin/bash

cp html/3.3.html apk/app/src/main/assets
cp html/contribute.html apk/app/src/main/assets
cp html/links.html apk/app/src/main/assets
cp html/style/style.css apk/app/src/main/assets/style

cd apk/app/src/main/assets

# file:///android_asset/3.3.html
# <a href="3.3.html">

for i in *.html; do
    sed -i 's/href=\"3.3.html\"/href=\"file:\/\/\/android_asset\/3.3.html\"/g' $i
    sed -i 's/href=\"contribute.html\"/href=\"file:\/\/\/android_asset\/contribute.html\"/g' $i
    sed -i 's/href=\"links.html\"/href=\"file:\/\/\/android_asset\/links.html\"/g' $i
done

