# take argument 1

# if text is empty print "empty"
# if no such file exists print "not exist"
# if directory print "directory"
# if regular file print "regular"
# else print "other"

if [ -z "$1" ]; then
    echo "argument 1 is empty"
elif [ ! -e "$1" ]; then
    echo "no such file exist"
elif [ -d "$1" ]; then
    echo "that's a directory"
elif [ -f "$1" ]; then
    echo "that's a regular file"
else
    echo "that's some other type of file"
fi


