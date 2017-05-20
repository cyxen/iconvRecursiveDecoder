#!/bin/bash
for x in `find . -name '*.php'` ;
do iconv -f WINDOWS-1251 -t UTF-8 $x > "$x.utf8";
rm $x;
mv "$x.utf8" $x;
done
exit 0