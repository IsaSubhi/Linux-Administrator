
sum=0
count=0

while true; do
    read -p "enter an integer or q:" num
    
    if [[ "$num" =~ [1-9][0-9]* ]]; then    # if it's an integer --> add it to the sum
        ((sum+=num))
        ((count++))

    elif [ "$num" == 'q' ]; then            # if its 'q' --> quit
        break

    else
        echo "not a valid integer!"         # anything else --> error

    fi
done

echo

if ((count > 0)); then
    echo "sum: $sum, average:$((sum/count))"
else
    echo "no numbers were read"
fi
