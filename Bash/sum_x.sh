
read -p "enter path to count:" dir

if [ ! -d "$dir" ]; then
    echo "not a directory"
    exit 1
fi

if [ ! -x "$dir" ]; then
    echo "cannot enter path: $dir"
    exit 1
fi


count=0

for file in "$dir"/*; do
    if [ -x "$file" ]; then
        ((count++))
        #count=$(expr $count +  1)
    fi
done

echo "$count"
