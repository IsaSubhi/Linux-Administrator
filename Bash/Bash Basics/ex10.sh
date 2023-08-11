# read fruit name from user
# check if it exists inside the file ./fruits.txt
# print YES/NO resppectively


fruit_file="./fruits.txt"

read -p "enter fruit: " fruit_name


if grep -q "$fruit_name" "$fruit_file"
then
    echo YES
else
    echo NO
fi
