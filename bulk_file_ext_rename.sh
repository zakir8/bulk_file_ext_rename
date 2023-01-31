#!/bin/bash


read -p "Location path of the files: " location
read -p "File type (without (.) period: " filetype

echo "Location entered - $location"
echo "File entered - $filetype"

for f in "$location"*
do
  if [[ $f != *".$filetype"* ]]; then
    echo "$f.$filetype"
    mv $f "$f.$filetype"
  fi
done