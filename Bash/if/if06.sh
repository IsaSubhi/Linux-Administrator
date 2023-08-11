
  
filename="$1"
text="$2"

# checks if filename exists as regualar and is readable:
if ! [ -f "$filename" -a -r "$filename" ]; then
    echo "file not exists ,not regular or not readable" >&2

# checks if text appears in the file
elif grep "$text" "$filename" >/dev/null 2>&1; then
    echo "\"$text\" was found in the file: $filename"
    
else
    echo "not found"
    
fi

