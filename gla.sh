#!/bin/bash
gla() {
	echo "gla'd these directories"
	dip=`pwd`
	for d in $dip/*/
	do
		dd=$(basename $d)
		cd "$d" && echo "\n$dd"
		git checkout master &> /dev/null
		git pull
	done
	cd ..
}