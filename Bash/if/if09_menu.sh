
while true; do

    echo "Menu:
    1) Action one
    2) Action two
    3) Action three
    0) Quit
    "
    
    read -p "enter option:" option
    
    if ((option==1)); then
        echo "Option one selected"
    elif ((option==2)); then
        echo "Option two selected"
    elif ((option==3)); then
        echo "Option three selected"
    elif ((option==0)); then
        break
    else
        echo "Invalid Option"
    fi
done
