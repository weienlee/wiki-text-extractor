#!/bin/bash
# My example bash script

title=$1
url="https://en.wikipedia.org/wiki/Special:Export/"
title=${title// /_}
url+=$title
curl $url -o "tmp.xml"

python WikiExtractor.py tmp.xml

output="txt/"
output+=$title
output+=".txt"

mkdir -p txt
mv text/AA/wiki_00 $output
rm tmp.xml
rm -rf text
