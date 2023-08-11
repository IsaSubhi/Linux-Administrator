#a fix for question 6 in bash_exercises.pdf
#(making the solution recursive)


#piping find to while read makes the solution recursive

sum=0
find ~ -print0 | while read -d'' file; do

    # stat prints data of file. using --format=%U it only prints the name of the user who owns the file
    # (for more information read man stat)
    file_owner=$(stat "$file" --format=%U) 
    
    if [ "$file_owner" != "$USER" ]; then
        ls -d "$file"
        ((sum++))
    fi
done

echo
echo "found $sum files that don't belong to $USER"
