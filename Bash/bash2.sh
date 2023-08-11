#!/bin/bash

desk=.
#desk=~/Desktop/
#desk=$HOME/Desktop/

y=$(date +"%Y")
m=$(date +"%B") #B for name of the month. m for number of the month
d=$(date +"%d")

backdir="$desk"/"$y"/"$y-$m"/"$y-$m-$d"

mkdir -p "$backdir"

tar -zcf "$backdir"/backup.tar.gz "$desk"

