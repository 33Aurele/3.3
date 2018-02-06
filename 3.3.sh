#!/bin/bash

# join every .org file

cd org
cat makoto.org akuma.org alex.org chunli.org dudley.org elena.org gill.org hugo.org ibuki.org ken.org necro.org oro.org q.org remy.org ryu.org sean.org twelve.org urien.org yang.org yun.org other.org all.org > ../3.3.org
cd ..

# replace todos with something more readable
cp 3.3.org temp.org
sed -i 's/TODO/\(unsure\)/g' temp.org

#removing empty lines
sed -i '/^$/d' temp.org

python3 3.3.py > body.html

cat html/head.html body.html html/foot.html > html/3.3.html

#dirty trick to replace org-links with html links
sed -i 's/\[\[/\<a href\=\"/g' html/3.3.html
sed -i 's/\]\[/\"\>/g' html/3.3.html
sed -i 's/\]\]/\<\/a\>/g' html/3.3.html

rm body.html
rm temp.org
