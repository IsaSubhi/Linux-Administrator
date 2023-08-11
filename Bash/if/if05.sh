
while true; do

    read -p "enter file number:" n
    read -p "enter text to check:" text

    if grep "$text" data/"$n".txt >/dev/null 2>&1
    then
        echo "\"$text\" was found in the file number $n"
    else
        echo "not found"
    fi

done
