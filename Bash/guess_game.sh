while true; do # game restart loop
    secret=$((RANDOM % 100 + 1)) # select a random number from 1 to 100
    tries=7
    guess=""
    
    echo "can you guess the secret number in $tries tries?"
    echo
    
    while ((tries > 0)); do  # game loop
        
        read -p "you have $tries tries left. your guess:" guess
        
        if ((guess < secret)); then
            echo "too small"
        elif ((guess > secret)); then
            echo "too large"
        else
            echo "correct! you win!"
            break # exit game loop
        fi

        ((tries--))
    done
    
    if ((tries == 0)); then
        echo "no more tries left. the secret number was $secret"
    fi

    read -p "play again? (y/N)" choice
    if [ "$choice" != "y" ]; then
        break #exit game restart loop
    fi
    
    echo
done

echo "goodbye!"
