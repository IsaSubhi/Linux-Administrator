
while true; do

    echo "    1) cola
    2) soda
    3) ice tea
    4) kinley
    "

    read -p "enter drink: " drink_num

    if ((drink_num == 1)); then
        echo COLA
    elif ((drink_num == 2)); then
        echo soda
    elif ((drink_num == 3)); then
        echo ice tea
    elif ((drink_num == 4)); then
        echo kinley
    else
        echo error
    fi

done 
