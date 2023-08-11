#!/bin/bash

source_dir="$1"
target_dir="$2"

# TODO: check exactly 2 arguments
# TODO: check $1 is dir
# TODO: check $2 is dir

for f in "$1"; do
    cp "$f" "$2"/"$f".bak
done
