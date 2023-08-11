# dir="$HOME/Desktop"
dir="."

# part a - create three files: regular,dir,executable
touch "$dir/regular_file"
mkdir "$dir/directory"
touch "$dir/executable_file"
chmod +x "$dir/executable_file"

for f in "$dir"/*; do
    if [ -f "$f" -a ! -x "$f" ]; then
        echo "$f: REGULAR"
    elif [ -f "$f" -a -x "$f" ]; then
        echo "$f: EXECUTABLE"
    elif [ -d "$f" ]; then
        echo "$f: DIRECTORY"
    fi
done
