
#TODO: check $1 exists as single argument

regular_count=0
dir_count=0

for f in "$1"/*; do

    if [ -f "$f" ]; then
        echo "$f is REGULAR"
        ((regular_count++))
        
    elif [ -d "$f" ]; then
        echo "$f is DIRECTORY"
        ((dir_count++))
        
    else
        echo "$f is OTHER"
    fi

done

echo
echo "number of regular files: $regular_count"
echo "number of directories: $dir_count"
