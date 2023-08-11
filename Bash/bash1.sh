#!/bin/bash

desk=$HOME/Desktop

#create three files: regular, directory and an executable file
touch file1

mkdir -p dir1 # -p unecessary

touch exec1
chmod +x exec1

#print each files and whether it is regular, directory or an executable file
for file in "$desk"/*; do
    if [ -d "$file" ]; then
        echo "$file" DIR
        
    elif [ -x "$file" ]; then
        echo "$file" EXEC
        
    elif [ -f "$file" ]; then
        echo "$file" REG
        
    else
        echo "$file" OTHER
    fi
done

#final part make an archive of all the files
tar -zcf myarchive.tar.gz "$desk"




















