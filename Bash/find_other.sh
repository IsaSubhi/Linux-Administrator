dir="$HOME"



# u="$USER"
# sudo find "$dir" ! -user "$u" -print
sudo find "$dir" ! -user "$USER" -exec ls -ld {} ';' 2>/dev/null
find "$dir" ! -user "$USER" 2>/dev/null | wc -l

echo -----

count=0
while read f
do
    ls -l -d "$f"
    ((count++))
done < <(find "$dir" ! -user "$USER" 2>/dev/null)

echo "found a total of $count files that don't belong to $USER"
