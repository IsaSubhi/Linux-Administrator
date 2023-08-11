
while true; do

    echo "    1) cola
    2) soda
    3) ice tea
    4) kinley
    0) exit
    "

    read -p "enter drink: " drink_num

    case "$drink_num" in
    1) echo COLA ;;
    2) echo soda ;;
    
    3)
        echo ice tea
        echo ice tea
        echo ice tea
        ;;
        
    4)echo kinley ;;
    0) exit ;;
    *) echo error ;;
    esac

done 
