# dir="$HOME/Desktop"
dir="."

# part a - create three files: regular,dir,executable
touch "$dir/regular_file"
mkdir "$dir/directory"
touch "$dir/executable_file"
chmod +x "$dir/executable_file"

# part b - printing each file with its "type"

for f in "$dir"/*; do
    if [ -d "$f" ]; then
        echo "$f: DIRECTORY"
    elif [ -x "$f" ]; then
        echo "$f: EXECUTABLE"
    elif [ -f "$f" ]; then
        echo "$f: REGULAR"
    fi
done

# part c - create an archive

tar -czf "$dir/myarchive.tar.gz" "$dir"
