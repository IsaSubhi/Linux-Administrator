
while true; do

    echo "Menu:
    1) Action one
    2) Action two
    3) Action three
    0) Quit
    "
    
    read -p "enter option:" option
    
    case "$option" in
    1) echo "Option one selected"
       echo "Option one selected"
       echo "Option one selected"
       ;;
    2) echo "Option two selected"   ;;
    3) echo "Option three selected" ;;
    0) break ;;
    *) echo "Invalid Option"
    esac
    
done
