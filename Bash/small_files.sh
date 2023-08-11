if (( $#  != 1 )); then
    echo "$0 must have exactly 1 argument!"
    exit 1
fi

total_size=0
count=0


for file in "$1"/*; do
    file_size=$(stat --format=%s "$file")
    
    if  ((  file_size <= 1000 )); then
        echo "$file : $file_size bytes"
        ((total_size+=file_size))
        ((count++))
    fi
done

echo
echo "found $count files bigger than 1MB for a total of $total_size bytes"



