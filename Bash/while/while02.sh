

i="$1"
while ((i<="$2")); do
    echo -n "$i "
    ((i++))
done
echo
