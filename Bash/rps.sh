
echo "press CTRL+C to quit"

while true; do #game loop

    # read player's choice
    while true; do
        read -p "(R)ock (P)aper (S)cissors:" player_choice

        if [ "$player_choice" != "R" -a "$player_choice" != "P" -a "$player_choice" != "S" ]; then
            echo "that's not a valid choice, try again!"
            continue
        fi
        
        break
    done

    # randomly choose computer's choice
    case $(($RANDOM % 3)) in
    0) pc_choice="R"
        ;;
    1) pc_choice="P"
        ;;
    2) pc_choice="S"
        ;;
    esac

    echo "computer chose:$pc_choice"

    # check who won

    if [ $player_choice == $pc_choice ]; then
        echo "it's a tie!"

    elif [ $player_choice == "R" ]; then
        if [ $pc_choice == "S" ]; then #rock breaks scissors
            echo "player wins!"
        else
            echo "computer wins..."
        fi

    elif [ $player_choice == "P" ]; then
        if [ $pc_choice == "R" ]; then  #paper covers rock
            echo "player wins!"
        else
            echo "computer wins..."
        fi

    else #player chose S
        if [ $pc_choide == "P" ]; then #scissors cut paper
            echo "player wins!"
        else
            echo "computer wins..."
        fi
    fi

done












