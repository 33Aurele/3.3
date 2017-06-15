#!/bin/bash

python3 3.3.py > body.html

cat html/head.html body.html html/foot.html > html/3.3.html

rm body.html
