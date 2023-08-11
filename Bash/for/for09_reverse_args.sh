for ((n=1; n<=$#; n++)); do
    echo "$n --> ${!n}"
done
echo

for ((n=$#; n>=1; n--)); do
    echo "$n --> ${!n}"
done
echo
