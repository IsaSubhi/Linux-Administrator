
  
filename="$1"
text="$2"


if [ $# -ne 2 ]; then
    echo "need exactly 2 arguments!" >&2
    exit 2
fi


# checks if filename exists as regualar and is readable:
if ! [ -f "$filename" -a -r "$filename" ]; then
    echo "file not exists ,not regular or not readable" >&2
    exit 2
# checks if text appears in the file
elif grep "$text" "$filename" >/dev/null 2>&1; then
    echo "\"$text\" was found in the file: $filename"
    exit 0
else
    echo "not found"
    exit 1
fi

