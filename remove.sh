#!/bin/bash

rm rmv.txt
find -name node_modules > rmv.txt
sed -i 's#node_modules/# _to_remove_ #' rmv.tx
sed -i '/_to_remove_/d' rmv.txt
while read -r line; do rm -rf $line; done < rmv.txt
rm rmv.txt

echo "Running 'find -name node_modules' to test "

find -name node_modules
