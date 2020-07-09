#!/bin/bash
echo "gla works"

dip=`pwd`

for d in $dip/*/
do
  (cd "$d" && echo "$d")
done