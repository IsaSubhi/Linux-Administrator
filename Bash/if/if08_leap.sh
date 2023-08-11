while(true); do
    read -p "enter year:" year
    
    if [ "$year" == "quit" ]; then
        break
    fi
    
    if ((year % 4 != 0)); then
        echo "common"

    elif ((year % 100 != 0)); then
        echo "leap"
        
    elif ((year % 400 != 0)); then
        echo "common"
    else
        echo "leap"
    fi
done

echo "goodbye"
